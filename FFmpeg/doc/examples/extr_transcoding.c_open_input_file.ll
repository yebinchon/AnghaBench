; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcoding.c_open_input_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_transcoding.c_open_input_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }

@ifmt_ctx = common dso_local global %struct.TYPE_18__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot open input file\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot find stream information\0A\00", align 1
@stream_ctx = common dso_local global %struct.TYPE_17__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to find decoder for stream #%u\0A\00", align 1
@AVERROR_DECODER_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Failed to allocate the decoder context for stream #%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"Failed to copy decoder parameters to input decoder context for stream #%u\0A\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Failed to open decoder for stream #%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @open_input_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_input_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** @ifmt_ctx, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @avformat_open_input(%struct.TYPE_18__** @ifmt_ctx, i8* %9, i32* null, i32* null)
  store i32 %10, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @AV_LOG_ERROR, align 4
  %14 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %136

16:                                               ; preds = %1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ifmt_ctx, align 8
  %18 = call i32 @avformat_find_stream_info(%struct.TYPE_18__* %17, i32* null)
  store i32 %18, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %136

24:                                               ; preds = %16
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ifmt_ctx, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.TYPE_17__* @av_mallocz_array(i32 %27, i32 8)
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** @stream_ctx, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** @stream_ctx, align 8
  %30 = icmp ne %struct.TYPE_17__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %136

34:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %129, %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ifmt_ctx, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %132

41:                                               ; preds = %35
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ifmt_ctx, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %44, i64 %46
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %6, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @avcodec_find_decoder(i32 %53)
  store i32* %54, i32** %7, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %41
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @AVERROR_DECODER_NOT_FOUND, align 4
  store i32 %61, i32* %2, align 4
  br label %136

62:                                               ; preds = %41
  %63 = load i32*, i32** %7, align 8
  %64 = call %struct.TYPE_16__* @avcodec_alloc_context3(i32* %63)
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %8, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = icmp ne %struct.TYPE_16__* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %68, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %2, align 4
  br label %136

73:                                               ; preds = %62
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = call i32 @avcodec_parameters_to_context(%struct.TYPE_16__* %74, %struct.TYPE_19__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %82, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %136

86:                                               ; preds = %73
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %92, %86
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ifmt_ctx, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = call i32 @av_guess_frame_rate(%struct.TYPE_18__* %105, %struct.TYPE_15__* %106, i32* null)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %98
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call i32 @avcodec_open2(%struct.TYPE_16__* %111, i32* %112, i32* null)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i32, i32* @AV_LOG_ERROR, align 4
  %118 = load i32, i32* %5, align 4
  %119 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %117, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %136

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121, %92
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** @stream_ctx, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %128, align 8
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %5, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %35

132:                                              ; preds = %35
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ifmt_ctx, align 8
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 @av_dump_format(%struct.TYPE_18__* %133, i32 0, i8* %134, i32 0)
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %132, %116, %81, %67, %57, %31, %20, %12
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @avformat_open_input(%struct.TYPE_18__**, i8*, i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_18__*, i32*) #1

declare dso_local %struct.TYPE_17__* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local %struct.TYPE_16__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_guess_frame_rate(%struct.TYPE_18__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @av_dump_format(%struct.TYPE_18__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
