; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/api/core/extr_esp_ble_mesh_provisioning_api.c_esp_ble_mesh_node_prov_enable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/api/core/extr_esp_ble_mesh_provisioning_api.c_esp_ble_mesh_node_prov_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@ESP_BLE_HOST_STATUS_ENABLED = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_PROV = common dso_local global i32 0, align 4
@BTC_BLE_MESH_ACT_PROV_ENABLE = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_mesh_node_prov_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %2, align 4
  %5 = bitcast %struct.TYPE_8__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = bitcast %struct.TYPE_7__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 16, i1 false)
  %7 = load i32, i32* @ESP_BLE_HOST_STATUS_ENABLED, align 4
  %8 = call i32 @ESP_BLE_HOST_STATUS_CHECK(i32 %7)
  %9 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @BTC_PID_PROV, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @BTC_BLE_MESH_ACT_PROV_ENABLE, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = call i64 @btc_transfer_context(%struct.TYPE_7__* %4, %struct.TYPE_8__* %3, i32 8, i32* null)
  %19 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ESP_OK, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ESP_FAIL, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ESP_BLE_HOST_STATUS_CHECK(i32) #2

declare dso_local i64 @btc_transfer_context(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
