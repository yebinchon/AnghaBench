; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_step_collect_psy_metrics.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_step_collect_psy_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32**, i32**, %struct.TYPE_14__**, %struct.TYPE_11__*, i32*, %struct.TYPE_16__**, i32*, %struct.TYPE_10__*, i32, %struct.TYPE_12__** }
%struct.TYPE_14__ = type { float, float, float }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, float*, i32*, i32)* }
%struct.TYPE_10__ = type { i32 (i32*, i32*, i32, i32)* }
%struct.TYPE_12__ = type { i32, float**, float***, float**, i32, float*, float**, float, i32** }
%struct.TYPE_15__ = type { i32, i32* }

@CELT_MAX_BANDS = common dso_local global i32 0, align 4
@ff_celt_freq_bands = common dso_local global i64* null, align 8
@ff_celt_freq_range = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @step_collect_psy_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @step_collect_psy_metrics(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_14__*, align 8
  %26 = alloca float, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 10
  %29 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %29, i64 %31
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %9, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %225, %2
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %228

45:                                               ; preds = %37
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 1, %48
  store i32 %49, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %86, %45
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @FFMIN(i32 %52, i32 %53)
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 %57, 120
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call %struct.TYPE_15__* @ff_bufqueue_peek(i32 %61, i32 %64)
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %12, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memcpy(i32* %71, i32 %78, i32 %84)
  br label %86

86:                                               ; preds = %56
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %50

89:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %126, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %95, 120
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %13, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %102, %103
  %105 = call %struct.TYPE_15__* @ff_bufqueue_peek(i32 %101, i32 %104)
  store %struct.TYPE_15__* %105, %struct.TYPE_15__** %14, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 5
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = call i32 @memcpy(i32* %111, i32 %118, i32 %124)
  br label %126

126:                                              ; preds = %94
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %90

129:                                              ; preds = %90
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32 (i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32, i32)** %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 5
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 7
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = call i32 @OPUS_BLOCK_SIZE(i64 %153)
  %155 = shl i32 %154, 1
  %156 = call i32 %134(i32* %137, i32* %140, i32 %149, i32 %155)
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 6
  %159 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %158, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %159, i64 %163
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i32 (%struct.TYPE_16__*, float*, i32*, i32)*, i32 (%struct.TYPE_16__*, float*, i32*, i32)** %166, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %169, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %170, i64 %174
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 1
  %179 = load float**, float*** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float*, float** %179, i64 %181
  %183 = load float*, float** %182, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 %167(%struct.TYPE_16__* %176, float* %183, i32* %186, i32 1)
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %221, %129
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @CELT_MAX_BANDS, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %224

192:                                              ; preds = %188
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load float**, float*** %194, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float*, float** %195, i64 %197
  %199 = load float*, float** %198, align 8
  %200 = load i64*, i64** @ff_celt_freq_bands, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = zext i32 %207 to i64
  %209 = shl i64 %204, %208
  %210 = getelementptr inbounds float, float* %199, i64 %209
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 2
  %213 = load float***, float**** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds float**, float*** %213, i64 %215
  %217 = load float**, float*** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float*, float** %217, i64 %219
  store float* %210, float** %220, align 8
  br label %221

221:                                              ; preds = %192
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %7, align 4
  br label %188

224:                                              ; preds = %188
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  br label %37

228:                                              ; preds = %37
  store i32 0, i32* %6, align 4
  br label %229

229:                                              ; preds = %369, %228
  %230 = load i32, i32* %6, align 4
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp slt i32 %230, %235
  br i1 %236, label %237, label %372

237:                                              ; preds = %229
  store i32 0, i32* %7, align 4
  br label %238

238:                                              ; preds = %365, %237
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @CELT_MAX_BANDS, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %368

242:                                              ; preds = %238
  store float 0.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %17, align 4
  %243 = load i32*, i32** @ff_celt_freq_range, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = shl i32 %247, %250
  store i32 %251, i32* %18, align 4
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 2
  %254 = load float***, float**** %253, align 8
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float**, float*** %254, i64 %256
  %258 = load float**, float*** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float*, float** %258, i64 %260
  %262 = load float*, float** %261, align 8
  store float* %262, float** %19, align 8
  store i32 0, i32* %8, align 4
  br label %263

263:                                              ; preds = %281, %242
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %18, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %284

267:                                              ; preds = %263
  %268 = load float*, float** %19, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %268, i64 %270
  %272 = load float, float* %271, align 4
  %273 = load float*, float** %19, align 8
  %274 = load i32, i32* %8, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %273, i64 %275
  %277 = load float, float* %276, align 4
  %278 = fmul float %272, %277
  %279 = load float, float* %16, align 4
  %280 = fadd float %279, %278
  store float %280, float* %16, align 4
  br label %281

281:                                              ; preds = %267
  %282 = load i32, i32* %8, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %8, align 4
  br label %263

284:                                              ; preds = %263
  %285 = load float, float* %16, align 4
  %286 = call float @sqrtf(float %285) #3
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 3
  %289 = load float**, float*** %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float*, float** %289, i64 %291
  %293 = load float*, float** %292, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %293, i64 %295
  %297 = load float, float* %296, align 4
  %298 = fadd float %297, %286
  store float %298, float* %296, align 4
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 3
  %301 = load float**, float*** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float*, float** %301, i64 %303
  %305 = load float*, float** %304, align 8
  %306 = load i32, i32* %7, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %305, i64 %307
  %309 = load float, float* %308, align 4
  %310 = fcmp une float %309, 0.000000e+00
  %311 = xor i1 %310, true
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = load i32, i32* %5, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %5, align 4
  %316 = load float, float* %16, align 4
  %317 = load i32, i32* %18, align 4
  %318 = sitofp i32 %317 to float
  %319 = fdiv float %316, %318
  store float %319, float* %15, align 4
  store i32 0, i32* %8, align 4
  br label %320

320:                                              ; preds = %345, %284
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* %18, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %348

324:                                              ; preds = %320
  %325 = load float*, float** %19, align 8
  %326 = load i32, i32* %8, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %325, i64 %327
  %329 = load float, float* %328, align 4
  %330 = load float*, float** %19, align 8
  %331 = load i32, i32* %8, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds float, float* %330, i64 %332
  %334 = load float, float* %333, align 4
  %335 = fmul float %329, %334
  store float %335, float* %20, align 4
  %336 = load float, float* %15, align 4
  %337 = load float, float* %20, align 4
  %338 = fsub float %336, %337
  %339 = load float, float* %15, align 4
  %340 = load float, float* %20, align 4
  %341 = fsub float %339, %340
  %342 = fmul float %338, %341
  %343 = load float, float* %17, align 4
  %344 = fadd float %343, %342
  store float %344, float* %17, align 4
  br label %345

345:                                              ; preds = %324
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %8, align 4
  br label %320

348:                                              ; preds = %320
  %349 = load float, float* %17, align 4
  %350 = call float @sqrtf(float %349) #3
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 8
  %353 = load i32**, i32*** %352, align 8
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32*, i32** %353, i64 %355
  %357 = load i32*, i32** %356, align 8
  %358 = load i32, i32* %7, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = sitofp i32 %361 to float
  %363 = fadd float %362, %350
  %364 = fptosi float %363 to i32
  store i32 %364, i32* %360, align 4
  br label %365

365:                                              ; preds = %348
  %366 = load i32, i32* %7, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %7, align 4
  br label %238

368:                                              ; preds = %238
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %6, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %6, align 4
  br label %229

372:                                              ; preds = %229
  %373 = load i32, i32* %5, align 4
  %374 = icmp ne i32 %373, 0
  %375 = xor i1 %374, true
  %376 = zext i1 %375 to i32
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 4
  store i32 %376, i32* %378, align 8
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 4
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = icmp sgt i32 %383, 1
  br i1 %384, label %385, label %464

385:                                              ; preds = %372
  store i32 0, i32* %7, align 4
  br label %386

386:                                              ; preds = %460, %385
  %387 = load i32, i32* %7, align 4
  %388 = load i32, i32* @CELT_MAX_BANDS, align 4
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %390, label %463

390:                                              ; preds = %386
  store float 0.000000e+00, float* %21, align 4
  %391 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 2
  %393 = load float***, float**** %392, align 8
  %394 = getelementptr inbounds float**, float*** %393, i64 0
  %395 = load float**, float*** %394, align 8
  %396 = load i32, i32* %7, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds float*, float** %395, i64 %397
  %399 = load float*, float** %398, align 8
  store float* %399, float** %22, align 8
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 2
  %402 = load float***, float**** %401, align 8
  %403 = getelementptr inbounds float**, float*** %402, i64 1
  %404 = load float**, float*** %403, align 8
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float*, float** %404, i64 %406
  %408 = load float*, float** %407, align 8
  store float* %408, float** %23, align 8
  %409 = load i32*, i32** @ff_celt_freq_range, align 8
  %410 = load i32, i32* %7, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = shl i32 %413, %416
  store i32 %417, i32* %24, align 4
  store i32 0, i32* %8, align 4
  br label %418

418:                                              ; preds = %448, %390
  %419 = load i32, i32* %8, align 4
  %420 = load i32, i32* %24, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %451

422:                                              ; preds = %418
  %423 = load float*, float** %22, align 8
  %424 = load i32, i32* %8, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds float, float* %423, i64 %425
  %427 = load float, float* %426, align 4
  %428 = load float*, float** %23, align 8
  %429 = load i32, i32* %8, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float, float* %428, i64 %430
  %432 = load float, float* %431, align 4
  %433 = fsub float %427, %432
  %434 = load float*, float** %22, align 8
  %435 = load i32, i32* %8, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds float, float* %434, i64 %436
  %438 = load float, float* %437, align 4
  %439 = load float*, float** %23, align 8
  %440 = load i32, i32* %8, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds float, float* %439, i64 %441
  %443 = load float, float* %442, align 4
  %444 = fsub float %438, %443
  %445 = fmul float %433, %444
  %446 = load float, float* %21, align 4
  %447 = fadd float %446, %445
  store float %447, float* %21, align 4
  br label %448

448:                                              ; preds = %422
  %449 = load i32, i32* %8, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %8, align 4
  br label %418

451:                                              ; preds = %418
  %452 = load float, float* %21, align 4
  %453 = call float @sqrtf(float %452) #3
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 5
  %456 = load float*, float** %455, align 8
  %457 = load i32, i32* %7, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds float, float* %456, i64 %458
  store float %453, float* %459, align 4
  br label %460

460:                                              ; preds = %451
  %461 = load i32, i32* %7, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %7, align 4
  br label %386

463:                                              ; preds = %386
  br label %464

464:                                              ; preds = %463, %372
  store i32 0, i32* %6, align 4
  br label %465

465:                                              ; preds = %611, %464
  %466 = load i32, i32* %6, align 4
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 4
  %469 = load %struct.TYPE_11__*, %struct.TYPE_11__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = icmp slt i32 %466, %471
  br i1 %472, label %473, label %614

473:                                              ; preds = %465
  store i32 0, i32* %7, align 4
  br label %474

474:                                              ; preds = %607, %473
  %475 = load i32, i32* %7, align 4
  %476 = load i32, i32* @CELT_MAX_BANDS, align 4
  %477 = icmp slt i32 %475, %476
  br i1 %477, label %478, label %610

478:                                              ; preds = %474
  %479 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i32 0, i32 3
  %481 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %480, align 8
  %482 = load i32, i32* %6, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %481, i64 %483
  %485 = load %struct.TYPE_14__*, %struct.TYPE_14__** %484, align 8
  %486 = load i32, i32* %7, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %485, i64 %487
  store %struct.TYPE_14__* %488, %struct.TYPE_14__** %25, align 8
  %489 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %489, i32 0, i32 2
  %491 = load i32**, i32*** %490, align 8
  %492 = load i32, i32* %6, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32*, i32** %491, i64 %493
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %7, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  %499 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %500 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %499, i32 0, i32 3
  %501 = load float**, float*** %500, align 8
  %502 = load i32, i32* %6, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds float*, float** %501, i64 %503
  %505 = load float*, float** %504, align 8
  %506 = load i32, i32* %7, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds float, float* %505, i64 %507
  %509 = load float, float* %508, align 4
  %510 = call float @bessel_filter(i32* %498, float %509)
  store float %510, float* %26, align 4
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 1
  %513 = load i32**, i32*** %512, align 8
  %514 = load i32, i32* %6, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32*, i32** %513, i64 %515
  %517 = load i32*, i32** %516, align 8
  %518 = load i32, i32* %7, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = load float, float* %26, align 4
  %522 = call float @bessel_filter(i32* %520, float %521)
  store float %522, float* %26, align 4
  %523 = load float, float* %26, align 4
  %524 = load float, float* %26, align 4
  %525 = fmul float %524, %523
  store float %525, float* %26, align 4
  %526 = load float, float* %26, align 4
  %527 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %528 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %527, i32 0, i32 0
  %529 = load float, float* %528, align 4
  %530 = fcmp ogt float %526, %529
  br i1 %530, label %531, label %569

531:                                              ; preds = %478
  %532 = load float, float* %26, align 4
  %533 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %534 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %533, i32 0, i32 0
  %535 = load float, float* %534, align 4
  %536 = fsub float %532, %535
  %537 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %538 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %537, i32 0, i32 6
  %539 = load float**, float*** %538, align 8
  %540 = load i32, i32* %6, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds float*, float** %539, i64 %541
  %543 = load float*, float** %542, align 8
  %544 = load i32, i32* %7, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds float, float* %543, i64 %545
  store float %536, float* %546, align 4
  %547 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %548 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %547, i32 0, i32 6
  %549 = load float**, float*** %548, align 8
  %550 = load i32, i32* %6, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds float*, float** %549, i64 %551
  %553 = load float*, float** %552, align 8
  %554 = load i32, i32* %7, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds float, float* %553, i64 %555
  %557 = load float, float* %556, align 4
  %558 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %559 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %558, i32 0, i32 7
  %560 = load float, float* %559, align 8
  %561 = fadd float %560, %557
  store float %561, float* %559, align 8
  %562 = load float, float* %26, align 4
  %563 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %564 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %563, i32 0, i32 1
  store float %562, float* %564, align 4
  %565 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %566 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %565, i32 0, i32 0
  store float %562, float* %566, align 4
  %567 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %568 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %567, i32 0, i32 2
  store float 0.000000e+00, float* %568, align 4
  br label %569

569:                                              ; preds = %531, %478
  %570 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %571 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %570, i32 0, i32 0
  %572 = load float, float* %571, align 4
  %573 = fcmp ogt float %572, 0.000000e+00
  br i1 %573, label %574, label %606

574:                                              ; preds = %569
  %575 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %576 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %575, i32 0, i32 2
  %577 = load float, float* %576, align 4
  %578 = call i32 @expf(float %577)
  %579 = sdiv i32 1, %578
  %580 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %581 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %580, i32 0, i32 1
  %582 = load float, float* %581, align 4
  %583 = fdiv float %582, 2.000000e+01
  %584 = fptosi float %583 to i32
  %585 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %586 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %585, i32 0, i32 1
  %587 = load float, float* %586, align 4
  %588 = fpext float %587 to double
  %589 = fdiv double %588, 1.090000e+00
  %590 = call i64 @av_clipf(i32 %579, i32 %584, double %589)
  %591 = sitofp i64 %590 to float
  %592 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %593 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %592, i32 0, i32 0
  %594 = load float, float* %593, align 4
  %595 = fsub float %594, %591
  store float %595, float* %593, align 4
  %596 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %597 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %596, i32 0, i32 0
  %598 = load float, float* %597, align 4
  %599 = call float @FFMAX(float %598, float 0.000000e+00)
  %600 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %601 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %600, i32 0, i32 0
  store float %599, float* %601, align 4
  %602 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %603 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %602, i32 0, i32 2
  %604 = load float, float* %603, align 4
  %605 = fadd float %604, 1.000000e+00
  store float %605, float* %603, align 4
  br label %606

606:                                              ; preds = %574, %569
  br label %607

607:                                              ; preds = %606
  %608 = load i32, i32* %7, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %7, align 4
  br label %474

610:                                              ; preds = %474
  br label %611

611:                                              ; preds = %610
  %612 = load i32, i32* %6, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %6, align 4
  br label %465

614:                                              ; preds = %465
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local %struct.TYPE_15__* @ff_bufqueue_peek(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @OPUS_BLOCK_SIZE(i64) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local float @bessel_filter(i32*, float) #1

declare dso_local i64 @av_clipf(i32, i32, double) #1

declare dso_local i32 @expf(float) #1

declare dso_local float @FFMAX(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
