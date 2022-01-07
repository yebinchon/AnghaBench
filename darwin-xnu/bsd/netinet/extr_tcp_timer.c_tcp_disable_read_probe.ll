; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_disable_read_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_timer.c_tcp_disable_read_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, i64, i64 }

@TF_DETECT_READSTALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @tcp_disable_read_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_disable_read_probe(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %3 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %4 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TF_DETECT_READSTALL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %7
  %15 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %16 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14, %7
  %20 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %21 = call i32 @tcp_keepalive_reset(%struct.tcpcb* %20)
  %22 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %28 = call i32 @mptcp_reset_keepalive(%struct.tcpcb* %27)
  br label %29

29:                                               ; preds = %26, %19
  br label %30

30:                                               ; preds = %29, %14, %1
  ret void
}

declare dso_local i32 @tcp_keepalive_reset(%struct.tcpcb*) #1

declare dso_local i32 @mptcp_reset_keepalive(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
