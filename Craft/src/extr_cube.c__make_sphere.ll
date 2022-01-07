; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_cube.c__make_sphere.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_cube.c__make_sphere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_make_sphere(float* %0, float %1, i32 %2, float* %3, float* %4, float* %5, float* %6, float* %7, float* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x float], align 4
  %26 = alloca [2 x float], align 4
  %27 = alloca [2 x float], align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store float* %0, float** %11, align 8
  store float %1, float* %12, align 4
  store i32 %2, i32* %13, align 4
  store float* %3, float** %14, align 8
  store float* %4, float** %15, align 8
  store float* %5, float** %16, align 8
  store float* %6, float** %17, align 8
  store float* %7, float** %18, align 8
  store float* %8, float** %19, align 8
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %172

32:                                               ; preds = %9
  %33 = load float*, float** %11, align 8
  store float* %33, float** %20, align 8
  %34 = load float*, float** %14, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = load float, float* %12, align 4
  %38 = fmul float %36, %37
  %39 = load float*, float** %20, align 8
  %40 = getelementptr inbounds float, float* %39, i32 1
  store float* %40, float** %20, align 8
  store float %38, float* %39, align 4
  %41 = load float*, float** %14, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  %43 = load float, float* %42, align 4
  %44 = load float, float* %12, align 4
  %45 = fmul float %43, %44
  %46 = load float*, float** %20, align 8
  %47 = getelementptr inbounds float, float* %46, i32 1
  store float* %47, float** %20, align 8
  store float %45, float* %46, align 4
  %48 = load float*, float** %14, align 8
  %49 = getelementptr inbounds float, float* %48, i64 2
  %50 = load float, float* %49, align 4
  %51 = load float, float* %12, align 4
  %52 = fmul float %50, %51
  %53 = load float*, float** %20, align 8
  %54 = getelementptr inbounds float, float* %53, i32 1
  store float* %54, float** %20, align 8
  store float %52, float* %53, align 4
  %55 = load float*, float** %14, align 8
  %56 = getelementptr inbounds float, float* %55, i64 0
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %20, align 8
  %59 = getelementptr inbounds float, float* %58, i32 1
  store float* %59, float** %20, align 8
  store float %57, float* %58, align 4
  %60 = load float*, float** %14, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = load float*, float** %20, align 8
  %64 = getelementptr inbounds float, float* %63, i32 1
  store float* %64, float** %20, align 8
  store float %62, float* %63, align 4
  %65 = load float*, float** %14, align 8
  %66 = getelementptr inbounds float, float* %65, i64 2
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %20, align 8
  %69 = getelementptr inbounds float, float* %68, i32 1
  store float* %69, float** %20, align 8
  store float %67, float* %68, align 4
  %70 = load float*, float** %17, align 8
  %71 = getelementptr inbounds float, float* %70, i64 0
  %72 = load float, float* %71, align 4
  %73 = load float*, float** %20, align 8
  %74 = getelementptr inbounds float, float* %73, i32 1
  store float* %74, float** %20, align 8
  store float %72, float* %73, align 4
  %75 = load float*, float** %17, align 8
  %76 = getelementptr inbounds float, float* %75, i64 1
  %77 = load float, float* %76, align 4
  %78 = load float*, float** %20, align 8
  %79 = getelementptr inbounds float, float* %78, i32 1
  store float* %79, float** %20, align 8
  store float %77, float* %78, align 4
  %80 = load float*, float** %15, align 8
  %81 = getelementptr inbounds float, float* %80, i64 0
  %82 = load float, float* %81, align 4
  %83 = load float, float* %12, align 4
  %84 = fmul float %82, %83
  %85 = load float*, float** %20, align 8
  %86 = getelementptr inbounds float, float* %85, i32 1
  store float* %86, float** %20, align 8
  store float %84, float* %85, align 4
  %87 = load float*, float** %15, align 8
  %88 = getelementptr inbounds float, float* %87, i64 1
  %89 = load float, float* %88, align 4
  %90 = load float, float* %12, align 4
  %91 = fmul float %89, %90
  %92 = load float*, float** %20, align 8
  %93 = getelementptr inbounds float, float* %92, i32 1
  store float* %93, float** %20, align 8
  store float %91, float* %92, align 4
  %94 = load float*, float** %15, align 8
  %95 = getelementptr inbounds float, float* %94, i64 2
  %96 = load float, float* %95, align 4
  %97 = load float, float* %12, align 4
  %98 = fmul float %96, %97
  %99 = load float*, float** %20, align 8
  %100 = getelementptr inbounds float, float* %99, i32 1
  store float* %100, float** %20, align 8
  store float %98, float* %99, align 4
  %101 = load float*, float** %15, align 8
  %102 = getelementptr inbounds float, float* %101, i64 0
  %103 = load float, float* %102, align 4
  %104 = load float*, float** %20, align 8
  %105 = getelementptr inbounds float, float* %104, i32 1
  store float* %105, float** %20, align 8
  store float %103, float* %104, align 4
  %106 = load float*, float** %15, align 8
  %107 = getelementptr inbounds float, float* %106, i64 1
  %108 = load float, float* %107, align 4
  %109 = load float*, float** %20, align 8
  %110 = getelementptr inbounds float, float* %109, i32 1
  store float* %110, float** %20, align 8
  store float %108, float* %109, align 4
  %111 = load float*, float** %15, align 8
  %112 = getelementptr inbounds float, float* %111, i64 2
  %113 = load float, float* %112, align 4
  %114 = load float*, float** %20, align 8
  %115 = getelementptr inbounds float, float* %114, i32 1
  store float* %115, float** %20, align 8
  store float %113, float* %114, align 4
  %116 = load float*, float** %18, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %20, align 8
  %120 = getelementptr inbounds float, float* %119, i32 1
  store float* %120, float** %20, align 8
  store float %118, float* %119, align 4
  %121 = load float*, float** %18, align 8
  %122 = getelementptr inbounds float, float* %121, i64 1
  %123 = load float, float* %122, align 4
  %124 = load float*, float** %20, align 8
  %125 = getelementptr inbounds float, float* %124, i32 1
  store float* %125, float** %20, align 8
  store float %123, float* %124, align 4
  %126 = load float*, float** %16, align 8
  %127 = getelementptr inbounds float, float* %126, i64 0
  %128 = load float, float* %127, align 4
  %129 = load float, float* %12, align 4
  %130 = fmul float %128, %129
  %131 = load float*, float** %20, align 8
  %132 = getelementptr inbounds float, float* %131, i32 1
  store float* %132, float** %20, align 8
  store float %130, float* %131, align 4
  %133 = load float*, float** %16, align 8
  %134 = getelementptr inbounds float, float* %133, i64 1
  %135 = load float, float* %134, align 4
  %136 = load float, float* %12, align 4
  %137 = fmul float %135, %136
  %138 = load float*, float** %20, align 8
  %139 = getelementptr inbounds float, float* %138, i32 1
  store float* %139, float** %20, align 8
  store float %137, float* %138, align 4
  %140 = load float*, float** %16, align 8
  %141 = getelementptr inbounds float, float* %140, i64 2
  %142 = load float, float* %141, align 4
  %143 = load float, float* %12, align 4
  %144 = fmul float %142, %143
  %145 = load float*, float** %20, align 8
  %146 = getelementptr inbounds float, float* %145, i32 1
  store float* %146, float** %20, align 8
  store float %144, float* %145, align 4
  %147 = load float*, float** %16, align 8
  %148 = getelementptr inbounds float, float* %147, i64 0
  %149 = load float, float* %148, align 4
  %150 = load float*, float** %20, align 8
  %151 = getelementptr inbounds float, float* %150, i32 1
  store float* %151, float** %20, align 8
  store float %149, float* %150, align 4
  %152 = load float*, float** %16, align 8
  %153 = getelementptr inbounds float, float* %152, i64 1
  %154 = load float, float* %153, align 4
  %155 = load float*, float** %20, align 8
  %156 = getelementptr inbounds float, float* %155, i32 1
  store float* %156, float** %20, align 8
  store float %154, float* %155, align 4
  %157 = load float*, float** %16, align 8
  %158 = getelementptr inbounds float, float* %157, i64 2
  %159 = load float, float* %158, align 4
  %160 = load float*, float** %20, align 8
  %161 = getelementptr inbounds float, float* %160, i32 1
  store float* %161, float** %20, align 8
  store float %159, float* %160, align 4
  %162 = load float*, float** %19, align 8
  %163 = getelementptr inbounds float, float* %162, i64 0
  %164 = load float, float* %163, align 4
  %165 = load float*, float** %20, align 8
  %166 = getelementptr inbounds float, float* %165, i32 1
  store float* %166, float** %20, align 8
  store float %164, float* %165, align 4
  %167 = load float*, float** %19, align 8
  %168 = getelementptr inbounds float, float* %167, i64 1
  %169 = load float, float* %168, align 4
  %170 = load float*, float** %20, align 8
  %171 = getelementptr inbounds float, float* %170, i32 1
  store float* %171, float** %20, align 8
  store float %169, float* %170, align 4
  store i32 1, i32* %10, align 4
  br label %351

172:                                              ; preds = %9
  store i32 0, i32* %24, align 4
  br label %173

173:                                              ; preds = %222, %172
  %174 = load i32, i32* %24, align 4
  %175 = icmp slt i32 %174, 3
  br i1 %175, label %176, label %225

176:                                              ; preds = %173
  %177 = load float*, float** %14, align 8
  %178 = load i32, i32* %24, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = load float*, float** %15, align 8
  %183 = load i32, i32* %24, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fadd float %181, %186
  %188 = fdiv float %187, 2.000000e+00
  %189 = load i32, i32* %24, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 %190
  store float %188, float* %191, align 4
  %192 = load float*, float** %14, align 8
  %193 = load i32, i32* %24, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %192, i64 %194
  %196 = load float, float* %195, align 4
  %197 = load float*, float** %16, align 8
  %198 = load i32, i32* %24, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %197, i64 %199
  %201 = load float, float* %200, align 4
  %202 = fadd float %196, %201
  %203 = fdiv float %202, 2.000000e+00
  %204 = load i32, i32* %24, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 %205
  store float %203, float* %206, align 4
  %207 = load float*, float** %15, align 8
  %208 = load i32, i32* %24, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  %211 = load float, float* %210, align 4
  %212 = load float*, float** %16, align 8
  %213 = load i32, i32* %24, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fadd float %211, %216
  %218 = fdiv float %217, 2.000000e+00
  %219 = load i32, i32* %24, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 %220
  store float %218, float* %221, align 4
  br label %222

222:                                              ; preds = %176
  %223 = load i32, i32* %24, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %24, align 4
  br label %173

225:                                              ; preds = %173
  %226 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %227 = getelementptr inbounds float, float* %226, i64 0
  %228 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %229 = getelementptr inbounds float, float* %228, i64 1
  %230 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %231 = getelementptr inbounds float, float* %230, i64 2
  %232 = call i32 @normalize(float* %227, float* %229, float* %231)
  %233 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %234 = getelementptr inbounds float, float* %233, i64 0
  %235 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %236 = getelementptr inbounds float, float* %235, i64 1
  %237 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %238 = getelementptr inbounds float, float* %237, i64 2
  %239 = call i32 @normalize(float* %234, float* %236, float* %238)
  %240 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 0
  %241 = getelementptr inbounds float, float* %240, i64 0
  %242 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 0
  %243 = getelementptr inbounds float, float* %242, i64 1
  %244 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 0
  %245 = getelementptr inbounds float, float* %244, i64 2
  %246 = call i32 @normalize(float* %241, float* %243, float* %245)
  %247 = getelementptr inbounds [2 x float], [2 x float]* %25, i64 0, i64 0
  store float 0.000000e+00, float* %247, align 4
  %248 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 1
  %249 = load float, float* %248, align 4
  %250 = call i32 @acosf(float %249)
  %251 = load i32, i32* @PI, align 4
  %252 = sdiv i32 %250, %251
  %253 = sub nsw i32 1, %252
  %254 = sitofp i32 %253 to float
  %255 = getelementptr inbounds [2 x float], [2 x float]* %25, i64 0, i64 1
  store float %254, float* %255, align 4
  %256 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 0
  store float 0.000000e+00, float* %256, align 4
  %257 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 1
  %258 = load float, float* %257, align 4
  %259 = call i32 @acosf(float %258)
  %260 = load i32, i32* @PI, align 4
  %261 = sdiv i32 %259, %260
  %262 = sub nsw i32 1, %261
  %263 = sitofp i32 %262 to float
  %264 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 1
  store float %263, float* %264, align 4
  %265 = getelementptr inbounds [2 x float], [2 x float]* %27, i64 0, i64 0
  store float 0.000000e+00, float* %265, align 4
  %266 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 1
  %267 = load float, float* %266, align 4
  %268 = call i32 @acosf(float %267)
  %269 = load i32, i32* @PI, align 4
  %270 = sdiv i32 %268, %269
  %271 = sub nsw i32 1, %270
  %272 = sitofp i32 %271 to float
  %273 = getelementptr inbounds [2 x float], [2 x float]* %27, i64 0, i64 1
  store float %272, float* %273, align 4
  store i32 0, i32* %28, align 4
  %274 = load float*, float** %11, align 8
  %275 = load float, float* %12, align 4
  %276 = load i32, i32* %13, align 4
  %277 = sub nsw i32 %276, 1
  %278 = load float*, float** %14, align 8
  %279 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %280 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %281 = load float*, float** %17, align 8
  %282 = getelementptr inbounds [2 x float], [2 x float]* %25, i64 0, i64 0
  %283 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 0
  %284 = call i32 @_make_sphere(float* %274, float %275, i32 %277, float* %278, float* %279, float* %280, float* %281, float* %282, float* %283)
  store i32 %284, i32* %29, align 4
  %285 = load i32, i32* %29, align 4
  %286 = load i32, i32* %28, align 4
  %287 = add nsw i32 %286, %285
  store i32 %287, i32* %28, align 4
  %288 = load i32, i32* %29, align 4
  %289 = mul nsw i32 %288, 24
  %290 = load float*, float** %11, align 8
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds float, float* %290, i64 %291
  store float* %292, float** %11, align 8
  %293 = load float*, float** %11, align 8
  %294 = load float, float* %12, align 4
  %295 = load i32, i32* %13, align 4
  %296 = sub nsw i32 %295, 1
  %297 = load float*, float** %15, align 8
  %298 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 0
  %299 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %300 = load float*, float** %18, align 8
  %301 = getelementptr inbounds [2 x float], [2 x float]* %27, i64 0, i64 0
  %302 = getelementptr inbounds [2 x float], [2 x float]* %25, i64 0, i64 0
  %303 = call i32 @_make_sphere(float* %293, float %294, i32 %296, float* %297, float* %298, float* %299, float* %300, float* %301, float* %302)
  store i32 %303, i32* %29, align 4
  %304 = load i32, i32* %29, align 4
  %305 = load i32, i32* %28, align 4
  %306 = add nsw i32 %305, %304
  store i32 %306, i32* %28, align 4
  %307 = load i32, i32* %29, align 4
  %308 = mul nsw i32 %307, 24
  %309 = load float*, float** %11, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds float, float* %309, i64 %310
  store float* %311, float** %11, align 8
  %312 = load float*, float** %11, align 8
  %313 = load float, float* %12, align 4
  %314 = load i32, i32* %13, align 4
  %315 = sub nsw i32 %314, 1
  %316 = load float*, float** %16, align 8
  %317 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %318 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 0
  %319 = load float*, float** %19, align 8
  %320 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 0
  %321 = getelementptr inbounds [2 x float], [2 x float]* %27, i64 0, i64 0
  %322 = call i32 @_make_sphere(float* %312, float %313, i32 %315, float* %316, float* %317, float* %318, float* %319, float* %320, float* %321)
  store i32 %322, i32* %29, align 4
  %323 = load i32, i32* %29, align 4
  %324 = load i32, i32* %28, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %28, align 4
  %326 = load i32, i32* %29, align 4
  %327 = mul nsw i32 %326, 24
  %328 = load float*, float** %11, align 8
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds float, float* %328, i64 %329
  store float* %330, float** %11, align 8
  %331 = load float*, float** %11, align 8
  %332 = load float, float* %12, align 4
  %333 = load i32, i32* %13, align 4
  %334 = sub nsw i32 %333, 1
  %335 = getelementptr inbounds [3 x float], [3 x float]* %21, i64 0, i64 0
  %336 = getelementptr inbounds [3 x float], [3 x float]* %23, i64 0, i64 0
  %337 = getelementptr inbounds [3 x float], [3 x float]* %22, i64 0, i64 0
  %338 = getelementptr inbounds [2 x float], [2 x float]* %25, i64 0, i64 0
  %339 = getelementptr inbounds [2 x float], [2 x float]* %27, i64 0, i64 0
  %340 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0, i64 0
  %341 = call i32 @_make_sphere(float* %331, float %332, i32 %334, float* %335, float* %336, float* %337, float* %338, float* %339, float* %340)
  store i32 %341, i32* %29, align 4
  %342 = load i32, i32* %29, align 4
  %343 = load i32, i32* %28, align 4
  %344 = add nsw i32 %343, %342
  store i32 %344, i32* %28, align 4
  %345 = load i32, i32* %29, align 4
  %346 = mul nsw i32 %345, 24
  %347 = load float*, float** %11, align 8
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds float, float* %347, i64 %348
  store float* %349, float** %11, align 8
  %350 = load i32, i32* %28, align 4
  store i32 %350, i32* %10, align 4
  br label %351

351:                                              ; preds = %225, %32
  %352 = load i32, i32* %10, align 4
  ret i32 %352
}

declare dso_local i32 @normalize(float*, float*, float*) #1

declare dso_local i32 @acosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
