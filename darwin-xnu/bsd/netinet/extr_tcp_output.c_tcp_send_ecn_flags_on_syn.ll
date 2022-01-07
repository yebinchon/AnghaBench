; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_send_ecn_flags_on_syn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_tcp_output.c_tcp_send_ecn_flags_on_syn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, i32 }
%struct.socket = type { i32 }

@TE_SETUPSENT = common dso_local global i32 0, align 4
@SOF_MP_SUBFLOW = common dso_local global i32 0, align 4
@TF_FASTOPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.socket*)* @tcp_send_ecn_flags_on_syn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_send_ecn_flags_on_syn(%struct.tcpcb* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TE_SETUPSENT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %2
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SOF_MP_SUBFLOW, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  %19 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %20 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TF_FASTOPEN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %18, %11, %2
  %26 = phi i1 [ true, %11 ], [ true, %2 ], [ %24, %18 ]
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
