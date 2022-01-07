; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_detect_bad_rexmt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_detect_bad_rexmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32 }
%struct.tcphdr = type { i32 }
%struct.tcpopt = type { i32, i64 }

@TCP_RTT_SHIFT = common dso_local global i32 0, align 4
@TH_ECE = common dso_local global i32 0, align 4
@TOF_TS = common dso_local global i32 0, align 4
@TF_SENT_TLPROBE = common dso_local global i32 0, align 4
@tcp_now = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_detect_bad_rexmt(%struct.tcpcb* %0, %struct.tcphdr* %1, %struct.tcpopt* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcpcb*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca %struct.tcpopt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %6, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %7, align 8
  store %struct.tcpopt* %2, %struct.tcpopt** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TCP_RTT_SHIFT, align 4
  %16 = add nsw i32 %15, 1
  %17 = ashr i32 %14, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %19 = call i64 @TCP_ECN_ENABLED(%struct.tcpcb* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %23 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TH_ECE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %84

29:                                               ; preds = %21, %4
  %30 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %31 = call i64 @TSTMP_SUPPORTED(%struct.tcpcb* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load %struct.tcpopt*, %struct.tcpopt** %8, align 8
  %38 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TOF_TS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %36
  %44 = load %struct.tcpopt*, %struct.tcpopt** %8, align 8
  %45 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.tcpopt*, %struct.tcpopt** %8, align 8
  %50 = getelementptr inbounds %struct.tcpopt, %struct.tcpopt* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @TSTMP_LT(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %84

56:                                               ; preds = %48, %43, %36, %33
  br label %83

57:                                               ; preds = %29
  %58 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load %struct.tcpcb*, %struct.tcpcb** %6, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @TF_SENT_TLPROBE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %62, %57
  %70 = load i64, i64* %9, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i64, i64* @tcp_now, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub nsw i64 %73, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i32 1, i32* %5, align 4
  br label %84

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %69, %62
  br label %83

83:                                               ; preds = %82, %56
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %80, %55, %28
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @TCP_ECN_ENABLED(%struct.tcpcb*) #1

declare dso_local i64 @TSTMP_SUPPORTED(%struct.tcpcb*) #1

declare dso_local i64 @TSTMP_LT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
