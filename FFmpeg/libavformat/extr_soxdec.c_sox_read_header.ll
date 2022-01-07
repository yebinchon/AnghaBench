; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_soxdec.c_sox_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_soxdec.c_sox_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, double, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@SOX_TAG = common dso_local global i8* null, align 8
@AV_CODEC_ID_PCM_S32LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S32BE = common dso_local global i32 0, align 4
@SOX_FIXED_HDR = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid comment size (%u)\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid sample rate (%f)\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"truncating fractional part of sample rate (%f)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"invalid header\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @sox_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sox_read_header(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = call %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__* %14, i32* null)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %238

21:                                               ; preds = %1
  %22 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 6
  store i32 %22, i32* %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @avio_rl32(i32* %27)
  %29 = load i8*, i8** @SOX_TAG, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %21
  %32 = load i32, i32* @AV_CODEC_ID_PCM_S32LE, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  store i32 %32, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i8* @avio_rl32(i32* %37)
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @avio_skip(i32* %40, i32 8)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @avio_rl64(i32* %42)
  %44 = call double @av_int2double(i32 %43)
  store double %44, double* %7, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @avio_rl32(i32* %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i8* @avio_rl32(i32* %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %6, align 4
  br label %79

55:                                               ; preds = %21
  %56 = load i32, i32* @AV_CODEC_ID_PCM_S32BE, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 5
  store i32 %56, i32* %60, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i8* @avio_rb32(i32* %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @avio_skip(i32* %64, i32 8)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @avio_rb64(i32* %66)
  %68 = call double @av_int2double(i32 %67)
  store double %68, double* %7, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i8* @avio_rb32(i32* %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i8* @avio_rb32(i32* %76)
  %78 = ptrtoint i8* %77 to i32
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %55, %31
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @SOX_FIXED_HDR, align 4
  %82 = sub i32 -1, %81
  %83 = sub i32 %82, 4
  %84 = icmp ugt i32 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = load i32, i32* @AV_LOG_ERROR, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %86, i32 %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %90, i32* %2, align 4
  br label %238

91:                                               ; preds = %79
  %92 = load double, double* %7, align 8
  %93 = fcmp ole double %92, 0.000000e+00
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load double, double* %7, align 8
  %96 = load double, double* @INT_MAX, align 8
  %97 = fcmp ogt double %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94, %91
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = load double, double* %7, align 8
  %102 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %99, i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), double %101)
  %103 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %103, i32* %2, align 4
  br label %238

104:                                              ; preds = %94
  %105 = load double, double* %7, align 8
  %106 = load double, double* %7, align 8
  %107 = call double @llvm.floor.f64(double %106)
  %108 = fsub double %105, %107
  store double %108, double* %8, align 8
  %109 = load double, double* %8, align 8
  %110 = fcmp une double %109, 0.000000e+00
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = load i32, i32* @AV_LOG_WARNING, align 4
  %114 = load double, double* %8, align 8
  %115 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %112, i32 %113, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), double %114)
  br label %116

116:                                              ; preds = %111, %104
  %117 = load i32, i32* %5, align 4
  %118 = add i32 %117, 4
  %119 = and i32 %118, 7
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @SOX_FIXED_HDR, align 4
  %124 = load i32, i32* %6, align 4
  %125 = add i32 %123, %124
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sgt i32 %132, 65535
  br i1 %133, label %134, label %139

134:                                              ; preds = %127, %121, %116
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %136 = load i32, i32* @AV_LOG_ERROR, align 4
  %137 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %135, i32 %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %138, i32* %2, align 4
  br label %238

139:                                              ; preds = %127
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %176

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @UINT_MAX, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %142
  %147 = load i32, i32* %6, align 4
  %148 = add i32 %147, 1
  %149 = call i8* @av_malloc(i32 %148)
  store i8* %149, i8** %10, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = call i32 @AVERROR(i32 %153)
  store i32 %154, i32* %2, align 4
  br label %238

155:                                              ; preds = %146
  %156 = load i32*, i32** %4, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @avio_read(i32* %156, i8* %157, i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %155
  %163 = call i32 @av_freep(i8** %10)
  %164 = load i32, i32* @EIO, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %2, align 4
  br label %238

166:                                              ; preds = %155
  %167 = load i8*, i8** %10, align 8
  %168 = load i32, i32* %6, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  store i8 0, i8* %170, align 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i8*, i8** %10, align 8
  %174 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %175 = call i32 @av_dict_set(i32* %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %173, i32 %174)
  br label %176

176:                                              ; preds = %166, %142, %139
  %177 = load i32*, i32** %4, align 8
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @SOX_FIXED_HDR, align 4
  %180 = sub i32 %178, %179
  %181 = load i32, i32* %6, align 4
  %182 = sub i32 %180, %181
  %183 = call i32 @avio_skip(i32* %177, i32 %182)
  %184 = load double, double* %7, align 8
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  store double %184, double* %188, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  store i32 32, i32* %192, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load double, double* %196, align 8
  %198 = fptosi double %197 to i32
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 %198, %203
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = mul nsw i32 %204, %209
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 3
  store i32 %210, i32* %214, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 %219, %224
  %226 = sdiv i32 %225, 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 4
  store i32 %226, i32* %230, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load double, double* %235, align 8
  %237 = call i32 @avpriv_set_pts_info(%struct.TYPE_10__* %231, i32 64, i32 1, double %236)
  store i32 0, i32* %2, align 4
  br label %238

238:                                              ; preds = %176, %162, %152, %134, %98, %85, %18
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local %struct.TYPE_10__* @avformat_new_stream(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @avio_rl32(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local double @av_int2double(i32) #1

declare dso_local i32 @avio_rl64(i32*) #1

declare dso_local i8* @avio_rb32(i32*) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_10__*, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
