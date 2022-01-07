; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_shutdown.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32 }

@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Can't send more\00", align 1
@SHUT_WR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @flow_divert_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_shutdown(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.flow_divert_pcb*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = getelementptr inbounds %struct.socket, %struct.socket* %4, i32 0, i32 1
  %6 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %5, align 8
  store %struct.flow_divert_pcb* %6, %struct.flow_divert_pcb** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %2, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SOF_FLOW_DIVERT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.socket*, %struct.socket** %2, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %15, align 8
  %17 = icmp ne %struct.flow_divert_pcb* %16, null
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ false, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @VERIFY(i32 %20)
  %22 = load i32, i32* @LOG_INFO, align 4
  %23 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %24 = call i32 @FDLOG0(i32 %22, %struct.flow_divert_pcb* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = call i32 @socantsendmore(%struct.socket* %25)
  %27 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %28 = load i32, i32* @SHUT_WR, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = call i32 @flow_divert_update_closed_state(%struct.flow_divert_pcb* %27, i32 %28, i32 %29)
  %31 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %32 = call i32 @flow_divert_send_close_if_needed(%struct.flow_divert_pcb* %31)
  ret i32 0
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @FDLOG0(i32, %struct.flow_divert_pcb*, i8*) #1

declare dso_local i32 @socantsendmore(%struct.socket*) #1

declare dso_local i32 @flow_divert_update_closed_state(%struct.flow_divert_pcb*, i32, i32) #1

declare dso_local i32 @flow_divert_send_close_if_needed(%struct.flow_divert_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
