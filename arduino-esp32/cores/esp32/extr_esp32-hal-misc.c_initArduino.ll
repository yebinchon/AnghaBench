; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-misc.c_initArduino.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-misc.c_initArduino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@CONFIG_LOG_DEFAULT_LEVEL = common dso_local global i32 0, align 4
@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_DATA_NVS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to format the broken NVS partition!\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to initialize NVS! Error: %u\00", align 1
@ESP_BT_MODE_BTDM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@ESP_OTA_IMG_PENDING_VERIFY = common dso_local global i64 0, align 8
@F_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initArduino() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load i32, i32* @CONFIG_LOG_DEFAULT_LEVEL, align 4
  %4 = call i32 @esp_log_level_set(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call i64 (...) @nvs_flash_init()
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @ESP_ERR_NVS_NO_FREE_PAGES, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %0
  %10 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %11 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_NVS, align 4
  %12 = call %struct.TYPE_6__* @esp_partition_find_first(i32 %10, i32 %11, i32* null)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %2, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @esp_partition_erase_range(%struct.TYPE_6__* %16, i32 0, i32 %19)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = call i64 (...) @nvs_flash_init()
  store i64 %24, i64* %1, align 8
  br label %27

25:                                               ; preds = %15
  %26 = call i32 (i8*, ...) @log_e(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %9
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i64, i64* %1, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %1, align 8
  %34 = call i32 (i8*, ...) @log_e(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = call i32 (...) @init()
  %37 = call i32 (...) @initVariant()
  ret void
}

declare dso_local i32 @esp_log_level_set(i8*, i32) #1

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local %struct.TYPE_6__* @esp_partition_find_first(i32, i32, i32*) #1

declare dso_local i64 @esp_partition_erase_range(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @log_e(i8*, ...) #1

declare dso_local i32 @init(...) #1

declare dso_local i32 @initVariant(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
