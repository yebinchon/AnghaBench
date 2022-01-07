; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_pcbremove.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_pcbremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i64, i32 }

@UIP_TIME_WAIT = common dso_local global i64 0, align 8
@UIP_LISTEN = common dso_local global i64 0, align 8
@UIP_TF_ACK_DELAY = common dso_local global i32 0, align 4
@UIP_TF_ACK_NOW = common dso_local global i32 0, align 4
@UIP_CLOSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_tcp_pcbremove(%struct.uip_tcp_pcb** %0, %struct.uip_tcp_pcb* %1) #0 {
  %3 = alloca %struct.uip_tcp_pcb**, align 8
  %4 = alloca %struct.uip_tcp_pcb*, align 8
  store %struct.uip_tcp_pcb** %0, %struct.uip_tcp_pcb*** %3, align 8
  store %struct.uip_tcp_pcb* %1, %struct.uip_tcp_pcb** %4, align 8
  %5 = load %struct.uip_tcp_pcb**, %struct.uip_tcp_pcb*** %3, align 8
  %6 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %7 = call i32 @UIP_TCP_RMV(%struct.uip_tcp_pcb** %5, %struct.uip_tcp_pcb* %6)
  %8 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %9 = call i32 @uip_tcp_pcbpurge(%struct.uip_tcp_pcb* %8)
  %10 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %11 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UIP_TIME_WAIT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %17 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UIP_LISTEN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %23 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @UIP_TF_ACK_DELAY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* @UIP_TF_ACK_NOW, align 4
  %30 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %31 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %35 = call i32 @uip_tcpoutput(%struct.uip_tcp_pcb* %34)
  br label %36

36:                                               ; preds = %28, %21, %15, %2
  %37 = load i64, i64* @UIP_CLOSED, align 8
  %38 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %39 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  ret void
}

declare dso_local i32 @UIP_TCP_RMV(%struct.uip_tcp_pcb**, %struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_pcbpurge(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcpoutput(%struct.uip_tcp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
