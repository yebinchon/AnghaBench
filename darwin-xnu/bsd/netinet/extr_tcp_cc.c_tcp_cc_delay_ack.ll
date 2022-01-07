; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_cc_delay_ack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_cc.c_tcp_cc_delay_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32 }
%struct.tcphdr = type { i32 }

@tcp_delack_enabled = common dso_local global i32 0, align 4
@TF_RXWIN0SENT = common dso_local global i32 0, align 4
@TH_PUSH = common dso_local global i32 0, align 4
@TF_STRETCHACK = common dso_local global i32 0, align 4
@maxseg_unacked = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_cc_delay_ack(%struct.tcpcb* %0, %struct.tcphdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  %6 = load i32, i32* @tcp_delack_enabled, align 4
  switch i32 %6, label %62 [
    i32 1, label %7
    i32 2, label %7
    i32 3, label %28
  ]

7:                                                ; preds = %2, %2
  %8 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TF_RXWIN0SENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %7
  %15 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %16 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TH_PUSH, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %23 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %63

27:                                               ; preds = %21, %14, %7
  br label %62

28:                                               ; preds = %2
  %29 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TF_RXWIN0SENT, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %28
  %36 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %37 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TH_PUSH, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %49 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TF_STRETCHACK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %56 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @maxseg_unacked, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %42
  store i32 1, i32* %3, align 4
  br label %63

61:                                               ; preds = %54, %47, %35, %28
  br label %62

62:                                               ; preds = %2, %61, %27
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %26
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
