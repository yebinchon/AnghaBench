; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_rexmit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_rexmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i64, i32, %struct.uip_tcpseg*, i32, %struct.uip_tcpseg* }
%struct.uip_tcpseg = type { %struct.TYPE_2__*, %struct.uip_tcpseg* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_tcp_rexmit(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca %struct.uip_tcp_pcb*, align 8
  %3 = alloca %struct.uip_tcpseg*, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %2, align 8
  %4 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %5 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %4, i32 0, i32 4
  %6 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %7 = icmp eq %struct.uip_tcpseg* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  %10 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %11 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %10, i32 0, i32 4
  %12 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %11, align 8
  %13 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %12, i32 0, i32 1
  %14 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %13, align 8
  store %struct.uip_tcpseg* %14, %struct.uip_tcpseg** %3, align 8
  %15 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %16 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %15, i32 0, i32 2
  %17 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %16, align 8
  %18 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %19 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %18, i32 0, i32 4
  %20 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %19, align 8
  %21 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %20, i32 0, i32 1
  store %struct.uip_tcpseg* %17, %struct.uip_tcpseg** %21, align 8
  %22 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %23 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %22, i32 0, i32 4
  %24 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %23, align 8
  %25 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %26 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %25, i32 0, i32 2
  store %struct.uip_tcpseg* %24, %struct.uip_tcpseg** %26, align 8
  %27 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %28 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %29 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %28, i32 0, i32 4
  store %struct.uip_tcpseg* %27, %struct.uip_tcpseg** %29, align 8
  %30 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %31 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %30, i32 0, i32 2
  %32 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %31, align 8
  %33 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ntohl(i32 %36)
  %38 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %39 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %41 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %45 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %47 = call i32 @uip_tcpoutput(%struct.uip_tcp_pcb* %46)
  br label %48

48:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @uip_tcpoutput(%struct.uip_tcp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
