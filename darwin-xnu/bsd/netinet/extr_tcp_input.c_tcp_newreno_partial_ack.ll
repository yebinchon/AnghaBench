; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_newreno_partial_ack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_newreno_partial_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i32, i32, i64, i64* }
%struct.tcphdr = type { i32 }

@TCPT_REXMT = common dso_local global i64 0, align 8
@TCPT_PTO = common dso_local global i64 0, align 8
@TF_ACKNOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcphdr*)* @tcp_newreno_partial_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_newreno_partial_ack(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcphdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %4, align 8
  %7 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 5
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @TCPT_REXMT, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 0, i64* %17, align 8
  %18 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 5
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @TCPT_PTO, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 0, i64* %22, align 8
  %23 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %26 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %31 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %34 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %35 = call i64 @BYTES_ACKED(%struct.tcphdr* %33, %struct.tcpcb* %34)
  %36 = add nsw i64 %32, %35
  %37 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %38 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @TF_ACKNOW, align 4
  %40 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %41 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %45 = call i32 @tcp_output(%struct.tcpcb* %44)
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @SEQ_GT(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %2
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %58 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %2
  %60 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %64 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %65 = call i64 @BYTES_ACKED(%struct.tcphdr* %63, %struct.tcpcb* %64)
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.tcphdr*, %struct.tcphdr** %4, align 8
  %69 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %70 = call i64 @BYTES_ACKED(%struct.tcphdr* %68, %struct.tcpcb* %69)
  %71 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %72 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  br label %78

75:                                               ; preds = %59
  %76 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %77 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %67
  %79 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %80 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %83 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, %81
  store i64 %85, i64* %83, align 8
  ret void
}

declare dso_local i64 @BYTES_ACKED(%struct.tcphdr*, %struct.tcpcb*) #1

declare dso_local i32 @tcp_output(%struct.tcpcb*) #1

declare dso_local i64 @SEQ_GT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
