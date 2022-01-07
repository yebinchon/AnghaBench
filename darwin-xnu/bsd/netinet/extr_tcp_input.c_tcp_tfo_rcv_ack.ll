; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_tfo_rcv_ack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_tfo_rcv_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i32* }
%struct.tcphdr = type { i64 }

@TFO_PROBE_PROBING = common dso_local global i64 0, align 8
@TFO_PROBE_NONE = common dso_local global i64 0, align 8
@TFO_PROBE_WAIT_DATA = common dso_local global i64 0, align 8
@TCPT_KEEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*)* @tcp_tfo_rcv_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_tfo_rcv_ack(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TFO_PROBE_PROBING, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %2
  %11 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %12 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %17 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i64, i64* @TFO_PROBE_NONE, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %50

27:                                               ; preds = %15
  %28 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %29 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @SEQ_GT(i64 %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load i64, i64* @TFO_PROBE_WAIT_DATA, align 8
  %38 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %41 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %42 = call i32 @TCP_REXMTVAL(%struct.tcpcb* %41)
  %43 = call i32 @OFFSET_FROM_START(%struct.tcpcb* %40, i32 %42)
  %44 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %45 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @TCPT_KEEP, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %43, i32* %48, align 4
  br label %49

49:                                               ; preds = %36, %27
  br label %50

50:                                               ; preds = %49, %23
  br label %51

51:                                               ; preds = %50, %10, %2
  ret void
}

declare dso_local i64 @SEQ_GT(i64, i64) #1

declare dso_local i32 @OFFSET_FROM_START(%struct.tcpcb*, i32) #1

declare dso_local i32 @TCP_REXMTVAL(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
