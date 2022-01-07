; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_ble_scan_setup_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_ble_scan_setup_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }

@.str = private unnamed_addr constant [58 x i8] c"bta_ble_scan_setup_cb : evt: %d, ref_value: %d, status:%d\00", align 1
@BTA_BLE_BATCH_SCAN_ENB_EVT = common dso_local global i32 0, align 4
@BTA_BLE_BATCH_SCAN_CFG_STRG_EVT = common dso_local global i32 0, align 4
@BTA_BLE_BATCH_SCAN_DIS_EVT = common dso_local global i32 0, align 4
@BTA_BLE_BATCH_SCAN_PARAM_EVT = common dso_local global i32 0, align 4
@bta_dm_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_ble_scan_setup_cb(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %21 [
    i32 129, label %13
    i32 131, label %15
    i32 130, label %17
    i32 128, label %19
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @BTA_BLE_BATCH_SCAN_ENB_EVT, align 4
  store i32 %14, i32* %7, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @BTA_BLE_BATCH_SCAN_CFG_STRG_EVT, align 4
  store i32 %16, i32* %7, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @BTA_BLE_BATCH_SCAN_DIS_EVT, align 4
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @BTA_BLE_BATCH_SCAN_PARAM_EVT, align 4
  store i32 %20, i32* %7, align 4
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %19, %17, %15, %13
  %23 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_cb, i32 0, i32 0), align 8
  %24 = icmp ne i32 (i32, i32, i32)* null, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_cb, i32 0, i32 0), align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %26(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
