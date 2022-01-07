; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_input_preproc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp.c_mptcp_input_preproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.tcphdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptcp_input_preproc(%struct.tcpcb* %0, %struct.mbuf* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %12 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %13 = call i32 @mptcp_insert_rmap(%struct.tcpcb* %10, %struct.mbuf* %11, %struct.tcphdr* %12)
  %14 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %20 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @mptcp_validate_dss_map(i32 %18, %struct.tcpcb* %19, %struct.mbuf* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @mptcp_insert_rmap(%struct.tcpcb*, %struct.mbuf*, %struct.tcphdr*) #1

declare dso_local i64 @mptcp_validate_dss_map(i32, %struct.tcpcb*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
