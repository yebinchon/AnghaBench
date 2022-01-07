; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_phy_rtc.c_test_phy_rtc_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/test/esp32/extr_test_phy_rtc.c_test_phy_rtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"no free pages or nvs version mismatch, erase..\00", align 1
@PHY_WIFI_MODULE = common dso_local global i32 0, align 4
@PHY_BT_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_phy_rtc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_phy_rtc_init() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @nvs_flash_init()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @ESP_ERR_NVS_NO_FREE_PAGES, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @ESP_ERR_NVS_NEW_VERSION_FOUND, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGI(i32 %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 (...) @nvs_flash_erase()
  %14 = call i32 @TEST_ESP_OK(i64 %13)
  %15 = call i64 (...) @nvs_flash_init()
  store i64 %15, i64* %1, align 8
  br label %16

16:                                               ; preds = %10, %6
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @TEST_ESP_OK(i64 %17)
  %19 = load i32, i32* @PHY_WIFI_MODULE, align 4
  %20 = call i32 @esp_phy_load_cal_and_init(i32 %19)
  %21 = call i32 @TEST_ASSERT(i32 1)
  %22 = call i32 (...) @nvs_flash_deinit()
  ret void
}

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @TEST_ESP_OK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i32 @esp_phy_load_cal_and_init(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @nvs_flash_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
