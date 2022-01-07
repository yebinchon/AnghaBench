; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/ota/simple_ota_example/main/extr_simple_ota_example.c_simple_ota_example_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/ota/simple_ota_example/main/extr_simple_ota_example.c_simple_ota_example_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Starting OTA example\00", align 1
@CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL = common dso_local global i8* null, align 8
@server_cert_pem_start = common dso_local global i64 0, align 8
@_http_event_handler = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Firmware upgrade failed\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@OTA_URL_SIZE = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simple_ota_example_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @TAG, align 4
  %6 = call i32 @ESP_LOGI(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %8 = load i8*, i8** @CONFIG_EXAMPLE_FIRMWARE_UPGRADE_URL, align 8
  store i8* %8, i8** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %10 = load i64, i64* @server_cert_pem_start, align 8
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %14 = load i32, i32* @_http_event_handler, align 4
  store i32 %14, i32* %13, align 4
  %15 = call i64 @esp_https_ota(%struct.TYPE_3__* %3)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @ESP_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (...) @esp_restart()
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGE(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %19
  br label %25

25:                                               ; preds = %24, %25
  %26 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %27 = sdiv i32 1000, %26
  %28 = call i32 @vTaskDelay(i32 %27)
  br label %25
}

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @esp_https_ota(%struct.TYPE_3__*) #1

declare dso_local i32 @esp_restart(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
