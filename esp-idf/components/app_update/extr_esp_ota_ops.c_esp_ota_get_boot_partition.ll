; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_boot_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_boot_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"found ota app max = %d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"finding factory app...\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"finding ota_%d app...\00", align 1
@ESP_PARTITION_SUBTYPE_APP_OTA_MIN = common dso_local global i32 0, align 4
@ESP_PARTITION_TYPE_APP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"ota data invalid, no current app. Assuming factory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @esp_ota_get_boot_partition() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x %struct.TYPE_5__], align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %8 = call i32* @read_otadata(%struct.TYPE_5__* %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %59

12:                                               ; preds = %0
  %13 = call i32 (...) @get_ota_partition_count()
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @TAG, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %18 = call i64 @bootloader_common_ota_select_invalid(%struct.TYPE_5__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 1
  %22 = call i64 @bootloader_common_ota_select_invalid(%struct.TYPE_5__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %12
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @TAG, align 4
  %29 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32* (...) @find_default_boot_partition()
  store i32* %30, i32** %1, align 8
  br label %59

31:                                               ; preds = %24
  %32 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 0
  %33 = call i32 @bootloader_common_get_active_otadata(%struct.TYPE_5__* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %2, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %4, align 4
  %44 = srem i32 %42, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @TAG, align 4
  %46 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_OTA_MIN, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %51 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_OTA_MIN, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32* @esp_partition_find_first(i32 %50, i32 %53, i32* null)
  store i32* %54, i32** %1, align 8
  br label %59

55:                                               ; preds = %31
  %56 = load i32, i32* @TAG, align 4
  %57 = call i32 @ESP_LOGE(i32 %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %58 = call i32* (...) @find_default_boot_partition()
  store i32* %58, i32** %1, align 8
  br label %59

59:                                               ; preds = %55, %36, %27, %11
  %60 = load i32*, i32** %1, align 8
  ret i32* %60
}

declare dso_local i32* @read_otadata(%struct.TYPE_5__*) #1

declare dso_local i32 @get_ota_partition_count(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i64 @bootloader_common_ota_select_invalid(%struct.TYPE_5__*) #1

declare dso_local i32* @find_default_boot_partition(...) #1

declare dso_local i32 @bootloader_common_get_active_otadata(%struct.TYPE_5__*) #1

declare dso_local i32* @esp_partition_find_first(i32, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
