; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_prvInitialiseTaskLists.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freertos/extr_tasks.c_prvInitialiseTaskLists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@configMAX_PRIORITIES = common dso_local global i64 0, align 8
@pxReadyTasksLists = common dso_local global i32* null, align 8
@xDelayedTaskList1 = common dso_local global i32 0, align 4
@xDelayedTaskList2 = common dso_local global i32 0, align 4
@xPendingReadyList = common dso_local global i32* null, align 8
@portNUM_PROCESSORS = common dso_local global i32 0, align 4
@pxDelayedTaskList = common dso_local global i32* null, align 8
@pxOverflowDelayedTaskList = common dso_local global i32* null, align 8
@xSuspendedTaskList = common dso_local global i32 0, align 4
@xTasksWaitingTermination = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @prvInitialiseTaskLists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvInitialiseTaskLists() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @configMAX_PRIORITIES, align 8
  %5 = icmp ult i64 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32*, i32** @pxReadyTasksLists, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = call i32 @vListInitialise(i32* %9)
  br label %11

11:                                               ; preds = %6
  %12 = load i64, i64* %1, align 8
  %13 = add i64 %12, 1
  store i64 %13, i64* %1, align 8
  br label %2

14:                                               ; preds = %2
  %15 = call i32 @vListInitialise(i32* @xDelayedTaskList1)
  %16 = call i32 @vListInitialise(i32* @xDelayedTaskList2)
  %17 = load i32*, i32** @xPendingReadyList, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @vListInitialise(i32* %18)
  %20 = load i32, i32* @portNUM_PROCESSORS, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32*, i32** @xPendingReadyList, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = call i32 @vListInitialise(i32* %24)
  br label %26

26:                                               ; preds = %22, %14
  store i32* @xDelayedTaskList1, i32** @pxDelayedTaskList, align 8
  store i32* @xDelayedTaskList2, i32** @pxOverflowDelayedTaskList, align 8
  ret void
}

declare dso_local i32 @vListInitialise(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
