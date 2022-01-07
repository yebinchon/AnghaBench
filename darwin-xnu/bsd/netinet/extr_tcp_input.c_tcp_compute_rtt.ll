; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_compute_rtt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_compute_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i64, i32, i64* }
%struct.tcpopt = type { i32, i64 }
%struct.tcphdr = type { i64 }

@tcp_now = common dso_local global i32 0, align 4
@TCP_PIPEACK_SAMPLE_COUNT = common dso_local global i32 0, align 4
@TCP_CC_CWND_INIT_BYTES = common dso_local global i64 0, align 8
@TOF_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcpopt*, %struct.tcphdr*)* @tcp_compute_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_compute_rtt(%struct.tcpcb* %0, %struct.tcpopt* %1, %struct.tcphdr* %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcpopt*, align 8
  %6 = alloca %struct.tcphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tcpopt* %1, %struct.tcpopt** %5, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %10 = icmp ne %struct.tcpopt* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %13 = icmp ne %struct.tcphdr* %12, null
  br label %14

14:                                               ; preds = %11, %3
  %15 = phi i1 [ false, %3 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %14
  %23 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %24 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @SEQ_GT(i64 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %22
  %32 = load i32, i32* @tcp_now, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %35 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %40 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @SEQ_GT(i64 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %82

47:                                               ; preds = %31
  %48 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %49 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %57 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %56, i32 0, i32 5
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %60 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i64, i64* %58, i64 %63
  store i64 %55, i64* %64, align 8
  %65 = load i32, i32* @TCP_PIPEACK_SAMPLE_COUNT, align 4
  %66 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = srem i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %71 = call i64 @tcp_get_max_pipeack(%struct.tcpcb* %70)
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @TCP_CC_CWND_INIT_BYTES, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %47
  %76 = load i64, i64* %8, align 8
  br label %78

77:                                               ; preds = %47
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i64 [ %76, %75 ], [ 0, %77 ]
  %80 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %81 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %31
  %83 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %22, %14
  %86 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %87 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TOF_TS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %85
  %93 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %94 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load i32, i32* @tcp_now, align 4
  %99 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %100 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @TSTMP_GEQ(i32 %98, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %97
  %105 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %106 = load i32, i32* @tcp_now, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %109 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = trunc i64 %111 to i32
  %113 = load %struct.tcpopt*, %struct.tcpopt** %5, align 8
  %114 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %118 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @tcp_xmit_timer(%struct.tcpcb* %105, i32 %112, i32 %116, i64 %119)
  br label %132

121:                                              ; preds = %97, %92, %85
  %122 = load i32, i32* %7, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.tcphdr*, %struct.tcphdr** %6, align 8
  %128 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @tcp_xmit_timer(%struct.tcpcb* %125, i32 %126, i32 0, i64 %129)
  br label %131

131:                                              ; preds = %124, %121
  br label %132

132:                                              ; preds = %131, %104
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @SEQ_GT(i64, i64) #1

declare dso_local i64 @tcp_get_max_pipeack(%struct.tcpcb*) #1

declare dso_local i64 @TSTMP_GEQ(i32, i64) #1

declare dso_local i32 @tcp_xmit_timer(%struct.tcpcb*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
