; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_rexmit_rto.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_rexmit_rto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i32, %struct.uip_tcpseg*, i32, %struct.uip_tcpseg* }
%struct.uip_tcpseg = type { %struct.TYPE_2__*, %struct.uip_tcpseg* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uip_tcp_rexmit_rto(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca %struct.uip_tcp_pcb*, align 8
  %3 = alloca %struct.uip_tcpseg*, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %2, align 8
  %4 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %5 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %4, i32 0, i32 3
  %6 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %5, align 8
  %7 = icmp eq %struct.uip_tcpseg* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %11 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %10, i32 0, i32 3
  %12 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %11, align 8
  store %struct.uip_tcpseg* %12, %struct.uip_tcpseg** %3, align 8
  br label %13

13:                                               ; preds = %19, %9
  %14 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %15 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %14, i32 0, i32 1
  %16 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %15, align 8
  %17 = icmp ne %struct.uip_tcpseg* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %21 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %20, i32 0, i32 1
  %22 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %21, align 8
  store %struct.uip_tcpseg* %22, %struct.uip_tcpseg** %3, align 8
  br label %13

23:                                               ; preds = %13
  %24 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %25 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %24, i32 0, i32 1
  %26 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %25, align 8
  %27 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %3, align 8
  %28 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %27, i32 0, i32 1
  store %struct.uip_tcpseg* %26, %struct.uip_tcpseg** %28, align 8
  %29 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %30 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %29, i32 0, i32 3
  %31 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %30, align 8
  %32 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %33 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %32, i32 0, i32 1
  store %struct.uip_tcpseg* %31, %struct.uip_tcpseg** %33, align 8
  %34 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %35 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %34, i32 0, i32 3
  store %struct.uip_tcpseg* null, %struct.uip_tcpseg** %35, align 8
  %36 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %37 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %36, i32 0, i32 1
  %38 = load %struct.uip_tcpseg*, %struct.uip_tcpseg** %37, align 8
  %39 = getelementptr inbounds %struct.uip_tcpseg, %struct.uip_tcpseg* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  %44 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %45 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %47 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %51 = call i32 @uip_tcpoutput(%struct.uip_tcp_pcb* %50)
  br label %52

52:                                               ; preds = %23, %8
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
