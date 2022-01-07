; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_sent_tcp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_sent_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.netconn = type { i64, i32 (%struct.netconn*, i32, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@API_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"api_msg: sent_tcp: sent %d bytes\0A\00", align 1
@SYS_SEM_NULL = common dso_local global i64 0, align 8
@TCP_SNDLOWAT = common dso_local global i64 0, align 8
@NETCONN_EVTSENDPLUS = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tcp_pcb*, i32)* @sent_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sent_tcp(i8* %0, %struct.tcp_pcb* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tcp_pcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netconn*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.netconn*
  store %struct.netconn* %9, %struct.netconn** %7, align 8
  %10 = load i32, i32* @API_MSG_DEBUG, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @LWIP_DEBUGF(i32 %10, i8* %13)
  %15 = load %struct.netconn*, %struct.netconn** %7, align 8
  %16 = icmp ne %struct.netconn* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load %struct.netconn*, %struct.netconn** %7, align 8
  %19 = getelementptr inbounds %struct.netconn, %struct.netconn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SYS_SEM_NULL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.netconn*, %struct.netconn** %7, align 8
  %25 = getelementptr inbounds %struct.netconn, %struct.netconn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @LWP_SemPost(i64 %26)
  br label %28

28:                                               ; preds = %23, %17, %3
  %29 = load %struct.netconn*, %struct.netconn** %7, align 8
  %30 = icmp ne %struct.netconn* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.netconn*, %struct.netconn** %7, align 8
  %33 = getelementptr inbounds %struct.netconn, %struct.netconn* %32, i32 0, i32 1
  %34 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %33, align 8
  %35 = icmp ne i32 (%struct.netconn*, i32, i32)* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.netconn*, %struct.netconn** %7, align 8
  %38 = getelementptr inbounds %struct.netconn, %struct.netconn* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @tcp_sndbuf(i32 %40)
  %42 = load i64, i64* @TCP_SNDLOWAT, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.netconn*, %struct.netconn** %7, align 8
  %46 = getelementptr inbounds %struct.netconn, %struct.netconn* %45, i32 0, i32 1
  %47 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %46, align 8
  %48 = load %struct.netconn*, %struct.netconn** %7, align 8
  %49 = load i32, i32* @NETCONN_EVTSENDPLUS, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 %47(%struct.netconn* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %36
  br label %53

53:                                               ; preds = %52, %31, %28
  %54 = load i32, i32* @ERR_OK, align 4
  ret i32 %54
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWP_SemPost(i64) #1

declare dso_local i64 @tcp_sndbuf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
