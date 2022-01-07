; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_process_service_search_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_discovery.c_process_service_search_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32* }

@.str = private unnamed_addr constant [41 x i8] c"SDP - Rcvd ServiceSearchRsp, no matches\0A\00", align 1
@SDP_NO_RECS_MATCH = common dso_local global i32 0, align 4
@sdp_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SDP_MAX_CONTINUATION_LEN = common dso_local global i64 0, align 8
@SDP_INVALID_CONT_STATE = common dso_local global i32 0, align 4
@SDP_DISC_WAIT_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64*)* @process_service_search_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_service_search_rsp(%struct.TYPE_7__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 4
  store i64* %11, i64** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = call i32 @BE_STREAM_TO_UINT16(i64 %12, i64* %13)
  %15 = load i64, i64* %7, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = call i32 @BE_STREAM_TO_UINT16(i64 %15, i64* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = call i32 @SDP_TRACE_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32, i32* @SDP_NO_RECS_MATCH, align 4
  %34 = call i32 @sdp_disconnect(%struct.TYPE_7__* %32, i32 %33)
  br label %96

35:                                               ; preds = %2
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0), align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0), align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0), align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sdp_cb, i32 0, i32 0), align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %68, %51
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i64*, i64** %4, align 8
  %67 = call i32 @BE_STREAM_TO_UINT32(i32 %65, i64* %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i64, i64* %5, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %53

71:                                               ; preds = %53
  %72 = load i64, i64* %9, align 8
  %73 = load i64*, i64** %4, align 8
  %74 = call i32 @BE_STREAM_TO_UINT8(i64 %72, i64* %73)
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @SDP_MAX_CONTINUATION_LEN, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = load i32, i32* @SDP_INVALID_CONT_STATE, align 4
  %84 = call i32 @sdp_disconnect(%struct.TYPE_7__* %82, i32 %83)
  br label %96

85:                                               ; preds = %77
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64*, i64** %4, align 8
  %89 = call i32 @sdp_snd_service_search_req(%struct.TYPE_7__* %86, i64 %87, i64* %88)
  br label %96

90:                                               ; preds = %71
  %91 = load i32, i32* @SDP_DISC_WAIT_ATTR, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = call i32 @process_service_attr_rsp(%struct.TYPE_7__* %94, i32* null)
  br label %96

96:                                               ; preds = %30, %81, %90, %85
  ret void
}

declare dso_local i32 @BE_STREAM_TO_UINT16(i64, i64*) #1

declare dso_local i32 @SDP_TRACE_WARNING(i8*) #1

declare dso_local i32 @sdp_disconnect(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @BE_STREAM_TO_UINT32(i32, i64*) #1

declare dso_local i32 @BE_STREAM_TO_UINT8(i64, i64*) #1

declare dso_local i32 @sdp_snd_service_search_req(%struct.TYPE_7__*, i64, i64*) #1

declare dso_local i32 @process_service_attr_rsp(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
