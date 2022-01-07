; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_connect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i64, i32, i32 }
%struct.ip_addr = type { i32 }
%struct.api_msg = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.netconn* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.ip_addr* }

@SYS_MBOX_NULL = common dso_local global i64 0, align 8
@MQBOX_SIZE = common dso_local global i32 0, align 4
@MQ_ERROR_SUCCESSFUL = common dso_local global i64 0, align 8
@ERR_MEM = common dso_local global i32 0, align 4
@MEMP_API_MSG = common dso_local global i32 0, align 4
@APIMSG_CONNECT = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netconn*, %struct.ip_addr*, i32)* @netconn_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netconn_connect(%struct.netconn* %0, %struct.ip_addr* %1, i32 %2) #0 {
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
  %10 = load %struct.netconn*, %struct.netconn** %5, align 8
  %11 = icmp eq %struct.netconn* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %69

13:                                               ; preds = %3
  %14 = load %struct.netconn*, %struct.netconn** %5, align 8
  %15 = getelementptr inbounds %struct.netconn, %struct.netconn* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SYS_MBOX_NULL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.netconn*, %struct.netconn** %5, align 8
  %21 = getelementptr inbounds %struct.netconn, %struct.netconn* %20, i32 0, i32 0
  %22 = load i32, i32* @MQBOX_SIZE, align 4
  %23 = call i64 @MQ_Init(i64* %21, i32 %22)
  %24 = load i64, i64* @MQ_ERROR_SUCCESSFUL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @ERR_MEM, align 4
  store i32 %27, i32* %4, align 4
  br label %69

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* @MEMP_API_MSG, align 4
  %31 = call %struct.api_msg* @memp_malloc(i32 %30)
  store %struct.api_msg* %31, %struct.api_msg** %9, align 8
  %32 = icmp eq %struct.api_msg* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @ERR_MEM, align 4
  store i32 %34, i32* %4, align 4
  br label %69

35:                                               ; preds = %29
  %36 = load i32, i32* @APIMSG_CONNECT, align 4
  %37 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %38 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.netconn*, %struct.netconn** %5, align 8
  %40 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %41 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store %struct.netconn* %39, %struct.netconn** %42, align 8
  %43 = load %struct.ip_addr*, %struct.ip_addr** %6, align 8
  %44 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %45 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store %struct.ip_addr* %43, %struct.ip_addr** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %51 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 8
  %55 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %56 = call i32 @apimsg_post(%struct.api_msg* %55)
  %57 = load %struct.netconn*, %struct.netconn** %5, align 8
  %58 = getelementptr inbounds %struct.netconn, %struct.netconn* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = ptrtoint i64* %8 to i32
  %61 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %62 = call i32 @MQ_Receive(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @MEMP_API_MSG, align 4
  %64 = load %struct.api_msg*, %struct.api_msg** %9, align 8
  %65 = call i32 @memp_free(i32 %63, %struct.api_msg* %64)
  %66 = load %struct.netconn*, %struct.netconn** %5, align 8
  %67 = getelementptr inbounds %struct.netconn, %struct.netconn* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %35, %33, %26, %12
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

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
