; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker_protocol.c_TaskTrackerRunning.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker_protocol.c_TaskTrackerRunning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@WorkerTasksSharedState = common dso_local global %struct.TYPE_2__* null, align 8
@LW_SHARED = common dso_local global i32 0, align 4
@RESERVED_JOB_ID = common dso_local global i32 0, align 4
@SHUTDOWN_MARKER_TASK_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @TaskTrackerRunning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TaskTrackerRunning() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 1, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %5 = call i32 (...) @PostmasterIsAlive()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %25

9:                                                ; preds = %0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WorkerTasksSharedState, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @LW_SHARED, align 4
  %13 = call i32 @LWLockAcquire(i32* %11, i32 %12)
  %14 = load i32, i32* @RESERVED_JOB_ID, align 4
  %15 = load i32, i32* @SHUTDOWN_MARKER_TASK_ID, align 4
  %16 = call i32* @WorkerTasksHashFind(i32 %14, i32 %15)
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %9
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @WorkerTasksSharedState, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @LWLockRelease(i32* %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %20, %8
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @PostmasterIsAlive(...) #1

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32* @WorkerTasksHashFind(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
