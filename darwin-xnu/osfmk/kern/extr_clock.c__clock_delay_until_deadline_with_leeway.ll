; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c__clock_delay_until_deadline_with_leeway.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_clock.c__clock_delay_until_deadline_with_leeway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@clock_delay_until = common dso_local global i64 0, align 8
@THREAD_UNINT = common dso_local global i32 0, align 4
@TIMEOUT_URGENCY_LEEWAY = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_clock_delay_until_deadline_with_leeway(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %45

10:                                               ; preds = %3
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @ml_delay_should_spin(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = call i64 (...) @get_preemption_level()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = call i64 (...) @ml_get_interrupts_enabled()
  %19 = load i64, i64* @FALSE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %14, %10
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @machine_delay_until(i64 %22, i64 %23)
  br label %45

25:                                               ; preds = %17
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i64, i64* @clock_delay_until, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @THREAD_UNINT, align 4
  %32 = load i32, i32* @TIMEOUT_URGENCY_LEEWAY, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @assert_wait_deadline_with_leeway(i32 %30, i32 %31, i32 %32, i64 %33, i64 %34)
  br label %42

36:                                               ; preds = %25
  %37 = load i64, i64* @clock_delay_until, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @THREAD_UNINT, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @assert_wait_deadline(i32 %38, i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %36, %28
  %43 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %44 = call i32 @thread_block(i32 %43)
  br label %45

45:                                               ; preds = %9, %42, %21
  ret void
}

declare dso_local i64 @ml_delay_should_spin(i64) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @machine_delay_until(i64, i64) #1

declare dso_local i32 @assert_wait_deadline_with_leeway(i32, i32, i32, i64, i64) #1

declare dso_local i32 @assert_wait_deadline(i32, i32, i64) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
