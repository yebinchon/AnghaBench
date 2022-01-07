; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_update_mode_operation.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_btm_ble_update_mode_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT = common dso_local global i64 0, align 8
@BTM_BLE_ADV_DISABLE = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@BTM_BLE_CONNECT_EVT = common dso_local global i32 0, align 4
@BTM_BLE_STATE_ALL_ADV_MASK = common dso_local global i32 0, align 4
@BTM_BLE_CONNECTABLE = common dso_local global i32 0, align 4
@BLE_CONN_IDLE = common dso_local global i64 0, align 8
@HCI_ERR_HOST_REJECT_RESOURCES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_update_mode_operation(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* @BTM_BLE_ADV_DISABLE, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 2), align 4
  %14 = load i32, i32* @BTM_BLE_CONNECT_EVT, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 1), align 4
  %15 = load i32, i32* @BTM_BLE_STATE_ALL_ADV_MASK, align 4
  %16 = call i32 @btm_ble_clear_topology_mask(i32 %15)
  br label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 4
  %19 = load i32, i32* @BTM_BLE_CONNECTABLE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 1, i32 0), align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 4
  %24 = or i32 %22, %23
  %25 = call i32 @btm_ble_set_connectability(i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = call i64 (...) @btm_ble_get_conn_st()
  %28 = load i64, i64* @BLE_CONN_IDLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @HCI_ERR_HOST_REJECT_RESOURCES, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = call i32 (...) @btm_send_pending_direct_conn()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call i32 (...) @btm_ble_resume_bg_conn()
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %37, %34, %30, %26
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @btm_ble_clear_topology_mask(i32) #1

declare dso_local i32 @btm_ble_set_connectability(i32) #1

declare dso_local i64 @btm_ble_get_conn_st(...) #1

declare dso_local i32 @btm_send_pending_direct_conn(...) #1

declare dso_local i32 @btm_ble_resume_bg_conn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
