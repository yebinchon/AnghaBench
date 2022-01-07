; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_SENDING_NOTIFICATION__THIS_PROCESS_IS_CAUSING_TOO_MUCH_IO.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task.c_SENDING_NOTIFICATION__THIS_PROCESS_IS_CAUSING_TOO_MUCH_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ledger_entry_info = type { i32, i32, i32 }

@task_ledgers = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@IOMON_DISABLE = common dso_local global i32 0, align 4
@RMON_LOGWRITES_VIOLATED = common dso_local global i32 0, align 4
@OS_LOG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [108 x i8] c"process [%d] caught causing excessive I/O (flavor: %d). Task I/O: %lld MB. [Limit : %lld MB per %lld secs]\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@send_disk_writes_violation = common dso_local global i32 0, align 4
@kRNFlagsNone = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"send_resource_violation(disk_writes, ...): error %#x\0A\00", align 1
@EXCEPTION_CODE_MAX = common dso_local global i32 0, align 4
@EXC_RESOURCE = common dso_local global i32 0, align 4
@RESOURCE_TYPE_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SENDING_NOTIFICATION__THIS_PROCESS_IS_CAUSING_TOO_MUCH_IO(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.ledger_entry_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = call %struct.TYPE_6__* (...) @current_task()
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %4, align 8
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %22 [
    i32 128, label %10
    i32 129, label %16
  ]

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 1), align 4
  %15 = call i32 @ledger_get_entry_info(i32 %13, i32 %14, %struct.ledger_entry_info* %5)
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @task_ledgers, i32 0, i32 0), align 4
  %21 = call i32 @ledger_get_entry_info(i32 %19, i32 %20, %struct.ledger_entry_info* %5)
  br label %22

22:                                               ; preds = %1, %16, %10
  %23 = load i32, i32* @IOMON_DISABLE, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = call i32 @task_io_monitor_ctl(%struct.TYPE_6__* %24, i32* %7)
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, 129
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @RMON_LOGWRITES_VIOLATED, align 4
  %30 = call i32 @trace_resource_violation(i32 %29, %struct.ledger_entry_info* %5)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* @OS_LOG_DEFAULT, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %2, align 4
  %35 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 1048576
  %38 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %5, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 1048576
  %41 = getelementptr inbounds %struct.ledger_entry_info, %struct.ledger_entry_info* %5, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NSEC_PER_SEC, align 4
  %44 = sdiv i32 %42, %43
  %45 = call i32 @os_log(i32 %32, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %37, i32 %40, i32 %44)
  %46 = load i32, i32* @send_disk_writes_violation, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = load i32, i32* @kRNFlagsNone, align 4
  %49 = call i32 @send_resource_violation(i32 %46, %struct.TYPE_6__* %47, %struct.ledger_entry_info* %5, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %31
  ret void
}

declare dso_local %struct.TYPE_6__* @current_task(...) #1

declare dso_local i32 @ledger_get_entry_info(i32, i32, %struct.ledger_entry_info*) #1

declare dso_local i32 @task_io_monitor_ctl(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @trace_resource_violation(i32, %struct.ledger_entry_info*) #1

declare dso_local i32 @os_log(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @send_resource_violation(i32, %struct.TYPE_6__*, %struct.ledger_entry_info*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
