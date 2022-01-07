; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_check_timer_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_check_timer_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@INP2_TIMEWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_check_timer_state(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %3 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %4 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @socket_lock_assert_owned(i32 %7)
  %9 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @INP2_TIMEWAIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %20 = call i32 @tcp_set_lotimer_index(%struct.tcpcb* %19)
  %21 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %22 = call i32 @tcp_sched_timers(%struct.tcpcb* %21)
  br label %23

23:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @socket_lock_assert_owned(i32) #1

declare dso_local i32 @tcp_set_lotimer_index(%struct.tcpcb*) #1

declare dso_local i32 @tcp_sched_timers(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
