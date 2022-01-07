; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/bleprph/main/extr_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ESP_ERR_NVS_NO_FREE_PAGES = common dso_local global i64 0, align 8
@ESP_ERR_NVS_NEW_VERSION_FOUND = common dso_local global i64 0, align 8
@bleprph_on_reset = common dso_local global i32 0, align 4
@ble_hs_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@bleprph_on_sync = common dso_local global i32 0, align 4
@gatt_svr_register_cb = common dso_local global i32 0, align 4
@ble_store_util_status_rr = common dso_local global i32 0, align 4
@CONFIG_EXAMPLE_IO_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"nimble-bleprph\00", align 1
@bleprph_host_task = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@tag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"scli_init() failed\00", align 1

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
  %21 = load i32, i32* @bleprph_on_reset, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_hs_cfg, i32 0, i32 9), align 4
  %22 = load i32, i32* @bleprph_on_sync, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_hs_cfg, i32 0, i32 8), align 4
  %23 = load i32, i32* @gatt_svr_register_cb, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_hs_cfg, i32 0, i32 7), align 4
  %24 = load i32, i32* @ble_store_util_status_rr, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_hs_cfg, i32 0, i32 6), align 4
  %25 = load i32, i32* @CONFIG_EXAMPLE_IO_TYPE, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_hs_cfg, i32 0, i32 5), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ble_hs_cfg, i32 0, i32 2), align 4
  %26 = call i32 (...) @gatt_svr_init()
  store i32 %26, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = call i32 @ble_svc_gap_device_name_set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call i32 (...) @ble_store_config_init()
  %37 = load i32, i32* @bleprph_host_task, align 4
  %38 = call i32 @nimble_port_freertos_init(i32 %37)
  %39 = call i32 (...) @scli_init()
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @ESP_OK, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %15
  %44 = load i32, i32* @tag, align 4
  %45 = call i32 @ESP_LOGE(i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %15
  ret void
}

declare dso_local i64 @nvs_flash_init(...) #1

declare dso_local i32 @ESP_ERROR_CHECK(i64) #1

declare dso_local i64 @nvs_flash_erase(...) #1

declare dso_local i64 @esp_nimble_hci_and_controller_init(...) #1

declare dso_local i32 @nimble_port_init(...) #1

declare dso_local i32 @gatt_svr_init(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ble_svc_gap_device_name_set(i8*) #1

declare dso_local i32 @ble_store_config_init(...) #1

declare dso_local i32 @nimble_port_freertos_init(i32) #1

declare dso_local i32 @scli_init(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
