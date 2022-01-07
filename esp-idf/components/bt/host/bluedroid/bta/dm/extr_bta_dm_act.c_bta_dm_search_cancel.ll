; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_search_cancel.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_act.c_bta_dm_search_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }

@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@BTA_DM_SEARCH_CMPL_EVT = common dso_local global i8* null, align 8
@BTA_DM_API_DISCOVER_EVT = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@bta_dm_search_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BTA_DM_INQUIRY_CMPL_EVT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_dm_search_cancel(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call i32 @UNUSED(%struct.TYPE_8__* %4)
  %6 = call i64 (...) @BTM_IsInquiryActive()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = call i64 (...) @BTM_CancelInquiry()
  %10 = load i64, i64* @BTM_CMD_STARTED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = call i32 @bta_dm_search_cancel_notify(i32* null)
  %14 = call i64 @osi_malloc(i32 16)
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %3, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = icmp ne %struct.TYPE_8__* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i8*, i8** @BTA_DM_SEARCH_CMPL_EVT, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** @BTA_DM_API_DISCOVER_EVT, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = call i32 @bta_sys_sendmsg(%struct.TYPE_8__* %27)
  br label %29

29:                                               ; preds = %18, %12
  br label %32

30:                                               ; preds = %8
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_search_cb, i32 0, i32 3), align 4
  br label %32

32:                                               ; preds = %30, %29
  br label %70

33:                                               ; preds = %1
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_search_cb, i32 0, i32 2), align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %33
  %37 = call i32 (...) @BTM_CancelRemoteDeviceName()
  %38 = call i64 @osi_malloc(i32 16)
  %39 = inttoptr i64 %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %3, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i8*, i8** @BTA_DM_SEARCH_CMPL_EVT, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @BTA_DM_API_DISCOVER_EVT, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = call i32 @bta_sys_sendmsg(%struct.TYPE_8__* %50)
  br label %52

52:                                               ; preds = %41, %36
  br label %69

53:                                               ; preds = %33
  %54 = call i64 @osi_malloc(i32 16)
  %55 = inttoptr i64 %54 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %3, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i8*, i8** @BTA_DM_INQUIRY_CMPL_EVT, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load i8*, i8** @BTA_DM_API_DISCOVER_EVT, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = call i32 @bta_sys_sendmsg(%struct.TYPE_8__* %66)
  br label %68

68:                                               ; preds = %57, %53
  br label %69

69:                                               ; preds = %68, %52
  br label %70

70:                                               ; preds = %69, %32
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_search_cb, i32 0, i32 1), align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_search_cb, i32 0, i32 0), align 8
  %75 = call i32 @bta_dm_cancel_gatt_discovery(i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  ret void
}

declare dso_local i32 @UNUSED(%struct.TYPE_8__*) #1

declare dso_local i64 @BTM_IsInquiryActive(...) #1

declare dso_local i64 @BTM_CancelInquiry(...) #1

declare dso_local i32 @bta_dm_search_cancel_notify(i32*) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_8__*) #1

declare dso_local i32 @BTM_CancelRemoteDeviceName(...) #1

declare dso_local i32 @bta_dm_cancel_gatt_discovery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
