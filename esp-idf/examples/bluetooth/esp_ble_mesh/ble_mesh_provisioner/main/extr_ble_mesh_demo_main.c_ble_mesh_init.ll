; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_provisioner/main/extr_ble_mesh_demo_main.c_ble_mesh_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/esp_ble_mesh/ble_mesh_provisioner/main/extr_ble_mesh_demo_main.c_ble_mesh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@__const.ble_mesh_init.match = private unnamed_addr constant [2 x i32] [i32 221, i32 221], align 4
@ESP_BLE_MESH_KEY_PRIMARY = common dso_local global i32 0, align 4
@prov_key = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@APP_KEY_IDX = common dso_local global i32 0, align 4
@APP_KEY_OCTET = common dso_local global i32 0, align 4
@example_ble_mesh_provisioning_cb = common dso_local global i32 0, align 4
@example_ble_mesh_config_client_cb = common dso_local global i32 0, align 4
@example_ble_mesh_generic_client_cb = common dso_local global i32 0, align 4
@provision = common dso_local global i32 0, align 4
@composition = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Initializing mesh failed (err %d)\00", align 1
@ESP_BLE_MESH_PROV_ADV = common dso_local global i32 0, align 4
@ESP_BLE_MESH_PROV_GATT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"BLE Mesh Provisioner initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @ble_mesh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ble_mesh_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [2 x i32], align 4
  %3 = alloca i64, align 8
  %4 = bitcast [2 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([2 x i32]* @__const.ble_mesh_init.match to i8*), i64 8, i1 false)
  %5 = load i32, i32* @ESP_BLE_MESH_KEY_PRIMARY, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prov_key, i32 0, i32 1), align 4
  %6 = load i32, i32* @APP_KEY_IDX, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prov_key, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prov_key, i32 0, i32 2), align 4
  %8 = load i32, i32* @APP_KEY_OCTET, align 4
  %9 = call i32 @memset(i32 %7, i32 %8, i32 4)
  %10 = load i32, i32* @example_ble_mesh_provisioning_cb, align 4
  %11 = call i32 @esp_ble_mesh_register_prov_callback(i32 %10)
  %12 = load i32, i32* @example_ble_mesh_config_client_cb, align 4
  %13 = call i32 @esp_ble_mesh_register_config_client_callback(i32 %12)
  %14 = load i32, i32* @example_ble_mesh_generic_client_cb, align 4
  %15 = call i32 @esp_ble_mesh_register_generic_client_callback(i32 %14)
  %16 = call i64 @esp_ble_mesh_init(i32* @provision, i32* @composition)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %0
  %20 = load i32, i32* @TAG, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @ESP_LOGE(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %3, align 8
  store i64 %23, i64* %1, align 8
  br label %38

24:                                               ; preds = %0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %26 = call i32 @esp_ble_mesh_provisioner_set_dev_uuid_match(i32* %25, i32 8, i32 0, i32 0)
  %27 = load i32, i32* @ESP_BLE_MESH_PROV_ADV, align 4
  %28 = load i32, i32* @ESP_BLE_MESH_PROV_GATT, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @esp_ble_mesh_provisioner_prov_enable(i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prov_key, i32 0, i32 2), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prov_key, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @prov_key, i32 0, i32 0), align 4
  %34 = call i32 @esp_ble_mesh_provisioner_add_local_app_key(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 @ESP_LOGI(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* %3, align 8
  store i64 %37, i64* %1, align 8
  br label %38

38:                                               ; preds = %24, %19
  %39 = load i64, i64* %1, align 8
  ret i64 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @esp_ble_mesh_register_prov_callback(i32) #2

declare dso_local i32 @esp_ble_mesh_register_config_client_callback(i32) #2

declare dso_local i32 @esp_ble_mesh_register_generic_client_callback(i32) #2

declare dso_local i64 @esp_ble_mesh_init(i32*, i32*) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, i64) #2

declare dso_local i32 @esp_ble_mesh_provisioner_set_dev_uuid_match(i32*, i32, i32, i32) #2

declare dso_local i32 @esp_ble_mesh_provisioner_prov_enable(i32) #2

declare dso_local i32 @esp_ble_mesh_provisioner_add_local_app_key(i32, i32, i32) #2

declare dso_local i32 @ESP_LOGI(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
