; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_socket.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpip_sock = type { i32 }
%struct.uip_tcp_pcb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcpip_socket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpip_sock*, align 8
  %4 = alloca %struct.uip_tcp_pcb*, align 8
  %5 = call %struct.uip_tcp_pcb* (...) @uip_tcp_new()
  store %struct.uip_tcp_pcb* %5, %struct.uip_tcp_pcb** %4, align 8
  %6 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %7 = icmp ne %struct.uip_tcp_pcb* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %24

9:                                                ; preds = %0
  %10 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %11 = call i32 @tcpip_allocsocket(%struct.uip_tcp_pcb* %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %16 = call i32 @uip_tcp_close(%struct.uip_tcp_pcb* %15)
  store i32 -1, i32* %1, align 4
  br label %24

17:                                               ; preds = %9
  %18 = load i32, i32* %2, align 4
  %19 = call %struct.tcpip_sock* @tcpip_getsocket(i32 %18)
  store %struct.tcpip_sock* %19, %struct.tcpip_sock** %3, align 8
  %20 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %4, align 8
  %21 = load %struct.tcpip_sock*, %struct.tcpip_sock** %3, align 8
  %22 = call i32 @uip_tcp_arg(%struct.uip_tcp_pcb* %20, %struct.tcpip_sock* %21)
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %17, %14, %8
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local %struct.uip_tcp_pcb* @uip_tcp_new(...) #1

declare dso_local i32 @tcpip_allocsocket(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_close(%struct.uip_tcp_pcb*) #1

declare dso_local %struct.tcpip_sock* @tcpip_getsocket(i32) #1

declare dso_local i32 @uip_tcp_arg(%struct.uip_tcp_pcb*, %struct.tcpip_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
