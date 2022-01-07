; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_transcode.c_open_input_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_vaapi_transcode.c_open_input_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@ifmt_ctx = common dso_local global %struct.TYPE_11__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Cannot open input file '%s', Error code: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Cannot find input stream information. Error code: %s\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Cannot find a video stream in the input file. Error code: %s\0A\00", align 1
@video_stream = common dso_local global i64 0, align 8
@decoder_ctx = common dso_local global %struct.TYPE_12__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"avcodec_parameters_to_context error. Error code: %s\0A\00", align 1
@hw_device_ctx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"A hardware device reference create failed.\0A\00", align 1
@get_vaapi_format = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Failed to open codec for decoding. Error code: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @open_input_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_input_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @avformat_open_input(%struct.TYPE_11__** @ifmt_ctx, i8* %7, i32* null, i32* null)
  store i32 %8, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @av_err2str(i32 %13)
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %96

17:                                               ; preds = %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ifmt_ctx, align 8
  %19 = call i32 @avformat_find_stream_info(%struct.TYPE_11__* %18, i32* null)
  store i32 %19, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @av_err2str(i32 %23)
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %96

27:                                               ; preds = %17
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ifmt_ctx, align 8
  %29 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %30 = call i32 @av_find_best_stream(%struct.TYPE_11__* %28, i32 %29, i32 -1, i32 -1, i32** %5, i32 0)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i8* @av_err2str(i32 %35)
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %96

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* @video_stream, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call %struct.TYPE_12__* @avcodec_alloc_context3(i32* %42)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** @decoder_ctx, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %96

48:                                               ; preds = %39
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ifmt_ctx, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %50, align 8
  %52 = load i64, i64* @video_stream, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %51, i64 %52
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %6, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @decoder_ctx, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @avcodec_parameters_to_context(%struct.TYPE_12__* %55, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %48
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i8* @av_err2str(i32 %63)
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %96

67:                                               ; preds = %48
  %68 = load i32, i32* @hw_device_ctx, align 4
  %69 = call i32 @av_buffer_ref(i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @decoder_ctx, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** @decoder_ctx, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %96

81:                                               ; preds = %67
  %82 = load i32, i32* @get_vaapi_format, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @decoder_ctx, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** @decoder_ctx, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @avcodec_open2(%struct.TYPE_12__* %85, i32* %86, i32* null)
  store i32 %87, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %81
  %90 = load i32, i32* @stderr, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i8* @av_err2str(i32 %91)
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %89, %81
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %76, %61, %45, %33, %21, %10
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @avformat_open_input(%struct.TYPE_11__**, i8*, i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @av_err2str(i32) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @av_find_best_stream(%struct.TYPE_11__*, i32, i32, i32, i32**, i32) #1

declare dso_local %struct.TYPE_12__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_buffer_ref(i32) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_12__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
