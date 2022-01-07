; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_next_seq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_core/extr_net.c_bt_mesh_next_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@bt_mesh = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CONFIG_BLE_MESH_SETTINGS = common dso_local global i32 0, align 4
@BLE_MESH_IVU_IN_PROGRESS = common dso_local global i32 0, align 4
@IV_UPDATE_SEQ_LIMIT = common dso_local global i64 0, align 8
@BLE_MESH_KEY_PRIMARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_mesh_next_seq() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %3 = add nsw i64 %2, 1
  store i64 %3, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %4 = trunc i64 %2 to i32
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @CONFIG_BLE_MESH_SETTINGS, align 4
  %6 = call i64 @IS_ENABLED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @bt_mesh_store_seq()
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 2), align 8
  %12 = load i32, i32* @BLE_MESH_IVU_IN_PROGRESS, align 4
  %13 = call i32 @bt_mesh_atomic_test_bit(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 0), align 8
  %17 = load i64, i64* @IV_UPDATE_SEQ_LIMIT, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32, i32* @BLE_MESH_KEY_PRIMARY, align 4
  %21 = call i64 @bt_mesh_subnet_get(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bt_mesh, i32 0, i32 1), align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @bt_mesh_net_iv_update(i64 %25, i32 1)
  %27 = call i32 @bt_mesh_net_sec_update(i32* null)
  br label %28

28:                                               ; preds = %23, %19, %15, %10
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @bt_mesh_store_seq(...) #1

declare dso_local i32 @bt_mesh_atomic_test_bit(i32, i32) #1

declare dso_local i64 @bt_mesh_subnet_get(i32) #1

declare dso_local i32 @bt_mesh_net_iv_update(i64, i32) #1

declare dso_local i32 @bt_mesh_net_sec_update(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
