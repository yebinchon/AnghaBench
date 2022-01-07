; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_listen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i64, i32, i32 }
%struct.api_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.netconn* }

@API_LIB_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"netconn_listen(%p)\0A\00", align 1
@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@MQBOX_SIZE = common dso_local global i32 0, align 4
@MQ_ERROR_SUCCESSFUL = common dso_local global i64 0, align 8
@ERR_MEM = common dso_local global i32 0, align 4
@MEMP_API_MSG = common dso_local global i32 0, align 4
@APIMSG_LISTEN = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netconn*)* @netconn_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netconn_listen(%struct.netconn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netconn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.api_msg*, align 8
  store %struct.netconn* %0, %struct.netconn** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load i32, i32* @API_LIB_DEBUG, align 4
  %7 = load %struct.netconn*, %struct.netconn** %3, align 8
  %8 = bitcast %struct.netconn* %7 to i8*
  %9 = call i32 @LWIP_DEBUGF(i32 %6, i8* %8)
  %10 = load %struct.netconn*, %struct.netconn** %3, align 8
  %11 = icmp eq %struct.netconn* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.netconn*, %struct.netconn** %3, align 8
  %15 = getelementptr inbounds %struct.netconn, %struct.netconn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SYS_MBOX_NULL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.netconn*, %struct.netconn** %3, align 8
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %20, i32 0, i32 0
  %22 = load i32, i32* @MQBOX_SIZE, align 4
  %23 = call i64 @MQ_Init(i64* %21, i32 %22)
  %24 = load i64, i64* @MQ_ERROR_SUCCESSFUL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @ERR_MEM, align 4
  store i32 %27, i32* %2, align 4
  br label %59

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* @MEMP_API_MSG, align 4
  %31 = call %struct.api_msg* @memp_malloc(i32 %30)
  store %struct.api_msg* %31, %struct.api_msg** %5, align 8
  %32 = icmp eq %struct.api_msg* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @ERR_MEM, align 4
  %35 = load %struct.netconn*, %struct.netconn** %3, align 8
  %36 = getelementptr inbounds %struct.netconn, %struct.netconn* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  store i32 %34, i32* %2, align 4
  br label %59

37:                                               ; preds = %29
  %38 = load i32, i32* @APIMSG_LISTEN, align 4
  %39 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %40 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.netconn*, %struct.netconn** %3, align 8
  %42 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %43 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.netconn* %41, %struct.netconn** %44, align 8
  %45 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %46 = call i32 @apimsg_post(%struct.api_msg* %45)
  %47 = load %struct.netconn*, %struct.netconn** %3, align 8
  %48 = getelementptr inbounds %struct.netconn, %struct.netconn* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = ptrtoint i64* %4 to i32
  %51 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %52 = call i32 @MQ_Receive(i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @MEMP_API_MSG, align 4
  %54 = load %struct.api_msg*, %struct.api_msg** %5, align 8
  %55 = call i32 @memp_free(i32 %53, %struct.api_msg* %54)
  %56 = load %struct.netconn*, %struct.netconn** %3, align 8
  %57 = getelementptr inbounds %struct.netconn, %struct.netconn* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %37, %33, %26, %12
  %60 = load i32, i32* %2, align 4
  ret i32 %60
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
