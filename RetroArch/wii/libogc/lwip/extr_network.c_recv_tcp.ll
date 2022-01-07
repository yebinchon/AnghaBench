; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_recv_tcp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_recv_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.pbuf = type { i64 }
%struct.netconn = type { i64, i32 (%struct.netconn*, i32, i64)*, i32, i32 }

@API_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"api_msg: recv_tcp(%p,%p,%p,%d)\0A\00", align 1
@ERR_VAL = common dso_local global i32 0, align 4
@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@NETCONN_EVTRCVPLUS = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i32)* @recv_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_tcp(i8* %0, %struct.tcp_pcb* %1, %struct.pbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tcp_pcb*, align 8
  %8 = alloca %struct.pbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.netconn*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %7, align 8
  store %struct.pbuf* %2, %struct.pbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.netconn*
  store %struct.netconn* %13, %struct.netconn** %11, align 8
  %14 = load i32, i32* @API_MSG_DEBUG, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.tcp_pcb*, %struct.tcp_pcb** %7, align 8
  %17 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @LWIP_DEBUGF(i32 %14, i8* %20)
  %22 = load %struct.netconn*, %struct.netconn** %11, align 8
  %23 = icmp eq %struct.netconn* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %26 = call i32 @pbuf_free(%struct.pbuf* %25)
  %27 = load i32, i32* @ERR_VAL, align 4
  store i32 %27, i32* %5, align 4
  br label %74

28:                                               ; preds = %4
  %29 = load %struct.netconn*, %struct.netconn** %11, align 8
  %30 = getelementptr inbounds %struct.netconn, %struct.netconn* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SYS_MBOX_NULL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.netconn*, %struct.netconn** %11, align 8
  %37 = getelementptr inbounds %struct.netconn, %struct.netconn* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %39 = icmp ne %struct.pbuf* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.netconn*, %struct.netconn** %11, align 8
  %46 = getelementptr inbounds %struct.netconn, %struct.netconn* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  br label %52

51:                                               ; preds = %34
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %51, %40
  %53 = load %struct.netconn*, %struct.netconn** %11, align 8
  %54 = getelementptr inbounds %struct.netconn, %struct.netconn* %53, i32 0, i32 1
  %55 = load i32 (%struct.netconn*, i32, i64)*, i32 (%struct.netconn*, i32, i64)** %54, align 8
  %56 = icmp ne i32 (%struct.netconn*, i32, i64)* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.netconn*, %struct.netconn** %11, align 8
  %59 = getelementptr inbounds %struct.netconn, %struct.netconn* %58, i32 0, i32 1
  %60 = load i32 (%struct.netconn*, i32, i64)*, i32 (%struct.netconn*, i32, i64)** %59, align 8
  %61 = load %struct.netconn*, %struct.netconn** %11, align 8
  %62 = load i32, i32* @NETCONN_EVTRCVPLUS, align 4
  %63 = load i64, i64* %10, align 8
  %64 = call i32 %60(%struct.netconn* %61, i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %57, %52
  %66 = load %struct.netconn*, %struct.netconn** %11, align 8
  %67 = getelementptr inbounds %struct.netconn, %struct.netconn* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %70 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %71 = call i32 @MQ_Send(i64 %68, %struct.pbuf* %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %28
  %73 = load i32, i32* @ERR_OK, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %24
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

declare dso_local i32 @MQ_Send(i64, %struct.pbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
