; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_update_closed_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_update_closed_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SHUT_RD = common dso_local global i32 0, align 4
@FLOW_DIVERT_WRITE_CLOSED = common dso_local global i32 0, align 4
@FLOW_DIVERT_CONNECT_STARTED = common dso_local global i32 0, align 4
@FLOW_DIVERT_TUNNEL_WR_CLOSED = common dso_local global i32 0, align 4
@SHUT_WR = common dso_local global i32 0, align 4
@FLOW_DIVERT_READ_CLOSED = common dso_local global i32 0, align 4
@FLOW_DIVERT_TUNNEL_RD_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_divert_pcb*, i32, i64)* @flow_divert_update_closed_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_update_closed_state(%struct.flow_divert_pcb* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.flow_divert_pcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SHUT_RD, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = load i32, i32* @FLOW_DIVERT_WRITE_CLOSED, align 4
  %12 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %13 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %10
  %19 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %20 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FLOW_DIVERT_CONNECT_STARTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %18, %10
  %26 = load i32, i32* @FLOW_DIVERT_TUNNEL_WR_CLOSED, align 4
  %27 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %28 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %32 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @sbflush(i32* %34)
  br label %36

36:                                               ; preds = %25, %18
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SHUT_WR, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load i32, i32* @FLOW_DIVERT_READ_CLOSED, align 4
  %43 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %44 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %41
  %50 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %51 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FLOW_DIVERT_CONNECT_STARTED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49, %41
  %57 = load i32, i32* @FLOW_DIVERT_TUNNEL_RD_CLOSED, align 4
  %58 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %59 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %49
  br label %63

63:                                               ; preds = %62, %37
  ret void
}

declare dso_local i32 @sbflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
