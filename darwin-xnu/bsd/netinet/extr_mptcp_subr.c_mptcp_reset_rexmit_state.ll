; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_reset_rexmit_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_reset_rexmit_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.mptsub*, %struct.inpcb* }
%struct.mptsub = type { i32 }
%struct.inpcb = type { %struct.socket* }
%struct.socket = type { i32 }

@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@MPTSF_WRITE_STALL = common dso_local global i32 0, align 4
@SOF_MP_TRYFAILOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mptcp_reset_rexmit_state(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.mptsub*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.socket*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %6 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 1
  %8 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  store %struct.inpcb* %8, %struct.inpcb** %4, align 8
  %9 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %10 = icmp eq %struct.inpcb* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %43

12:                                               ; preds = %1
  %13 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 0
  %15 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %15, %struct.socket** %5, align 8
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = icmp eq %struct.socket* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %43

19:                                               ; preds = %12
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %43

27:                                               ; preds = %19
  %28 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 0
  %30 = load %struct.mptsub*, %struct.mptsub** %29, align 8
  store %struct.mptsub* %30, %struct.mptsub** %3, align 8
  %31 = load i32, i32* @MPTSF_WRITE_STALL, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.mptsub*, %struct.mptsub** %3, align 8
  %34 = getelementptr inbounds %struct.mptsub, %struct.mptsub* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @SOF_MP_TRYFAILOVER, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.socket*, %struct.socket** %5, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %27, %26, %18, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
