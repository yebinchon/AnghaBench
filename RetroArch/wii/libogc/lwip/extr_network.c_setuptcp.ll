; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_setuptcp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_setuptcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tcp_pcb* }
%struct.tcp_pcb = type { i32 }

@recv_tcp = common dso_local global i32 0, align 4
@sent_tcp = common dso_local global i32 0, align 4
@poll_tcp = common dso_local global i32 0, align 4
@err_tcp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netconn*)* @setuptcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setuptcp(%struct.netconn* %0) #0 {
  %2 = alloca %struct.netconn*, align 8
  %3 = alloca %struct.tcp_pcb*, align 8
  store %struct.netconn* %0, %struct.netconn** %2, align 8
  %4 = load %struct.netconn*, %struct.netconn** %2, align 8
  %5 = getelementptr inbounds %struct.netconn, %struct.netconn* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  store %struct.tcp_pcb* %7, %struct.tcp_pcb** %3, align 8
  %8 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %9 = load %struct.netconn*, %struct.netconn** %2, align 8
  %10 = call i32 @tcp_arg(%struct.tcp_pcb* %8, %struct.netconn* %9)
  %11 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %12 = load i32, i32* @recv_tcp, align 4
  %13 = call i32 @tcp_recv(%struct.tcp_pcb* %11, i32 %12)
  %14 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %15 = load i32, i32* @sent_tcp, align 4
  %16 = call i32 @tcp_sent(%struct.tcp_pcb* %14, i32 %15)
  %17 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %18 = load i32, i32* @poll_tcp, align 4
  %19 = call i32 @tcp_poll(%struct.tcp_pcb* %17, i32 %18, i32 4)
  %20 = load %struct.tcp_pcb*, %struct.tcp_pcb** %3, align 8
  %21 = load i32, i32* @err_tcp, align 4
  %22 = call i32 @tcp_err(%struct.tcp_pcb* %20, i32 %21)
  ret void
}

declare dso_local i32 @tcp_arg(%struct.tcp_pcb*, %struct.netconn*) #1

declare dso_local i32 @tcp_recv(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_sent(%struct.tcp_pcb*, i32) #1

declare dso_local i32 @tcp_poll(%struct.tcp_pcb*, i32, i32) #1

declare dso_local i32 @tcp_err(%struct.tcp_pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
