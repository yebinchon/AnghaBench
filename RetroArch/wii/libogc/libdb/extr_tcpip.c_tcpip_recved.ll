; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_recved.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_recved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i32 }
%struct.uip_pbuf = type { i32 }
%struct.tcpip_sock = type { %struct.uip_pbuf* }

@UIP_ERR_VAL = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.uip_tcp_pcb*, %struct.uip_pbuf*, i32)* @tcpip_recved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpip_recved(i8* %0, %struct.uip_tcp_pcb* %1, %struct.uip_pbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uip_tcp_pcb*, align 8
  %8 = alloca %struct.uip_pbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcpip_sock*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.uip_tcp_pcb* %1, %struct.uip_tcp_pcb** %7, align 8
  store %struct.uip_pbuf* %2, %struct.uip_pbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.tcpip_sock*
  store %struct.tcpip_sock* %13, %struct.tcpip_sock** %11, align 8
  %14 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %15 = icmp ne %struct.tcpip_sock* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %18 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %17)
  %19 = load i32, i32* @UIP_ERR_VAL, align 4
  store i32 %19, i32* %5, align 4
  br label %48

20:                                               ; preds = %4
  %21 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %22 = icmp ne %struct.uip_pbuf* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %25 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %28 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %27, i32 0, i32 0
  %29 = load %struct.uip_pbuf*, %struct.uip_pbuf** %28, align 8
  %30 = icmp eq %struct.uip_pbuf* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %33 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %34 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %33, i32 0, i32 0
  store %struct.uip_pbuf* %32, %struct.uip_pbuf** %34, align 8
  br label %41

35:                                               ; preds = %23
  %36 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %37 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %36, i32 0, i32 0
  %38 = load %struct.uip_pbuf*, %struct.uip_pbuf** %37, align 8
  %39 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %40 = call i32 @uip_pbuf_queue(%struct.uip_pbuf* %38, %struct.uip_pbuf* %39)
  br label %41

41:                                               ; preds = %35, %31
  br label %43

42:                                               ; preds = %20
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @uip_tcp_recved(%struct.uip_tcp_pcb* %44, i32 %45)
  %47 = load i32, i32* @UIP_ERR_OK, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

declare dso_local i32 @uip_pbuf_queue(%struct.uip_pbuf*, %struct.uip_pbuf*) #1

declare dso_local i32 @uip_tcp_recved(%struct.uip_tcp_pcb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
