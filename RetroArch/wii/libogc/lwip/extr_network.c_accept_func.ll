; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_accept_func.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_accept_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type { i32 }
%struct.netconn = type { i32, i64, i32 (%struct.netconn*, i32, i32)*, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.tcp_pcb* }

@API_LIB_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"accept_func: %p %p %d\0A\00", align 1
@MEMP_NETCONN = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i32 0, align 4
@MQBOX_SIZE = common dso_local global i32 0, align 4
@MQ_ERROR_SUCCESSFUL = common dso_local global i64 0, align 8
@NETCONN_TCP = common dso_local global i32 0, align 4
@SYS_MBOX_NULL = common dso_local global i32 0, align 4
@NETCONN_EVTRCVPLUS = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tcp_pcb*, i32)* @accept_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accept_func(i8* %0, %struct.tcp_pcb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tcp_pcb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.netconn*, align 8
  %10 = alloca %struct.netconn*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.netconn*
  store %struct.netconn* %12, %struct.netconn** %10, align 8
  %13 = load i32, i32* @API_LIB_DEBUG, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @LWIP_DEBUGF(i32 %13, i8* %18)
  %20 = load %struct.netconn*, %struct.netconn** %10, align 8
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @MEMP_NETCONN, align 4
  %24 = call %struct.netconn* @memp_malloc(i32 %23)
  store %struct.netconn* %24, %struct.netconn** %9, align 8
  %25 = load %struct.netconn*, %struct.netconn** %9, align 8
  %26 = icmp eq %struct.netconn* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ERR_MEM, align 4
  store i32 %28, i32* %4, align 4
  br label %117

29:                                               ; preds = %3
  %30 = load %struct.netconn*, %struct.netconn** %9, align 8
  %31 = getelementptr inbounds %struct.netconn, %struct.netconn* %30, i32 0, i32 8
  %32 = load i32, i32* @MQBOX_SIZE, align 4
  %33 = call i64 @MQ_Init(i32* %31, i32 %32)
  %34 = load i64, i64* @MQ_ERROR_SUCCESSFUL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i32, i32* @MEMP_NETCONN, align 4
  %38 = load %struct.netconn*, %struct.netconn** %9, align 8
  %39 = call i32 @memp_free(i32 %37, %struct.netconn* %38)
  %40 = load i32, i32* @ERR_MEM, align 4
  store i32 %40, i32* %4, align 4
  br label %117

41:                                               ; preds = %29
  %42 = load %struct.netconn*, %struct.netconn** %9, align 8
  %43 = getelementptr inbounds %struct.netconn, %struct.netconn* %42, i32 0, i32 7
  %44 = load i32, i32* @MQBOX_SIZE, align 4
  %45 = call i64 @MQ_Init(i32* %43, i32 %44)
  %46 = load i64, i64* @MQ_ERROR_SUCCESSFUL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.netconn*, %struct.netconn** %9, align 8
  %50 = getelementptr inbounds %struct.netconn, %struct.netconn* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MQ_Close(i32 %51)
  %53 = load i32, i32* @MEMP_NETCONN, align 4
  %54 = load %struct.netconn*, %struct.netconn** %9, align 8
  %55 = call i32 @memp_free(i32 %53, %struct.netconn* %54)
  %56 = load i32, i32* @ERR_MEM, align 4
  store i32 %56, i32* %4, align 4
  br label %117

57:                                               ; preds = %41
  %58 = load %struct.netconn*, %struct.netconn** %9, align 8
  %59 = getelementptr inbounds %struct.netconn, %struct.netconn* %58, i32 0, i32 9
  %60 = call i32 @LWP_SemInit(i32* %59, i32 0, i32 1)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.netconn*, %struct.netconn** %9, align 8
  %64 = getelementptr inbounds %struct.netconn, %struct.netconn* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @MQ_Close(i32 %65)
  %67 = load %struct.netconn*, %struct.netconn** %9, align 8
  %68 = getelementptr inbounds %struct.netconn, %struct.netconn* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @MQ_Close(i32 %69)
  %71 = load i32, i32* @MEMP_NETCONN, align 4
  %72 = load %struct.netconn*, %struct.netconn** %9, align 8
  %73 = call i32 @memp_free(i32 %71, %struct.netconn* %72)
  %74 = load i32, i32* @ERR_MEM, align 4
  store i32 %74, i32* %4, align 4
  br label %117

75:                                               ; preds = %57
  %76 = load i32, i32* @NETCONN_TCP, align 4
  %77 = load %struct.netconn*, %struct.netconn** %9, align 8
  %78 = getelementptr inbounds %struct.netconn, %struct.netconn* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.tcp_pcb*, %struct.tcp_pcb** %6, align 8
  %80 = load %struct.netconn*, %struct.netconn** %9, align 8
  %81 = getelementptr inbounds %struct.netconn, %struct.netconn* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store %struct.tcp_pcb* %79, %struct.tcp_pcb** %82, align 8
  %83 = load %struct.netconn*, %struct.netconn** %9, align 8
  %84 = call i32 @setuptcp(%struct.netconn* %83)
  %85 = load i32, i32* @SYS_MBOX_NULL, align 4
  %86 = load %struct.netconn*, %struct.netconn** %9, align 8
  %87 = getelementptr inbounds %struct.netconn, %struct.netconn* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.netconn*, %struct.netconn** %9, align 8
  %90 = getelementptr inbounds %struct.netconn, %struct.netconn* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.netconn*, %struct.netconn** %10, align 8
  %92 = getelementptr inbounds %struct.netconn, %struct.netconn* %91, i32 0, i32 2
  %93 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %92, align 8
  %94 = icmp ne i32 (%struct.netconn*, i32, i32)* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %75
  %96 = load %struct.netconn*, %struct.netconn** %10, align 8
  %97 = getelementptr inbounds %struct.netconn, %struct.netconn* %96, i32 0, i32 2
  %98 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %97, align 8
  %99 = load %struct.netconn*, %struct.netconn** %10, align 8
  %100 = load i32, i32* @NETCONN_EVTRCVPLUS, align 4
  %101 = call i32 %98(%struct.netconn* %99, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %95, %75
  %103 = load %struct.netconn*, %struct.netconn** %10, align 8
  %104 = getelementptr inbounds %struct.netconn, %struct.netconn* %103, i32 0, i32 2
  %105 = load i32 (%struct.netconn*, i32, i32)*, i32 (%struct.netconn*, i32, i32)** %104, align 8
  %106 = load %struct.netconn*, %struct.netconn** %9, align 8
  %107 = getelementptr inbounds %struct.netconn, %struct.netconn* %106, i32 0, i32 2
  store i32 (%struct.netconn*, i32, i32)* %105, i32 (%struct.netconn*, i32, i32)** %107, align 8
  %108 = load %struct.netconn*, %struct.netconn** %9, align 8
  %109 = getelementptr inbounds %struct.netconn, %struct.netconn* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 8
  %110 = load %struct.netconn*, %struct.netconn** %9, align 8
  %111 = getelementptr inbounds %struct.netconn, %struct.netconn* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.netconn*, %struct.netconn** %9, align 8
  %114 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %115 = call i32 @MQ_Send(i32 %112, %struct.netconn* %113, i32 %114)
  %116 = load i32, i32* @ERR_OK, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %102, %62, %48, %36, %27
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local %struct.netconn* @memp_malloc(i32) #1

declare dso_local i64 @MQ_Init(i32*, i32) #1

declare dso_local i32 @memp_free(i32, %struct.netconn*) #1

declare dso_local i32 @MQ_Close(i32) #1

declare dso_local i32 @LWP_SemInit(i32*, i32, i32) #1

declare dso_local i32 @setuptcp(%struct.netconn*) #1

declare dso_local i32 @MQ_Send(i32, %struct.netconn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
