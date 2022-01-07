; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_timer_evaluate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_routines.c_ml_timer_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECR_TIMER_RESCAN = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@ml_timer_evaluation_slock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ml_timer_evaluation_in_progress = common dso_local global i32 0, align 4
@CPUMASK_ALL = common dso_local global i32 0, align 4
@ASYNC = common dso_local global i32 0, align 4
@timer_queue_expire_rescan = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ml_timer_eager_evaluations = common dso_local global i32 0, align 4
@ml_timer_eager_evaluation_max = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ml_timer_evaluate() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @DECR_TIMER_RESCAN, align 4
  %4 = load i32, i32* @DBG_FUNC_START, align 4
  %5 = or i32 %3, %4
  %6 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %5, i32 0, i32 0, i32 0, i32 0, i32 0)
  %7 = call i64 (...) @mach_absolute_time()
  store i64 %7, i64* %2, align 8
  %8 = call i32 @simple_lock(i32* @ml_timer_evaluation_slock)
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* @ml_timer_evaluation_in_progress, align 4
  %10 = call i32 (...) @thread_call_delayed_timer_rescan_all()
  %11 = load i32, i32* @CPUMASK_ALL, align 4
  %12 = load i32, i32* @ASYNC, align 4
  %13 = load i32, i32* @timer_queue_expire_rescan, align 4
  %14 = call i32 @mp_cpus_call(i32 %11, i32 %12, i32 %13, i32* null)
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* @ml_timer_evaluation_in_progress, align 4
  %16 = load i32, i32* @ml_timer_eager_evaluations, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @ml_timer_eager_evaluations, align 4
  %18 = call i64 (...) @mach_absolute_time()
  store i64 %18, i64* %1, align 8
  %19 = load i32, i32* @ml_timer_eager_evaluation_max, align 4
  %20 = load i64, i64* %1, align 8
  %21 = load i64, i64* %2, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i32 @MAX(i32 %19, i64 %22)
  store i32 %23, i32* @ml_timer_eager_evaluation_max, align 4
  %24 = call i32 @simple_unlock(i32* @ml_timer_evaluation_slock)
  %25 = load i32, i32* @DECR_TIMER_RESCAN, align 4
  %26 = load i32, i32* @DBG_FUNC_END, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %27, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @thread_call_delayed_timer_rescan_all(...) #1

declare dso_local i32 @mp_cpus_call(i32, i32, i32, i32*) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
