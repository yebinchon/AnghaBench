; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_set_tso.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_subr.c_tcp_set_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i64, i32, %struct.inpcb* }
%struct.inpcb = type { i32 }
%struct.ifnet = type { i32, i64, i64 }

@IFNET_TSO_IPV4 = common dso_local global i32 0, align 4
@TF_TSO = common dso_local global i32 0, align 4
@TCP_MAXWIN = common dso_local global i8* null, align 8
@IFNET_TSO_IPV6 = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@TMPF_MPTCP_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_set_tso(%struct.tcpcb* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %5 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %6 = icmp ne %struct.ifnet* %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IFNET_TSO_IPV4, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %7
  %15 = load i32, i32* @TF_TSO, align 4
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %35

30:                                               ; preds = %14
  %31 = load i8*, i8** @TCP_MAXWIN, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %24
  br label %43

36:                                               ; preds = %7, %2
  %37 = load i32, i32* @TF_TSO, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %40 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
