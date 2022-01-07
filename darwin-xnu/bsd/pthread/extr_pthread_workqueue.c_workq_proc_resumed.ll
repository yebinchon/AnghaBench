; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_proc_resumed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_proc_resumed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.workqueue = type { i32 }

@WQ_PROC_SUSPENDED = common dso_local global i32 0, align 4
@WQ_DELAYED_CALL_PENDED = common dso_local global i32 0, align 4
@WQ_IMMEDIATE_CALL_PENDED = common dso_local global i32 0, align 4
@relaxed = common dso_local global i32 0, align 4
@WQ_EXITING = common dso_local global i32 0, align 4
@WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workq_proc_resumed(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.workqueue*, align 8
  %4 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %2, align 8
  %5 = load %struct.proc*, %struct.proc** %2, align 8
  %6 = call %struct.workqueue* @proc_get_wqptr(%struct.proc* %5)
  store %struct.workqueue* %6, %struct.workqueue** %3, align 8
  %7 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %8 = icmp ne %struct.workqueue* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  %11 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %12 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %11, i32 0, i32 0
  %13 = load i32, i32* @WQ_PROC_SUSPENDED, align 4
  %14 = load i32, i32* @WQ_DELAYED_CALL_PENDED, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @WQ_IMMEDIATE_CALL_PENDED, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @relaxed, align 4
  %20 = call i32 @os_atomic_and_orig(i32* %12, i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @WQ_EXITING, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %10
  %26 = call i32 (...) @disable_preemption()
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @WQ_IMMEDIATE_CALL_PENDED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %33 = call i32 @workq_schedule_immediate_thread_creation(%struct.workqueue* %32)
  br label %44

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @WQ_DELAYED_CALL_PENDED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %41 = load i32, i32* @WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART, align 4
  %42 = call i32 @workq_schedule_delayed_thread_creation(%struct.workqueue* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %31
  %45 = call i32 (...) @enable_preemption()
  br label %46

46:                                               ; preds = %9, %44, %10
  ret void
}

declare dso_local %struct.workqueue* @proc_get_wqptr(%struct.proc*) #1

declare dso_local i32 @os_atomic_and_orig(i32*, i32, i32) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @workq_schedule_immediate_thread_creation(%struct.workqueue*) #1

declare dso_local i32 @workq_schedule_delayed_thread_creation(%struct.workqueue*, i32) #1

declare dso_local i32 @enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
