; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseflac.c_old_flac_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseflac.c_old_flac_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__**, %struct.ogg* }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.ogg = type { %struct.ogg_stream* }
%struct.ogg_stream = type { i32, i64, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64 }

@AV_CODEC_ID_FLAC = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PARSER_FLAG_COMPLETE_FRAMES = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @old_flac_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_flac_header(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ogg*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.ogg_stream*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load %struct.ogg*, %struct.ogg** %15, align 8
  store %struct.ogg* %16, %struct.ogg** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %19, i64 %21
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %7, align 8
  %24 = load %struct.ogg*, %struct.ogg** %6, align 8
  %25 = getelementptr inbounds %struct.ogg, %struct.ogg* %24, i32 0, i32 0
  %26 = load %struct.ogg_stream*, %struct.ogg_stream** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %26, i64 %28
  store %struct.ogg_stream* %29, %struct.ogg_stream** %8, align 8
  %30 = load i32, i32* @AV_CODEC_ID_FLAC, align 4
  %31 = call %struct.TYPE_17__* @av_parser_init(i32 %30)
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %9, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %33 = icmp ne %struct.TYPE_17__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %100

35:                                               ; preds = %2
  %36 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @AV_CODEC_ID_FLAC, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = call %struct.TYPE_18__* @avcodec_alloc_context3(i32* null)
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %10, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = icmp ne %struct.TYPE_18__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %12, align 4
  br label %95

52:                                               ; preds = %35
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = call i32 @avcodec_parameters_to_context(%struct.TYPE_18__* %53, %struct.TYPE_19__* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %95

61:                                               ; preds = %52
  %62 = load i32, i32* @PARSER_FLAG_COMPLETE_FRAMES, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %67 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %68 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %71 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %69, %72
  %74 = load %struct.ogg_stream*, %struct.ogg_stream** %8, align 8
  %75 = getelementptr inbounds %struct.ogg_stream, %struct.ogg_stream* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %78 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %79 = call i32 @av_parser_parse2(%struct.TYPE_17__* %65, %struct.TYPE_18__* %66, i32** %13, i32* %11, i64 %73, i32 %76, i32 %77, i32 %78, i32 -1)
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = call i32 @av_parser_close(%struct.TYPE_17__* %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %61
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @avpriv_set_pts_info(%struct.TYPE_15__* %87, i32 64, i32 1, i64 %90)
  %92 = call i32 @avcodec_free_context(%struct.TYPE_18__** %10)
  store i32 0, i32* %3, align 4
  br label %100

93:                                               ; preds = %61
  %94 = call i32 @avcodec_free_context(%struct.TYPE_18__** %10)
  store i32 1, i32* %3, align 4
  br label %100

95:                                               ; preds = %60, %49
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = call i32 @av_parser_close(%struct.TYPE_17__* %96)
  %98 = call i32 @avcodec_free_context(%struct.TYPE_18__** %10)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %93, %86, %34
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.TYPE_17__* @av_parser_init(i32) #1

declare dso_local %struct.TYPE_18__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_parser_parse2(%struct.TYPE_17__*, %struct.TYPE_18__*, i32**, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @av_parser_close(%struct.TYPE_17__*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_15__*, i32, i32, i64) #1

declare dso_local i32 @avcodec_free_context(%struct.TYPE_18__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
