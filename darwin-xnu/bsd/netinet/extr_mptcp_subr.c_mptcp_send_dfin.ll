; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_send_dfin.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_send_dfin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.tcpcb = type { i32 }
%struct.inpcb = type { i32 }

@TMPF_RESET = common dso_local global i32 0, align 4
@TMPF_SEND_DFIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @mptcp_send_dfin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_send_dfin(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.inpcb*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  store %struct.tcpcb* null, %struct.tcpcb** %3, align 8
  store %struct.inpcb* null, %struct.inpcb** %4, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = call %struct.inpcb* @sotoinpcb(%struct.socket* %5)
  store %struct.inpcb* %6, %struct.inpcb** %4, align 8
  %7 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %8 = icmp ne %struct.inpcb* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %12 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %11)
  store %struct.tcpcb* %12, %struct.tcpcb** %3, align 8
  %13 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %14 = icmp ne %struct.tcpcb* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %29

16:                                               ; preds = %10
  %17 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %18 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TMPF_RESET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @TMPF_SEND_DFIN, align 4
  %25 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %9, %15, %23, %16
  ret void
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
