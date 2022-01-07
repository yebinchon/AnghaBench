; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_poll_tcp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_poll_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.netconn = type { i64, i64 }

@API_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"api_msg: poll_tcp\0A\00", align 1
@SYS_SEM_NULL = common dso_local global i64 0, align 8
@NETCONN_WRITE = common dso_local global i64 0, align 8
@NETCONN_CLOSE = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tcp_pcb*)* @poll_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_tcp(i8* %0, %struct.tcp_pcb* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tcp_pcb*, align 8
  %5 = alloca %struct.netconn*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.netconn*
  store %struct.netconn* %7, %struct.netconn** %5, align 8
  %8 = load i32, i32* @API_MSG_DEBUG, align 4
  %9 = call i32 @LWIP_DEBUGF(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.netconn*, %struct.netconn** %5, align 8
  %11 = icmp ne %struct.netconn* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.netconn*, %struct.netconn** %5, align 8
  %14 = getelementptr inbounds %struct.netconn, %struct.netconn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SYS_SEM_NULL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.netconn*, %struct.netconn** %5, align 8
  %20 = getelementptr inbounds %struct.netconn, %struct.netconn* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NETCONN_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.netconn*, %struct.netconn** %5, align 8
  %26 = getelementptr inbounds %struct.netconn, %struct.netconn* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NETCONN_CLOSE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %24, %18
  %31 = load %struct.netconn*, %struct.netconn** %5, align 8
  %32 = getelementptr inbounds %struct.netconn, %struct.netconn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @LWP_SemPost(i64 %33)
  br label %35

35:                                               ; preds = %30, %24, %12, %2
  %36 = load i32, i32* @ERR_OK, align 4
  ret i32 %36
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @LWP_SemPost(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
