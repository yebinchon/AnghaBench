; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_pm_timer_cback.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_pm.c_bta_dm_pm_timer_cback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32, i32*, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@BTA_DM_NUM_PM_TIMER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"dm_pm_timer[%d] in use? %d\00", align 1
@bta_dm_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BTA_DM_PM_MODE_TIMER_MAX = common dso_local global i64 0, align 8
@BTA_ID_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"dm_pm_timer[%d] expires, timer_idx=%d\00", align 1
@FALSE = common dso_local global i64 0, align 8
@BTA_DM_PM_TIMER_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bta_dm_pm_timer_cback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_dm_pm_timer_cback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %82, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @BTA_DM_NUM_PM_TIMER, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %85

10:                                               ; preds = %6
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_cb, i32 0, i32 0), align 8
  %13 = load i64, i64* %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_cb, i32 0, i32 0), align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %81

24:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %59, %24
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @BTA_DM_PM_MODE_TIMER_MAX, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_cb, i32 0, i32 0), align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i8*, i8** %2, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = icmp eq i32* %36, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %29
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_cb, i32 0, i32 0), align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = load i32, i32* @BTA_ID_MAX, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_cb, i32 0, i32 0), align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %56)
  br label %62

58:                                               ; preds = %29
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %4, align 8
  br label %25

62:                                               ; preds = %40, %25
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_cb, i32 0, i32 0), align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i64, i64* @FALSE, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_cb, i32 0, i32 0), align 8
  %72 = load i64, i64* %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i64 %70, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %62
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @BTA_DM_PM_MODE_TIMER_MAX, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %85

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %10
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %3, align 8
  br label %6

85:                                               ; preds = %79, %6
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* @BTA_DM_NUM_PM_TIMER, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %121

90:                                               ; preds = %85
  %91 = call i64 @osi_malloc(i32 12)
  %92 = inttoptr i64 %91 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %5, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %121

95:                                               ; preds = %90
  %96 = load i32, i32* @BTA_DM_PM_TIMER_EVT, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_cb, i32 0, i32 0), align 8
  %101 = load i64, i64* %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %4, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @bta_dm_cb, i32 0, i32 0), align 8
  %114 = load i64, i64* %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @bdcpy(i32 %112, i32 %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = call i32 @bta_sys_sendmsg(%struct.TYPE_8__* %119)
  br label %121

121:                                              ; preds = %89, %95, %90
  ret void
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i64, i64) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
