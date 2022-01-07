; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_node/onoff_client/main/extr_ble_mesh_demo_main.c_ble_mesh_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_node/onoff_client/main/extr_ble_mesh_demo_main.c_ble_mesh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@example_ble_mesh_provisioning_cb = common dso_local global i32 0, align 4
@example_ble_mesh_generic_client_cb = common dso_local global i32 0, align 4
@example_ble_mesh_config_server_cb = common dso_local global i32 0, align 4
@provision = common dso_local global i32 0, align 4
@composition = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Initializing mesh failed (err %d)\00", align 1
@ESP_BLE_MESH_PROV_ADV = common dso_local global i32 0, align 4
@ESP_BLE_MESH_PROV_GATT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"BLE Mesh Node initialized\00", align 1
@LED_G = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @ble_mesh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ble_mesh_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = load i32, i32* @example_ble_mesh_provisioning_cb, align 4
  %4 = call i32 @esp_ble_mesh_register_prov_callback(i32 %3)
  %5 = load i32, i32* @example_ble_mesh_generic_client_cb, align 4
  %6 = call i32 @esp_ble_mesh_register_generic_client_callback(i32 %5)
  %7 = load i32, i32* @example_ble_mesh_config_server_cb, align 4
  %8 = call i32 @esp_ble_mesh_register_config_server_callback(i32 %7)
  %9 = call i64 @esp_ble_mesh_init(i32* @provision, i32* @composition)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %0
  %13 = load i32, i32* @TAG, align 4
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @ESP_LOGE(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %2, align 8
  store i64 %16, i64* %1, align 8
  br label %28

17:                                               ; preds = %0
  %18 = load i32, i32* @ESP_BLE_MESH_PROV_ADV, align 4
  %19 = load i32, i32* @ESP_BLE_MESH_PROV_GATT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @esp_ble_mesh_node_prov_enable(i32 %20)
  %22 = load i32, i32* @TAG, align 4
  %23 = call i32 @ESP_LOGI(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @LED_G, align 4
  %25 = load i32, i32* @LED_ON, align 4
  %26 = call i32 @board_led_operation(i32 %24, i32 %25)
  %27 = load i64, i64* %2, align 8
  store i64 %27, i64* %1, align 8
  br label %28

28:                                               ; preds = %17, %12
  %29 = load i64, i64* %1, align 8
  ret i64 %29
}

declare dso_local i32 @esp_ble_mesh_register_prov_callback(i32) #1

declare dso_local i32 @esp_ble_mesh_register_generic_client_callback(i32) #1

declare dso_local i32 @esp_ble_mesh_register_config_server_callback(i32) #1

declare dso_local i64 @esp_ble_mesh_init(i32*, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #1

declare dso_local i32 @esp_ble_mesh_node_prov_enable(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @board_led_operation(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
