; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_death_call_schedule.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_death_call_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.workqueue = type { i32, i32 }

@relaxed = common dso_local global i32 0, align 4
@WQ_EXITING = common dso_local global i32 0, align 4
@WQ_DEATH_CALL_SCHEDULED = common dso_local global i32 0, align 4
@TRACE_wq_death_call = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@wq_reduce_pool_window = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@THREAD_CALL_DELAY_LEEWAY = common dso_local global i32 0, align 4
@THREAD_CALL_DELAY_USER_BACKGROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.workqueue*, i32)* @workq_death_call_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workq_death_call_schedule(%struct.workqueue* %0, i32 %1) #0 {
  %3 = alloca %struct.workqueue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.workqueue* %0, %struct.workqueue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %7 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %6, i32 0, i32 1
  %8 = load i32, i32* @relaxed, align 4
  %9 = call i32 @os_atomic_load(i32* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @WQ_EXITING, align 4
  %12 = load i32, i32* @WQ_DEATH_CALL_SCHEDULED, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %19 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %18, i32 0, i32 1
  %20 = load i32, i32* @WQ_DEATH_CALL_SCHEDULED, align 4
  %21 = load i32, i32* @relaxed, align 4
  %22 = call i32 @os_atomic_or(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @TRACE_wq_death_call, align 4
  %24 = load i32, i32* @DBG_FUNC_NONE, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %27 = call i32 @WQ_TRACE_WQ(i32 %25, %struct.workqueue* %26, i32 1, i32 0, i32 0, i32 0)
  %28 = load %struct.workqueue*, %struct.workqueue** %3, align 8
  %29 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wq_reduce_pool_window, i32 0, i32 0), align 4
  %33 = sdiv i32 %32, 10
  %34 = load i32, i32* @THREAD_CALL_DELAY_LEEWAY, align 4
  %35 = load i32, i32* @THREAD_CALL_DELAY_USER_BACKGROUND, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @thread_call_enter_delayed_with_leeway(i32 %30, i32* null, i32 %31, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @os_atomic_load(i32*, i32) #1

declare dso_local i32 @os_atomic_or(i32*, i32, i32) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @thread_call_enter_delayed_with_leeway(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
