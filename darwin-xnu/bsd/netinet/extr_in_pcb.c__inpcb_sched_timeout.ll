; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c__inpcb_sched_timeout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c__inpcb_sched_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@inpcb_timeout_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@inpcb_timeout_run = common dso_local global i32 0, align 4
@inpcb_garbage_collecting = common dso_local global i64 0, align 8
@inpcb_ticking = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@inpcb_fast_timer_on = common dso_local global i64 0, align 8
@inpcb_thread_call = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@THREAD_CALL_DELAY_LEEWAY = common dso_local global i32 0, align 4
@inpcb_fast_thread_call = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @_inpcb_sched_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_inpcb_sched_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @NSEC_PER_SEC, align 4
  %6 = call i32 @clock_interval_to_deadline(i32 1, i32 %5, i32* %3)
  %7 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %8 = call i32 @LCK_MTX_ASSERT(i32* @inpcb_timeout_lock, i32 %7)
  %9 = load i32, i32* @inpcb_timeout_run, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load i64, i64* @inpcb_garbage_collecting, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @inpcb_ticking, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %14, %11
  %18 = call i32 @lck_mtx_convert_spin(i32* @inpcb_timeout_lock)
  %19 = load i32, i32* @inpcb_timeout_run, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @inpcb_timeout_run, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* @inpcb_fast_timer_on, align 8
  %25 = load i32, i32* @inpcb_thread_call, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @thread_call_enter_delayed(i32 %25, i32 %26)
  br label %38

28:                                               ; preds = %17
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* @inpcb_fast_timer_on, align 8
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @NSEC_PER_SEC, align 4
  %32 = call i32 @clock_interval_to_absolutetime_interval(i32 %30, i32 %31, i32* %4)
  %33 = load i32, i32* @inpcb_thread_call, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @THREAD_CALL_DELAY_LEEWAY, align 4
  %37 = call i32 @thread_call_enter_delayed_with_leeway(i32 %33, i32* null, i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %28, %23
  br label %57

39:                                               ; preds = %14, %1
  %40 = load i32, i32* @inpcb_timeout_run, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i64, i64* @inpcb_fast_timer_on, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = call i32 @lck_mtx_convert_spin(i32* @inpcb_timeout_lock)
  %50 = load i32, i32* @inpcb_timeout_run, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @inpcb_timeout_run, align 4
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* @inpcb_fast_timer_on, align 8
  %53 = load i32, i32* @inpcb_fast_thread_call, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @thread_call_enter_delayed(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %45, %42, %39
  br label %57

57:                                               ; preds = %56, %38
  ret void
}

declare dso_local i32 @clock_interval_to_deadline(i32, i32, i32*) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @lck_mtx_convert_spin(i32*) #1

declare dso_local i32 @thread_call_enter_delayed(i32, i32) #1

declare dso_local i32 @clock_interval_to_absolutetime_interval(i32, i32, i32*) #1

declare dso_local i32 @thread_call_enter_delayed_with_leeway(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
