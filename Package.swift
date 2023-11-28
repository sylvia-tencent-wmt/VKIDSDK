// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VKIDSDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VKIDSDK",
            targets: ["VKIDSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/VKCOM/VKSDK-iOS.git", .upToNextMajor(from: "0.89.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "VKIDSDK",
            dependencies: []),
        .testTarget(
            name: "VKIDSDKTests",
            dependencies: ["VKIDSDK"]),
    ]
)
