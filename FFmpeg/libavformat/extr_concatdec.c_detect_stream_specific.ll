; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_detect_stream_specific.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_detect_stream_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__**, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__*, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_19__* }

@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Auto-inserting h264_mp4toannexb bitstream filter\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"h264_mp4toannexb\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"h264_mp4toannexb bitstream filter required for H.264 streams\0A\00", align 1
@AVERROR_BSF_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @detect_stream_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_stream_specific(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %6, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %19, i64 %21
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %7, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i64 %30
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %8, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %138

36:                                               ; preds = %2
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %138

44:                                               ; preds = %36
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %44
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 3
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AV_RB24(i32 %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %81, label %66

66:                                               ; preds = %58, %51
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 4
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @AV_RB32(i32 %78)
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %73, %58, %44
  store i32 0, i32* %3, align 4
  br label %139

82:                                               ; preds = %73, %66
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = load i32, i32* @AV_LOG_INFO, align 4
  %87 = call i32 @av_log(%struct.TYPE_17__* %85, i32 %86, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %88 = call i32* @av_bsf_get_by_name(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32* %88, i32** %9, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %82
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = load i32, i32* @AV_LOG_ERROR, align 4
  %94 = call i32 @av_log(%struct.TYPE_17__* %92, i32 %93, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @AVERROR_BSF_NOT_FOUND, align 4
  store i32 %95, i32* %3, align 4
  br label %139

96:                                               ; preds = %82
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @av_bsf_alloc(i32* %97, %struct.TYPE_18__** %10)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %139

103:                                              ; preds = %96
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store %struct.TYPE_18__* %104, %struct.TYPE_18__** %106, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = call i32 @avcodec_parameters_copy(%struct.TYPE_19__* %109, %struct.TYPE_19__* %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %3, align 4
  br label %139

118:                                              ; preds = %103
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %120 = call i32 @av_bsf_init(%struct.TYPE_18__* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %3, align 4
  br label %139

125:                                              ; preds = %118
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = call i32 @avcodec_parameters_copy(%struct.TYPE_19__* %128, %struct.TYPE_19__* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %125
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %3, align 4
  br label %139

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %36, %2
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %135, %123, %116, %101, %91, %81
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @AV_RB24(i32) #1

declare dso_local i32 @AV_RB32(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32* @av_bsf_get_by_name(i8*) #1

declare dso_local i32 @av_bsf_alloc(i32*, %struct.TYPE_18__**) #1

declare dso_local i32 @avcodec_parameters_copy(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_bsf_init(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
