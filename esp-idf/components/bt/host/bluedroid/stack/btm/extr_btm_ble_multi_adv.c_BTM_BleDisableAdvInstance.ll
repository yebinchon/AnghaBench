; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_BTM_BleDisableAdvInstance.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_multi_adv.c_BTM_BleDisableAdvInstance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"BTM_BleDisableAdvInstance with inst_id:%d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Controller does not support Multi ADV\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4
@BTM_BLE_MULTI_ADV_DEFAULT_STD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTM_BLE_MULTI_ADV_DISABLE_EVT = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@btm_multi_adv_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleDisableAdvInstance(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_5__* %5)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 0, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (...) @BTM_BleMaxMultiAdvInstanceCount()
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @BTM_BLE_MULTI_ADV_DEFAULT_STD, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @BTM_BLE_MULTI_ADV_DISABLE_EVT, align 4
  %28 = call i32 @btm_ble_enable_multi_adv(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @BTM_CMD_STARTED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %24
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_multi_adv_cb, i32 0, i32 0), align 8
  %33 = load i32, i32* %3, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %35
  %37 = call i32 @btm_ble_multi_adv_configure_rpa(%struct.TYPE_7__* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_multi_adv_cb, i32 0, i32 0), align 8
  %39 = load i32, i32* %3, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = call i32 @btu_stop_timer_oneshot(i32* %43)
  %45 = load i32, i32* @FALSE, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_multi_adv_cb, i32 0, i32 0), align 8
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %31, %24
  br label %53

53:                                               ; preds = %52, %20, %16
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i32) #1

declare dso_local i32 @BTM_BleGetVendorCapabilities(%struct.TYPE_5__*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @BTM_BleMaxMultiAdvInstanceCount(...) #1

declare dso_local i32 @btm_ble_enable_multi_adv(i32, i32, i32) #1

declare dso_local i32 @btm_ble_multi_adv_configure_rpa(%struct.TYPE_7__*) #1

declare dso_local i32 @btu_stop_timer_oneshot(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
