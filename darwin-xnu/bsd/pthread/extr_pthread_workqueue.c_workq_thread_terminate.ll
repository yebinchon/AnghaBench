; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_terminate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.uthread = type { i32, i32 }
%struct.workqueue = type { i64, i32, i32, i32 }

@uu_workq_entry = common dso_local global i32 0, align 4
@UT_WORKQ_DYING = common dso_local global i32 0, align 4
@TRACE_wq_thread_terminate = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@wq_max_threads = common dso_local global i64 0, align 8
@WORKQ_THREADREQ_CAN_CREATE_THREADS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workq_thread_terminate(%struct.proc* %0, %struct.uthread* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.uthread*, align 8
  %5 = alloca %struct.workqueue*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.uthread* %1, %struct.uthread** %4, align 8
  %6 = load %struct.proc*, %struct.proc** %3, align 8
  %7 = call %struct.workqueue* @proc_get_wqptr_fast(%struct.proc* %6)
  store %struct.workqueue* %7, %struct.workqueue** %5, align 8
  %8 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %9 = call i32 @workq_lock_spin(%struct.workqueue* %8)
  %10 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %11 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %10, i32 0, i32 3
  %12 = load %struct.uthread*, %struct.uthread** %4, align 8
  %13 = load i32, i32* @uu_workq_entry, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.uthread* %12, i32 %13)
  %15 = load %struct.uthread*, %struct.uthread** %4, align 8
  %16 = getelementptr inbounds %struct.uthread, %struct.uthread* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UT_WORKQ_DYING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @TRACE_wq_thread_terminate, align 4
  %23 = load i32, i32* @DBG_FUNC_END, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %26 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %27 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @WQ_TRACE_WQ(i32 %24, %struct.workqueue* %25, i32 %28, i32 0, i32 0, i32 0)
  %30 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %31 = call i32 @workq_death_policy_evaluate(%struct.workqueue* %30, i32 1)
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %34 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 8
  %37 = sext i32 %35 to i64
  %38 = load i64, i64* @wq_max_threads, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %42 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.proc*, %struct.proc** %3, align 8
  %47 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %48 = load i32, i32* @WORKQ_THREADREQ_CAN_CREATE_THREADS, align 4
  %49 = call i32 @workq_schedule_creator(%struct.proc* %46, %struct.workqueue* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.workqueue*, %struct.workqueue** %5, align 8
  %53 = call i32 @workq_unlock(%struct.workqueue* %52)
  %54 = load %struct.uthread*, %struct.uthread** %4, align 8
  %55 = getelementptr inbounds %struct.uthread, %struct.uthread* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @thread_deallocate(i32 %56)
  ret void
}

declare dso_local %struct.workqueue* @proc_get_wqptr_fast(%struct.proc*) #1

declare dso_local i32 @workq_lock_spin(%struct.workqueue*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.uthread*, i32) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @workq_death_policy_evaluate(%struct.workqueue*, i32) #1

declare dso_local i32 @workq_schedule_creator(%struct.proc*, %struct.workqueue*, i32) #1

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

declare dso_local i32 @thread_deallocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
