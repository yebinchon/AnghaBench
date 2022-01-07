; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_discover_next_device.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_discover_next_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__*, i64*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"bta_dm_discover_next_device\00", align 1
@bta_dm_search_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@BTA_DM_SEARCH_CMPL_EVT = common dso_local global i32 0, align 4
@BTA_DM_API_DISCOVER_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bta_dm_discover_next_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_discover_next_device() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %4 = call %struct.TYPE_12__* @BTM_InqDbNext(%struct.TYPE_12__* %3)
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %5 = icmp ne %struct.TYPE_12__* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 3), align 8
  %8 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 2), align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bta_dm_discover_device(i32 %13)
  br label %31

15:                                               ; preds = %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %16 = call i64 @osi_malloc(i32 8)
  %17 = inttoptr i64 %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %1, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* @BTA_DM_SEARCH_CMPL_EVT, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @BTA_DM_API_DISCOVER_EVT, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %29 = call i32 @bta_sys_sendmsg(%struct.TYPE_10__* %28)
  br label %30

30:                                               ; preds = %19, %15
  br label %31

31:                                               ; preds = %30, %6
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*) #1

declare dso_local %struct.TYPE_12__* @BTM_InqDbNext(%struct.TYPE_12__*) #1

declare dso_local i32 @bta_dm_discover_device(i32) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
