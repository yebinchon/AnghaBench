; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_xTaskRemoveFromEventList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_xTaskRemoveFromEventList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@xTaskQueueMutex = common dso_local global i32 0, align 4
@pdFALSE = common dso_local global i64 0, align 8
@tskNO_AFFINITY = common dso_local global i64 0, align 8
@portNUM_PROCESSORS = common dso_local global i64 0, align 8
@uxSchedulerSuspended = common dso_local global i64* null, align 8
@pdTRUE = common dso_local global i64 0, align 8
@xPendingReadyList = common dso_local global i32* null, align 8
@pxCurrentTCB = common dso_local global %struct.TYPE_6__** null, align 8
@xYieldPending = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xTaskRemoveFromEventList(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = call i32 @taskENTER_CRITICAL_ISR(i32* @xTaskQueueMutex)
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @listLIST_IS_EMPTY(i32* %10)
  %12 = load i64, i64* @pdFALSE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @listGET_OWNER_OF_HEAD_ENTRY(i32* %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = call i32 @configASSERT(%struct.TYPE_5__* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = call i32 @uxListRemove(i32* %21)
  br label %26

23:                                               ; preds = %1
  %24 = call i32 @taskEXIT_CRITICAL_ISR(i32* @xTaskQueueMutex)
  %25 = load i64, i64* @pdFALSE, align 8
  store i64 %25, i64* %2, align 8
  br label %125

26:                                               ; preds = %14
  %27 = load i64, i64* @pdFALSE, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @tskNO_AFFINITY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = call i64 (...) @xPortGetCoreID()
  store i64 %34, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %49, %33
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @portNUM_PROCESSORS, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i64*, i64** @uxSchedulerSuspended, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @pdFALSE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* @pdTRUE, align 8
  store i64 %47, i64* %6, align 8
  br label %52

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %35

52:                                               ; preds = %46, %35
  br label %65

53:                                               ; preds = %26
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %8, align 8
  %57 = load i64*, i64** @uxSchedulerSuspended, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @pdFALSE, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %6, align 8
  br label %65

65:                                               ; preds = %53, %52
  %66 = load i64, i64* %6, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = call i32 @uxListRemove(i32* %70)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = call i32 @prvAddTaskToReadyList(%struct.TYPE_5__* %72)
  br label %81

74:                                               ; preds = %65
  %75 = load i32*, i32** @xPendingReadyList, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = call i32 @vListInsertEnd(i32* %77, i32* %79)
  br label %81

81:                                               ; preds = %74, %68
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @tskCAN_RUN_HERE(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %81
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @pxCurrentTCB, align 8
  %92 = call i64 (...) @xPortGetCoreID()
  %93 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %91, i64 %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sge i64 %90, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %87
  %99 = load i64, i64* @pdTRUE, align 8
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* @pdTRUE, align 8
  %101 = load i64*, i64** @xYieldPending, align 8
  %102 = call i64 (...) @xPortGetCoreID()
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 %100, i64* %103, align 8
  br label %122

104:                                              ; preds = %87, %81
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 (...) @xPortGetCoreID()
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @taskYIELD_OTHER_CORE(i64 %113, i64 %116)
  %118 = load i64, i64* @pdFALSE, align 8
  store i64 %118, i64* %5, align 8
  br label %121

119:                                              ; preds = %104
  %120 = load i64, i64* @pdFALSE, align 8
  store i64 %120, i64* %5, align 8
  br label %121

121:                                              ; preds = %119, %110
  br label %122

122:                                              ; preds = %121, %98
  %123 = call i32 @taskEXIT_CRITICAL_ISR(i32* @xTaskQueueMutex)
  %124 = load i64, i64* %5, align 8
  store i64 %124, i64* %2, align 8
  br label %125

125:                                              ; preds = %122, %23
  %126 = load i64, i64* %2, align 8
  ret i64 %126
}

declare dso_local i32 @taskENTER_CRITICAL_ISR(i32*) #1

declare dso_local i64 @listLIST_IS_EMPTY(i32*) #1

declare dso_local i64 @listGET_OWNER_OF_HEAD_ENTRY(i32*) #1

declare dso_local i32 @configASSERT(%struct.TYPE_5__*) #1

declare dso_local i32 @uxListRemove(i32*) #1

declare dso_local i32 @taskEXIT_CRITICAL_ISR(i32*) #1

declare dso_local i64 @xPortGetCoreID(...) #1

declare dso_local i32 @prvAddTaskToReadyList(%struct.TYPE_5__*) #1

declare dso_local i32 @vListInsertEnd(i32*, i32*) #1

declare dso_local i64 @tskCAN_RUN_HERE(i64) #1

declare dso_local i32 @taskYIELD_OTHER_CORE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
