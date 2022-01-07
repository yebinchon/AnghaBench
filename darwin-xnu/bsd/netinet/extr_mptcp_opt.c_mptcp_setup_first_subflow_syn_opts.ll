; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_setup_first_subflow_syn_opts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_setup_first_subflow_syn_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mptcp_mpcapable_opt_common = type { i32, i32, i32, i32, i32 }
%struct.tcpcb = type { i64 }
%struct.mptcb = type { i32, %struct.mptcp_mpcapable_opt_common, i32, i32 }

@mptcp_mpcap_retries = common dso_local global i64 0, align 8
@MPTCPF_FALLBACK_HEURISTIC = common dso_local global i32 0, align 4
@MPTCPF_HEURISTIC_TRAC = common dso_local global i32 0, align 4
@TCPOPT_MULTIPATH = common dso_local global i32 0, align 4
@MPO_CAPABLE = common dso_local global i32 0, align 4
@MPCAP_PROPOSAL_SBIT = common dso_local global i32 0, align 4
@MPTCPF_CHECKSUM = common dso_local global i32 0, align 4
@MPCAP_CHECKSUM_CBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32*, i32)* @mptcp_setup_first_subflow_syn_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptcp_setup_first_subflow_syn_opts(%struct.socket* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mptcp_mpcapable_opt_common, align 4
  %9 = alloca %struct.tcpcb*, align 8
  %10 = alloca %struct.mptcb*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = call %struct.tcpcb* @sototcpcb(%struct.socket* %11)
  store %struct.tcpcb* %12, %struct.tcpcb** %9, align 8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %14 = call %struct.mptcb* @tptomptp(%struct.tcpcb* %13)
  store %struct.mptcb* %14, %struct.mptcb** %10, align 8
  %15 = load %struct.mptcb*, %struct.mptcb** %10, align 8
  %16 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mpte_lock_assert_held(i32 %17)
  %19 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @mptcp_mpcap_retries, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %3
  %25 = load %struct.mptcb*, %struct.mptcb** %10, align 8
  %26 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MPTCPF_FALLBACK_HEURISTIC, align 4
  %29 = load i32, i32* @MPTCPF_HEURISTIC_TRAC, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @MPTCPF_HEURISTIC_TRAC, align 4
  %35 = load %struct.mptcb*, %struct.mptcb** %10, align 8
  %36 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %40 = call i32 @tcp_heuristic_mptcp_loss(%struct.tcpcb* %39)
  br label %41

41:                                               ; preds = %33, %24
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %4, align 4
  br label %102

43:                                               ; preds = %3
  %44 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %45 = call i32 @tcp_heuristic_do_mptcp(%struct.tcpcb* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @MPTCPF_FALLBACK_HEURISTIC, align 4
  %49 = load %struct.mptcb*, %struct.mptcb** %10, align 8
  %50 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %4, align 4
  br label %102

54:                                               ; preds = %43
  %55 = call i32 @bzero(%struct.mptcp_mpcapable_opt_common* %8, i32 20)
  %56 = load i32, i32* @TCPOPT_MULTIPATH, align 4
  %57 = getelementptr inbounds %struct.mptcp_mpcapable_opt_common, %struct.mptcp_mpcapable_opt_common* %8, i32 0, i32 4
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.mptcp_mpcapable_opt_common, %struct.mptcp_mpcapable_opt_common* %8, i32 0, i32 0
  store i32 24, i32* %58, align 4
  %59 = load i32, i32* @MPO_CAPABLE, align 4
  %60 = getelementptr inbounds %struct.mptcp_mpcapable_opt_common, %struct.mptcp_mpcapable_opt_common* %8, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.mptcb*, %struct.mptcb** %10, align 8
  %62 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.mptcp_mpcapable_opt_common, %struct.mptcp_mpcapable_opt_common* %8, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @MPCAP_PROPOSAL_SBIT, align 4
  %66 = getelementptr inbounds %struct.mptcp_mpcapable_opt_common, %struct.mptcp_mpcapable_opt_common* %8, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = load %struct.mptcb*, %struct.mptcb** %10, align 8
  %70 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MPTCPF_CHECKSUM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %54
  %76 = load i32, i32* @MPCAP_CHECKSUM_CBIT, align 4
  %77 = getelementptr inbounds %struct.mptcp_mpcapable_opt_common, %struct.mptcp_mpcapable_opt_common* %8, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %75, %54
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @memcpy(i32* %84, %struct.mptcp_mpcapable_opt_common* %8, i32 20)
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = add i64 %87, 20
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %7, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load %struct.mptcb*, %struct.mptcb** %10, align 8
  %95 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %94, i32 0, i32 1
  %96 = call i32 @memcpy(i32* %93, %struct.mptcp_mpcapable_opt_common* %95, i32 4)
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = add i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %80, %47, %41
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.tcpcb* @sototcpcb(%struct.socket*) #1

declare dso_local %struct.mptcb* @tptomptp(%struct.tcpcb*) #1

declare dso_local i32 @mpte_lock_assert_held(i32) #1

declare dso_local i32 @tcp_heuristic_mptcp_loss(%struct.tcpcb*) #1

declare dso_local i32 @tcp_heuristic_do_mptcp(%struct.tcpcb*) #1

declare dso_local i32 @bzero(%struct.mptcp_mpcapable_opt_common*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.mptcp_mpcapable_opt_common*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
