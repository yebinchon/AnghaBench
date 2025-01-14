; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/extr_test_wifi_init.c_wifi_stop_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/extr_test_wifi_init.c_wifi_stop_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nvs_flash_init\00", align 1
@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"no free pages or NFS version mismatch, erase..\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"event_init\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"esp_wifi_init\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"esp_wifi_stop\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"esp_wifi_deinit\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"nvs_flash_deinit...\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"test passed...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wifi_stop_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_stop_task(i8* %0) #0 {
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
  %31 = call i8* @EMPH_STR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @ESP_LOGI(i32 %30, i8* %31)
  %33 = call i32 (...) @event_init()
  %34 = call i32 (...) @unity_reset_leak_checks()
  %35 = load i32, i32* @TAG, align 4
  %36 = call i8* @EMPH_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @ESP_LOGI(i32 %35, i8* %36)
  %38 = call i64 @esp_wifi_init(i32* %4)
  %39 = load i64, i64* @ESP_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @TEST_ASSERT(i32 %41)
  %43 = load i32, i32* @TAG, align 4
  %44 = call i8* @EMPH_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 @ESP_LOGI(i32 %43, i8* %44)
  %46 = call i64 (...) @esp_wifi_stop()
  %47 = load i64, i64* @ESP_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @TEST_ASSERT(i32 %49)
  %51 = load i32, i32* @TAG, align 4
  %52 = call i8* @EMPH_STR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %53 = call i32 @ESP_LOGI(i32 %51, i8* %52)
  %54 = call i64 (...) @esp_wifi_stop()
  %55 = load i64, i64* @ESP_OK, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @TEST_ASSERT(i32 %57)
  %59 = load i32, i32* @TAG, align 4
  %60 = call i8* @EMPH_STR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %61 = call i32 @ESP_LOGI(i32 %59, i8* %60)
  %62 = call i64 (...) @esp_wifi_deinit()
  %63 = load i64, i64* @ESP_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @TEST_ASSERT(i32 %65)
  %67 = load i32, i32* @TAG, align 4
  %68 = call i8* @EMPH_STR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %69 = call i32 @ESP_LOGI(i32 %67, i8* %68)
  %70 = call i32 (...) @nvs_flash_deinit()
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 @ESP_LOGI(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @xSemaphoreGive(i32 %74)
  %76 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @WIFI_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i8* @EMPH_STR(i8*) #1

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @TEST_ESP_OK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @unity_reset_leak_checks(...) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i64 @esp_wifi_init(i32*) #1

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
