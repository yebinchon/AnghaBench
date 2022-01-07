; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_cc_allocate_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_cc_allocate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, %struct.tcp_ccstate* }
%struct.tcp_ccstate = type { i32 }

@TCP_CC_ALGO_CUBIC_INDEX = common dso_local global i64 0, align 8
@tcp_cc_zone = common dso_local global i32 0, align 4
@TCP_CC_ALGO_NEWRENO_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_cc_allocate_state(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %3 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %4 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TCP_CC_ALGO_CUBIC_INDEX, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %10 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %9, i32 0, i32 1
  %11 = load %struct.tcp_ccstate*, %struct.tcp_ccstate** %10, align 8
  %12 = icmp eq %struct.tcp_ccstate* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %8
  %14 = load i32, i32* @tcp_cc_zone, align 4
  %15 = call i64 @zalloc(i32 %14)
  %16 = inttoptr i64 %15 to %struct.tcp_ccstate*
  %17 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 1
  store %struct.tcp_ccstate* %16, %struct.tcp_ccstate** %18, align 8
  %19 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 1
  %21 = load %struct.tcp_ccstate*, %struct.tcp_ccstate** %20, align 8
  %22 = icmp eq %struct.tcp_ccstate* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i64, i64* @TCP_CC_ALGO_NEWRENO_INDEX, align 8
  %25 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %32

27:                                               ; preds = %13
  %28 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  %30 = load %struct.tcp_ccstate*, %struct.tcp_ccstate** %29, align 8
  %31 = call i32 @bzero(%struct.tcp_ccstate* %30, i32 4)
  br label %32

32:                                               ; preds = %27, %23
  br label %33

33:                                               ; preds = %32, %8, %1
  ret void
}

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.tcp_ccstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
