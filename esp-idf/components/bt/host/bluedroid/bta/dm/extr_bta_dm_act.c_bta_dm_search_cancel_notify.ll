; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_search_cancel_notify.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_search_cancel_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32 (i32, i32*)* }

@bta_dm_search_cb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BTA_DM_SEARCH_CANCEL_CMPL_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_search_cancel_notify(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @UNUSED(i32* %3)
  %5 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_search_cb, i32 0, i32 3), align 8
  %6 = icmp ne i32 (i32, i32*)* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32 (i32, i32*)*, i32 (i32, i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_search_cb, i32 0, i32 3), align 8
  %9 = load i32, i32* @BTA_DM_SEARCH_CANCEL_CMPL_EVT, align 4
  %10 = call i32 %8(i32 %9, i32* null)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_search_cb, i32 0, i32 2), align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = call i32 (...) @BTM_CancelRemoteDeviceName()
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %21 = call i32 @bta_dm_cancel_gatt_discovery(i32 %20)
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @BTM_CancelRemoteDeviceName(...) #1

declare dso_local i32 @bta_dm_cancel_gatt_discovery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
