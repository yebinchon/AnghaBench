; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_current_ota_is_workable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_current_ota_is_workable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@ESP_OTA_IMG_VALID = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"OTA[current] partition is marked as VALID\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Rollback is not possible, do not have any suitable apps in slots\00", align 1
@ESP_ERR_OTA_ROLLBACK_FAILED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"OTA[current] partition is marked as INVALID\00", align 1
@ESP_OTA_IMG_INVALID = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"Rollback to previously worked partition. Restart.\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Running firmware is factory\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @esp_ota_current_ota_is_workable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @esp_ota_current_ota_is_workable(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x %struct.TYPE_5__], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %10 = call i32* @read_otadata(%struct.TYPE_5__* %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %14, i64* %2, align 8
  br label %96

15:                                               ; preds = %1
  %16 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %17 = call i32 @bootloader_common_get_active_otadata(%struct.TYPE_5__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %90

20:                                               ; preds = %15
  %21 = call i64 (...) @get_ota_partition_count()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %90

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 16
  %32 = load i64, i64* @ESP_OTA_IMG_VALID, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %26
  %35 = load i64, i64* @ESP_OTA_IMG_VALID, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i64 %35, i64* %39, align 16
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 @ESP_LOGD(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %42 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @rewrite_ota_seq(%struct.TYPE_5__* %42, i32 %47, i32 %48, i32* %49)
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %2, align 8
  br label %96

52:                                               ; preds = %26, %23
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %52
  %56 = call i32 (...) @esp_ota_check_rollback_is_possible()
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @TAG, align 4
  %60 = call i32 @ESP_LOGE(i32 %59, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i64, i64* @ESP_ERR_OTA_ROLLBACK_FAILED, align 8
  store i64 %61, i64* %2, align 8
  br label %96

62:                                               ; preds = %55
  %63 = load i32, i32* @TAG, align 4
  %64 = call i32 @ESP_LOGD(i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i64, i64* @ESP_OTA_IMG_INVALID, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i64 %65, i64* %69, align 16
  %70 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %4, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @rewrite_ota_seq(%struct.TYPE_5__* %70, i32 %75, i32 %76, i32* %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @ESP_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %62
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %2, align 8
  br label %96

84:                                               ; preds = %62
  %85 = load i32, i32* @TAG, align 4
  %86 = call i32 @ESP_LOGI(i32 %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %87 = call i32 (...) @esp_restart()
  br label %88

88:                                               ; preds = %84, %52
  br label %89

89:                                               ; preds = %88
  br label %94

90:                                               ; preds = %20, %15
  %91 = load i32, i32* @TAG, align 4
  %92 = call i32 @ESP_LOGE(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i64, i64* @ESP_FAIL, align 8
  store i64 %93, i64* %2, align 8
  br label %96

94:                                               ; preds = %89
  %95 = load i64, i64* @ESP_OK, align 8
  store i64 %95, i64* %2, align 8
  br label %96

96:                                               ; preds = %94, %90, %82, %58, %34, %13
  %97 = load i64, i64* %2, align 8
  ret i64 %97
}

declare dso_local i32* @read_otadata(%struct.TYPE_5__*) #1

declare dso_local i32 @bootloader_common_get_active_otadata(%struct.TYPE_5__*) #1

declare dso_local i64 @get_ota_partition_count(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i64 @rewrite_ota_seq(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @esp_ota_check_rollback_is_possible(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
