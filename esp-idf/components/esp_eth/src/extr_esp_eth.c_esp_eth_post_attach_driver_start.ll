; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth.c_esp_eth_post_attach_driver_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_eth/src/extr_esp_eth.c_esp_eth_post_attach_driver_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { i32*, i32, %struct.TYPE_9__* }

@esp_eth_transmit = common dso_local global i32 0, align 4
@ETH_CMD_G_MAC_ADDR = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%x %x %x %x %x %x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ETH netif started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @esp_eth_post_attach_driver_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_eth_post_attach_driver_start(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32* %10, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %16 = load i32, i32* @esp_eth_transmit, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %17, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @esp_netif_set_driver_config(i32* %19, %struct.TYPE_8__* %7)
  %21 = call i32 @ESP_ERROR_CHECK(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = load i32, i32* @ETH_CMD_G_MAC_ADDR, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %25 = call i32 @esp_eth_ioctl(%struct.TYPE_9__* %22, i32 %23, i32* %24)
  %26 = load i32, i32* @TAG, align 4
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  %36 = load i32, i32* %35, align 16
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %42 = call i32 @esp_netif_set_mac(i32* %40, i32* %41)
  %43 = load i32, i32* @TAG, align 4
  %44 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = call i32 @esp_eth_driver_start(%struct.TYPE_9__* %45)
  ret i32 %46
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_netif_set_driver_config(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @esp_eth_ioctl(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_netif_set_mac(i32*, i32*) #1

declare dso_local i32 @esp_eth_driver_start(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
