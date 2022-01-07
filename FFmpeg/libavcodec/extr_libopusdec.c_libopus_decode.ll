; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusdec.c_libopus_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopusdec.c_libopus_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, %struct.libopus_context* }
%struct.libopus_context = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { float, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64* }

@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16 = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Decoding error: %s\0A\00", align 1
@AV_SAMPLE_FMT_FLT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @libopus_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libopus_decode(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.libopus_context*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load %struct.libopus_context*, %struct.libopus_context** %18, align 8
  store %struct.libopus_context* %19, %struct.libopus_context** %10, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %11, align 8
  %22 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = call i32 @ff_get_buffer(%struct.TYPE_13__* %25, %struct.TYPE_12__* %26, i32 0)
  store i32 %27, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %161

31:                                               ; preds = %4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AV_SAMPLE_FMT_S16, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %31
  %38 = load %struct.libopus_context*, %struct.libopus_context** %10, align 8
  %39 = getelementptr inbounds %struct.libopus_context, %struct.libopus_context* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @opus_multistream_decode(i32 %40, i32 %43, i32 %46, i32* %52, i32 %55, i32 0)
  store i32 %56, i32* %13, align 4
  br label %77

57:                                               ; preds = %31
  %58 = load %struct.libopus_context*, %struct.libopus_context** %10, align 8
  %59 = getelementptr inbounds %struct.libopus_context, %struct.libopus_context* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to float*
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @opus_multistream_decode_float(i32 %60, i32 %63, i32 %66, float* %72, i32 %75, i32 0)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %57, %37
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = load i32, i32* @AV_LOG_ERROR, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @opus_strerror(i32 %83)
  %85 = call i32 @av_log(%struct.TYPE_13__* %81, i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @ff_opus_error_to_averror(i32 %86)
  store i32 %87, i32* %5, align 4
  br label %161

88:                                               ; preds = %77
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* %14, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AV_SAMPLE_FMT_FLT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %88
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to float*
  store float* %105, float** %15, align 8
  br label %106

106:                                              ; preds = %119, %99
  %107 = load i32, i32* %14, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load float*, float** %15, align 8
  %111 = load float, float* %110, align 4
  %112 = load %struct.libopus_context*, %struct.libopus_context** %10, align 8
  %113 = getelementptr inbounds %struct.libopus_context, %struct.libopus_context* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load float, float* %114, align 8
  %116 = fmul float %111, %115
  %117 = call float @av_clipf(float %116, i32 -1, i32 1)
  %118 = load float*, float** %15, align 8
  store float %117, float* %118, align 4
  br label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %14, align 4
  %122 = load float*, float** %15, align 8
  %123 = getelementptr inbounds float, float* %122, i32 1
  store float* %123, float** %15, align 8
  br label %106

124:                                              ; preds = %106
  br label %153

125:                                              ; preds = %88
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  store i32* %131, i32** %16, align 8
  br label %132

132:                                              ; preds = %147, %125
  %133 = load i32, i32* %14, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %132
  %136 = load %struct.libopus_context*, %struct.libopus_context** %10, align 8
  %137 = getelementptr inbounds %struct.libopus_context, %struct.libopus_context* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %140, %142
  %144 = ashr i32 %143, 16
  %145 = call i32 @av_clip_int16(i32 %144)
  %146 = load i32*, i32** %16, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %135
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %14, align 4
  %150 = load i32*, i32** %16, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %16, align 8
  br label %132

152:                                              ; preds = %132
  br label %153

153:                                              ; preds = %152, %124
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32*, i32** %8, align 8
  store i32 1, i32* %157, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %153, %80, %29
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @opus_multistream_decode(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @opus_multistream_decode_float(i32, i32, i32, float*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32) #1

declare dso_local i32 @opus_strerror(i32) #1

declare dso_local i32 @ff_opus_error_to_averror(i32) #1

declare dso_local float @av_clipf(float, i32, i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
