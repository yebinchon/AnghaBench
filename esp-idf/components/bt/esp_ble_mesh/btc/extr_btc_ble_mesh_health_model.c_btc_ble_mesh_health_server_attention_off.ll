; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/btc/extr_btc_ble_mesh_health_model.c_btc_ble_mesh_health_server_attention_off.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/btc/extr_btc_ble_mesh_health_model.c_btc_ble_mesh_health_server_attention_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_mesh_model = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }

@ESP_BLE_MESH_HEALTH_SERVER_ATTENTION_OFF_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_ble_mesh_health_server_attention_off(%struct.bt_mesh_model* %0) #0 {
  %2 = alloca %struct.bt_mesh_model*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  store %struct.bt_mesh_model* %0, %struct.bt_mesh_model** %2, align 8
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false)
  %5 = load %struct.bt_mesh_model*, %struct.bt_mesh_model** %2, align 8
  %6 = bitcast %struct.bt_mesh_model* %5 to i32*
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32* %6, i32** %8, align 8
  %9 = load i32, i32* @ESP_BLE_MESH_HEALTH_SERVER_ATTENTION_OFF_EVT, align 4
  %10 = call i32 @btc_ble_mesh_health_server_callback(%struct.TYPE_5__* %3, i32 %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @btc_ble_mesh_health_server_callback(%struct.TYPE_5__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
