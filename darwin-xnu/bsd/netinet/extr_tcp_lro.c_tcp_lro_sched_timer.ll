; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_lro.c_tcp_lro_sched_timer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_lro.c_tcp_lro_sched_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lro_timer_set = common dso_local global i32 0, align 4
@coalesc_time = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@TCP_RETRANSHZ = common dso_local global i32 0, align 4
@lro_deadline = common dso_local global i32 0, align 4
@tcp_lro_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tcp_lro_sched_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lro_sched_timer(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @lro_timer_set, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  store i32 1, i32* @lro_timer_set, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @coalesc_time, align 4
  %11 = load i32, i32* @NSEC_PER_SEC, align 4
  %12 = load i32, i32* @TCP_RETRANSHZ, align 4
  %13 = sdiv i32 %11, %12
  %14 = call i32 @clock_interval_to_deadline(i32 %10, i32 %13, i32* @lro_deadline)
  br label %21

15:                                               ; preds = %6
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @NSEC_PER_SEC, align 4
  %18 = load i32, i32* @TCP_RETRANSHZ, align 4
  %19 = sdiv i32 %17, %18
  %20 = call i32 @clock_interval_to_deadline(i32 %16, i32 %19, i32* @lro_deadline)
  br label %21

21:                                               ; preds = %15, %9
  %22 = load i32, i32* @tcp_lro_timer, align 4
  %23 = load i32, i32* @lro_deadline, align 4
  %24 = call i32 @thread_call_enter_delayed(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %5
  ret void
}

declare dso_local i32 @clock_interval_to_deadline(i32, i32, i32*) #1

declare dso_local i32 @thread_call_enter_delayed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
