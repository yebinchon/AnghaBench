; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_connect_ind.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_main.c_sdp_connect_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }

@SDP_STATE_CFG_SETUP = common dso_local global i32 0, align 4
@L2CAP_CONN_OK = common dso_local global i32 0, align 4
@sdp_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [90 x i8] c"sdp_connect_ind:  mode %u, txwinsz %u, max_trans %u, rtrans_tout %u, mon_tout %u, mps %u\0A\00", align 1
@L2CAP_FCR_BASIC_MODE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"SDP - Rcvd L2CAP conn ind, sent config req, CID 0x%x\0A\00", align 1
@L2CAP_CONN_NO_PSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @sdp_connect_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdp_connect_ind(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @UNUSED(i32 %11)
  %13 = call %struct.TYPE_9__* (...) @sdpu_allocate_ccb()
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %9, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %86

16:                                               ; preds = %4
  %17 = load i32, i32* @SDP_STATE_CFG_SETUP, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @memcpy(i32* %23, i32 %24, i32 4)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @L2CAP_CONN_OK, align 4
  %33 = load i32, i32* @L2CAP_CONN_OK, align 4
  %34 = call i32 @L2CA_ConnectRsp(i32 %29, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 bitcast (%struct.TYPE_10__* @sdp_cb to i8*), i64 40, i1 false)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %16
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %39, %16
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @L2CA_ConfigReq(i32 %60, %struct.TYPE_8__* %10)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i64, i64* @L2CAP_FCR_BASIC_MODE, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* @FALSE, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @L2CA_ConfigReq(i32 %79, %struct.TYPE_8__* %10)
  br label %81

81:                                               ; preds = %73, %67, %63, %59
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @SDP_TRACE_EVENT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %15
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local %struct.TYPE_9__* @sdpu_allocate_ccb(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @L2CA_ConnectRsp(i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SDP_TRACE_DEBUG(i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @L2CA_ConfigReq(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SDP_TRACE_EVENT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
