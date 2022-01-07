; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/ethernet/eth2ap/main/extr_ethernet_example_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/ethernet/eth2ap/main/extr_ethernet_example_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
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
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %0
  %11 = call i64 (...) @nvs_flash_erase()
  %12 = call i32 @ESP_ERROR_CHECK(i64 %11)
  %13 = call i64 (...) @nvs_flash_init()
  store i64 %13, i64* %1, align 8
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i64, i64* %1, align 8
  %16 = call i32 @ESP_ERROR_CHECK(i64 %15)
  %17 = call i64 (...) @esp_event_loop_create_default()
  %18 = call i32 @ESP_ERROR_CHECK(i64 %17)
  %19 = call i64 (...) @initialize_flow_control()
  %20 = call i32 @ESP_ERROR_CHECK(i64 %19)
  %21 = call i32 (...) @initialize_ethernet()
  %22 = call i32 (...) @initialize_wifi()
  ret void
}

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i64 @esp_event_loop_create_default(...) #1

declare dso_local i64 @initialize_flow_control(...) #1

declare dso_local i32 @initialize_ethernet(...) #1

declare dso_local i32 @initialize_wifi(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
