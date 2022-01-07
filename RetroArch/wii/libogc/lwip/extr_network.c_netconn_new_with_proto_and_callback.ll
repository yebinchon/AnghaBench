; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_new_with_proto_and_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_netconn_new_with_proto_and_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconn = type { i64, i32, void (%struct.netconn*, i32, i64)*, i32, %struct.TYPE_8__, i64, i64, i32, i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.netconn*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32* }
%struct.api_msg = type { i64, i32, void (%struct.netconn*, i32, i64)*, i32, %struct.TYPE_8__, i64, i64, i32, i8*, i8*, i32, %struct.TYPE_5__ }

@MEMP_NETCONN = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@MQBOX_SIZE = common dso_local global i32 0, align 4
@MQ_ERROR_SUCCESSFUL = common dso_local global i64 0, align 8
@SYS_MBOX_NULL = common dso_local global i8* null, align 8
@NETCONN_NONE = common dso_local global i32 0, align 4
@MEMP_API_MSG = common dso_local global i32 0, align 4
@APIMSG_NEWCONN = common dso_local global i32 0, align 4
@MQ_MSG_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netconn* (i32, i32, {}*)* @netconn_new_with_proto_and_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netconn* @netconn_new_with_proto_and_callback(i32 %0, i32 %1, {}* %2) #0 {
  %4 = alloca %struct.netconn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca {}*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netconn*, align 8
  %10 = alloca %struct.api_msg*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store {}* %2, {}** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load i32, i32* @MEMP_NETCONN, align 4
  %12 = call %struct.netconn* @memp_malloc(i32 %11)
  store %struct.netconn* %12, %struct.netconn** %9, align 8
  %13 = load %struct.netconn*, %struct.netconn** %9, align 8
  %14 = icmp ne %struct.netconn* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.netconn* null, %struct.netconn** %4, align 8
  br label %122

16:                                               ; preds = %3
  %17 = load i64, i64* @ERR_OK, align 8
  %18 = load %struct.netconn*, %struct.netconn** %9, align 8
  %19 = getelementptr inbounds %struct.netconn, %struct.netconn* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.netconn*, %struct.netconn** %9, align 8
  %22 = getelementptr inbounds %struct.netconn, %struct.netconn* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.netconn*, %struct.netconn** %9, align 8
  %24 = getelementptr inbounds %struct.netconn, %struct.netconn* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.netconn*, %struct.netconn** %9, align 8
  %27 = getelementptr inbounds %struct.netconn, %struct.netconn* %26, i32 0, i32 3
  %28 = load i32, i32* @MQBOX_SIZE, align 4
  %29 = call i64 @MQ_Init(i32* %27, i32 %28)
  %30 = load i64, i64* @MQ_ERROR_SUCCESSFUL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = load i32, i32* @MEMP_NETCONN, align 4
  %34 = load %struct.netconn*, %struct.netconn** %9, align 8
  %35 = call i32 @memp_free(i32 %33, %struct.netconn* %34)
  store %struct.netconn* null, %struct.netconn** %4, align 8
  br label %122

36:                                               ; preds = %16
  %37 = load %struct.netconn*, %struct.netconn** %9, align 8
  %38 = getelementptr inbounds %struct.netconn, %struct.netconn* %37, i32 0, i32 10
  %39 = call i32 @LWP_SemInit(i32* %38, i32 0, i32 1)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.netconn*, %struct.netconn** %9, align 8
  %43 = getelementptr inbounds %struct.netconn, %struct.netconn* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @MQ_Close(i32 %44)
  %46 = load i32, i32* @MEMP_NETCONN, align 4
  %47 = load %struct.netconn*, %struct.netconn** %9, align 8
  %48 = call i32 @memp_free(i32 %46, %struct.netconn* %47)
  store %struct.netconn* null, %struct.netconn** %4, align 8
  br label %122

49:                                               ; preds = %36
  %50 = load i8*, i8** @SYS_MBOX_NULL, align 8
  %51 = load %struct.netconn*, %struct.netconn** %9, align 8
  %52 = getelementptr inbounds %struct.netconn, %struct.netconn* %51, i32 0, i32 9
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @SYS_MBOX_NULL, align 8
  %54 = load %struct.netconn*, %struct.netconn** %9, align 8
  %55 = getelementptr inbounds %struct.netconn, %struct.netconn* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @NETCONN_NONE, align 4
  %57 = load %struct.netconn*, %struct.netconn** %9, align 8
  %58 = getelementptr inbounds %struct.netconn, %struct.netconn* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  %59 = load %struct.netconn*, %struct.netconn** %9, align 8
  %60 = getelementptr inbounds %struct.netconn, %struct.netconn* %59, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load {}*, {}** %7, align 8
  %62 = bitcast {}* %61 to void (%struct.netconn*, i32, i64)*
  %63 = load %struct.netconn*, %struct.netconn** %9, align 8
  %64 = getelementptr inbounds %struct.netconn, %struct.netconn* %63, i32 0, i32 2
  store void (%struct.netconn*, i32, i64)* %62, void (%struct.netconn*, i32, i64)** %64, align 8
  %65 = load %struct.netconn*, %struct.netconn** %9, align 8
  %66 = getelementptr inbounds %struct.netconn, %struct.netconn* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @MEMP_API_MSG, align 4
  %68 = call %struct.netconn* @memp_malloc(i32 %67)
  %69 = bitcast %struct.netconn* %68 to %struct.api_msg*
  store %struct.api_msg* %69, %struct.api_msg** %10, align 8
  %70 = load %struct.api_msg*, %struct.api_msg** %10, align 8
  %71 = icmp ne %struct.api_msg* %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %49
  %73 = load %struct.netconn*, %struct.netconn** %9, align 8
  %74 = getelementptr inbounds %struct.netconn, %struct.netconn* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @MQ_Close(i32 %75)
  %77 = load i32, i32* @MEMP_NETCONN, align 4
  %78 = load %struct.netconn*, %struct.netconn** %9, align 8
  %79 = call i32 @memp_free(i32 %77, %struct.netconn* %78)
  store %struct.netconn* null, %struct.netconn** %4, align 8
  br label %122

80:                                               ; preds = %49
  %81 = load i32, i32* @APIMSG_NEWCONN, align 4
  %82 = load %struct.api_msg*, %struct.api_msg** %10, align 8
  %83 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.api_msg*, %struct.api_msg** %10, align 8
  %86 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 8
  %90 = load %struct.netconn*, %struct.netconn** %9, align 8
  %91 = load %struct.api_msg*, %struct.api_msg** %10, align 8
  %92 = getelementptr inbounds %struct.api_msg, %struct.api_msg* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store %struct.netconn* %90, %struct.netconn** %93, align 8
  %94 = load %struct.api_msg*, %struct.api_msg** %10, align 8
  %95 = bitcast %struct.api_msg* %94 to %struct.netconn*
  %96 = call i32 @apimsg_post(%struct.netconn* %95)
  %97 = load %struct.netconn*, %struct.netconn** %9, align 8
  %98 = getelementptr inbounds %struct.netconn, %struct.netconn* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = ptrtoint i64* %8 to i32
  %101 = load i32, i32* @MQ_MSG_BLOCK, align 4
  %102 = call i32 @MQ_Receive(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @MEMP_API_MSG, align 4
  %104 = load %struct.api_msg*, %struct.api_msg** %10, align 8
  %105 = bitcast %struct.api_msg* %104 to %struct.netconn*
  %106 = call i32 @memp_free(i32 %103, %struct.netconn* %105)
  %107 = load %struct.netconn*, %struct.netconn** %9, align 8
  %108 = getelementptr inbounds %struct.netconn, %struct.netconn* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @ERR_OK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %80
  %113 = load %struct.netconn*, %struct.netconn** %9, align 8
  %114 = getelementptr inbounds %struct.netconn, %struct.netconn* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @MQ_Close(i32 %115)
  %117 = load i32, i32* @MEMP_NETCONN, align 4
  %118 = load %struct.netconn*, %struct.netconn** %9, align 8
  %119 = call i32 @memp_free(i32 %117, %struct.netconn* %118)
  store %struct.netconn* null, %struct.netconn** %4, align 8
  br label %122

120:                                              ; preds = %80
  %121 = load %struct.netconn*, %struct.netconn** %9, align 8
  store %struct.netconn* %121, %struct.netconn** %4, align 8
  br label %122

122:                                              ; preds = %120, %112, %72, %41, %32, %15
  %123 = load %struct.netconn*, %struct.netconn** %4, align 8
  ret %struct.netconn* %123
}

declare dso_local %struct.netconn* @memp_malloc(i32) #1

declare dso_local i64 @MQ_Init(i32*, i32) #1

declare dso_local i32 @memp_free(i32, %struct.netconn*) #1

declare dso_local i32 @LWP_SemInit(i32*, i32, i32) #1

declare dso_local i32 @MQ_Close(i32) #1

declare dso_local i32 @apimsg_post(%struct.netconn*) #1

declare dso_local i32 @MQ_Receive(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
