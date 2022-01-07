; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_newreno.c_tcp_newreno_after_timeout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_newreno.c_tcp_newreno_after_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, i32, i32, i32 }

@TCPS_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_newreno_after_timeout(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %4 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %5 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %40

9:                                                ; preds = %1
  %10 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @min(i32 %12, i32 %15)
  %17 = sdiv i32 %16, 2
  %18 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %17, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %9
  store i32 2, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %9
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %28 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %32 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %34 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %37 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %39 = call i32 @tcp_cc_resize_sndbuf(%struct.tcpcb* %38)
  br label %40

40:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tcp_cc_resize_sndbuf(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
