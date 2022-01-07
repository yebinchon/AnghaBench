; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_xTaskResumeAll.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_xTaskResumeAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }

@pdFALSE = common dso_local global i64 0, align 8
@taskSCHEDULER_RUNNING = common dso_local global i64 0, align 8
@xTaskQueueMutex = common dso_local global i32 0, align 4
@uxSchedulerSuspended = common dso_local global i64* null, align 8
@uxCurrentNumberOfTasks = common dso_local global i64 0, align 8
@xPendingReadyList = common dso_local global i32* null, align 8
@pxCurrentTCB = common dso_local global %struct.TYPE_5__** null, align 8
@pdTRUE = common dso_local global i64 0, align 8
@xYieldPending = common dso_local global i64* null, align 8
@uxPendedTicks = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xTaskResumeAll() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @pdFALSE, align 8
  store i64 %3, i64* %2, align 8
  %4 = call i64 (...) @xTaskGetSchedulerState()
  %5 = load i64, i64* @taskSCHEDULER_RUNNING, align 8
  %6 = icmp ne i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @configASSERT(i32 %7)
  %9 = call i32 @taskENTER_CRITICAL(i32* @xTaskQueueMutex)
  %10 = load i64*, i64** @uxSchedulerSuspended, align 8
  %11 = call i64 (...) @xPortGetCoreID()
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = load i64*, i64** @uxSchedulerSuspended, align 8
  %16 = call i64 (...) @xPortGetCoreID()
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @pdFALSE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %107

21:                                               ; preds = %0
  %22 = load i64, i64* @uxCurrentNumberOfTasks, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %106

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %69, %24
  %26 = load i32*, i32** @xPendingReadyList, align 8
  %27 = call i64 (...) @xPortGetCoreID()
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i64 @listLIST_IS_EMPTY(i32* %28)
  %30 = load i64, i64* @pdFALSE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %25
  %33 = load i32*, i32** @xPendingReadyList, align 8
  %34 = call i64 (...) @xPortGetCoreID()
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i64 @listGET_OWNER_OF_HEAD_ENTRY(i32* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %1, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = call i32 @uxListRemove(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = call i32 @uxListRemove(i32* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %45 = call i32 @prvAddTaskToReadyList(%struct.TYPE_4__* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @tskCAN_RUN_HERE(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %32
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @pxCurrentTCB, align 8
  %56 = call i64 (...) @xPortGetCoreID()
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %54, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i64, i64* @pdTRUE, align 8
  %64 = load i64*, i64** @xYieldPending, align 8
  %65 = call i64 (...) @xPortGetCoreID()
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %66, align 8
  br label %69

67:                                               ; preds = %51, %32
  %68 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %69

69:                                               ; preds = %67, %62
  br label %25

70:                                               ; preds = %25
  %71 = load i64, i64* @uxPendedTicks, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %88, %73
  %75 = load i64, i64* @uxPendedTicks, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = call i64 (...) @xTaskIncrementTick()
  %79 = load i64, i64* @pdFALSE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i64, i64* @pdTRUE, align 8
  %83 = load i64*, i64** @xYieldPending, align 8
  %84 = call i64 (...) @xPortGetCoreID()
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 %82, i64* %85, align 8
  br label %88

86:                                               ; preds = %77
  %87 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %88

88:                                               ; preds = %86, %81
  %89 = load i64, i64* @uxPendedTicks, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* @uxPendedTicks, align 8
  br label %74

91:                                               ; preds = %74
  br label %94

92:                                               ; preds = %70
  %93 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %94

94:                                               ; preds = %92, %91
  %95 = load i64*, i64** @xYieldPending, align 8
  %96 = call i64 (...) @xPortGetCoreID()
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @pdTRUE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = call i32 (...) @taskYIELD_IF_USING_PREEMPTION()
  br label %105

103:                                              ; preds = %94
  %104 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %105

105:                                              ; preds = %103, %101
  br label %106

106:                                              ; preds = %105, %21
  br label %109

107:                                              ; preds = %0
  %108 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %109

109:                                              ; preds = %107, %106
  %110 = call i32 @taskEXIT_CRITICAL(i32* @xTaskQueueMutex)
  %111 = load i64, i64* %2, align 8
  ret i64 %111
}

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i64 @xTaskGetSchedulerState(...) #1

declare dso_local i32 @taskENTER_CRITICAL(i32*) #1

declare dso_local i64 @xPortGetCoreID(...) #1

declare dso_local i64 @listLIST_IS_EMPTY(i32*) #1

declare dso_local i64 @listGET_OWNER_OF_HEAD_ENTRY(i32*) #1

declare dso_local i32 @uxListRemove(i32*) #1

declare dso_local i32 @prvAddTaskToReadyList(%struct.TYPE_4__*) #1

declare dso_local i64 @tskCAN_RUN_HERE(i32) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i64 @xTaskIncrementTick(...) #1

declare dso_local i32 @taskYIELD_IF_USING_PREEMPTION(...) #1

declare dso_local i32 @taskEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
