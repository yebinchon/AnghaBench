; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_bond_cancel.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_bond_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_10__*)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c" bta_dm_bond_cancel \00", align 1
@bta_dm_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTA_FAILURE = common dso_local global i32 0, align 4
@BTA_DM_BOND_CANCEL_CMPL_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_bond_cancel(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @APPL_TRACE_EVENT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @BTM_SecBondCancel(i32 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 0), align 8
  %12 = icmp ne i32 (i32, %struct.TYPE_10__*)* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @BTM_CMD_STARTED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @BTM_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* @BTA_FAILURE, align 4
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32 (i32, %struct.TYPE_10__*)*, i32 (i32, %struct.TYPE_10__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_cb, i32 0, i32 0), align 8
  %26 = load i32, i32* @BTA_DM_BOND_CANCEL_CMPL_EVT, align 4
  %27 = call i32 %25(i32 %26, %struct.TYPE_10__* %4)
  br label %28

28:                                               ; preds = %21, %17, %13, %1
  ret void
}

declare dso_local i32 @APPL_TRACE_EVENT(i8*) #1

declare dso_local i64 @BTM_SecBondCancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
