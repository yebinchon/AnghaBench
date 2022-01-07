; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_close.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_tcp.c_uip_tcp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.uip_tcp_pcb = type { i32 }

@UIP_ERR_OK = common dso_local global i64 0, align 8
@uip_tcp_pcbs = common dso_local global i32 0, align 4
@uip_tcp_listen_pcbs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@uip_listen_tcp_pcbs = common dso_local global i32 0, align 4
@uip_tcp_active_pcbs = common dso_local global %struct.uip_tcp_pcb* null, align 8
@UIP_TCP_FIN = common dso_local global i32 0, align 4
@UIP_FIN_WAIT_1 = common dso_local global i32 0, align 4
@UIP_LAST_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uip_tcp_close(%struct.uip_tcp_pcb* %0) #0 {
  %2 = alloca %struct.uip_tcp_pcb*, align 8
  %3 = alloca i64, align 8
  store %struct.uip_tcp_pcb* %0, %struct.uip_tcp_pcb** %2, align 8
  %4 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %5 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %47 [
    i32 133, label %7
    i32 130, label %11
    i32 128, label %17
    i32 129, label %23
    i32 131, label %23
    i32 132, label %35
  ]

7:                                                ; preds = %1
  %8 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %10 = call i32 @memb_free(i32* @uip_tcp_pcbs, %struct.uip_tcp_pcb* %9)
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %2, align 8
  br label %49

11:                                               ; preds = %1
  %12 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %12, i64* %3, align 8
  %13 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %14 = call i32 @uip_tcp_pcbremove(%struct.uip_tcp_pcb** bitcast (%struct.TYPE_2__* @uip_tcp_listen_pcbs to %struct.uip_tcp_pcb**), %struct.uip_tcp_pcb* %13)
  %15 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %16 = call i32 @memb_free(i32* @uip_listen_tcp_pcbs, %struct.uip_tcp_pcb* %15)
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %2, align 8
  br label %49

17:                                               ; preds = %1
  %18 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %18, i64* %3, align 8
  %19 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %20 = call i32 @uip_tcp_pcbremove(%struct.uip_tcp_pcb** @uip_tcp_active_pcbs, %struct.uip_tcp_pcb* %19)
  %21 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %22 = call i32 @memb_free(i32* @uip_tcp_pcbs, %struct.uip_tcp_pcb* %21)
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %2, align 8
  br label %49

23:                                               ; preds = %1, %1
  %24 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %25 = load i32, i32* @UIP_TCP_FIN, align 4
  %26 = call i64 @uip_tcp_sendctrl(%struct.uip_tcp_pcb* %24, i32 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @UIP_ERR_OK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @UIP_FIN_WAIT_1, align 4
  %32 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %33 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %23
  br label %49

35:                                               ; preds = %1
  %36 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %37 = load i32, i32* @UIP_TCP_FIN, align 4
  %38 = call i64 @uip_tcp_sendctrl(%struct.uip_tcp_pcb* %36, i32 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @UIP_ERR_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @UIP_LAST_ACK, align 4
  %44 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %45 = getelementptr inbounds %struct.uip_tcp_pcb, %struct.uip_tcp_pcb* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %35
  br label %49

47:                                               ; preds = %1
  %48 = load i64, i64* @UIP_ERR_OK, align 8
  store i64 %48, i64* %3, align 8
  store %struct.uip_tcp_pcb* null, %struct.uip_tcp_pcb** %2, align 8
  br label %49

49:                                               ; preds = %47, %46, %34, %17, %11, %7
  %50 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %51 = icmp ne %struct.uip_tcp_pcb* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* @UIP_ERR_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %2, align 8
  %58 = call i32 @uip_tcpoutput(%struct.uip_tcp_pcb* %57)
  br label %59

59:                                               ; preds = %56, %52, %49
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i32 @memb_free(i32*, %struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_pcbremove(%struct.uip_tcp_pcb**, %struct.uip_tcp_pcb*) #1

declare dso_local i64 @uip_tcp_sendctrl(%struct.uip_tcp_pcb*, i32) #1

declare dso_local i32 @uip_tcpoutput(%struct.uip_tcp_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
