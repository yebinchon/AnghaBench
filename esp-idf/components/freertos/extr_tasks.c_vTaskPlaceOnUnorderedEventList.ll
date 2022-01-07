; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_vTaskPlaceOnUnorderedEventList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_vTaskPlaceOnUnorderedEventList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@xTaskQueueMutex = common dso_local global i32 0, align 4
@uxSchedulerSuspended = common dso_local global i64* null, align 8
@pxCurrentTCB = common dso_local global %struct.TYPE_2__** null, align 8
@taskEVENT_LIST_ITEM_VALUE_IN_USE = common dso_local global i64 0, align 8
@uxTopReadyPriority = common dso_local global i32 0, align 4
@xTickCount = common dso_local global i64 0, align 8
@portMAX_DELAY = common dso_local global i64 0, align 8
@xSuspendedTaskList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vTaskPlaceOnUnorderedEventList(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = ptrtoint i32* %8 to i32
  %10 = call i32 @configASSERT(i32 %9)
  %11 = call i32 @taskENTER_CRITICAL(i32* @xTaskQueueMutex)
  %12 = load i64*, i64** @uxSchedulerSuspended, align 8
  %13 = call i64 (...) @xPortGetCoreID()
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @configASSERT(i32 %17)
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pxCurrentTCB, align 8
  %20 = call i64 (...) @xPortGetCoreID()
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @taskEVENT_LIST_ITEM_VALUE_IN_USE, align 8
  %26 = or i64 %24, %25
  %27 = call i32 @listSET_LIST_ITEM_VALUE(i32* %23, i64 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pxCurrentTCB, align 8
  %30 = call i64 (...) @xPortGetCoreID()
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = call i32 @vListInsertEnd(i32* %28, i32* %33)
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pxCurrentTCB, align 8
  %36 = call i64 (...) @xPortGetCoreID()
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i64 @uxListRemove(i32* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %3
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pxCurrentTCB, align 8
  %44 = call i64 (...) @xPortGetCoreID()
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @uxTopReadyPriority, align 4
  %50 = call i32 @portRESET_READY_PRIORITY(i32 %48, i32 %49)
  br label %53

51:                                               ; preds = %3
  %52 = call i32 (...) @mtCOVERAGE_TEST_MARKER()
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i64, i64* @xTickCount, align 8
  %55 = load i64, i64* %6, align 8
  %56 = add nsw i64 %54, %55
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 (i64, ...) @prvAddCurrentTaskToDelayedList(i64 %57)
  %59 = call i32 @taskEXIT_CRITICAL(i32* @xTaskQueueMutex)
  ret void
}

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @taskENTER_CRITICAL(i32*) #1

declare dso_local i64 @xPortGetCoreID(...) #1

declare dso_local i32 @listSET_LIST_ITEM_VALUE(i32*, i64) #1

declare dso_local i32 @vListInsertEnd(i32*, i32*) #1

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
