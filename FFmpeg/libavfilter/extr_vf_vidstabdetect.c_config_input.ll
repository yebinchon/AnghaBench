; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vidstabdetect.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vidstabdetect.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_17__ = type { i32, i64, i64 }

@AV_PIX_FMT_FLAG_PLANAR = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"pixel-format error: wrong bits/per/pixel, please report a BUG\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"pixel-format error: log2_chroma_w, please report a BUG\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"pixel-format error: log2_chroma_h, please report a BUG\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"vidstabdetect\00", align 1
@VS_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"initialization of Motion Detection failed, please report a BUG\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Video stabilization settings (pass 1/2):\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"     shakiness = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"      accuracy = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"      stepsize = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"   mincontrast = %f\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"        tripod = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"          show = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"        result = %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"cannot open transform file %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"cannot write to transform file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %4, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %5, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  store i32* %17, i32** %6, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_17__* @av_pix_fmt_desc_get(i32 %20)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %8, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AV_PIX_FMT_FLAG_PLANAR, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ff_av2vs_pixfmt(%struct.TYPE_19__* %33, i32 %36)
  %38 = call i32 @vsFrameInfoInit(%struct.TYPE_15__* %7, i32 %29, i32 %32, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = call i32 @av_get_bits_per_pixel(%struct.TYPE_17__* %44)
  %46 = sdiv i32 %45, 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = load i32, i32* @AV_LOG_ERROR, align 4
  %51 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %49, i32 %50, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %193

54:                                               ; preds = %41, %1
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %62, i32 %63, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %2, align 4
  br label %193

67:                                               ; preds = %54
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %75, i32 %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = call i32 @AVERROR(i32 %78)
  store i32 %79, i32* %2, align 4
  br label %193

80:                                               ; preds = %67
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %86, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 2
  %90 = call i64 @vsMotionDetectInit(i32* %87, %struct.TYPE_20__* %89, %struct.TYPE_15__* %7)
  %91 = load i64, i64* @VS_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %94, i32 %95, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = call i32 @AVERROR(i32 %97)
  store i32 %98, i32* %2, align 4
  br label %193

99:                                               ; preds = %80
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @vsMotionDetectGetConfig(%struct.TYPE_20__* %101, i32* %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = load i32, i32* @AV_LOG_INFO, align 4
  %106 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %104, i32 %105, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = load i32, i32* @AV_LOG_INFO, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %107, i32 %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %115 = load i32, i32* @AV_LOG_INFO, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %114, i32 %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = load i32, i32* @AV_LOG_INFO, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %121, i32 %122, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %129 = load i32, i32* @AV_LOG_INFO, align 4
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %128, i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %136 = load i32, i32* @AV_LOG_INFO, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %135, i32 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %140)
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %143 = load i32, i32* @AV_LOG_INFO, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %142, i32 %143, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %147)
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %150 = load i32, i32* @AV_LOG_INFO, align 4
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %149, i32 %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32* @fopen(i32 %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  store i32* %158, i32** %160, align 8
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %99
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %167 = load i32, i32* @AV_LOG_ERROR, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %166, i32 %167, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @EINVAL, align 4
  %173 = call i32 @AVERROR(i32 %172)
  store i32 %173, i32* %2, align 4
  br label %193

174:                                              ; preds = %99
  %175 = load i32*, i32** %6, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i64 @vsPrepareFile(i32* %175, i32* %178)
  %180 = load i64, i64* @VS_OK, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @av_log(%struct.TYPE_19__* %183, i32 %184, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* @EINVAL, align 4
  %190 = call i32 @AVERROR(i32 %189)
  store i32 %190, i32* %2, align 4
  br label %193

191:                                              ; preds = %174
  br label %192

192:                                              ; preds = %191
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %182, %165, %93, %74, %61, %48
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.TYPE_17__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @vsFrameInfoInit(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ff_av2vs_pixfmt(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @av_get_bits_per_pixel(%struct.TYPE_17__*) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @vsMotionDetectInit(i32*, %struct.TYPE_20__*, %struct.TYPE_15__*) #1

declare dso_local i32 @vsMotionDetectGetConfig(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i64 @vsPrepareFile(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
