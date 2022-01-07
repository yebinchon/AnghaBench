; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_TaskTrackerRegister.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_TaskTrackerRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32, i32 }

@shmem_startup_hook = common dso_local global i32 0, align 4
@prev_shmem_startup_hook = common dso_local global i32 0, align 4
@TaskTrackerShmemInit = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i64 0, align 8
@BGWORKER_SHMEM_ACCESS = common dso_local global i32 0, align 4
@BgWorkerStart_ConsistentState = common dso_local global i32 0, align 4
@BGW_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"citus\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"TaskTrackerMain\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"task tracker\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TaskTrackerRegister() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = load i32, i32* @shmem_startup_hook, align 4
  store i32 %2, i32* @prev_shmem_startup_hook, align 4
  %3 = load i32, i32* @TaskTrackerShmemInit, align 4
  store i32 %3, i32* @shmem_startup_hook, align 4
  %4 = load i64, i64* @IsUnderPostmaster, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %30

7:                                                ; preds = %0
  %8 = call i32 (...) @TaskTrackerShmemSize()
  %9 = call i32 @RequestAddinShmemSpace(i32 %8)
  %10 = call i32 @memset(%struct.TYPE_4__* %1, i32 0, i32 32)
  %11 = load i32, i32* @BGWORKER_SHMEM_ACCESS, align 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 6
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @BgWorkerStart_ConsistentState, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BGW_MAXLEN, align 4
  %19 = call i32 @snprintf(i32 %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @BGW_MAXLEN, align 4
  %23 = call i32 @snprintf(i32 %21, i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BGW_MAXLEN, align 4
  %28 = call i32 @snprintf(i32 %26, i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @RegisterBackgroundWorker(%struct.TYPE_4__* %1)
  br label %30

30:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @RequestAddinShmemSpace(i32) #1

declare dso_local i32 @TaskTrackerShmemSize(...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @RegisterBackgroundWorker(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
