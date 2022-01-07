; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/ota/advanced_https_ota/main/extr_advanced_https_ota_example.c_advanced_ota_example_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/ota/advanced_https_ota/main/extr_advanced_https_ota_example.c_advanced_ota_example_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Starting Advanced OTA example\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@server_cert_pem_start = common dso_local global i64 0, align 8
@CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ESP HTTPS OTA Begin failed\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"esp_https_ota_read_img_desc failed\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"image header verification failed\00", align 1
@ESP_ERR_HTTPS_OTA_IN_PROGRESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"Image bytes read: %d\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Complete data was not received.\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"ESP_HTTPS_OTA upgrade successful. Rebooting ...\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"ESP_HTTPS_OTA upgrade failed %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @advanced_ota_example_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGI(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @ESP_OK, align 8
  store i64 %11, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %13 = load i64, i64* @server_cert_pem_start, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %12, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %16 = load i32, i32* @CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %17, align 8
  store i32* null, i32** %6, align 8
  %18 = call i64 @esp_https_ota_begin(%struct.TYPE_4__* %5, i32** %6)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @ESP_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @vTaskDelete(i32* null)
  br label %26

26:                                               ; preds = %22, %1
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @esp_https_ota_get_img_desc(i32* %27, i32* %8)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @ESP_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @TAG, align 4
  %34 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %64

35:                                               ; preds = %26
  %36 = call i64 @validate_image_header(i32* %8)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @ESP_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @TAG, align 4
  %42 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %64

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %51
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @esp_https_ota_perform(i32* %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @ESP_ERR_HTTPS_OTA_IN_PROGRESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %56

51:                                               ; preds = %44
  %52 = load i32, i32* @TAG, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @esp_https_ota_get_image_len_read(i32* %53)
  %55 = call i32 @ESP_LOGD(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  br label %44

56:                                               ; preds = %50
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @esp_https_ota_is_complete_data_received(i32* %57)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @TAG, align 4
  %62 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %40, %32
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @esp_https_ota_finish(i32* %65)
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @ESP_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @ESP_OK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load i32, i32* @TAG, align 4
  %76 = call i32 @ESP_LOGI(i32 %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %78 = sdiv i32 1000, %77
  %79 = call i32 @vTaskDelay(i32 %78)
  %80 = call i32 (...) @esp_restart()
  br label %85

81:                                               ; preds = %70, %64
  %82 = load i32, i32* @TAG, align 4
  %83 = load i64, i64* %3, align 8
  %84 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %81, %74
  br label %86

86:                                               ; preds = %85, %86
  %87 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %88 = sdiv i32 1000, %87
  %89 = call i32 @vTaskDelay(i32 %88)
  br label %86
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @esp_https_ota_begin(%struct.TYPE_4__*, i32**) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @vTaskDelete(i32*) #1

declare dso_local i64 @esp_https_ota_get_img_desc(i32*, i32*) #1

declare dso_local i64 @validate_image_header(i32*) #1

declare dso_local i64 @esp_https_ota_perform(i32*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @esp_https_ota_get_image_len_read(i32*) #1

declare dso_local i32 @esp_https_ota_is_complete_data_received(i32*) #1

declare dso_local i64 @esp_https_ota_finish(i32*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @esp_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
