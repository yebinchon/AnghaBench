; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_SENDING_NOTIFICATION__THIS_PROCESS_IS_CAUSING_TOO_MANY_WAKEUPS.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_SENDING_NOTIFICATION__THIS_PROCESS_IS_CAUSING_TOO_MANY_WAKEUPS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.ledger_entry_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@task_ledgers = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@WAKEMON_DISABLE = common dso_local global i32 0, align 4
@TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON = common dso_local global i32 0, align 4
@RMON_CPUWAKES_VIOLATED = common dso_local global i32 0, align 4
@OS_LOG_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [156 x i8] c"process %s[%d] caught waking the CPU %llu times over ~%llu seconds, averaging %llu wakes / second and violating a %slimit of %llu wakes over %llu seconds.\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"FATAL \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@send_cpu_wakes_violation = common dso_local global i32 0, align 4
@kRNFatalLimitFlag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"send_resource_violation(CPU wakes, ...): error %#x\0A\00", align 1
@EXCEPTION_CODE_MAX = common dso_local global i32 0, align 4
@EXC_RESOURCE = common dso_local global i32 0, align 4
@FLAVOR_WAKEUPS_MONITOR = common dso_local global i32 0, align 4
@RESOURCE_TYPE_WAKEUPS = common dso_local global i32 0, align 4
@audio_active = common dso_local global i64 0, align 8
@disable_exc_resource = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SENDING_NOTIFICATION__THIS_PROCESS_IS_CAUSING_TOO_MANY_WAKEUPS() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ledger_entry_info, align 4
  %7 = alloca i32, align 4
  %8 = call %struct.TYPE_7__* (...) @current_task()
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %1, align 8
  store i32 0, i32* %2, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @task_ledgers, i32 0, i32 0), align 4
  %13 = call i32 @ledger_get_entry_info(i32 %11, i32 %12, %struct.ledger_entry_info* %6)
  %14 = load i32, i32* @WAKEMON_DISABLE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = call i32 @task_wakeups_monitor_ctl(%struct.TYPE_7__* %15, i32* %7, i32* null)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* @RMON_CPUWAKES_VIOLATED, align 4
  %23 = call i32 @trace_resource_violation(i32 %22, %struct.ledger_entry_info* %6)
  %24 = load i32, i32* @OS_LOG_DEFAULT, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %2, align 4
  %27 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NSEC_PER_SEC, align 4
  %32 = sdiv i32 %30, %31
  %33 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %0
  br label %45

37:                                               ; preds = %0
  %38 = load i32, i32* @NSEC_PER_SEC, align 4
  %39 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %38, %40
  %42 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %41, %43
  br label %45

45:                                               ; preds = %37, %36
  %46 = phi i32 [ 0, %36 ], [ %44, %37 ]
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %51 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %6, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %6, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NSEC_PER_SEC, align 4
  %56 = sdiv i32 %54, %55
  %57 = call i32 (i32, i8*, i8*, i32, ...) @os_log(i32 %24, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %26, i32 %28, i32 %32, i32 %46, i8* %50, i32 %52, i32 %56)
  %58 = load i32, i32* @send_cpu_wakes_violation, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %45
  %63 = load i32, i32* @kRNFatalLimitFlag, align 4
  br label %65

64:                                               ; preds = %45
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = call i32 @send_resource_violation(i32 %58, %struct.TYPE_7__* %59, %struct.ledger_entry_info* %6, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %78 = call i32 @task_terminate_internal(%struct.TYPE_7__* %77)
  br label %79

79:                                               ; preds = %76, %73
  ret void
}

declare dso_local %struct.TYPE_7__* @current_task(...) #1

declare dso_local i32 @ledger_get_entry_info(i32, i32, %struct.ledger_entry_info*) #1

declare dso_local i32 @task_wakeups_monitor_ctl(%struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @trace_resource_violation(i32, %struct.ledger_entry_info*) #1

declare dso_local i32 @os_log(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @send_resource_violation(i32, %struct.TYPE_7__*, %struct.ledger_entry_info*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @task_terminate_internal(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
