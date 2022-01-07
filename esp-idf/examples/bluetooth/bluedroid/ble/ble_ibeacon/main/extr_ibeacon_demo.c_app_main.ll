; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ibeacon/main/extr_ibeacon_demo.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_ibeacon/main/extr_ibeacon_demo.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_BT_MODE_CLASSIC_BT = common dso_local global i32 0, align 4
@ESP_BT_MODE_BLE = common dso_local global i32 0, align 4
@ble_scan_params = common dso_local global i32 0, align 4
@DEMO_TAG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@vendor_config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @nvs_flash_init()
  %3 = call i32 @ESP_ERROR_CHECK(i32 %2)
  %4 = load i32, i32* @ESP_BT_MODE_CLASSIC_BT, align 4
  %5 = call i32 @esp_bt_controller_mem_release(i32 %4)
  %6 = call i32 @ESP_ERROR_CHECK(i32 %5)
  %7 = call i32 (...) @BT_CONTROLLER_INIT_CONFIG_DEFAULT()
  store i32 %7, i32* %1, align 4
  %8 = call i32 @esp_bt_controller_init(i32* %1)
  %9 = load i32, i32* @ESP_BT_MODE_BLE, align 4
  %10 = call i32 @esp_bt_controller_enable(i32 %9)
  %11 = call i32 (...) @ble_ibeacon_init()
  %12 = call i32 @esp_ble_gap_set_scan_params(i32* @ble_scan_params)
  ret void
}

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @nvs_flash_init(...) #1

declare dso_local i32 @esp_bt_controller_mem_release(i32) #1

declare dso_local i32 @BT_CONTROLLER_INIT_CONFIG_DEFAULT(...) #1

declare dso_local i32 @esp_bt_controller_init(i32*) #1

declare dso_local i32 @esp_bt_controller_enable(i32) #1

declare dso_local i32 @ble_ibeacon_init(...) #1

declare dso_local i32 @esp_ble_gap_set_scan_params(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
