; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_api_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_ag/extr_bta_ag_main.c_bta_ag_api_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@BTA_AG_HANDLE_ALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"bta_ag_api_result: p_scb 0x%08x \00", align 1
@BTA_AG_API_RESULT_EVT = common dso_local global i32 0, align 4
@bta_ag_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTA_AG_NUM_SCB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"bta_ag_api_result p_scb 0x%08x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @bta_ag_api_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bta_ag_api_result(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BTA_AG_HANDLE_ALL, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.TYPE_10__* @bta_ag_scb_by_idx(i64 %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %3, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = ptrtoint %struct.TYPE_10__* %19 to i32
  %21 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = load i32, i32* @BTA_AG_API_RESULT_EVT, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = call i32 @bta_ag_sm_execute(%struct.TYPE_10__* %22, i32 %23, %struct.TYPE_11__* %24)
  br label %26

26:                                               ; preds = %18, %11
  br label %59

27:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_ag_cb, i32 0, i32 0), align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 0
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %3, align 8
  br label %30

30:                                               ; preds = %53, %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @BTA_AG_NUM_SCB, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = ptrtoint %struct.TYPE_10__* %45 to i32
  %47 = call i32 @APPL_TRACE_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = load i32, i32* @BTA_AG_API_RESULT_EVT, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = call i32 @bta_ag_sm_execute(%struct.TYPE_10__* %48, i32 %49, %struct.TYPE_11__* %50)
  br label %52

52:                                               ; preds = %44, %39, %34
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 1
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %3, align 8
  br label %30

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %58, %26
  ret void
}

declare dso_local %struct.TYPE_10__* @bta_ag_scb_by_idx(i64) #1

declare dso_local i32 @APPL_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @bta_ag_sm_execute(%struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
