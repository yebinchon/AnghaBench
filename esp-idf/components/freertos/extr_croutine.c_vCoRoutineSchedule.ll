; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_croutine.c_vCoRoutineSchedule.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_croutine.c_vCoRoutineSchedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, i32)* }

@pxReadyCoRoutineLists = common dso_local global i32* null, align 8
@uxTopCoRoutineReadyPriority = common dso_local global i64 0, align 8
@pxCurrentCoRoutine = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vCoRoutineSchedule() #0 {
  %1 = call i32 (...) @prvCheckPendingReadyList()
  %2 = call i32 (...) @prvCheckDelayedList()
  br label %3

3:                                                ; preds = %13, %0
  %4 = load i32*, i32** @pxReadyCoRoutineLists, align 8
  %5 = load i64, i64* @uxTopCoRoutineReadyPriority, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = call i64 @listLIST_IS_EMPTY(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = load i64, i64* @uxTopCoRoutineReadyPriority, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %30

13:                                               ; preds = %9
  %14 = load i64, i64* @uxTopCoRoutineReadyPriority, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* @uxTopCoRoutineReadyPriority, align 8
  br label %3

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pxCurrentCoRoutine, align 8
  %18 = load i32*, i32** @pxReadyCoRoutineLists, align 8
  %19 = load i64, i64* @uxTopCoRoutineReadyPriority, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 @listGET_OWNER_OF_NEXT_ENTRY(%struct.TYPE_4__* %17, i32* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pxCurrentCoRoutine, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pxCurrentCoRoutine, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pxCurrentCoRoutine, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %24(%struct.TYPE_4__* %25, i32 %28)
  br label %30

30:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @prvCheckPendingReadyList(...) #1

declare dso_local i32 @prvCheckDelayedList(...) #1

declare dso_local i64 @listLIST_IS_EMPTY(i32*) #1

declare dso_local i32 @listGET_OWNER_OF_NEXT_ENTRY(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
