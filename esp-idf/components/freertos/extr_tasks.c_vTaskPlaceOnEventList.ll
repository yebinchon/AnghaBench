; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_vTaskPlaceOnEventList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_vTaskPlaceOnEventList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@xTaskQueueMutex = common dso_local global i32 0, align 4
@pxCurrentTCB = common dso_local global %struct.TYPE_3__** null, align 8
@uxTopReadyPriority = common dso_local global i32 0, align 4
@xTickCount = common dso_local global i64 0, align 8
@portMAX_DELAY = common dso_local global i64 0, align 8
@xSuspendedTaskList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vTaskPlaceOnEventList(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @configASSERT(i32* %6)
  %8 = call i32 @taskENTER_CRITICAL(i32* @xTaskQueueMutex)
  %9 = load i32*, i32** %3, align 8
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pxCurrentTCB, align 8
  %11 = call i64 (...) @xPortGetCoreID()
  %12 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 %11
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = call i32 @vListInsert(i32* %9, i32* %14)
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pxCurrentTCB, align 8
  %17 = call i64 (...) @xPortGetCoreID()
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %16, i64 %17
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i64 @uxListRemove(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pxCurrentTCB, align 8
  %25 = call i64 (...) @xPortGetCoreID()
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @uxTopReadyPriority, align 4
  %31 = call i32 @portRESET_READY_PRIORITY(i32 %29, i32 %30)
  br label %34

32:                                               ; preds = %2
  %33 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i64, i64* @xTickCount, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %35, %36
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 (i64, ...) @prvAddCurrentTaskToDelayedList(i64 %38)
  %40 = call i32 @taskEXIT_CRITICAL(i32* @xTaskQueueMutex)
  ret void
}

declare dso_local i32 @configASSERT(i32*) #1

declare dso_local i32 @taskENTER_CRITICAL(i32*) #1

declare dso_local i32 @vListInsert(i32*, i32*) #1

declare dso_local i64 @xPortGetCoreID(...) #1

declare dso_local i64 @uxListRemove(i32*) #1

declare dso_local i32 @portRESET_READY_PRIORITY(i32, i32) #1

declare dso_local i32 @mtCOVERAGE_TEST_MARKER(...) #1

declare dso_local i32 @prvAddCurrentTaskToDelayedList(i64, ...) #1

declare dso_local i32 @taskEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
