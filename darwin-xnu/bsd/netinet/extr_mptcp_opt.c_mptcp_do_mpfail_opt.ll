; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_do_mpfail_opt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_do_mpfail_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.tcpcb = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcphdr = type { i64, i64 }
%struct.mptcb = type { i32, i32, i32 }
%struct.mptcp_mpfail_opt = type { i32, i32 }

@tcpstat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TH_ACK = common dso_local global i64 0, align 8
@TH_RST = common dso_local global i64 0, align 8
@MPTCPF_RECVD_MPFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, i32*, %struct.tcphdr*)* @mptcp_do_mpfail_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_do_mpfail_opt(%struct.tcpcb* %0, i32* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.mptcb*, align 8
  %8 = alloca %struct.mptcp_mpfail_opt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %6, align 8
  store %struct.mptcb* null, %struct.mptcb** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to %struct.mptcp_mpfail_opt*
  store %struct.mptcp_mpfail_opt* %12, %struct.mptcp_mpfail_opt** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %14 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  br label %79

23:                                               ; preds = %3
  %24 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TH_ACK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %31 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TH_RST, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %79

36:                                               ; preds = %29, %23
  %37 = load %struct.mptcp_mpfail_opt*, %struct.mptcp_mpfail_opt** %8, align 8
  %38 = getelementptr inbounds %struct.mptcp_mpfail_opt, %struct.mptcp_mpfail_opt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %79

43:                                               ; preds = %36
  %44 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %45 = call %struct.mptcb* @tptomptp(%struct.tcpcb* %44)
  store %struct.mptcb* %45, %struct.mptcb** %7, align 8
  %46 = load i32, i32* @MPTCPF_RECVD_MPFAIL, align 4
  %47 = load %struct.mptcb*, %struct.mptcb** %7, align 8
  %48 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.mptcp_mpfail_opt*, %struct.mptcp_mpfail_opt** %8, align 8
  %52 = getelementptr inbounds %struct.mptcp_mpfail_opt, %struct.mptcp_mpfail_opt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mptcp_hton64(i32 %53)
  %55 = load %struct.mptcb*, %struct.mptcb** %7, align 8
  %56 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mptcb*, %struct.mptcb** %7, align 8
  %63 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mptcp_get_map_for_dsn(i32 %61, i32 %64, i32* %9)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %43
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.mptcb*, %struct.mptcb** %7, align 8
  %71 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %43
  %73 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @mptcp_notify_mpfail(i32 %77)
  br label %79

79:                                               ; preds = %72, %42, %35, %20
  ret void
}

declare dso_local %struct.mptcb* @tptomptp(%struct.tcpcb*) #1

declare dso_local i32 @mptcp_hton64(i32) #1

declare dso_local i32 @mptcp_get_map_for_dsn(i32, i32, i32*) #1

declare dso_local i32 @mptcp_notify_mpfail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
