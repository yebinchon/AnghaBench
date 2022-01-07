; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_pvq_band_cost.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_pvq_band_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, float*, float*, i32, i32, i32, i32*, i32, float*, i32, float, float*, i32)* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { float* }

@ff_celt_freq_range = common dso_local global i32* null, align 8
@ff_celt_freq_bands = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, float*, float)* @pvq_band_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @pvq_band_cost(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3, float* %4, float %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca [352 x float], align 16
  %18 = alloca [176 x float], align 16
  %19 = alloca [176 x float], align 16
  %20 = alloca [176 x float], align 16
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store float* %4, float** %11, align 8
  store float %5, float* %12, align 4
  store i32 0, i32* %14, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %30, align 4
  %36 = getelementptr inbounds i32, i32* %30, i64 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 1, %39
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %36, align 4
  %42 = load i32*, i32** @ff_celt_freq_range, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %46, %49
  store i32 %50, i32* %16, align 4
  store float 0.000000e+00, float* %23, align 4
  store float 0.000000e+00, float* %24, align 4
  %51 = getelementptr inbounds [352 x float], [352 x float]* %17, i64 0, i64 0
  store float* %51, float** %25, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 10
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load float*, float** %56, align 8
  %58 = load i32*, i32** @ff_celt_freq_bands, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %57, i64 %67
  store float* %68, float** %26, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %75

73:                                               ; preds = %6
  %74 = getelementptr inbounds [352 x float], [352 x float]* %17, i64 0, i64 176
  br label %76

75:                                               ; preds = %6
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi float* [ %74, %73 ], [ null, %75 ]
  store float* %77, float** %27, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 10
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load float*, float** %82, align 8
  %84 = load i32*, i32** @ff_celt_freq_bands, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %83, i64 %93
  store float* %94, float** %28, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @OPUS_RC_CHECKPOINT_SPAWN(i32* %95)
  %97 = load float*, float** %25, align 8
  %98 = load float*, float** %26, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memcpy(float* %97, float* %98, i32 %102)
  %104 = load float*, float** %27, align 8
  %105 = icmp ne float* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %76
  %107 = load float*, float** %27, align 8
  %108 = load float*, float** %28, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i32 @memcpy(float* %107, float* %108, i32 %112)
  br label %114

114:                                              ; preds = %106, %76
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %117, 3
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %118, %121
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @opus_rc_tell_frac(i32* %123)
  %125 = sub nsw i32 %122, %124
  %126 = sub nsw i32 %125, 1
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = icmp sle i32 %129, %133
  br i1 %134, label %135, label %161

135:                                              ; preds = %114
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %141, %142
  %144 = call i32 @FFMIN(i32 3, i32 %143)
  %145 = sdiv i32 %138, %144
  store i32 %145, i32* %29, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 8
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %29, align 4
  %158 = add nsw i32 %156, %157
  %159 = call i32 @FFMIN(i32 %149, i32 %158)
  %160 = call i32 @av_clip_uintp2(i32 %159, i32 14)
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %135, %114
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 9
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %211

166:                                              ; preds = %161
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, float*, float*, i32, i32, i32, i32*, i32, float*, i32, float, float*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, float*, float*, i32, i32, i32, i32*, i32, float*, i32, float, float*, i32)** %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load float*, float** %25, align 8
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %14, align 4
  %177 = sdiv i32 %176, 2
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds [176 x float], [176 x float]* %19, i64 0, i64 0
  %185 = getelementptr inbounds [176 x float], [176 x float]* %18, i64 0, i64 0
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 %169(%struct.TYPE_13__* %170, %struct.TYPE_14__* %171, i32* %172, i32 %173, float* %174, float* null, i32 %175, i32 %177, i32 %180, i32* null, i32 %183, float* %184, i32 0, float 1.000000e+00, float* %185, i32 %187)
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, float*, float*, i32, i32, i32, i32*, i32, float*, i32, float, float*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, float*, float*, i32, i32, i32, i32*, i32, float*, i32, float, float*, i32)** %190, align 8
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %10, align 4
  %196 = load float*, float** %27, align 8
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %14, align 4
  %199 = sdiv i32 %198, 2
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds [176 x float], [176 x float]* %20, i64 0, i64 0
  %207 = getelementptr inbounds [176 x float], [176 x float]* %18, i64 0, i64 0
  %208 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 %191(%struct.TYPE_13__* %192, %struct.TYPE_14__* %193, i32* %194, i32 %195, float* %196, float* null, i32 %197, i32 %199, i32 %202, i32* null, i32 %205, float* %206, i32 0, float 1.000000e+00, float* %207, i32 %209)
  br label %237

211:                                              ; preds = %161
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, float*, float*, i32, i32, i32, i32*, i32, float*, i32, float, float*, i32)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32, float*, float*, i32, i32, i32, i32*, i32, float*, i32, float, float*, i32)** %213, align 8
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %217 = load i32*, i32** %9, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load float*, float** %25, align 8
  %220 = load float*, float** %27, align 8
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %14, align 4
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds [176 x float], [176 x float]* %19, i64 0, i64 0
  %230 = getelementptr inbounds [176 x float], [176 x float]* %18, i64 0, i64 0
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %232, %234
  %236 = call i32 %214(%struct.TYPE_13__* %215, %struct.TYPE_14__* %216, i32* %217, i32 %218, float* %219, float* %220, i32 %221, i32 %222, i32 %225, i32* null, i32 %228, float* %229, i32 0, float 1.000000e+00, float* %230, i32 %235)
  br label %237

237:                                              ; preds = %211, %166
  store i32 0, i32* %13, align 4
  br label %238

238:                                              ; preds = %297, %237
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %300

242:                                              ; preds = %238
  %243 = load float*, float** %25, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %243, i64 %245
  %247 = load float, float* %246, align 4
  %248 = load float*, float** %26, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %248, i64 %250
  %252 = load float, float* %251, align 4
  %253 = fsub float %247, %252
  %254 = load float*, float** %25, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %254, i64 %256
  %258 = load float, float* %257, align 4
  %259 = load float*, float** %26, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %259, i64 %261
  %263 = load float, float* %262, align 4
  %264 = fsub float %258, %263
  %265 = fmul float %253, %264
  %266 = load float, float* %23, align 4
  %267 = fadd float %266, %265
  store float %267, float* %23, align 4
  %268 = load float*, float** %27, align 8
  %269 = icmp ne float* %268, null
  br i1 %269, label %270, label %296

270:                                              ; preds = %242
  %271 = load float*, float** %27, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %271, i64 %273
  %275 = load float, float* %274, align 4
  %276 = load float*, float** %28, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %276, i64 %278
  %280 = load float, float* %279, align 4
  %281 = fsub float %275, %280
  %282 = load float*, float** %27, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %282, i64 %284
  %286 = load float, float* %285, align 4
  %287 = load float*, float** %28, align 8
  %288 = load i32, i32* %13, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %287, i64 %289
  %291 = load float, float* %290, align 4
  %292 = fsub float %286, %291
  %293 = fmul float %281, %292
  %294 = load float, float* %24, align 4
  %295 = fadd float %294, %293
  store float %295, float* %24, align 4
  br label %296

296:                                              ; preds = %270, %242
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %13, align 4
  br label %238

300:                                              ; preds = %238
  %301 = load float, float* %23, align 4
  %302 = call float @sqrtf(float %301) #3
  %303 = load float, float* %24, align 4
  %304 = call float @sqrtf(float %303) #3
  %305 = fadd float %302, %304
  store float %305, float* %21, align 4
  %306 = load i32*, i32** %9, align 8
  %307 = call float @OPUS_RC_CHECKPOINT_BITS(i32* %306)
  %308 = fdiv float %307, 8.000000e+00
  store float %308, float* %22, align 4
  %309 = load float, float* %22, align 4
  %310 = load float*, float** %11, align 8
  %311 = load float, float* %310, align 4
  %312 = fadd float %311, %309
  store float %312, float* %310, align 4
  %313 = load i32*, i32** %9, align 8
  %314 = call i32 @OPUS_RC_CHECKPOINT_ROLLBACK(i32* %313)
  %315 = load float, float* %12, align 4
  %316 = load float, float* %21, align 4
  %317 = fmul float %315, %316
  %318 = load float, float* %22, align 4
  %319 = fmul float %317, %318
  ret float %319
}

declare dso_local i32 @OPUS_RC_CHECKPOINT_SPAWN(i32*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @opus_rc_tell_frac(i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_clip_uintp2(i32, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local float @OPUS_RC_CHECKPOINT_BITS(i32*) #1

declare dso_local i32 @OPUS_RC_CHECKPOINT_ROLLBACK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
