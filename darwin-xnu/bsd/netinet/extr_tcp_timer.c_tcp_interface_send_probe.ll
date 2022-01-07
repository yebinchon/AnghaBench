; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_interface_send_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_interface_send_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcptimerlist = type { i64, i32, i64, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@tcp_timer_list = common dso_local global %struct.tcptimerlist zeroinitializer, align 8
@tcpstat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TCP_TIMER_10MS_QUANTUM = common dso_local global i64 0, align 8
@tcp_now = common dso_local global i32 0, align 4
@TCP_TIMERLIST_10MS_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_interface_send_probe(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcptimerlist*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store %struct.tcptimerlist* @tcp_timer_list, %struct.tcptimerlist** %4, align 8
  %6 = call i32 (...) @calculate_tcp_clock()
  %7 = load %struct.tcptimerlist*, %struct.tcptimerlist** %4, align 8
  %8 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @lck_mtx_lock(i32 %9)
  %11 = load %struct.tcptimerlist*, %struct.tcptimerlist** %4, align 8
  %12 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcpstat, i32 0, i32 0), align 4
  br label %52

18:                                               ; preds = %1
  %19 = load i64, i64* %2, align 8
  %20 = load %struct.tcptimerlist*, %struct.tcptimerlist** %4, align 8
  %21 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.tcptimerlist*, %struct.tcptimerlist** %4, align 8
  %23 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %52

27:                                               ; preds = %18
  %28 = load i64, i64* @TCP_TIMER_10MS_QUANTUM, align 8
  store i64 %28, i64* %3, align 8
  %29 = load %struct.tcptimerlist*, %struct.tcptimerlist** %4, align 8
  %30 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.tcptimerlist*, %struct.tcptimerlist** %4, align 8
  %35 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @tcp_now, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @timer_diff(i32 %36, i32 0, i32 %37, i64 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %52

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* @TCP_TIMERLIST_10MS_MODE, align 4
  %46 = load %struct.tcptimerlist*, %struct.tcptimerlist** %4, align 8
  %47 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.tcptimerlist*, %struct.tcptimerlist** %4, align 8
  %49 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @tcp_sched_timerlist(i64 %50)
  br label %52

52:                                               ; preds = %44, %42, %26, %15
  %53 = load %struct.tcptimerlist*, %struct.tcptimerlist** %4, align 8
  %54 = getelementptr inbounds %struct.tcptimerlist, %struct.tcptimerlist* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @lck_mtx_unlock(i32 %55)
  ret void
}

declare dso_local i32 @calculate_tcp_clock(...) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i64 @timer_diff(i32, i32, i32, i64) #1

declare dso_local i32 @tcp_sched_timerlist(i64) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
