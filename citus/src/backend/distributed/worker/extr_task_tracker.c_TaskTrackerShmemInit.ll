; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_TaskTrackerShmemInit.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_TaskTrackerShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@MaxTrackedTasksPerNode = common dso_local global i64 0, align 8
@WORKER_TASK_SIZE = common dso_local global i32 0, align 4
@tag_hash = common dso_local global i32 0, align 4
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_FUNCTION = common dso_local global i32 0, align 4
@AddinShmemInitLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Worker Task Control\00", align 1
@WorkerTasksSharedState = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Worker Task Hash Tranche\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Worker Task Hash\00", align 1
@TaskTrackerTaskHash = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @TaskTrackerShmemInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TaskTrackerShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load i64, i64* @MaxTrackedTasksPerNode, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = sdiv i64 %7, 8
  store i64 %8, i64* %5, align 8
  %9 = call i32 @memset(%struct.TYPE_7__* %2, i32 0, i32 12)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  store i32 8, i32* %10, align 4
  %11 = load i32, i32* @WORKER_TASK_SIZE, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @tag_hash, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @HASH_ELEM, align 4
  %16 = load i32, i32* @HASH_FUNCTION, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @AddinShmemInitLock, align 4
  %19 = load i32, i32* @LW_EXCLUSIVE, align 4
  %20 = call i32 @LWLockAcquire(i32 %18, i32 %19)
  %21 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 24, i32* %1)
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %0
  %26 = call i64 (...) @LWLockNewTrancheId()
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @LWLockRegisterTranche(i64 %33, i8* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @LWLockInitialize(i32* %39, i64 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  br label %46

46:                                               ; preds = %25, %0
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32* @ShmemInitHash(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %47, i64 %48, %struct.TYPE_7__* %2, i32 %49)
  store i32* %50, i32** @TaskTrackerTaskHash, align 8
  %51 = load i32, i32* @AddinShmemInitLock, align 4
  %52 = call i32 @LWLockRelease(i32 %51)
  %53 = load i32*, i32** @TaskTrackerTaskHash, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @WorkerTasksSharedState, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = call i32 (...) @prev_shmem_startup_hook()
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i64 @LWLockNewTrancheId(...) #1

declare dso_local i32 @LWLockRegisterTranche(i64, i8*) #1

declare dso_local i32 @LWLockInitialize(i32*, i64) #1

declare dso_local i32* @ShmemInitHash(i8*, i64, i64, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @prev_shmem_startup_hook(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
