; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_di_disc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_di_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@BTA_FAILURE = common dso_local global i64 0, align 8
@bta_dm_search_cb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@bta_dm_di_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@BTA_DM_SDP_DB_SIZE = common dso_local global i32 0, align 4
@bta_dm_di_disc_callback = common dso_local global i32 0, align 4
@SDP_SUCCESS = common dso_local global i64 0, align 8
@BTA_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"No buffer to start DI discovery\00", align 1
@BTA_DM_SEARCH_CMPL_EVT = common dso_local global i32 0, align 4
@BTA_DM_API_DI_DISCOVER_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_di_disc(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load i64, i64* @BTA_FAILURE, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 2), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @bdcpy(i32 %10, i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_dm_di_cb, i32 0, i32 0), align 4
  %20 = load i32, i32* @BTA_DM_SDP_DB_SIZE, align 4
  %21 = call i64 @osi_malloc(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @bta_dm_di_disc_callback, align 4
  %35 = call i64 @SDP_DiDiscover(i32 %25, i32 %29, i32 %33, i32 %34)
  %36 = load i64, i64* @SDP_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i64, i64* @BTA_SUCCESS, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %38, %24
  br label %43

41:                                               ; preds = %1
  %42 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %40
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @BTA_FAILURE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = call i64 @osi_malloc(i32 32)
  %49 = inttoptr i64 %48 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %4, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* @BTA_DM_SEARCH_CMPL_EVT, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @BTA_DM_API_DI_DISCOVER_EVT, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = call i32 @bta_sys_sendmsg(%struct.TYPE_10__* %64)
  br label %66

66:                                               ; preds = %51, %47, %43
  ret void
}

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i64 @SDP_DiDiscover(i32, i32, i32, i32) #1

declare dso_local i32 @APPL_TRACE_ERROR(i8*) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
