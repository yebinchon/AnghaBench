; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_do_fastclose_opt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_opt.c_mptcp_do_fastclose_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.tcpcb = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.tcphdr = type { i64, i64 }
%struct.mptcb = type { i64 }
%struct.mptcp_fastclose_opt = type { i32, i64 }

@TH_ACK = common dso_local global i64 0, align 8
@tcpstat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TMPF_RESET = common dso_local global i32 0, align 4
@TMPF_FASTCLOSERCV = common dso_local global i32 0, align 4
@SO_FILT_HINT_LOCKED = common dso_local global i32 0, align 4
@SO_FILT_HINT_MUSTRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, i32*, %struct.tcphdr*)* @mptcp_do_fastclose_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_do_fastclose_opt(%struct.tcpcb* %0, i32* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca %struct.mptcb*, align 8
  %8 = alloca %struct.mptcp_fastclose_opt*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %6, align 8
  store %struct.mptcb* null, %struct.mptcb** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = bitcast i32* %9 to %struct.mptcp_fastclose_opt*
  store %struct.mptcp_fastclose_opt* %10, %struct.mptcp_fastclose_opt** %8, align 8
  %11 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %12 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TH_ACK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %78

17:                                               ; preds = %3
  %18 = load %struct.mptcp_fastclose_opt*, %struct.mptcp_fastclose_opt** %8, align 8
  %19 = getelementptr inbounds %struct.mptcp_fastclose_opt, %struct.mptcp_fastclose_opt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 16
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  br label %78

26:                                               ; preds = %17
  %27 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %28 = call %struct.mptcb* @tptomptp(%struct.tcpcb* %27)
  store %struct.mptcb* %28, %struct.mptcb** %7, align 8
  %29 = load %struct.mptcb*, %struct.mptcb** %7, align 8
  %30 = icmp ne %struct.mptcb* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %78

32:                                               ; preds = %26
  %33 = load %struct.mptcp_fastclose_opt*, %struct.mptcp_fastclose_opt** %8, align 8
  %34 = getelementptr inbounds %struct.mptcp_fastclose_opt, %struct.mptcp_fastclose_opt* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mptcb*, %struct.mptcb** %7, align 8
  %37 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  br label %78

43:                                               ; preds = %32
  %44 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tcpstat, i32 0, i32 0), align 4
  br label %78

54:                                               ; preds = %43
  %55 = load i32, i32* @TMPF_RESET, align 4
  %56 = load i32, i32* @TMPF_FASTCLOSERCV, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %63 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %54
  %69 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @SO_FILT_HINT_LOCKED, align 4
  %75 = load i32, i32* @SO_FILT_HINT_MUSTRST, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @soevent(i32* %73, i32 %76)
  br label %78

78:                                               ; preds = %16, %23, %31, %40, %51, %68, %54
  ret void
}

declare dso_local %struct.mptcb* @tptomptp(%struct.tcpcb*) #1

declare dso_local i32 @soevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
