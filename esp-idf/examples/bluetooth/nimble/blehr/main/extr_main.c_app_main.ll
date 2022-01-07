; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i64 0, align 8
@blehr_on_sync = common dso_local global i32 0, align 4
@ble_hs_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@blehr_on_reset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"blehr_tx_timer\00", align 1
@pdTRUE = common dso_local global i32 0, align 4
@blehr_tx_hrate = common dso_local global i32 0, align 4
@blehr_tx_timer = common dso_local global i32 0, align 4
@device_name = common dso_local global i32 0, align 4
@blehr_host_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 (...) @nvs_flash_init()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @ESP_ERR_NVS_NO_FREE_PAGES, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @ESP_ERR_NVS_NEW_VERSION_FOUND, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %0
  %12 = call i64 (...) @nvs_flash_erase()
  %13 = call i32 @ESP_ERROR_CHECK(i64 %12)
  %14 = call i64 (...) @nvs_flash_init()
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @ESP_ERROR_CHECK(i64 %16)
  %18 = call i64 (...) @esp_nimble_hci_and_controller_init()
  %19 = call i32 @ESP_ERROR_CHECK(i64 %18)
  %20 = call i32 (...) @nimble_port_init()
  %21 = load i32, i32* @blehr_on_sync, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_hs_cfg, i32 0, i32 1), align 4
  %22 = load i32, i32* @blehr_on_reset, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_hs_cfg, i32 0, i32 0), align 4
  %23 = call i32 @pdMS_TO_TICKS(i32 1000)
  %24 = load i32, i32* @pdTRUE, align 4
  %25 = load i32, i32* @blehr_tx_hrate, align 4
  %26 = call i32 @xTimerCreate(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i8* null, i32 %25)
  store i32 %26, i32* @blehr_tx_timer, align 4
  %27 = call i32 (...) @gatt_svr_init()
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* @device_name, align 4
  %33 = call i32 @ble_svc_gap_device_name_set(i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @blehr_host_task, align 4
  %39 = call i32 @nimble_port_freertos_init(i32 %38)
  ret void
}

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i64 @esp_nimble_hci_and_controller_init(...) #1

declare dso_local i32 @nimble_port_init(...) #1

declare dso_local i32 @xTimerCreate(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @gatt_svr_init(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ble_svc_gap_device_name_set(i32) #1

declare dso_local i32 @nimble_port_freertos_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
