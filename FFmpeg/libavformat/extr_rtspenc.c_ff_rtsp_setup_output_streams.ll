; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspenc.c_ff_rtsp_setup_output_streams.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspenc.c_ff_rtsp_setup_output_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i8*, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@SDP_MAX_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rtsp\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SDP:\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ANNOUNCE\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Content-Type: application/sdp\0D\0A\00", align 1
@RTSP_STATUS_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"/streamid=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtsp_setup_output_streams(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca [1 x %struct.TYPE_14__*], align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %2
  %29 = call i64 (...) @av_gettime()
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* @SDP_MAX_SIZE, align 4
  %34 = call i8* @av_mallocz(i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %127

40:                                               ; preds = %32
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = bitcast %struct.TYPE_14__* %11 to i8*
  %43 = bitcast %struct.TYPE_14__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false)
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @ff_url_join(i8* %46, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i8* %47, i32 -1, i32* null)
  %49 = getelementptr inbounds [1 x %struct.TYPE_14__*], [1 x %struct.TYPE_14__*]* %12, i64 0, i64 0
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %49, align 8
  %50 = getelementptr inbounds [1 x %struct.TYPE_14__*], [1 x %struct.TYPE_14__*]* %12, i64 0, i64 0
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @SDP_MAX_SIZE, align 4
  %53 = call i64 @av_sdp_create(%struct.TYPE_14__** %50, i32 1, i8* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @av_free(i8* %56)
  %58 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %58, i32* %3, align 4
  br label %127

59:                                               ; preds = %40
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @av_log(%struct.TYPE_14__* %60, i32 %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = call i32 @ff_rtsp_send_cmd_with_content(%struct.TYPE_14__* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_13__* %68, i32* null, i8* %69, i32 %71)
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @av_free(i8* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @RTSP_STATUS_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %59
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %85 = call i32 @ff_rtsp_averror(i64 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %127

86:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %123, %86
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %126

93:                                               ; preds = %87
  %94 = call i8* @av_mallocz(i32 8)
  %95 = bitcast i8* %94 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %14, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %97 = icmp ne %struct.TYPE_11__* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = call i32 @AVERROR(i32 %99)
  store i32 %100, i32* %3, align 4
  br label %127

101:                                              ; preds = %93
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %107 = call i32 @dynarray_add(i32* %103, i32* %105, %struct.TYPE_11__* %106)
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @av_strlcpy(i32 %113, i32 %116, i32 4)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @av_strlcatf(i32 %120, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %101
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %87

126:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %98, %80, %55, %37
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @av_gettime(...) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i64 @av_sdp_create(%struct.TYPE_14__**, i32, i8*, i32) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i8*) #1

declare dso_local i32 @ff_rtsp_send_cmd_with_content(%struct.TYPE_14__*, i8*, i32, i8*, %struct.TYPE_13__*, i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ff_rtsp_averror(i64, i32) #1

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @av_strlcpy(i32, i32, i32) #1

declare dso_local i32 @av_strlcatf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
