; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_rx_netkey_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_access.c_bt_mesh_rx_netkey_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** }
%struct.bt_mesh_subnet = type { i32 }

@bt_mesh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bt_mesh_subnet* @bt_mesh_rx_netkey_get(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.bt_mesh_subnet*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.bt_mesh_subnet* null, %struct.bt_mesh_subnet** %3, align 8
  %4 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %3, align 8
  ret %struct.bt_mesh_subnet* %4
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
