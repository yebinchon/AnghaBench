; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_BTM_BleEnableDisableFilterFeature.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_BTM_BleEnableDisableFilterFeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_BLE_META_PF_ENABLE = common dso_local global i32 0, align 4
@HCI_BLE_ADV_FILTER_OCF = common dso_local global i32 0, align 4
@BTM_BLE_PCF_ENABLE_LEN = common dso_local global i32 0, align 4
@btm_ble_scan_pf_cmpl_cback = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i32 0, align 4
@btm_ble_adv_filt_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BTM_BLE_FILT_ENABLE_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_BleEnableDisableFilterFeature(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [20 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* @BTM_SUCCESS, align 8
  %13 = call i64 (...) @btm_ble_obtain_vsc_details()
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %44

17:                                               ; preds = %3
  %18 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  store i32* %18, i32** %9, align 8
  %19 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %20 = call i32 @memset(i32* %19, i32 0, i32 20)
  %21 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* @BTM_BLE_META_PF_ENABLE, align 4
  %24 = call i32 @UINT8_TO_STREAM(i32* %22, i32 %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @UINT8_TO_STREAM(i32* %25, i32 %26)
  %28 = load i32, i32* @HCI_BLE_ADV_FILTER_OCF, align 4
  %29 = load i32, i32* @BTM_BLE_PCF_ENABLE_LEN, align 4
  %30 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %31 = load i32, i32* @btm_ble_scan_pf_cmpl_cback, align 4
  %32 = call i32 @BTM_VendorSpecificCommand(i32 %28, i32 %29, i32* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @BTM_CMD_STARTED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %17
  %36 = load i32*, i32** %6, align 8
  store i32* %36, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @btm_ble_adv_filt_cb, i32 0, i32 0), align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @BTM_BLE_META_PF_ENABLE, align 4
  %39 = load i32, i32* @BTM_BLE_FILT_ENABLE_DISABLE, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @btm_ble_advfilt_enq_op_q(i32 %37, i32 %38, i32 %39, i32 %40, i32* null, i32* null)
  br label %42

42:                                               ; preds = %35, %17
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @btm_ble_obtain_vsc_details(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i32) #1

declare dso_local i32 @BTM_VendorSpecificCommand(i32, i32, i32*, i32) #1

declare dso_local i32 @btm_ble_advfilt_enq_op_q(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
