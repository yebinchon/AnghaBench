; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_on_ledger_footprint_exceeded.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_on_ledger_footprint_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@OS_REASON_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@OS_REASON_JETSAM = common dso_local global i32 0, align 4
@JETSAM_REASON_MEMORY_PERPROCESSLIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"task_exceeded footprint: failed to allocate jetsam reason\0A\00", align 1
@corpse_for_fatal_memkill = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@OS_REASON_FLAG_GENERATE_CRASH_REPORT = common dso_local global i32 0, align 4
@kMemorystatusKilledPerProcessLimit = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"task_exceeded_footprint: failed to kill the current task (exiting?).\0A\00", align 1
@memorystatus_hwm_candidates = common dso_local global i64 0, align 8
@OS_LOG_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memorystatus_on_ledger_footprint_exceeded(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** @OS_REASON_NULL, align 8
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %7, align 8
  %10 = call %struct.TYPE_8__* (...) @current_proc()
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %3
  %14 = load i32, i32* @OS_REASON_JETSAM, align 4
  %15 = load i32, i32* @JETSAM_REASON_MEMORY_PERPROCESSLIMIT, align 4
  %16 = call %struct.TYPE_9__* @os_reason_create(i32 %14, i32 %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %7, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = icmp eq %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %36

21:                                               ; preds = %13
  %22 = load i64, i64* @corpse_for_fatal_memkill, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = call i64 @proc_send_synchronous_EXC_RESOURCE(%struct.TYPE_8__* %25)
  %27 = load i64, i64* @FALSE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @OS_REASON_FLAG_GENERATE_CRASH_REPORT, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %24, %21
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @kMemorystatusKilledPerProcessLimit, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = call i64 @memorystatus_kill_process_sync(i32 %39, i32 %40, %struct.TYPE_9__* %41)
  %43 = load i64, i64* @TRUE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %36
  br label %50

48:                                               ; preds = %3
  %49 = load i64, i64* @TRUE, align 8
  store i64 %49, i64* @memorystatus_hwm_candidates, align 8
  br label %50

50:                                               ; preds = %48, %47
  ret void
}

declare dso_local %struct.TYPE_8__* @current_proc(...) #1

declare dso_local %struct.TYPE_9__* @os_reason_create(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @proc_send_synchronous_EXC_RESOURCE(%struct.TYPE_8__*) #1

declare dso_local i64 @memorystatus_kill_process_sync(i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
