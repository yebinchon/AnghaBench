; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_do_dss_opt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_do_dss_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tcphdr = type { i32 }
%struct.mptcb = type { i32 }
%struct.mptcp_dss_copt = type { i64, i32 }

@TMPF_MPTCP_TRUE = common dso_local global i32 0, align 4
@TMPF_TCP_FALLBACK = common dso_local global i32 0, align 4
@MPO_DSS = common dso_local global i64 0, align 8
@MDSS_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, i32*, %struct.tcphdr*, i32)* @mptcp_do_dss_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_do_dss_opt(%struct.tcpcb* %0, i32* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mptcb*, align 8
  %10 = alloca %struct.mptcp_dss_copt*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %12 = call %struct.mptcb* @tptomptp(%struct.tcpcb* %11)
  store %struct.mptcb* %12, %struct.mptcb** %9, align 8
  %13 = load %struct.mptcb*, %struct.mptcb** %9, align 8
  %14 = icmp ne %struct.mptcb* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %55

16:                                               ; preds = %4
  %17 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TMPF_MPTCP_TRUE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %25 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TMPF_TCP_FALLBACK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %23, %16
  %31 = load i32*, i32** %6, align 8
  %32 = bitcast i32* %31 to %struct.mptcp_dss_copt*
  store %struct.mptcp_dss_copt* %32, %struct.mptcp_dss_copt** %10, align 8
  %33 = load %struct.mptcp_dss_copt*, %struct.mptcp_dss_copt** %10, align 8
  %34 = getelementptr inbounds %struct.mptcp_dss_copt, %struct.mptcp_dss_copt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MPO_DSS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct.mptcp_dss_copt*, %struct.mptcp_dss_copt** %10, align 8
  %40 = getelementptr inbounds %struct.mptcp_dss_copt, %struct.mptcp_dss_copt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MDSS_F, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %47 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %52 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %53 = call i32 @mptcp_do_dss_opt_meat(i32* %50, %struct.tcpcb* %51, %struct.tcphdr* %52)
  br label %54

54:                                               ; preds = %49, %30
  br label %55

55:                                               ; preds = %15, %54, %23
  ret void
}

declare dso_local %struct.mptcb* @tptomptp(%struct.tcpcb*) #1

declare dso_local i32 @mptcp_do_dss_opt_meat(i32*, %struct.tcpcb*, %struct.tcphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
