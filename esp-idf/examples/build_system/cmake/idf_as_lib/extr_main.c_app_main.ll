; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/build_system/cmake/idf_as_lib/extr_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/build_system/cmake/idf_as_lib/extr_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Hello world!\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"This is ESP32 chip with %d CPU cores, WiFi%s%s, \00", align 1
@CHIP_FEATURE_BT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"/BT\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CHIP_FEATURE_BLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"/BLE\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"silicon revision %d, \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%dMB %s flash\0A\00", align 1
@CHIP_FEATURE_EMB_FLASH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"embedded\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Restarting in %d seconds...\0A\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"Restarting now.\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @esp_chip_info(%struct.TYPE_3__* %1)
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CHIP_FEATURE_BT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CHIP_FEATURE_BLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %6, i8* %13, i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %23)
  %25 = call i32 (...) @spi_flash_get_chip_size()
  %26 = sdiv i32 %25, 1048576
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CHIP_FEATURE_EMB_FLASH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %26, i8* %33)
  store i32 10, i32* %2, align 4
  br label %35

35:                                               ; preds = %44, %0
  %36 = load i32, i32* %2, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %42 = sdiv i32 1000, %41
  %43 = call i32 @vTaskDelay(i32 %42)
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %2, align 4
  br label %35

47:                                               ; preds = %35
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @fflush(i32 %49)
  %51 = call i32 (...) @esp_restart()
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @esp_chip_info(%struct.TYPE_3__*) #1

declare dso_local i32 @spi_flash_get_chip_size(...) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @esp_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
