; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_BTM_BleDisableBatchScan.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_batchscan.c_BTM_BleDisableBatchScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 (...)* }

@BTM_NO_RESOURCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c" BTM_BleDisableBatchScan\00", align 1
@BTM_ILLEGAL_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Controller does not support batch scan\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_BLE_BATCH_SCAN_SET_PARAMS = common dso_local global i32 0, align 4
@BTM_BLE_SCAN_DISABLE_CALLED = common dso_local global i32 0, align 4
@BTM_BLE_BATCH_SCAN_DISABLE_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BTM_BleDisableBatchScan(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* @BTM_NO_RESOURCES, align 8
  store i64 %6, i64* %4, align 8
  %7 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32 (...)*, i32 (...)** %9, align 8
  %11 = call i32 (...) %10()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* @BTM_ILLEGAL_VALUE, align 8
  store i64 %14, i64* %2, align 8
  br label %37

15:                                               ; preds = %1
  %16 = call i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_4__* %5)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 0, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i64, i64* @BTM_ERR_PROCESSING, align 8
  store i64 %22, i64* %2, align 8
  br label %37

23:                                               ; preds = %15
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i64 @btm_ble_enable_disable_batchscan(i32 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* @BTM_CMD_STARTED, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @BTM_BLE_BATCH_SCAN_SET_PARAMS, align 4
  %31 = load i32, i32* @BTM_BLE_SCAN_DISABLE_CALLED, align 4
  %32 = load i32, i32* @BTM_BLE_BATCH_SCAN_DISABLE_EVT, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @btm_ble_batchscan_enq_op_q(i32 %30, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %35, %20, %13
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_4__*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i64 @btm_ble_enable_disable_batchscan(i32) #1

declare dso_local i32 @btm_ble_batchscan_enq_op_q(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
