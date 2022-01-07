; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_ff_rtsp_setup_input_streams.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_ff_rtsp_setup_input_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"Accept: application/sdp\0D\0A\00", align 1
@RTSP_SERVER_REAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Require: com.real.retain-entity-for-setup\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DESCRIBE\00", align 1
@RTSP_STATUS_OK = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"SDP:\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtsp_setup_input_streams(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  store i8* null, i8** %8, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %14 = call i32 @snprintf(i8* %13, i32 1024, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RTSP_SERVER_REAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %22 = call i32 @av_strlcat(i8* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 1024)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = call i32 @ff_rtsp_send_cmd(%struct.TYPE_12__* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %27, i8* %28, %struct.TYPE_11__* %29, i8** %8)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RTSP_STATUS_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = call i32 @av_freep(i8** %8)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %42 = call i32 @ff_rtsp_averror(i64 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %62

43:                                               ; preds = %23
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %3, align 4
  br label %62

48:                                               ; preds = %43
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @av_log(%struct.TYPE_12__* %49, i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @ff_sdp_parse(%struct.TYPE_12__* %53, i8* %54)
  store i32 %55, i32* %9, align 4
  %56 = call i32 @av_freep(i8** %8)
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %46, %36
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i32 @av_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @ff_rtsp_send_cmd(%struct.TYPE_12__*, i8*, i32, i8*, %struct.TYPE_11__*, i8**) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @ff_rtsp_averror(i64, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i8*) #1

declare dso_local i32 @ff_sdp_parse(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
