; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/extr_test_wifi_init.c_wifi_start_stop_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/extr_test_wifi_init.c_wifi_start_stop_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nvs_flash_init\00", align 1
@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"no free pages or NFS version mismatch, erase..\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"esp_netif_init\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"event_init\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"esp_wifi_init\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"esp_wifi_start\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"esp_wifi_stop\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"esp_wifi_deinit\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"nvs_flash_deinit...\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"test passed...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wifi_start_stop_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_start_stop_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = call i32 (...) @WIFI_INIT_CONFIG_DEFAULT()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @TAG, align 4
  %10 = call i8* @EMPH_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @ESP_LOGI(i32 %9, i8* %10)
  %12 = call i64 (...) @nvs_flash_init()
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ESP_ERR_NVS_NO_FREE_PAGES, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ESP_ERR_NVS_NEW_VERSION_FOUND, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @TAG, align 4
  %22 = call i8* @EMPH_STR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @ESP_LOGI(i32 %21, i8* %22)
  %24 = call i64 (...) @nvs_flash_erase()
  %25 = call i32 @TEST_ESP_OK(i64 %24)
  %26 = call i64 (...) @nvs_flash_init()
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @TEST_ESP_OK(i64 %28)
  %30 = load i32, i32* @TAG, align 4
  %31 = call i8* @EMPH_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @ESP_LOGI(i32 %30, i8* %31)
  %33 = call i32 (...) @esp_netif_init()
  %34 = load i32, i32* @TAG, align 4
  %35 = call i8* @EMPH_STR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @ESP_LOGI(i32 %34, i8* %35)
  %37 = call i32 (...) @event_init()
  %38 = call i32 (...) @unity_reset_leak_checks()
  %39 = load i32, i32* @TAG, align 4
  %40 = call i8* @EMPH_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i32 @ESP_LOGI(i32 %39, i8* %40)
  %42 = call i64 @esp_wifi_init(i32* %4)
  %43 = load i64, i64* @ESP_OK, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @TEST_ASSERT(i32 %45)
  %47 = load i32, i32* @TAG, align 4
  %48 = call i8* @EMPH_STR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %49 = call i32 @ESP_LOGI(i32 %47, i8* %48)
  %50 = call i64 (...) @esp_wifi_start()
  %51 = load i64, i64* @ESP_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @TEST_ASSERT(i32 %53)
  %55 = load i32, i32* @TAG, align 4
  %56 = call i8* @EMPH_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %57 = call i32 @ESP_LOGI(i32 %55, i8* %56)
  %58 = call i64 (...) @esp_wifi_stop()
  %59 = load i64, i64* @ESP_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @TEST_ASSERT(i32 %61)
  %63 = load i32, i32* @TAG, align 4
  %64 = call i8* @EMPH_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %65 = call i32 @ESP_LOGI(i32 %63, i8* %64)
  %66 = call i64 (...) @esp_wifi_stop()
  %67 = load i64, i64* @ESP_OK, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @TEST_ASSERT(i32 %69)
  %71 = load i32, i32* @TAG, align 4
  %72 = call i8* @EMPH_STR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %73 = call i32 @ESP_LOGI(i32 %71, i8* %72)
  %74 = call i64 (...) @esp_wifi_deinit()
  %75 = load i64, i64* @ESP_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @TEST_ASSERT(i32 %77)
  %79 = load i32, i32* @TAG, align 4
  %80 = call i8* @EMPH_STR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %81 = call i32 @ESP_LOGI(i32 %79, i8* %80)
  %82 = call i32 (...) @nvs_flash_deinit()
  %83 = load i32, i32* @TAG, align 4
  %84 = call i32 @ESP_LOGI(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @xSemaphoreGive(i32 %86)
  %88 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i8* @EMPH_STR(i8*) #1

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @TEST_ESP_OK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i32 @esp_netif_init(...) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @unity_reset_leak_checks(...) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i64 @esp_wifi_init(i32*) #1

declare dso_local i64 @esp_wifi_start(...) #1

declare dso_local i64 @esp_wifi_stop(...) #1

declare dso_local i64 @esp_wifi_deinit(...) #1

declare dso_local i32 @nvs_flash_deinit(...) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
