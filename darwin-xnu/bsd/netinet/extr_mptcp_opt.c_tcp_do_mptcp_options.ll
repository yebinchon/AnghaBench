; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_tcp_do_mptcp_options.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_tcp_do_mptcp_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcphdr = type { i32 }
%struct.tcpopt = type { i32 }
%struct.mptcb = type { i32 }

@TOF_MPTCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_do_mptcp_options(%struct.tcpcb* %0, i32* %1, %struct.tcphdr* %2, %struct.tcpopt* %3, i32 %4) #0 {
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.tcpopt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mptcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %8, align 8
  store %struct.tcpopt* %3, %struct.tcpopt** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %14 = call %struct.mptcb* @tptomptp(%struct.tcpcb* %13)
  store %struct.mptcb* %14, %struct.mptcb** %12, align 8
  %15 = load %struct.mptcb*, %struct.mptcb** %12, align 8
  %16 = icmp eq %struct.mptcb* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %74

18:                                               ; preds = %5
  %19 = load %struct.mptcb*, %struct.mptcb** %12, align 8
  %20 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mpte_lock_assert_held(i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %74

26:                                               ; preds = %18
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @mptcp_sanitize_option(%struct.tcpcb* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %74

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %72 [
    i32 134, label %38
    i32 130, label %44
    i32 133, label %50
    i32 131, label %56
    i32 132, label %61
    i32 135, label %66
    i32 128, label %66
    i32 129, label %66
  ]

38:                                               ; preds = %36
  %39 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @mptcp_do_mpcapable_opt(%struct.tcpcb* %39, i32* %40, %struct.tcphdr* %41, i32 %42)
  br label %73

44:                                               ; preds = %36
  %45 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @mptcp_do_mpjoin_opt(%struct.tcpcb* %45, i32* %46, %struct.tcphdr* %47, i32 %48)
  br label %73

50:                                               ; preds = %36
  %51 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @mptcp_do_dss_opt(%struct.tcpcb* %51, i32* %52, %struct.tcphdr* %53, i32 %54)
  br label %73

56:                                               ; preds = %36
  %57 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %60 = call i32 @mptcp_do_fastclose_opt(%struct.tcpcb* %57, i32* %58, %struct.tcphdr* %59)
  br label %73

61:                                               ; preds = %36
  %62 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %65 = call i32 @mptcp_do_mpfail_opt(%struct.tcpcb* %62, i32* %63, %struct.tcphdr* %64)
  br label %73

66:                                               ; preds = %36, %36, %36
  %67 = load i32, i32* @TOF_MPTCP, align 4
  %68 = load %struct.tcpopt*, %struct.tcpopt** %9, align 8
  %69 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %73

72:                                               ; preds = %36
  br label %73

73:                                               ; preds = %72, %66, %61, %56, %50, %44, %38
  br label %74

74:                                               ; preds = %73, %35, %25, %17
  ret void
}

declare dso_local %struct.mptcb* @tptomptp(%struct.tcpcb*) #1

declare dso_local i32 @mpte_lock_assert_held(i32) #1

declare dso_local i64 @mptcp_sanitize_option(%struct.tcpcb*, i32) #1

declare dso_local i32 @mptcp_do_mpcapable_opt(%struct.tcpcb*, i32*, %struct.tcphdr*, i32) #1

declare dso_local i32 @mptcp_do_mpjoin_opt(%struct.tcpcb*, i32*, %struct.tcphdr*, i32) #1

declare dso_local i32 @mptcp_do_dss_opt(%struct.tcpcb*, i32*, %struct.tcphdr*, i32) #1

declare dso_local i32 @mptcp_do_fastclose_opt(%struct.tcpcb*, i32*, %struct.tcphdr*) #1

declare dso_local i32 @mptcp_do_mpfail_opt(%struct.tcpcb*, i32*, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
