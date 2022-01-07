; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_PlacementExecutionDone.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_PlacementExecutionDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@TASK_EXECUTION_NOT_FINISHED = common dso_local global i64 0, align 8
@PLACEMENT_EXECUTION_FINISHED = common dso_local global i64 0, align 8
@FILE_FINALIZED = common dso_local global i64 0, align 8
@FILE_INACTIVE = common dso_local global i32 0, align 4
@PLACEMENT_EXECUTION_NOT_READY = common dso_local global i64 0, align 8
@PLACEMENT_EXECUTION_FAILED = common dso_local global i64 0, align 8
@TASK_EXECUTION_FINISHED = common dso_local global i64 0, align 8
@TASK_EXECUTION_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @PlacementExecutionDone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlacementExecutionDone(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %7, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* @TASK_EXECUTION_NOT_FINISHED, align 8
  store i64 %24, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i64, i64* @PLACEMENT_EXECUTION_FINISHED, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %62

31:                                               ; preds = %2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = call i64 @ShouldMarkPlacementsInvalidOnFailure(%struct.TYPE_14__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %11, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FILE_FINALIZED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @FILE_INACTIVE, align 4
  %49 = call i32 @UpdateShardPlacementState(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %35
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PLACEMENT_EXECUTION_NOT_READY, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i64, i64* @PLACEMENT_EXECUTION_FAILED, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %27
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @TASK_EXECUTION_NOT_FINISHED, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %98

67:                                               ; preds = %62
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = call i64 @TaskExecutionStateMachine(%struct.TYPE_13__* %68)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* @TASK_EXECUTION_FINISHED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 4
  br label %98

78:                                               ; preds = %67
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @TASK_EXECUTION_FAILED, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %98

89:                                               ; preds = %78
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @ScheduleNextPlacementExecution(%struct.TYPE_11__* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %66, %73, %82, %97
  ret void
}

declare dso_local i64 @ShouldMarkPlacementsInvalidOnFailure(%struct.TYPE_14__*) #1

declare dso_local i32 @UpdateShardPlacementState(i32, i32) #1

declare dso_local i64 @TaskExecutionStateMachine(%struct.TYPE_13__*) #1

declare dso_local i32 @ScheduleNextPlacementExecution(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
