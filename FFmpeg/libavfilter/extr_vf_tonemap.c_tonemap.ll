; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap.c_tonemap.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap.c_tonemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, float, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { float, float, float }
%struct.TYPE_14__ = type { i32*, i64* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32, double)* @tonemap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tonemap(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_13__* %3, i32 %4, i32 %5, double %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store double %6, double* %14, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %30, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %29, %38
  %40 = load i32, i32* %13, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %40, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %39, %47
  %49 = inttoptr i64 %48 to float*
  store float* %49, float** %15, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %55, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %54, %63
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %65, %70
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %64, %72
  %74 = inttoptr i64 %73 to float*
  store float* %74, float** %16, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %80, %86
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %79, %88
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %90, %95
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %89, %97
  %99 = inttoptr i64 %98 to float*
  store float* %99, float** %17, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %105, %111
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %104, %113
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %115, %120
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %114, %122
  %124 = inttoptr i64 %123 to float*
  store float* %124, float** %18, align 8
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %130, %136
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %129, %138
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %140, %145
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %139, %147
  %149 = inttoptr i64 %148 to float*
  store float* %149, float** %19, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 2
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 2
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %155, %161
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %154, %163
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %165, %170
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %164, %172
  %174 = inttoptr i64 %173 to float*
  store float* %174, float** %20, align 8
  %175 = load float*, float** %15, align 8
  %176 = load float, float* %175, align 4
  %177 = load float*, float** %18, align 8
  store float %176, float* %177, align 4
  %178 = load float*, float** %16, align 8
  %179 = load float, float* %178, align 4
  %180 = load float*, float** %19, align 8
  store float %179, float* %180, align 4
  %181 = load float*, float** %17, align 8
  %182 = load float, float* %181, align 4
  %183 = load float*, float** %20, align 8
  store float %182, float* %183, align 4
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %243

188:                                              ; preds = %7
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load float, float* %192, align 4
  %194 = load float*, float** %15, align 8
  %195 = load float, float* %194, align 4
  %196 = fmul float %193, %195
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 1
  %201 = load float, float* %200, align 4
  %202 = load float*, float** %17, align 8
  %203 = load float, float* %202, align 4
  %204 = fmul float %201, %203
  %205 = fadd float %196, %204
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load float, float* %209, align 4
  %211 = load float*, float** %16, align 8
  %212 = load float, float* %211, align 4
  %213 = fmul float %210, %212
  %214 = fadd float %205, %213
  store float %214, float* %23, align 4
  %215 = load float, float* %23, align 4
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = sitofp i64 %218 to float
  %220 = fsub float %215, %219
  %221 = call float @FFMAX(float %220, i32 0)
  %222 = load float, float* %23, align 4
  %223 = call float @FFMAX(float %222, i32 0)
  %224 = fdiv float %221, %223
  store float %224, float* %24, align 4
  %225 = load float*, float** %15, align 8
  %226 = load float, float* %225, align 4
  %227 = load float, float* %23, align 4
  %228 = load float, float* %24, align 4
  %229 = call float @MIX(float %226, float %227, float %228)
  %230 = load float*, float** %18, align 8
  store float %229, float* %230, align 4
  %231 = load float*, float** %17, align 8
  %232 = load float, float* %231, align 4
  %233 = load float, float* %23, align 4
  %234 = load float, float* %24, align 4
  %235 = call float @MIX(float %232, float %233, float %234)
  %236 = load float*, float** %20, align 8
  store float %235, float* %236, align 4
  %237 = load float*, float** %16, align 8
  %238 = load float, float* %237, align 4
  %239 = load float, float* %23, align 4
  %240 = load float, float* %24, align 4
  %241 = call float @MIX(float %238, float %239, float %240)
  %242 = load float*, float** %19, align 8
  store float %241, float* %242, align 4
  br label %243

243:                                              ; preds = %188, %7
  %244 = load float*, float** %18, align 8
  %245 = load float, float* %244, align 4
  %246 = load float*, float** %20, align 8
  %247 = load float, float* %246, align 4
  %248 = load float*, float** %19, align 8
  %249 = load float, float* %248, align 4
  %250 = call float @FFMAX3(float %245, float %247, float %249)
  %251 = call float @FFMAX(float %250, i32 0)
  store float %251, float* %21, align 4
  %252 = load float, float* %21, align 4
  store float %252, float* %22, align 4
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  switch i32 %255, label %256 [
    i32 129, label %257
    i32 131, label %258
    i32 133, label %268
    i32 134, label %296
    i32 132, label %303
    i32 128, label %310
    i32 130, label %329
  ]

256:                                              ; preds = %243
  br label %257

257:                                              ; preds = %243, %256
  br label %336

258:                                              ; preds = %243
  %259 = load float, float* %21, align 4
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 2
  %262 = load float, float* %261, align 4
  %263 = fmul float %259, %262
  %264 = fpext float %263 to double
  %265 = load double, double* %14, align 8
  %266 = fdiv double %264, %265
  %267 = fptrunc double %266 to float
  store float %267, float* %21, align 4
  br label %336

268:                                              ; preds = %243
  %269 = load float, float* %21, align 4
  %270 = fcmp ogt float %269, 0x3FA99999A0000000
  br i1 %270, label %271, label %282

271:                                              ; preds = %268
  %272 = load float, float* %21, align 4
  %273 = fpext float %272 to double
  %274 = load double, double* %14, align 8
  %275 = fdiv double %273, %274
  %276 = fptrunc double %275 to float
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 2
  %279 = load float, float* %278, align 4
  %280 = fdiv float 1.000000e+00, %279
  %281 = call float @pow(float %276, float %280)
  br label %294

282:                                              ; preds = %268
  %283 = load float, float* %21, align 4
  %284 = load double, double* %14, align 8
  %285 = fdiv double 0x3FA99999A0000000, %284
  %286 = fptrunc double %285 to float
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load float, float* %288, align 4
  %290 = fdiv float 1.000000e+00, %289
  %291 = call float @pow(float %286, float %290)
  %292 = fmul float %283, %291
  %293 = fdiv float %292, 0x3FA99999A0000000
  br label %294

294:                                              ; preds = %282, %271
  %295 = phi float [ %281, %271 ], [ %293, %282 ]
  store float %295, float* %21, align 4
  br label %336

296:                                              ; preds = %243
  %297 = load float, float* %21, align 4
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 2
  %300 = load float, float* %299, align 4
  %301 = fmul float %297, %300
  %302 = call float @av_clipf(float %301, i32 0, float 1.000000e+00)
  store float %302, float* %21, align 4
  br label %336

303:                                              ; preds = %243
  %304 = load float, float* %21, align 4
  %305 = fpext float %304 to double
  %306 = call float @hable(double %305)
  %307 = load double, double* %14, align 8
  %308 = call float @hable(double %307)
  %309 = fdiv float %306, %308
  store float %309, float* %21, align 4
  br label %336

310:                                              ; preds = %243
  %311 = load float, float* %21, align 4
  %312 = load float, float* %21, align 4
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 2
  %315 = load float, float* %314, align 4
  %316 = fadd float %312, %315
  %317 = fdiv float %311, %316
  %318 = fpext float %317 to double
  %319 = load double, double* %14, align 8
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 2
  %322 = load float, float* %321, align 4
  %323 = fpext float %322 to double
  %324 = fadd double %319, %323
  %325 = fmul double %318, %324
  %326 = load double, double* %14, align 8
  %327 = fdiv double %325, %326
  %328 = fptrunc double %327 to float
  store float %328, float* %21, align 4
  br label %336

329:                                              ; preds = %243
  %330 = load float, float* %21, align 4
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 2
  %333 = load float, float* %332, align 4
  %334 = load double, double* %14, align 8
  %335 = call float @mobius(float %330, float %333, double %334)
  store float %335, float* %21, align 4
  br label %336

336:                                              ; preds = %329, %310, %303, %296, %294, %258, %257
  %337 = load float, float* %21, align 4
  %338 = load float, float* %22, align 4
  %339 = fdiv float %337, %338
  %340 = load float*, float** %18, align 8
  %341 = load float, float* %340, align 4
  %342 = fmul float %341, %339
  store float %342, float* %340, align 4
  %343 = load float, float* %21, align 4
  %344 = load float, float* %22, align 4
  %345 = fdiv float %343, %344
  %346 = load float*, float** %20, align 8
  %347 = load float, float* %346, align 4
  %348 = fmul float %347, %345
  store float %348, float* %346, align 4
  %349 = load float, float* %21, align 4
  %350 = load float, float* %22, align 4
  %351 = fdiv float %349, %350
  %352 = load float*, float** %19, align 8
  %353 = load float, float* %352, align 4
  %354 = fmul float %353, %351
  store float %354, float* %352, align 4
  ret void
}

declare dso_local float @FFMAX(float, i32) #1

declare dso_local float @MIX(float, float, float) #1

declare dso_local float @FFMAX3(float, float, float) #1

declare dso_local float @pow(float, float) #1

declare dso_local float @av_clipf(float, i32, float) #1

declare dso_local float @hable(double) #1

declare dso_local float @mobius(float, float, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
