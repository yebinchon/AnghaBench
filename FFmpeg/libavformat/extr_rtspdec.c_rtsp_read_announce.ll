; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_announce.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"ANNOUNCE\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"application/sdp\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unexpected content type %s\0A\00", align 1
@RTSP_STATUS_SERVICE = common dso_local global i32 0, align 4
@AVERROR_OPTION_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Unable to get complete SDP Description in ANNOUNCE\0A\00", align 1
@RTSP_STATUS_INTERNAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"SDP: %s\0A\00", align 1
@RTSP_STATUS_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"Content-Length header value exceeds sdp allocated buffer (4KB)\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Content-Length exceeds buffer size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @rtsp_read_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_read_announce(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %4, align 8
  %11 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 16, i1 false)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @rtsp_read_request(%struct.TYPE_12__* %12, %struct.TYPE_11__* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %103

18:                                               ; preds = %1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strcmp(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %18
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %28, i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = load i32, i32* @RTSP_STATUS_SERVICE, align 4
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rtsp_send_reply(%struct.TYPE_12__* %33, i32 %34, i8* null, i32 %36)
  %38 = load i32, i32* @AVERROR_OPTION_NOT_FOUND, align 4
  store i32 %38, i32* %2, align 4
  br label %103

39:                                               ; preds = %18
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %92

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 4095
  br i1 %47, label %48, label %92

48:                                               ; preds = %43
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ffurl_read_complete(i32 %51, i8* %52, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %48
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %60, i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = load i32, i32* @RTSP_STATUS_INTERNAL, align 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rtsp_send_reply(%struct.TYPE_12__* %63, i32 %64, i8* null, i32 %66)
  %68 = load i32, i32* @EIO, align 4
  %69 = call i32 @AVERROR(i32 %68)
  store i32 %69, i32* %2, align 4
  br label %103

70:                                               ; preds = %48
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %78 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %75, i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %81 = call i32 @ff_sdp_parse(%struct.TYPE_12__* %79, i8* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %103

86:                                               ; preds = %70
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = load i32, i32* @RTSP_STATUS_OK, align 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @rtsp_send_reply(%struct.TYPE_12__* %87, i32 %88, i8* null, i32 %90)
  store i32 0, i32* %2, align 4
  br label %103

92:                                               ; preds = %43, %39
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %93, i32 %94, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = load i32, i32* @RTSP_STATUS_INTERNAL, align 4
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @rtsp_send_reply(%struct.TYPE_12__* %96, i32 %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @EIO, align 4
  %102 = call i32 @AVERROR(i32 %101)
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %92, %86, %84, %59, %27, %16
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtsp_read_request(%struct.TYPE_12__*, %struct.TYPE_11__*, i8*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #2

declare dso_local i32 @rtsp_send_reply(%struct.TYPE_12__*, i32, i8*, i32) #2

declare dso_local i32 @ffurl_read_complete(i32, i8*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_sdp_parse(%struct.TYPE_12__*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
