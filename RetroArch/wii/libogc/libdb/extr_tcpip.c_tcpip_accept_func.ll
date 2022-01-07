; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_accept_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_accept_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpip_sock = type { %struct.tcpip_sock*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.uip_tcp_pcb = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"tcpip_accept_func()\00", align 1
@UIP_ERR_ABRT = common dso_local global i32 0, align 4
@UIP_TF_NODELAY = common dso_local global i32 0, align 4
@tcpip_accepted_sockets = common dso_local global %struct.tcpip_sock* null, align 8
@tcpip_recved = common dso_local global i32 0, align 4
@tcpip_sent = common dso_local global i32 0, align 4
@tcpip_err = common dso_local global i32 0, align 4
@tcpip_poll = common dso_local global i32 0, align 4
@UIP_ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.uip_tcp_pcb*, i32)* @tcpip_accept_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpip_accept_func(i8* %0, %struct.uip_tcp_pcb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uip_tcp_pcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tcpip_sock*, align 8
  %10 = alloca %struct.tcpip_sock*, align 8
  %11 = alloca %struct.tcpip_sock*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.uip_tcp_pcb* %1, %struct.uip_tcp_pcb** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tcpip_sock* null, %struct.tcpip_sock** %10, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.tcpip_sock*
  store %struct.tcpip_sock* %13, %struct.tcpip_sock** %11, align 8
  %14 = call i32 @UIP_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.tcpip_sock*, %struct.tcpip_sock** %11, align 8
  %16 = icmp ne %struct.tcpip_sock* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @UIP_ERR_ABRT, align 4
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  %20 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %6, align 8
  %21 = call i64 @tcpip_allocsocket(%struct.uip_tcp_pcb* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %6, align 8
  %26 = call i32 @uip_tcp_close(%struct.uip_tcp_pcb* %25)
  %27 = load i32, i32* @UIP_ERR_ABRT, align 4
  store i32 %27, i32* %4, align 4
  br label %79

28:                                               ; preds = %19
  %29 = load i64, i64* %8, align 8
  %30 = call %struct.tcpip_sock* @tcpip_getsocket(i64 %29)
  store %struct.tcpip_sock* %30, %struct.tcpip_sock** %10, align 8
  %31 = load i32, i32* @UIP_TF_NODELAY, align 4
  %32 = load %struct.tcpip_sock*, %struct.tcpip_sock** %10, align 8
  %33 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  %38 = load %struct.tcpip_sock*, %struct.tcpip_sock** @tcpip_accepted_sockets, align 8
  store %struct.tcpip_sock* %38, %struct.tcpip_sock** %9, align 8
  br label %39

39:                                               ; preds = %49, %28
  %40 = load %struct.tcpip_sock*, %struct.tcpip_sock** %9, align 8
  %41 = icmp ne %struct.tcpip_sock* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.tcpip_sock*, %struct.tcpip_sock** %9, align 8
  %44 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %43, i32 0, i32 0
  %45 = load %struct.tcpip_sock*, %struct.tcpip_sock** %44, align 8
  %46 = icmp ne %struct.tcpip_sock* %45, null
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load %struct.tcpip_sock*, %struct.tcpip_sock** %9, align 8
  %51 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %50, i32 0, i32 0
  %52 = load %struct.tcpip_sock*, %struct.tcpip_sock** %51, align 8
  store %struct.tcpip_sock* %52, %struct.tcpip_sock** %9, align 8
  br label %39

53:                                               ; preds = %47
  %54 = load %struct.tcpip_sock*, %struct.tcpip_sock** %9, align 8
  %55 = icmp ne %struct.tcpip_sock* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = load %struct.tcpip_sock*, %struct.tcpip_sock** %10, align 8
  store %struct.tcpip_sock* %57, %struct.tcpip_sock** @tcpip_accepted_sockets, align 8
  br label %62

58:                                               ; preds = %53
  %59 = load %struct.tcpip_sock*, %struct.tcpip_sock** %10, align 8
  %60 = load %struct.tcpip_sock*, %struct.tcpip_sock** %9, align 8
  %61 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %60, i32 0, i32 0
  store %struct.tcpip_sock* %59, %struct.tcpip_sock** %61, align 8
  br label %62

62:                                               ; preds = %58, %56
  %63 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %6, align 8
  %64 = load %struct.tcpip_sock*, %struct.tcpip_sock** %10, align 8
  %65 = call i32 @uip_tcp_arg(%struct.uip_tcp_pcb* %63, %struct.tcpip_sock* %64)
  %66 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %6, align 8
  %67 = load i32, i32* @tcpip_recved, align 4
  %68 = call i32 @uip_tcp_recv(%struct.uip_tcp_pcb* %66, i32 %67)
  %69 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %6, align 8
  %70 = load i32, i32* @tcpip_sent, align 4
  %71 = call i32 @uip_tcp_sent(%struct.uip_tcp_pcb* %69, i32 %70)
  %72 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %6, align 8
  %73 = load i32, i32* @tcpip_err, align 4
  %74 = call i32 @uip_tcp_err(%struct.uip_tcp_pcb* %72, i32 %73)
  %75 = load %struct.uip_tcp_pcb*, %struct.uip_tcp_pcb** %6, align 8
  %76 = load i32, i32* @tcpip_poll, align 4
  %77 = call i32 @uip_tcp_poll(%struct.uip_tcp_pcb* %75, i32 %76, i32 4)
  %78 = load i32, i32* @UIP_ERR_OK, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %62, %24, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @UIP_LOG(i8*) #1

declare dso_local i64 @tcpip_allocsocket(%struct.uip_tcp_pcb*) #1

declare dso_local i32 @uip_tcp_close(%struct.uip_tcp_pcb*) #1

declare dso_local %struct.tcpip_sock* @tcpip_getsocket(i64) #1

declare dso_local i32 @uip_tcp_arg(%struct.uip_tcp_pcb*, %struct.tcpip_sock*) #1

declare dso_local i32 @uip_tcp_recv(%struct.uip_tcp_pcb*, i32) #1

declare dso_local i32 @uip_tcp_sent(%struct.uip_tcp_pcb*, i32) #1

declare dso_local i32 @uip_tcp_err(%struct.uip_tcp_pcb*, i32) #1

declare dso_local i32 @uip_tcp_poll(%struct.uip_tcp_pcb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
