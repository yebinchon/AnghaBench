; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_croutine.c_prvCheckDelayedList.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_croutine.c_prvCheckDelayedList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@xLastTickCount = common dso_local global i64 0, align 8
@xPassedTicks = common dso_local global i64 0, align 8
@xCoRoutineTickCount = common dso_local global i64 0, align 8
@pxDelayedCoRoutineList = common dso_local global i32* null, align 8
@pxOverflowDelayedCoRoutineList = common dso_local global i32* null, align 8
@pdFALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prvCheckDelayedList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvCheckDelayedList() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32*, align 8
  %3 = call i64 (...) @xTaskGetTickCount()
  %4 = load i64, i64* @xLastTickCount, align 8
  %5 = sub nsw i64 %3, %4
  store i64 %5, i64* @xPassedTicks, align 8
  br label %6

6:                                                ; preds = %54, %0
  %7 = load i64, i64* @xPassedTicks, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %6
  %10 = load i64, i64* @xCoRoutineTickCount, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* @xCoRoutineTickCount, align 8
  %12 = load i64, i64* @xPassedTicks, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* @xPassedTicks, align 8
  %14 = load i64, i64* @xCoRoutineTickCount, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32*, i32** @pxDelayedCoRoutineList, align 8
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** @pxOverflowDelayedCoRoutineList, align 8
  store i32* %18, i32** @pxDelayedCoRoutineList, align 8
  %19 = load i32*, i32** %2, align 8
  store i32* %19, i32** @pxOverflowDelayedCoRoutineList, align 8
  br label %20

20:                                               ; preds = %16, %9
  br label %21

21:                                               ; preds = %50, %20
  %22 = load i32*, i32** @pxDelayedCoRoutineList, align 8
  %23 = call i64 @listLIST_IS_EMPTY(i32* %22)
  %24 = load i64, i64* @pdFALSE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load i32*, i32** @pxDelayedCoRoutineList, align 8
  %28 = call i64 @listGET_OWNER_OF_HEAD_ENTRY(i32* %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %1, align 8
  %30 = load i64, i64* @xCoRoutineTickCount, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = call i64 @listGET_LIST_ITEM_VALUE(%struct.TYPE_6__* %32)
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %54

36:                                               ; preds = %26
  %37 = call i32 (...) @portDISABLE_INTERRUPTS()
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i32 @uxListRemove(%struct.TYPE_6__* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @uxListRemove(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %46, %36
  %51 = call i32 (...) @portENABLE_INTERRUPTS()
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %53 = call i32 @prvAddCoRoutineToReadyQueue(%struct.TYPE_5__* %52)
  br label %21

54:                                               ; preds = %35, %21
  br label %6

55:                                               ; preds = %6
  %56 = load i64, i64* @xCoRoutineTickCount, align 8
  store i64 %56, i64* @xLastTickCount, align 8
  ret void
}

declare dso_local i64 @xTaskGetTickCount(...) #1

declare dso_local i64 @listLIST_IS_EMPTY(i32*) #1

declare dso_local i64 @listGET_OWNER_OF_HEAD_ENTRY(i32*) #1

declare dso_local i64 @listGET_LIST_ITEM_VALUE(%struct.TYPE_6__*) #1

declare dso_local i32 @portDISABLE_INTERRUPTS(...) #1

declare dso_local i32 @uxListRemove(%struct.TYPE_6__*) #1

declare dso_local i32 @portENABLE_INTERRUPTS(...) #1

declare dso_local i32 @prvAddCoRoutineToReadyQueue(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
