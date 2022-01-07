; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kperf_helpers.c_configure_kperf_stacks_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kperf_helpers.c_configure_kperf_stacks_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KPERF_SAMPLER_USTACK = common dso_local global i32 0, align 4
@KPERF_SAMPLER_KSTACK = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configure_kperf_stacks_timer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @kperf_reset()
  %6 = call i32 @kperf_action_count_set(i32 1)
  %7 = call i32 @kperf_timer_count_set(i32 1)
  %8 = load i32, i32* @KPERF_SAMPLER_USTACK, align 4
  %9 = load i32, i32* @KPERF_SAMPLER_KSTACK, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @kperf_action_samplers_set(i32 1, i32 %10)
  %12 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %11, i32* null)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @kperf_action_filter_set_by_pid(i32 1, i32 %16)
  %18 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %17, i32* null)
  br label %19

19:                                               ; preds = %15, %2
  %20 = call i32 @kperf_timer_action_set(i32 0, i32 1)
  %21 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %20, i32* null)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NSEC_PER_MSEC, align 4
  %24 = mul i32 %22, %23
  %25 = call i32 @kperf_ns_to_ticks(i32 %24)
  %26 = call i32 @kperf_timer_period_set(i32 0, i32 %25)
  %27 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %26, i32* null)
  ret void
}

declare dso_local i32 @kperf_reset(...) #1

declare dso_local i32 @kperf_action_count_set(i32) #1

declare dso_local i32 @kperf_timer_count_set(i32) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i32*) #1

declare dso_local i32 @kperf_action_samplers_set(i32, i32) #1

declare dso_local i32 @kperf_action_filter_set_by_pid(i32, i32) #1

declare dso_local i32 @kperf_timer_action_set(i32, i32) #1

declare dso_local i32 @kperf_timer_period_set(i32, i32) #1

declare dso_local i32 @kperf_ns_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
