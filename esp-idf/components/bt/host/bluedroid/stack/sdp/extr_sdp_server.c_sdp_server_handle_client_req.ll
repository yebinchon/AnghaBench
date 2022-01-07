; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_server.c_sdp_server_handle_client_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_server.c_sdp_server_handle_client_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@BTU_TTYPE_SDP = common dso_local global i32 0, align 4
@SDP_INACT_TIMEOUT = common dso_local global i32 0, align 4
@SDP_INVALID_PDU_SIZE = common dso_local global i32 0, align 4
@SDP_TEXT_BAD_HEADER = common dso_local global i32 0, align 4
@SDP_INVALID_REQ_SYNTAX = common dso_local global i32 0, align 4
@SDP_TEXT_BAD_PDU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"SDP - server got unknown PDU: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdp_server_handle_client_req(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i64 1
  %12 = bitcast %struct.TYPE_10__* %11 to i32*
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* @BTU_TTYPE_SDP, align 4
  %27 = load i32, i32* @SDP_INACT_TIMEOUT, align 4
  %28 = call i32 @btu_start_timer(i32* %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @BE_STREAM_TO_UINT16(i32 %32, i32* %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @BE_STREAM_TO_UINT16(i32 %35, i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SDP_INVALID_PDU_SIZE, align 4
  %48 = load i32, i32* @SDP_TEXT_BAD_HEADER, align 4
  %49 = call i32 @sdpu_build_n_send_error(%struct.TYPE_9__* %45, i32 %46, i32 %47, i32 %48)
  br label %81

50:                                               ; preds = %2
  %51 = load i32, i32* %7, align 4
  switch i32 %51, label %73 [
    i32 128, label %52
    i32 130, label %59
    i32 129, label %66
  ]

52:                                               ; preds = %50
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @process_service_search(%struct.TYPE_9__* %53, i32 %54, i32 %55, i32* %56, i32* %57)
  br label %81

59:                                               ; preds = %50
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @process_service_attr_req(%struct.TYPE_9__* %60, i32 %61, i32 %62, i32* %63, i32* %64)
  br label %81

66:                                               ; preds = %50
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @process_service_search_attr_req(%struct.TYPE_9__* %67, i32 %68, i32 %69, i32* %70, i32* %71)
  br label %81

73:                                               ; preds = %50
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @SDP_INVALID_REQ_SYNTAX, align 4
  %77 = load i32, i32* @SDP_TEXT_BAD_PDU, align 4
  %78 = call i32 @sdpu_build_n_send_error(%struct.TYPE_9__* %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %44, %73, %66, %59, %52
  ret void
}

declare dso_local i32 @btu_start_timer(i32*, i32, i32) #1

declare dso_local i32 @BE_STREAM_TO_UINT16(i32, i32*) #1

declare dso_local i32 @sdpu_build_n_send_error(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @process_service_search(%struct.TYPE_9__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @process_service_attr_req(%struct.TYPE_9__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @process_service_search_attr_req(%struct.TYPE_9__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
