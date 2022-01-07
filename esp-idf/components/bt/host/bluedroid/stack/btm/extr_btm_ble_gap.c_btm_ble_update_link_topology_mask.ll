; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_update_link_topology_mask.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_update_link_topology_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@BTM_BLE_STATE_ALL_CONN_MASK = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@HCI_ROLE_MASTER = common dso_local global i64 0, align 8
@BTM_BLE_STATE_MASTER_BIT = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i64 0, align 8
@BTM_BLE_STATE_SLAVE_BIT = common dso_local global i32 0, align 4
@BTM_BLE_ADV_DISABLE = common dso_local global i32 0, align 4
@BTM_BLE_CONNECT_EVT = common dso_local global i32 0, align 4
@BTM_BLE_STATE_ALL_ADV_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_ble_update_link_topology_mask(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @BTM_BLE_STATE_ALL_CONN_MASK, align 4
  %6 = call i32 @btm_ble_clear_topology_mask(i32 %5)
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %21, %15
  br label %28

28:                                               ; preds = %27, %9
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %30 = load i64, i64* @HCI_ROLE_MASTER, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @BTM_BLE_STATE_MASTER_BIT, align 4
  %36 = call i32 @btm_ble_set_topology_mask(i32 %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %39 = load i64, i64* @HCI_ROLE_SLAVE, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @BTM_BLE_STATE_SLAVE_BIT, align 4
  %45 = call i32 @btm_ble_set_topology_mask(i32 %44)
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* @HCI_ROLE_SLAVE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @BTM_BLE_ADV_DISABLE, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 1, i32 1), align 4
  %55 = load i32, i32* @BTM_BLE_CONNECT_EVT, align 4
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 1, i32 0), align 8
  %56 = load i32, i32* @BTM_BLE_STATE_ALL_ADV_MASK, align 4
  %57 = call i32 @btm_ble_clear_topology_mask(i32 %56)
  br label %58

58:                                               ; preds = %53, %50, %46
  ret void
}

declare dso_local i32 @btm_ble_clear_topology_mask(i32) #1

declare dso_local i32 @btm_ble_set_topology_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
