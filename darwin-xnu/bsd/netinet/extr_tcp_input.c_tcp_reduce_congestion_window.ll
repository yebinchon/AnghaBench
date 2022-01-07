; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_reduce_congestion_window.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_input.c_tcp_reduce_congestion_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32, i32, i64, i64, i64, i64*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.tcpcb*)* }

@TF_SENTFIN = common dso_local global i32 0, align 4
@TCPT_REXMT = common dso_local global i64 0, align 8
@TCPT_PTO = common dso_local global i64 0, align 8
@TF_CWND_NONVALIDATED = common dso_local global i32 0, align 4
@tcprexmtthresh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @tcp_reduce_congestion_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_reduce_congestion_window(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %3 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %4 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %3)
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %5, align 8
  %7 = icmp ne i32 (%struct.tcpcb*)* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %10 = call %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %11, align 8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %14 = call i32 %12(%struct.tcpcb* %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %17 = call i32 @ENTER_FASTRECOVERY(%struct.tcpcb* %16)
  %18 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TF_SENTFIN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 8
  store i64 %28, i64* %30, align 8
  br label %37

31:                                               ; preds = %15
  %32 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 8
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %39 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %38, i32 0, i32 6
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @TCPT_REXMT, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 0, i64* %42, align 8
  %43 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 6
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @TCPT_PTO, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 0, i64* %47, align 8
  %48 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %51 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TF_CWND_NONVALIDATED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %37
  %57 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %58 = call i32 @tcp_cc_adjust_nonvalidated_cwnd(%struct.tcpcb* %57)
  br label %72

59:                                               ; preds = %37
  %60 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %64 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @tcprexmtthresh, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %62, %68
  %70 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %71 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %59, %56
  ret void
}

declare dso_local %struct.TYPE_2__* @CC_ALGO(%struct.tcpcb*) #1

declare dso_local i32 @ENTER_FASTRECOVERY(%struct.tcpcb*) #1

declare dso_local i32 @tcp_cc_adjust_nonvalidated_cwnd(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
