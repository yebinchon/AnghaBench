; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_tunnel_how_closed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_tunnel_how_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32 }

@FLOW_DIVERT_TUNNEL_RD_CLOSED = common dso_local global i32 0, align 4
@FLOW_DIVERT_TUNNEL_WR_CLOSED = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@SHUT_RD = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*)* @flow_divert_tunnel_how_closed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_tunnel_how_closed(%struct.flow_divert_pcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flow_divert_pcb*, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %3, align 8
  %4 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %5 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FLOW_DIVERT_TUNNEL_RD_CLOSED, align 4
  %8 = load i32, i32* @FLOW_DIVERT_TUNNEL_WR_CLOSED, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @FLOW_DIVERT_TUNNEL_RD_CLOSED, align 4
  %12 = load i32, i32* @FLOW_DIVERT_TUNNEL_WR_CLOSED, align 4
  %13 = or i32 %11, %12
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @SHUT_RDWR, align 4
  store i32 %16, i32* %2, align 4
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %19 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FLOW_DIVERT_TUNNEL_RD_CLOSED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @SHUT_RD, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %17
  %27 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %28 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FLOW_DIVERT_TUNNEL_WR_CLOSED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @SHUT_WR, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %33, %24, %15
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
