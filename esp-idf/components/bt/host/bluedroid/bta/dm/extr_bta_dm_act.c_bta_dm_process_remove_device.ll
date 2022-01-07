; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_process_remove_device.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_process_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@bta_dm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HCI_SUCCESS = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@BTA_DM_BLE_DEV_UNPAIRED_EVT = common dso_local global i32 0, align 4
@BTA_DM_DEV_UNPAIRED_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @bta_dm_process_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_process_remove_device(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i32 @BTA_GATTC_CancelOpen(i32 0, i32 %6, i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @BTM_SecDeleteDevice(i32 %9, i64 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @BTA_GATTC_Refresh(i32 %12, i32 0)
  %14 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bta_dm_cb, i32 0, i32 0), align 8
  %15 = icmp ne i32 (i32, %struct.TYPE_7__*)* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @bdcpy(i32 %19, i32 %20)
  %22 = load i32, i32* @HCI_SUCCESS, align 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %16
  %29 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bta_dm_cb, i32 0, i32 0), align 8
  %30 = load i32, i32* @BTA_DM_BLE_DEV_UNPAIRED_EVT, align 4
  %31 = call i32 %29(i32 %30, %struct.TYPE_7__* %5)
  br label %36

32:                                               ; preds = %16
  %33 = load i32 (i32, %struct.TYPE_7__*)*, i32 (i32, %struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bta_dm_cb, i32 0, i32 0), align 8
  %34 = load i32, i32* @BTA_DM_DEV_UNPAIRED_EVT, align 4
  %35 = call i32 %33(i32 %34, %struct.TYPE_7__* %5)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

declare dso_local i32 @BTA_GATTC_CancelOpen(i32, i32, i32) #1

declare dso_local i32 @BTM_SecDeleteDevice(i32, i64) #1

declare dso_local i32 @BTA_GATTC_Refresh(i32, i32) #1

declare dso_local i32 @bdcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
