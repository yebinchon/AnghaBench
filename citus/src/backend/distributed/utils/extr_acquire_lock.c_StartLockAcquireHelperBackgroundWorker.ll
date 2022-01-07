; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_acquire_lock.c_StartLockAcquireHelperBackgroundWorker.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_acquire_lock.c_StartLockAcquireHelperBackgroundWorker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32*, i32 }

@MyDatabaseId = common dso_local global i32 0, align 4
@BGW_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Citus Lock Acquire Helper: %d/%u\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"citus_lock_aqcuire\00", align 1
@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BGWORKER_BACKEND_DATABASE_CONNECTION = common dso_local global i32 0, align 4
@BgWorkerStart_RecoveryFinished = common dso_local global i32 0, align 4
@BGW_NEVER_RESTART = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"citus\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"LockAcquireHelperMain\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [69 x i8] c"could not start lock acquiring background worker to force the update\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Increasing max_worker_processes might help.\00", align 1
@EnsureStopLockAcquireHelper = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @StartLockAcquireHelperBackgroundWorker(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_10__, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  %9 = call i32 @memset(%struct.TYPE_10__* %6, i32 0, i32 56)
  %10 = call i32 @memset(%struct.TYPE_10__* %7, i32 0, i32 56)
  %11 = load i32, i32* @MyDatabaseId, align 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 11
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BGW_MAXLEN, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @MyDatabaseId, align 4
  %20 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %16, i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BGW_MAXLEN, align 4
  %24 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %22, i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %26 = load i32, i32* @BGWORKER_BACKEND_DATABASE_CONNECTION, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @BgWorkerStart_RecoveryFinished, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 8
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @BGW_NEVER_RESTART, align 4
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 7
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BGW_MAXLEN, align 4
  %36 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %34, i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BGW_MAXLEN, align 4
  %40 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %38, i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @Int32GetDatum(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = call i32 @Assert(i32 0)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i32 %47, %struct.TYPE_10__* %6, i32 56)
  %49 = call i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_10__* %7, i32** %5)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %2
  %52 = load i32, i32* @ERROR, align 4
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %54 = call i32 @errhint(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %55 = call i32 @ereport(i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %51, %2
  %57 = call %struct.TYPE_9__* @palloc0(i32 16)
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %8, align 8
  %58 = load i32, i32* @EnsureStopLockAcquireHelper, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* @CurrentMemoryContext, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = call i32 @MemoryContextRegisterResetCallback(i32 %64, %struct.TYPE_9__* %65)
  %67 = load i32*, i32** %5, align 8
  ret i32* %67
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @RegisterDynamicBackgroundWorker(%struct.TYPE_10__*, i32**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local %struct.TYPE_9__* @palloc0(i32) #1

declare dso_local i32 @MemoryContextRegisterResetCallback(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
