; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/api/core/extr_esp_ble_mesh_low_power_api.c_esp_ble_mesh_lpn_poll.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/api/core/extr_esp_ble_mesh_low_power_api.c_esp_ble_mesh_lpn_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ESP_BLE_HOST_STATUS_ENABLED = common dso_local global i32 0, align 4
@BTC_SIG_API_CALL = common dso_local global i32 0, align 4
@BTC_PID_PROV = common dso_local global i32 0, align 4
@BTC_BLE_MESH_ACT_LPN_POLL = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_ble_mesh_lpn_poll() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %2, i8 0, i64 16, i1 false)
  %3 = load i32, i32* @ESP_BLE_HOST_STATUS_ENABLED, align 4
  %4 = call i32 @ESP_BLE_HOST_STATUS_CHECK(i32 %3)
  %5 = load i32, i32* @BTC_SIG_API_CALL, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @BTC_PID_PROV, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @BTC_BLE_MESH_ACT_LPN_POLL, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = call i64 @btc_transfer_context(%struct.TYPE_3__* %1, i32* null, i32 0, i32* null)
  %12 = load i64, i64* @BT_STATUS_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @ESP_OK, align 4
  br label %18

16:                                               ; preds = %0
  %17 = load i32, i32* @ESP_FAIL, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ESP_BLE_HOST_STATUS_CHECK(i32) #2

declare dso_local i64 @btc_transfer_context(%struct.TYPE_3__*, i32*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
