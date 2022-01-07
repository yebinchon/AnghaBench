; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_bind.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i64, i64, i32, i32 }
%struct.ip_addr = type { i32 }
%struct.api_msg = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.netconn* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ip_addr* }

@API_LIB_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"netconn_bind(%p)\0A\00", align 1
@ERR_VAL = common dso_local global i32 0, align 4
@NETCONN_TCP = common dso_local global i64 0, align 8
@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@MQBOX_SIZE = common dso_local global i32 0, align 4
@MQ_ERROR_SUCCESSFUL = common dso_local global i64 0, align 8
@ERR_MEM = common dso_local global i32 0, align 4
@MEMP_API_MSG = common dso_local global i32 0, align 4
@APIMSG_BIND = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netconn*, %struct.ip_addr*, i32)* @netconn_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netconn_bind(%struct.netconn* %0, %struct.ip_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netconn*, align 8
  %6 = alloca %struct.ip_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.api_msg*, align 8
  store %struct.netconn* %0, %struct.netconn** %5, align 8
  store %struct.ip_addr* %1, %struct.ip_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %10 = load i32, i32* @API_LIB_DEBUG, align 4
  %11 = load %struct.netconn*, %struct.netconn** %5, align 8
  %12 = bitcast %struct.netconn* %11 to i8*
  %13 = call i32 @LWIP_DEBUGF(i32 %10, i8* %12)
  %14 = load %struct.netconn*, %struct.netconn** %5, align 8
  %15 = icmp eq %struct.netconn* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ERR_VAL, align 4
  store i32 %17, i32* %4, align 4
  br label %82

18:                                               ; preds = %3
  %19 = load %struct.netconn*, %struct.netconn** %5, align 8
  %20 = getelementptr inbounds %struct.netconn, %struct.netconn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NETCONN_TCP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.netconn*, %struct.netconn** %5, align 8
  %26 = getelementptr inbounds %struct.netconn, %struct.netconn* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SYS_MBOX_NULL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.netconn*, %struct.netconn** %5, align 8
  %32 = getelementptr inbounds %struct.netconn, %struct.netconn* %31, i32 0, i32 1
  %33 = load i32, i32* @MQBOX_SIZE, align 4
  %34 = call i64 @MQ_Init(i64* %32, i32 %33)
  %35 = load i64, i64* @MQ_ERROR_SUCCESSFUL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @ERR_MEM, align 4
  store i32 %38, i32* %4, align 4
  br label %82

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %24, %18
  %41 = load i32, i32* @MEMP_API_MSG, align 4
  %42 = call %struct.api_msg* @memp_malloc(i32 %41)
  store %struct.api_msg* %42, %struct.api_msg** %9, align 8
  %43 = icmp eq %struct.api_msg* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @ERR_MEM, align 4
  %46 = load %struct.netconn*, %struct.netconn** %5, align 8
  %47 = getelementptr inbounds %struct.netconn, %struct.netconn* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  store i32 %45, i32* %4, align 4
  br label %82

48:                                               ; preds = %40
  %49 = load i32, i32* @APIMSG_BIND, align 4
  %50 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %51 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.netconn*, %struct.netconn** %5, align 8
  %53 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %54 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store %struct.netconn* %52, %struct.netconn** %55, align 8
  %56 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %57 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %58 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store %struct.ip_addr* %56, %struct.ip_addr** %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %64 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 8
  %68 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %69 = call i32 @apimsg_post(%struct.api_msg* %68)
  %70 = load %struct.netconn*, %struct.netconn** %5, align 8
  %71 = getelementptr inbounds %struct.netconn, %struct.netconn* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = ptrtoint i64* %8 to i32
  %74 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %75 = call i32 @MQ_Receive(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @MEMP_API_MSG, align 4
  %77 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %78 = call i32 @memp_free(i32 %76, %struct.api_msg* %77)
  %79 = load %struct.netconn*, %struct.netconn** %5, align 8
  %80 = getelementptr inbounds %struct.netconn, %struct.netconn* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %48, %44, %37, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i64 @MQ_Init(i64*, i32) #1

declare dso_local %struct.api_msg* @memp_malloc(i32) #1

declare dso_local i32 @apimsg_post(%struct.api_msg*) #1

declare dso_local i32 @MQ_Receive(i32, i32, i32) #1

declare dso_local i32 @memp_free(i32, %struct.api_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
