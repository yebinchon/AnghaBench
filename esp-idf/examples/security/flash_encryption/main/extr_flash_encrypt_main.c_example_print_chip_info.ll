; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/security/flash_encryption/main/extr_flash_encrypt_main.c_example_print_chip_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/security/flash_encryption/main/extr_flash_encrypt_main.c_example_print_chip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"This is ESP32 chip with %d CPU cores, WiFi%s%s, \00", align 1
@CHIP_FEATURE_BT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"/BT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CHIP_FEATURE_BLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"/BLE\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"silicon revision %d, \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%dMB %s flash\0A\00", align 1
@CHIP_FEATURE_EMB_FLASH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"embedded\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @example_print_chip_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @example_print_chip_info() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = call i32 @esp_chip_info(%struct.TYPE_3__* %1)
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CHIP_FEATURE_BT, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CHIP_FEATURE_BLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %4, i8* %11, i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = call i32 (...) @spi_flash_get_chip_size()
  %24 = sdiv i32 %23, 1048576
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CHIP_FEATURE_EMB_FLASH, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)
  %32 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %24, i8* %31)
  ret void
}

declare dso_local i32 @esp_chip_info(%struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @spi_flash_get_chip_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
