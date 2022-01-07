; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_uxTaskResetEventItemValue.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_uxTaskResetEventItemValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@xTaskQueueMutex = common dso_local global i32 0, align 4
@pxCurrentTCB = common dso_local global %struct.TYPE_2__** null, align 8
@configMAX_PRIORITIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uxTaskResetEventItemValue() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @taskENTER_CRITICAL(i32* @xTaskQueueMutex)
  %3 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pxCurrentTCB, align 8
  %4 = call i64 (...) @xPortGetCoreID()
  %5 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %3, i64 %4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i64 @listGET_LIST_ITEM_VALUE(i32* %7)
  store i64 %8, i64* %1, align 8
  %9 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pxCurrentTCB, align 8
  %10 = call i64 (...) @xPortGetCoreID()
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %9, i64 %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* @configMAX_PRIORITIES, align 8
  %15 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pxCurrentTCB, align 8
  %16 = call i64 (...) @xPortGetCoreID()
  %17 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %15, i64 %16
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %14, %20
  %22 = call i32 @listSET_LIST_ITEM_VALUE(i32* %13, i64 %21)
  %23 = call i32 @taskEXIT_CRITICAL(i32* @xTaskQueueMutex)
  %24 = load i64, i64* %1, align 8
  ret i64 %24
}

declare dso_local i32 @taskENTER_CRITICAL(i32*) #1

declare dso_local i64 @listGET_LIST_ITEM_VALUE(i32*) #1

declare dso_local i64 @xPortGetCoreID(...) #1

declare dso_local i32 @listSET_LIST_ITEM_VALUE(i32*, i64) #1

declare dso_local i32 @taskEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
