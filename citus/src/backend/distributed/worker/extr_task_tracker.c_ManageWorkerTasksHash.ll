; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_ManageWorkerTasksHash.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_ManageWorkerTasksHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@WorkerTasksSharedState = common dso_local global %struct.TYPE_6__* null, align 8
@LW_SHARED = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@TASK_TO_REMOVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ManageWorkerTasksHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ManageWorkerTasksHash(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** @NIL, align 8
  store i32* %6, i32** %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* @LW_SHARED, align 4
  %10 = call i32 @LWLockAcquire(i32* %8, i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @SchedulableTaskList(i32* %11)
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @LWLockRelease(i32* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* @LW_EXCLUSIVE, align 4
  %19 = call i32 @LWLockAcquire(i32* %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = call i32 (...) @InvalidateConnParamsHashEntries()
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** @NIL, align 8
  %29 = icmp ne i32* %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ScheduleWorkerTasks(i32* %31, i32* %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @list_free_deep(i32* %34)
  br label %36

36:                                               ; preds = %30, %26
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @hash_seq_init(i32* %3, i32* %37)
  %39 = call i64 @hash_seq_search(i32* %3)
  %40 = inttoptr i64 %39 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %5, align 8
  br label %41

41:                                               ; preds = %57, %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @ManageWorkerTask(%struct.TYPE_5__* %45, i32* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TASK_TO_REMOVE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @RemoveWorkerTask(%struct.TYPE_5__* %54, i32* %55)
  br label %57

57:                                               ; preds = %53, %44
  %58 = call i64 @hash_seq_search(i32* %3)
  %59 = inttoptr i64 %58 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %5, align 8
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @LWLockRelease(i32* %62)
  ret void
}

declare dso_local i32 @LWLockAcquire(i32*, i32) #1

declare dso_local i32* @SchedulableTaskList(i32*) #1

declare dso_local i32 @LWLockRelease(i32*) #1

declare dso_local i32 @InvalidateConnParamsHashEntries(...) #1

declare dso_local i32 @ScheduleWorkerTasks(i32*, i32*) #1

declare dso_local i32 @list_free_deep(i32*) #1

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @ManageWorkerTask(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @RemoveWorkerTask(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
