; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_death_policy_evaluate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_death_policy_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i64, i32 }
%struct.uthread = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TRACE_wq_thread_terminate = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@UT_WORKQ_DYING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.workqueue*, i64)* @workq_death_policy_evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workq_death_policy_evaluate(%struct.workqueue* %0, i64 %1) #0 {
  %3 = alloca %struct.workqueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uthread*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.workqueue* %0, %struct.workqueue** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %9 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp sge i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %17 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %76

22:                                               ; preds = %2
  %23 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %24 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %76

28:                                               ; preds = %22
  %29 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %30 = call %struct.uthread* @workq_oldest_killable_idle_thread(%struct.workqueue* %29)
  store %struct.uthread* %30, %struct.uthread** %5, align 8
  %31 = icmp eq %struct.uthread* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %76

33:                                               ; preds = %28
  %34 = call i64 (...) @mach_absolute_time()
  store i64 %34, i64* %6, align 8
  %35 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %36 = call i64 @workq_kill_delay_for_idle_thread(%struct.workqueue* %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.uthread*, %struct.uthread** %5, align 8
  %39 = getelementptr inbounds %struct.uthread, %struct.uthread* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %37, %42
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %33
  %47 = load i32, i32* @TRACE_wq_thread_terminate, align 4
  %48 = load i32, i32* @DBG_FUNC_START, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %51 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %52 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @WQ_TRACE_WQ(i32 %49, %struct.workqueue* %50, i32 %53, i32 0, i32 0, i32 0)
  %55 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %56 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* @UT_WORKQ_DYING, align 4
  %60 = load %struct.uthread*, %struct.uthread** %5, align 8
  %61 = getelementptr inbounds %struct.uthread, %struct.uthread* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.uthread*, %struct.uthread** %5, align 8
  %65 = call i32 @workq_thread_wakeup(%struct.uthread* %64)
  br label %76

66:                                               ; preds = %33
  %67 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %68 = load %struct.uthread*, %struct.uthread** %5, align 8
  %69 = getelementptr inbounds %struct.uthread, %struct.uthread* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @workq_death_call_schedule(%struct.workqueue* %67, i64 %74)
  br label %76

76:                                               ; preds = %66, %46, %32, %27, %21
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.uthread* @workq_oldest_killable_idle_thread(%struct.workqueue*) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i64 @workq_kill_delay_for_idle_thread(%struct.workqueue*) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @workq_thread_wakeup(%struct.uthread*) #1

declare dso_local i32 @workq_death_call_schedule(%struct.workqueue*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
