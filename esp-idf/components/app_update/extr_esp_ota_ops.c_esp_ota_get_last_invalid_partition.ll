; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_last_invalid_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_get_last_invalid_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Find invalid ota_%d app\00", align 1
@ESP_PARTITION_SUBTYPE_APP_OTA_MIN = common dso_local global i64 0, align 8
@ESP_PARTITION_TYPE_APP = common dso_local global i32 0, align 4
@ESP_IMAGE_VERIFY_SILENT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Last invalid partition has corrupted app\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @esp_ota_get_last_invalid_partition() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [2 x %struct.TYPE_4__], align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %2, i64 0, i64 0
  %8 = call i32* @read_otadata(%struct.TYPE_4__* %7)
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %56

11:                                               ; preds = %0
  %12 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %2, i64 0, i64 0
  %13 = call i32 @get_last_invalid_otadata(%struct.TYPE_4__* %12)
  store i32 %13, i32* %3, align 4
  %14 = call i32 (...) @get_ota_partition_count()
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x %struct.TYPE_4__], [2 x %struct.TYPE_4__]* %2, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %4, align 4
  %28 = srem i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @TAG, align 4
  %30 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_OTA_MIN, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %36 = load i64, i64* @ESP_PARTITION_SUBTYPE_APP_OTA_MIN, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = call i32* @esp_partition_find_first(i32 %35, i64 %39, i32* null)
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %20
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @ESP_IMAGE_VERIFY_SILENT, align 4
  %46 = call i64 @image_validate(i32* %44, i32 %45)
  %47 = load i64, i64* @ESP_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @TAG, align 4
  %51 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %1, align 8
  br label %56

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %20
  %54 = load i32*, i32** %6, align 8
  store i32* %54, i32** %1, align 8
  br label %56

55:                                               ; preds = %17, %11
  store i32* null, i32** %1, align 8
  br label %56

56:                                               ; preds = %55, %53, %49, %10
  %57 = load i32*, i32** %1, align 8
  ret i32* %57
}

declare dso_local i32* @read_otadata(%struct.TYPE_4__*) #1

declare dso_local i32 @get_last_invalid_otadata(%struct.TYPE_4__*) #1

declare dso_local i32 @get_ota_partition_count(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32* @esp_partition_find_first(i32, i64, i32*) #1

declare dso_local i64 @image_validate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
