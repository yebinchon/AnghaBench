; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_timer_tests.c_disable_timer_coalescing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_timer_tests.c_disable_timer_coalescing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_qos_policy = type { i32, i32 }

@T_SETUPBEGIN = common dso_local global i32 0, align 4
@LATENCY_QOS_TIER_0 = common dso_local global i32 0, align 4
@THROUGHPUT_QOS_TIER_0 = common dso_local global i32 0, align 4
@TASK_OVERRIDE_QOS_POLICY = common dso_local global i32 0, align 4
@TASK_QOS_POLICY_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"task_policy_set(... TASK_OVERRIDE_QOS_POLICY ...) failed: %d (%s)\00", align 1
@T_SETUPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @disable_timer_coalescing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_timer_coalescing() #0 {
  %1 = alloca %struct.task_qos_policy, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @T_SETUPBEGIN, align 4
  %4 = load i32, i32* @LATENCY_QOS_TIER_0, align 4
  %5 = getelementptr inbounds %struct.task_qos_policy, %struct.task_qos_policy* %1, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @THROUGHPUT_QOS_TIER_0, align 4
  %7 = getelementptr inbounds %struct.task_qos_policy, %struct.task_qos_policy* %1, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = call i32 (...) @mach_task_self()
  %9 = load i32, i32* @TASK_OVERRIDE_QOS_POLICY, align 4
  %10 = ptrtoint %struct.task_qos_policy* %1 to i32
  %11 = load i32, i32* @TASK_QOS_POLICY_COUNT, align 4
  %12 = call i64 @task_policy_set(i32 %8, i32 %9, i32 %10, i32 %11)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @KERN_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %0
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = call i32 @mach_error_string(i64 %18)
  %20 = call i32 @T_FAIL(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %19)
  br label %21

21:                                               ; preds = %16, %0
  %22 = load i32, i32* @T_SETUPEND, align 4
  ret void
}

declare dso_local i64 @task_policy_set(i32, i32, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @T_FAIL(i8*, i64, i32) #1

declare dso_local i32 @mach_error_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
