; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_remname_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_remname_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i64*, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"bta_dm_remname_cback len = %d name=<%s>\00", align 1
@TRUE = common dso_local global i32 0, align 4
@bta_dm_search_cb = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@BD_NAME_LEN = common dso_local global i64 0, align 8
@bta_dm_service_search_remname_cback = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@BTA_DM_REMT_NAME_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @bta_dm_remname_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_remname_cback(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %6, i64 %9)
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bta_dm_search_cb, i32 0, i32 3), align 8
  %12 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bta_dm_search_cb, i32 0, i32 2), align 8
  %13 = bitcast i64* %12 to i8*
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load i64, i64* @BD_NAME_LEN, align 8
  %19 = call i32 @BCM_STRNCPY_S(i8* %13, i32 4, i8* %17, i64 %18)
  %20 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bta_dm_search_cb, i32 0, i32 2), align 8
  %21 = load i64, i64* @BD_NAME_LEN, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %22, align 8
  %23 = call i32 @BTM_SecDeleteRmtNameNotifyCallback(i32* @bta_dm_service_search_remname_cback)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %25 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %29 = call i32 @GAP_BleReadPeerPrefConnParams(i32 %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = call i64 @osi_malloc(i32 24)
  %32 = inttoptr i64 %31 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %3, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %41 = call i32 @bdcpy(i32 %39, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = bitcast i64* %46 to i8*
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i64, i64* @BD_NAME_LEN, align 8
  %53 = call i32 @BCM_STRNCPY_S(i8* %47, i32 4, i8* %51, i64 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @BD_NAME_LEN, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @BTA_DM_REMT_NAME_EVT, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = call i32 @bta_sys_sendmsg(%struct.TYPE_13__* %65)
  br label %67

67:                                               ; preds = %34, %30
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32, i64) #1

declare dso_local i32 @BCM_STRNCPY_S(i8*, i32, i8*, i64) #1

declare dso_local i32 @BTM_SecDeleteRmtNameNotifyCallback(i32*) #1

declare dso_local i32 @GAP_BleReadPeerPrefConnParams(i32) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
