; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32 }

@SOF_FLOW_DIVERT = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Closing\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @flow_divert_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_close(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.flow_divert_pcb*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = getelementptr inbounds %struct.socket, %struct.socket* %4, i32 0, i32 2
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
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 2
  %16 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %15, align 8
  %17 = icmp ne %struct.flow_divert_pcb* %16, null
  br label %18

18:                                               ; preds = %13, %1
  %19 = phi i1 [ false, %1 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @VERIFY(i32 %20)
  %22 = load i32, i32* @LOG_INFO, align 4
  %23 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %24 = call i32 @FDLOG0(i32 %22, %struct.flow_divert_pcb* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = call i64 @SOCK_TYPE(%struct.socket* %25)
  %27 = load i64, i64* @SOCK_STREAM, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.socket*, %struct.socket** %2, align 8
  %31 = call i32 @soisdisconnecting(%struct.socket* %30)
  %32 = load %struct.socket*, %struct.socket** %2, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 1
  %34 = call i32 @sbflush(i32* %33)
  br label %35

35:                                               ; preds = %29, %18
  %36 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @flow_divert_send_buffered_data(%struct.flow_divert_pcb* %36, i32 %37)
  %39 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %40 = load i32, i32* @SHUT_RDWR, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @flow_divert_update_closed_state(%struct.flow_divert_pcb* %39, i32 %40, i32 %41)
  %43 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %44 = call i32 @flow_divert_send_close_if_needed(%struct.flow_divert_pcb* %43)
  %45 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %46 = call i32 @flow_divert_pcb_remove(%struct.flow_divert_pcb* %45)
  ret i32 0
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @FDLOG0(i32, %struct.flow_divert_pcb*, i8*) #1

declare dso_local i64 @SOCK_TYPE(%struct.socket*) #1

declare dso_local i32 @soisdisconnecting(%struct.socket*) #1

declare dso_local i32 @sbflush(i32*) #1

declare dso_local i32 @flow_divert_send_buffered_data(%struct.flow_divert_pcb*, i32) #1

declare dso_local i32 @flow_divert_update_closed_state(%struct.flow_divert_pcb*, i32, i32) #1

declare dso_local i32 @flow_divert_send_close_if_needed(%struct.flow_divert_pcb*) #1

declare dso_local i32 @flow_divert_pcb_remove(%struct.flow_divert_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
