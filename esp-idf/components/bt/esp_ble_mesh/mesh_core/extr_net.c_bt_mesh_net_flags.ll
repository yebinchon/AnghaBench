; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_flags.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_net_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bt_mesh_subnet = type { i64 }

@BLE_MESH_NET_FLAG_KR = common dso_local global i32 0, align 4
@bt_mesh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BLE_MESH_IVU_IN_PROGRESS = common dso_local global i32 0, align 4
@BLE_MESH_NET_FLAG_IVU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_net_flags(%struct.bt_mesh_subnet* %0) #0 {
  %2 = alloca %struct.bt_mesh_subnet*, align 8
  %3 = alloca i32, align 4
  store %struct.bt_mesh_subnet* %0, %struct.bt_mesh_subnet** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %5 = icmp ne %struct.bt_mesh_subnet* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.bt_mesh_subnet*, %struct.bt_mesh_subnet** %2, align 8
  %8 = getelementptr inbounds %struct.bt_mesh_subnet, %struct.bt_mesh_subnet* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, i32* @BLE_MESH_NET_FLAG_KR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %6, %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 4
  %17 = load i32, i32* @BLE_MESH_IVU_IN_PROGRESS, align 4
  %18 = call i64 @bt_mesh_atomic_test_bit(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @BLE_MESH_NET_FLAG_IVU, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @bt_mesh_atomic_test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
