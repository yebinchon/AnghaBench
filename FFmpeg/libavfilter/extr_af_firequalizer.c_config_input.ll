; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_firequalizer.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i64, i8*, i8*, i8*, i8*, i64, i32, i64, i8*, i8*, i64, i64 }

@RDFT_BITS_MIN = common dso_local global i32 0, align 4
@RDFT_BITS_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"too large delay, please decrease it.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DFT_R2C = common dso_local global i32 0, align 4
@IDFT_C2R = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"too small accuracy, please increase it.\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [106 x i8] c"sample_rate = %d, channels = %d, analysis_rdft_len = %d, rdft_len = %d, fir_len = %d, nsamples_max = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = call i32 @common_uninit(%struct.TYPE_10__* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 28
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 27
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = mul nsw i32 2, %26
  %28 = add nsw i32 %27, 1
  %29 = call i32 @FFMAX(i32 %28, i32 3)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @RDFT_BITS_MIN, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %68, %1
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RDFT_BITS_MAX, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 1, %44
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %50, %53
  %55 = add nsw i32 %54, 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %60, 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %43
  br label %71

67:                                               ; preds = %43
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %39

71:                                               ; preds = %66, %39
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @RDFT_BITS_MAX, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %76, i32 %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EINVAL, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %378

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @DFT_R2C, align 4
  %84 = call i8* @av_rdft_init(i32 %82, i32 %83)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 26
  store i8* %84, i8** %86, align 8
  %87 = icmp ne i8* %84, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @IDFT_C2R, align 4
  %91 = call i8* @av_rdft_init(i32 %89, i32 %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 25
  store i8* %91, i8** %93, align 8
  %94 = icmp ne i8* %91, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %88, %81
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = call i32 @AVERROR(i32 %96)
  store i32 %97, i32* %2, align 4
  br label %378

98:                                               ; preds = %88
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 24
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %98
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 14
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @av_fft_init(i32 %114, i32 0)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 23
  store i32 %115, i32* %117, align 8
  %118 = icmp ne i32 %115, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = call i32 @AVERROR(i32 %120)
  store i32 %121, i32* %2, align 4
  br label %378

122:                                              ; preds = %113, %108, %103, %98
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 22
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %185

127:                                              ; preds = %122
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 2
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @RDFT_BITS_MAX, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %134, i32 %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = call i32 @AVERROR(i32 %137)
  store i32 %138, i32* %2, align 4
  br label %378

139:                                              ; preds = %127
  %140 = load i32, i32* @RDFT_BITS_MAX, align 4
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i32 @FFMIN(i32 %140, i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @DFT_R2C, align 4
  %146 = call i8* @av_rdft_init(i32 %144, i32 %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 21
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @IDFT_C2R, align 4
  %151 = call i8* @av_rdft_init(i32 %149, i32 %150)
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 20
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 21
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %139
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 20
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %158, %139
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = call i32 @AVERROR(i32 %164)
  store i32 %165, i32* %2, align 4
  br label %378

166:                                              ; preds = %158
  %167 = load i32, i32* %7, align 4
  %168 = shl i32 1, %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @av_malloc_array(i32 %173, i32 1)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 19
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 19
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %166
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = call i32 @AVERROR(i32 %182)
  store i32 %183, i32* %2, align 4
  br label %378

184:                                              ; preds = %166
  br label %185

185:                                              ; preds = %184, %122
  br label %186

186:                                              ; preds = %208, %185
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @RDFT_BITS_MAX, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %211

190:                                              ; preds = %186
  %191 = load i32, i32* %6, align 4
  %192 = shl i32 1, %191
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 6
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 %200, %203
  %205 = icmp sle i32 %197, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %190
  br label %211

207:                                              ; preds = %190
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %6, align 4
  br label %186

211:                                              ; preds = %206, %186
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @RDFT_BITS_MAX, align 4
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %217 = load i32, i32* @AV_LOG_ERROR, align 4
  %218 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %216, i32 %217, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %219 = load i32, i32* @EINVAL, align 4
  %220 = call i32 @AVERROR(i32 %219)
  store i32 %220, i32* %2, align 4
  br label %378

221:                                              ; preds = %211
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* @IDFT_C2R, align 4
  %224 = call i8* @av_rdft_init(i32 %222, i32 %223)
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 18
  store i8* %224, i8** %226, align 8
  %227 = icmp ne i8* %224, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %221
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = call i32 @AVERROR(i32 %229)
  store i32 %230, i32* %2, align 4
  br label %378

231:                                              ; preds = %221
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 17
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %231
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @DFT_R2C, align 4
  %239 = call i8* @av_rdft_init(i32 %237, i32 %238)
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 16
  store i8* %239, i8** %241, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = call i8* @av_malloc_array(i32 %244, i32 1)
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 15
  store i8* %245, i8** %247, align 8
  br label %248

248:                                              ; preds = %236, %231
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = call i8* @av_malloc_array(i32 %251, i32 1)
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 13
  store i8* %252, i8** %254, align 8
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 14
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %248
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  br label %267

266:                                              ; preds = %248
  br label %267

267:                                              ; preds = %266, %262
  %268 = phi i32 [ %265, %262 ], [ 1, %266 ]
  %269 = mul nsw i32 %257, %268
  %270 = call i8* @av_malloc_array(i32 %269, i32 1)
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 12
  store i8* %270, i8** %272, align 8
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 14
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %267
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  br label %285

284:                                              ; preds = %267
  br label %285

285:                                              ; preds = %284, %280
  %286 = phi i32 [ %283, %280 ], [ 1, %284 ]
  %287 = mul nsw i32 %275, %286
  %288 = call i8* @av_malloc_array(i32 %287, i32 1)
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 11
  store i8* %288, i8** %290, align 8
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = mul nsw i32 2, %293
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 %294, %297
  %299 = call i8* @av_calloc(i32 %298, i32 1)
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 10
  store i8* %299, i8** %301, align 8
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = call i8* @av_calloc(i32 %304, i32 1)
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 9
  store i8* %305, i8** %307, align 8
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 13
  %310 = load i8*, i8** %309, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %312, label %332

312:                                              ; preds = %285
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 12
  %315 = load i8*, i8** %314, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %317, label %332

317:                                              ; preds = %312
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 11
  %320 = load i8*, i8** %319, align 8
  %321 = icmp ne i8* %320, null
  br i1 %321, label %322, label %332

322:                                              ; preds = %317
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 10
  %325 = load i8*, i8** %324, align 8
  %326 = icmp ne i8* %325, null
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 9
  %330 = load i8*, i8** %329, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %335, label %332

332:                                              ; preds = %327, %322, %317, %312, %285
  %333 = load i32, i32* @ENOMEM, align 4
  %334 = call i32 @AVERROR(i32 %333)
  store i32 %334, i32* %2, align 4
  br label %378

335:                                              ; preds = %327
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %337 = load i32, i32* @AV_LOG_DEBUG, align 4
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %336, i32 %337, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0), i32 %340, i32 %343, i32 %346, i32 %349, i32 %352, i32 %355)
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 8
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %371

361:                                              ; preds = %335
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 8
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 3
  store i32 %364, i32* %368, align 4
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 2
  store i32 %364, i32* %370, align 8
  br label %371

371:                                              ; preds = %361, %335
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %374 = call i32 @SELECT_GAIN(%struct.TYPE_10__* %373)
  %375 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %376 = call i32 @SELECT_GAIN_ENTRY(%struct.TYPE_10__* %375)
  %377 = call i32 @generate_kernel(%struct.TYPE_12__* %372, i32 %374, i32 %376)
  store i32 %377, i32* %2, align 4
  br label %378

378:                                              ; preds = %371, %332, %228, %215, %181, %163, %133, %119, %95, %75
  %379 = load i32, i32* %2, align 4
  ret i32 %379
}

declare dso_local i32 @common_uninit(%struct.TYPE_10__*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_rdft_init(i32, i32) #1

declare dso_local i32 @av_fft_init(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @generate_kernel(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @SELECT_GAIN(%struct.TYPE_10__*) #1

declare dso_local i32 @SELECT_GAIN_ENTRY(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
