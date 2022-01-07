; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_add_to_time_wait.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_add_to_time_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbinfo = type { i32 }
%struct.tcpcb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@tcbinfo = common dso_local global %struct.inpcbinfo zeroinitializer, align 4
@SO_NOWAKEFROMSLEEP = common dso_local global i32 0, align 4
@INPCB_TIMER_LAZY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_to_time_wait(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inpcbinfo*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.inpcbinfo* @tcbinfo, %struct.inpcbinfo** %5, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SO_NOWAKEFROMSLEEP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @socket_post_kev_msg_closed(%struct.TYPE_5__* %21)
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call i32 @nstat_pcb_detach(%struct.TYPE_6__* %26)
  %28 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %29 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @lck_rw_try_lock_exclusive(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %23
  %34 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @socket_unlock(%struct.TYPE_5__* %38, i32 0)
  %40 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %41 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @lck_rw_lock_exclusive(i32 %42)
  %44 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @socket_lock(%struct.TYPE_5__* %48, i32 0)
  br label %50

50:                                               ; preds = %33, %23
  %51 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @add_to_time_wait_locked(%struct.tcpcb* %51, i32 %52)
  %54 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %55 = getelementptr inbounds %struct.inpcbinfo, %struct.inpcbinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lck_rw_done(i32 %56)
  %58 = load %struct.inpcbinfo*, %struct.inpcbinfo** %5, align 8
  %59 = load i32, i32* @INPCB_TIMER_LAZY, align 4
  %60 = call i32 @inpcb_gc_sched(%struct.inpcbinfo* %58, i32 %59)
  ret void
}

declare dso_local i32 @socket_post_kev_msg_closed(%struct.TYPE_5__*) #1

declare dso_local i32 @nstat_pcb_detach(%struct.TYPE_6__*) #1

declare dso_local i32 @lck_rw_try_lock_exclusive(i32) #1

declare dso_local i32 @socket_unlock(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32) #1

declare dso_local i32 @socket_lock(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @add_to_time_wait_locked(%struct.tcpcb*, i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

declare dso_local i32 @inpcb_gc_sched(%struct.inpcbinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
