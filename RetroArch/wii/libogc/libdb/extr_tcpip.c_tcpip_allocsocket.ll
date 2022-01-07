; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_allocsocket.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_allocsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64, i64, i64, i32*, %struct.uip_tcp_pcb* }
%struct.uip_tcp_pcb = type { i32 }

@UIP_TCPIP_SOCKS = common dso_local global i64 0, align 8
@tcpip_socks = common dso_local global %struct.TYPE_2__* null, align 8
@UIP_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.uip_tcp_pcb*)* @tcpip_allocsocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcpip_allocsocket(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.uip_tcp_pcb*, align 8
  %4 = alloca i64, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %54, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @UIP_TCPIP_SOCKS, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %57

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_socks, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 7
  %14 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %13, align 8
  %15 = icmp eq %struct.uip_tcp_pcb* %14, null
  br i1 %15, label %16, label %53

16:                                               ; preds = %9
  %17 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %3, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_socks, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 7
  store %struct.uip_tcp_pcb* %17, %struct.uip_tcp_pcb** %21, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_socks, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_socks, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_socks, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_socks, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_socks, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_socks, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 %42, i64* %46, align 8
  %47 = load i32, i32* @UIP_ERR_OK, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tcpip_socks, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %47, i32* %51, align 8
  %52 = load i64, i64* %4, align 8
  store i64 %52, i64* %2, align 8
  br label %58

53:                                               ; preds = %9
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %5

57:                                               ; preds = %5
  store i64 -1, i64* %2, align 8
  br label %58

58:                                               ; preds = %57, %16
  %59 = load i64, i64* %2, align 8
  ret i64 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
