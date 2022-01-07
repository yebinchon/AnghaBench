; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_scb_alloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_scb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@bta_ag_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@BTA_AG_NUM_SCB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@BTM_INVALID_SCO_INDEX = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bta_ag_timer_cback = common dso_local global i32 0, align 4
@BTA_AG_SCO_MSBC_SETTINGS_T2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bta_ag_scb_alloc %d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of ag scbs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* ()* @bta_ag_scb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @bta_ag_scb_alloc() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bta_ag_cb, i32 0, i32 0), align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i64 0
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %1, align 8
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %40, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @BTA_AG_NUM_SCB, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %5
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = load i64, i64* @TRUE, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* @BTM_INVALID_SCO_INDEX, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %25 = ptrtoint %struct.TYPE_7__* %24 to i64
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i64 %25, i64* %28, align 8
  %29 = load i32, i32* @bta_ag_timer_cback, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @BTA_AG_SCO_MSBC_SETTINGS_T2, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %37 = call i32 @bta_ag_scb_to_idx(%struct.TYPE_7__* %36)
  %38 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %45

39:                                               ; preds = %9
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 1
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %1, align 8
  br label %5

45:                                               ; preds = %14, %5
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @BTA_AG_NUM_SCB, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  %50 = call i32 @APPL_TRACE_WARNING(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  ret %struct.TYPE_7__* %52
}

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @bta_ag_scb_to_idx(%struct.TYPE_7__*) #1

declare dso_local i32 @APPL_TRACE_WARNING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
