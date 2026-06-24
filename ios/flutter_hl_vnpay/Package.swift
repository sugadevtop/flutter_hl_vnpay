// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "flutter_hl_vnpay",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "flutter_hl_vnpay",
            targets: ["flutter_hl_vnpay"]
        )
    ],
    dependencies: [
        .package(
            name: "FlutterFramework",
            path: "../FlutterFramework"
        )
    ],
    targets: [
        .target(
            name: "flutter_hl_vnpay",
            dependencies: [
                .product(
                    name: "FlutterFramework",
                    package: "FlutterFramework"
                ),
                "CallAppSDK"
            ],
            path: "Sources/flutter_hl_vnpay",
            publicHeadersPath: "."
        ),

        .binaryTarget(
            name: "CallAppSDK",
            path: "../Frameworks/CallAppSDK.xcframework"
        )
    ]
)