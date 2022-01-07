; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_TaskTrackerMain.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_TaskTrackerMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TaskTrackerMain.processStartUp = internal global i32 1, align 4
@SIGHUP = common dso_local global i32 0, align 4
@TrackerSigHupHandler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@TrackerShutdownHandler = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Task Tracker\00", align 1
@ALLOCSET_DEFAULT_MINSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_INITSIZE = common dso_local global i32 0, align 4
@ALLOCSET_DEFAULT_MAXSIZE = common dso_local global i32 0, align 4
@error_context_stack = common dso_local global i32* null, align 8
@PG_exception_stack = common dso_local global i32* null, align 8
@got_SIGHUP = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@got_SIGTERM = common dso_local global i64 0, align 8
@ExitOnAnyError = common dso_local global i32 0, align 4
@TaskTrackerTaskHash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TaskTrackerMain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @SIGHUP, align 4
  %6 = load i32, i32* @TrackerSigHupHandler, align 4
  %7 = call i32 @pqsignal(i32 %5, i32 %6)
  %8 = load i32, i32* @SIGTERM, align 4
  %9 = load i32, i32* @TrackerShutdownHandler, align 4
  %10 = call i32 @pqsignal(i32 %8, i32 %9)
  %11 = call i32 (...) @BackgroundWorkerUnblockSignals()
  %12 = load i32, i32* @TopMemoryContext, align 4
  %13 = load i32, i32* @ALLOCSET_DEFAULT_MINSIZE, align 4
  %14 = load i32, i32* @ALLOCSET_DEFAULT_INITSIZE, align 4
  %15 = load i32, i32* @ALLOCSET_DEFAULT_MAXSIZE, align 4
  %16 = call i32* @AllocSetContextCreateExtended(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @MemoryContextSwitchTo(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @sigsetjmp(i32 %19, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  store i32* null, i32** @error_context_stack, align 8
  %23 = call i32 (...) @HOLD_INTERRUPTS()
  %24 = call i32 (...) @EmitErrorReport()
  %25 = call i32 (...) @LWLockReleaseAll()
  %26 = call i32 @AtEOXact_Files(i32 0)
  %27 = call i32 @AtEOXact_HashTables(i32 0)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @MemoryContextSwitchTo(i32* %28)
  %30 = call i32 (...) @FlushErrorState()
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @MemoryContextResetAndDeleteChildren(i32* %31)
  %33 = call i32 (...) @RESUME_INTERRUPTS()
  %34 = call i32 @pg_usleep(i64 1000000)
  br label %35

35:                                               ; preds = %22, %1
  store i32* %4, i32** @PG_exception_stack, align 8
  %36 = load i32, i32* @TaskTrackerMain.processStartUp, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  store i32 0, i32* @TaskTrackerMain.processStartUp, align 4
  %39 = call i32 (...) @TrackerCleanupJobDirectories()
  %40 = call i32 (...) @TrackerCleanupJobSchemas()
  br label %41

41:                                               ; preds = %38, %35
  br label %42

42:                                               ; preds = %62, %41
  %43 = call i32 (...) @PostmasterIsAlive()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %42
  %48 = load i32, i32* @got_SIGHUP, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  store i32 0, i32* @got_SIGHUP, align 4
  %51 = load i32, i32* @PGC_SIGHUP, align 4
  %52 = call i32 @ProcessConfigFile(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i64, i64* @got_SIGTERM, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  store i32 1, i32* @ExitOnAnyError, align 4
  %57 = load i32, i32* @TaskTrackerTaskHash, align 4
  %58 = call i32 @TrackerCleanupConnections(i32 %57)
  %59 = load i32, i32* @TaskTrackerTaskHash, align 4
  %60 = call i32 @TrackerRegisterShutDown(i32 %59)
  %61 = call i32 @proc_exit(i32 0)
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, i32* @TaskTrackerTaskHash, align 4
  %64 = call i32 @ManageWorkerTasksHash(i32 %63)
  %65 = call i32 (...) @TrackerDelayLoop()
  br label %42
}

declare dso_local i32 @pqsignal(i32, i32) #1

declare dso_local i32 @BackgroundWorkerUnblockSignals(...) #1

declare dso_local i32* @AllocSetContextCreateExtended(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32*) #1

declare dso_local i64 @sigsetjmp(i32, i32) #1

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @EmitErrorReport(...) #1

declare dso_local i32 @LWLockReleaseAll(...) #1

declare dso_local i32 @AtEOXact_Files(i32) #1

declare dso_local i32 @AtEOXact_HashTables(i32) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @MemoryContextResetAndDeleteChildren(i32*) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @TrackerCleanupJobDirectories(...) #1

declare dso_local i32 @TrackerCleanupJobSchemas(...) #1

declare dso_local i32 @PostmasterIsAlive(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @ProcessConfigFile(i32) #1

declare dso_local i32 @TrackerCleanupConnections(i32) #1

declare dso_local i32 @TrackerRegisterShutDown(i32) #1

declare dso_local i32 @proc_exit(i32) #1

declare dso_local i32 @ManageWorkerTasksHash(i32) #1

declare dso_local i32 @TrackerDelayLoop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
