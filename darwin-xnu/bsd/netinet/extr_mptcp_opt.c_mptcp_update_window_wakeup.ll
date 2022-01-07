; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_update_window_wakeup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_update_window_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mptcb = type { i32, i32, i32, i32, i32, i32, i32 }

@MPTCPF_FALLBACK_TO_TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mptcp_update_window_wakeup(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.mptcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = call %struct.mptcb* @tptomptp(%struct.tcpcb* %4)
  store %struct.mptcb* %5, %struct.mptcb** %3, align 8
  %6 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %7 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mpte_lock_assert_held(i32 %8)
  %10 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %11 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MPTCPF_FALLBACK_TO_TCP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %21 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %23 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %26 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %28 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %31 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %16, %1
  %33 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sowwakeup(i32 %37)
  ret void
}

declare dso_local %struct.mptcb* @tptomptp(%struct.tcpcb*) #1

declare dso_local i32 @mpte_lock_assert_held(i32) #1

declare dso_local i32 @sowwakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
