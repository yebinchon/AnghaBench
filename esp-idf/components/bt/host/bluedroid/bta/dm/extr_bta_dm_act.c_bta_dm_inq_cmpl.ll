; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_inq_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_inq_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_12__*, i64*, i32, i32 (i32, %struct.TYPE_17__*)* }
%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"bta_dm_inq_cmpl\00", align 1
@bta_dm_search_cb = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@BTA_DM_INQ_CMPL_EVT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BTA_DM_SEARCH_CMPL_EVT = common dso_local global i32 0, align 4
@BTA_DM_API_DISCOVER_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_inq_cmpl(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %5 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32 (i32, %struct.TYPE_17__*)*, i32 (i32, %struct.TYPE_17__*)** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @bta_dm_search_cb, i32 0, i32 4), align 8
  %13 = load i32, i32* @BTA_DM_INQ_CMPL_EVT, align 4
  %14 = call i32 %12(i32 %13, %struct.TYPE_17__* %4)
  %15 = call %struct.TYPE_12__* (...) @BTM_InqDbFirst()
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @bta_dm_search_cb, i32 0, i32 3), align 8
  %19 = load i64*, i64** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @bta_dm_search_cb, i32 0, i32 2), align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bta_dm_discover_device(i32 %24)
  br label %42

26:                                               ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %27 = call i64 @osi_malloc(i32 12)
  %28 = inttoptr i64 %27 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %3, align 8
  %29 = icmp ne %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* @BTA_DM_SEARCH_CMPL_EVT, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @BTA_DM_API_DISCOVER_EVT, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = call i32 @bta_sys_sendmsg(%struct.TYPE_18__* %39)
  br label %41

41:                                               ; preds = %30, %26
  br label %42

42:                                               ; preds = %41, %17
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*) #1

declare dso_local %struct.TYPE_12__* @BTM_InqDbFirst(...) #1

declare dso_local i32 @bta_dm_discover_device(i32) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
