; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_ble_multi_adv_upd_param.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_ble_multi_adv_upd_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i32, i64, i8*, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@bta_dm_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@BTA_BLE_MULTI_ADV_PARAM_EVT = common dso_local global i32 0, align 4
@BTA_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_ble_multi_adv_upd_param(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i64 0, i64* %3, align 8
  store i8* null, i8** %4, align 8
  %5 = call i64 (...) @BTM_BleMaxMultiAdvInstanceCount()
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 (...) @BTM_BleMaxMultiAdvInstanceCount()
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = call i64 @BTM_BleUpdateAdvInstParam(i64 %24, i32* %29)
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %20, %13, %7, %1
  %32 = load i64, i64* @BTM_CMD_STARTED, align 8
  %33 = load i64, i64* %3, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i8* @btm_ble_multi_adv_get_ref(i64 %39)
  store i8* %40, i8** %4, align 8
  %41 = load i32 (i32, i64, i8*, i32)*, i32 (i32, i64, i8*, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_dm_cb, i32 0, i32 0), align 8
  %42 = load i32, i32* @BTA_BLE_MULTI_ADV_PARAM_EVT, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* @BTA_FAILURE, align 4
  %49 = call i32 %41(i32 %42, i64 %46, i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %35, %31
  ret void
}

declare dso_local i64 @BTM_BleMaxMultiAdvInstanceCount(...) #1

declare dso_local i64 @BTM_BleUpdateAdvInstParam(i64, i32*) #1

declare dso_local i8* @btm_ble_multi_adv_get_ref(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
