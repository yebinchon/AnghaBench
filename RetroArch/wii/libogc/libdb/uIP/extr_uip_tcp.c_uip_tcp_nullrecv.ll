; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_nullrecv.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_nullrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_tcp_pcb = type { i32 }
%struct.uip_pbuf = type { i32 }

@UIP_ERR_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.uip_tcp_pcb*, %struct.uip_pbuf*, i64)* @uip_tcp_nullrecv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @uip_tcp_nullrecv(i8* %0, %struct.uip_tcp_pcb* %1, %struct.uip_pbuf* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.uip_tcp_pcb*, align 8
  %8 = alloca %struct.uip_pbuf*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.uip_tcp_pcb* %1, %struct.uip_tcp_pcb** %7, align 8
  store %struct.uip_pbuf* %2, %struct.uip_pbuf** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %11 = icmp ne %struct.uip_pbuf* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.uip_pbuf*, %struct.uip_pbuf** %8, align 8
  %14 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %13)
  br label %23

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @UIP_ERR_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %7, align 8
  %21 = call i64 @uip_tcp_close(%struct.uip_tcp_pcb* %20)
  store i64 %21, i64* %5, align 8
  br label %25

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i64, i64* %5, align 8
  ret i64 %26
}

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

declare dso_local i64 @uip_tcp_close(%struct.uip_tcp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
