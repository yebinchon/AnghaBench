; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_send.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i64, i32 }
%struct.netbuf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.api_msg = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.netconn* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }

@ERR_VAL = common dso_local global i64 0, align 8
@ERR_OK = common dso_local global i64 0, align 8
@MEMP_API_MSG = common dso_local global i32 0, align 4
@ERR_MEM = common dso_local global i64 0, align 8
@API_LIB_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"netconn_send: sending %d bytes\0A\00", align 1
@APIMSG_SEND = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.netconn*, %struct.netbuf*)* @netconn_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @netconn_send(%struct.netconn* %0, %struct.netbuf* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.netconn*, align 8
  %5 = alloca %struct.netbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.api_msg*, align 8
  store %struct.netconn* %0, %struct.netconn** %4, align 8
  store %struct.netbuf* %1, %struct.netbuf** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.netconn*, %struct.netconn** %4, align 8
  %9 = icmp eq %struct.netconn* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i64, i64* @ERR_VAL, align 8
  store i64 %11, i64* %3, align 8
  br label %68

12:                                               ; preds = %2
  %13 = load %struct.netconn*, %struct.netconn** %4, align 8
  %14 = getelementptr inbounds %struct.netconn, %struct.netconn* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ERR_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.netconn*, %struct.netconn** %4, align 8
  %20 = getelementptr inbounds %struct.netconn, %struct.netconn* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  br label %68

22:                                               ; preds = %12
  %23 = load i32, i32* @MEMP_API_MSG, align 4
  %24 = call %struct.api_msg* @memp_malloc(i32 %23)
  store %struct.api_msg* %24, %struct.api_msg** %7, align 8
  %25 = icmp eq %struct.api_msg* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i64, i64* @ERR_MEM, align 8
  %28 = load %struct.netconn*, %struct.netconn** %4, align 8
  %29 = getelementptr inbounds %struct.netconn, %struct.netconn* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  store i64 %27, i64* %3, align 8
  br label %68

30:                                               ; preds = %22
  %31 = load i32, i32* @API_LIB_DEBUG, align 4
  %32 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %33 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @LWIP_DEBUGF(i32 %31, i8* %38)
  %40 = load i32, i32* @APIMSG_SEND, align 4
  %41 = load %struct.api_msg*, %struct.api_msg** %7, align 8
  %42 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.netconn*, %struct.netconn** %4, align 8
  %44 = load %struct.api_msg*, %struct.api_msg** %7, align 8
  %45 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store %struct.netconn* %43, %struct.netconn** %46, align 8
  %47 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %48 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.api_msg*, %struct.api_msg** %7, align 8
  %51 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %53, align 8
  %54 = load %struct.api_msg*, %struct.api_msg** %7, align 8
  %55 = call i32 @apimsg_post(%struct.api_msg* %54)
  %56 = load %struct.netconn*, %struct.netconn** %4, align 8
  %57 = getelementptr inbounds %struct.netconn, %struct.netconn* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = ptrtoint i64* %6 to i32
  %60 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %61 = call i32 @MQ_Receive(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @MEMP_API_MSG, align 4
  %63 = load %struct.api_msg*, %struct.api_msg** %7, align 8
  %64 = call i32 @memp_free(i32 %62, %struct.api_msg* %63)
  %65 = load %struct.netconn*, %struct.netconn** %4, align 8
  %66 = getelementptr inbounds %struct.netconn, %struct.netconn* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %30, %26, %18, %10
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local %struct.api_msg* @memp_malloc(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @apimsg_post(%struct.api_msg*) #1

declare dso_local i32 @MQ_Receive(i32, i32, i32) #1

declare dso_local i32 @memp_free(i32, %struct.api_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
