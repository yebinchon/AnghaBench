; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_dradb4.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_dradb4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dradb4.sqrt2 = internal global float 0x3FF6A09E60000000, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float*, float*, float*, float*, float*)* @dradb4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dradb4(i32 %0, i32 %1, float* %2, float* %3, float* %4, float* %5, float* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store float* %2, float** %10, align 8
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 2
  store i32 %44, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %23, align 4
  store i32 0, i32* %16, align 4
  br label %47

47:                                               ; preds = %146, %7
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %149

51:                                               ; preds = %47
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %23, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %18, align 4
  store i32 %55, i32* %22, align 4
  %56 = load float*, float** %10, align 8
  %57 = load i32, i32* %21, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %56, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float*, float** %10, align 8
  %63 = load i32, i32* %21, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %62, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fadd float %61, %67
  store float %68, float* %38, align 4
  %69 = load float*, float** %10, align 8
  %70 = load i32, i32* %21, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = load float*, float** %10, align 8
  %75 = load i32, i32* %21, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fadd float %73, %78
  store float %79, float* %39, align 4
  %80 = load float*, float** %10, align 8
  %81 = load i32, i32* %20, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = load float*, float** %10, align 8
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %21, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %21, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %85, i64 %90
  %92 = load float, float* %91, align 4
  %93 = fsub float %84, %92
  store float %93, float* %36, align 4
  %94 = load float*, float** %10, align 8
  %95 = load i32, i32* %20, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load float, float* %97, align 4
  %99 = load float*, float** %10, align 8
  %100 = load i32, i32* %21, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %99, i64 %102
  %104 = load float, float* %103, align 4
  %105 = fadd float %98, %104
  store float %105, float* %37, align 4
  %106 = load float, float* %37, align 4
  %107 = load float, float* %38, align 4
  %108 = fadd float %106, %107
  %109 = load float*, float** %11, align 8
  %110 = load i32, i32* %22, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %109, i64 %111
  store float %108, float* %112, align 4
  %113 = load float, float* %36, align 4
  %114 = load float, float* %39, align 4
  %115 = fsub float %113, %114
  %116 = load float*, float** %11, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %22, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %22, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %116, i64 %120
  store float %115, float* %121, align 4
  %122 = load float, float* %37, align 4
  %123 = load float, float* %38, align 4
  %124 = fsub float %122, %123
  %125 = load float*, float** %11, align 8
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %125, i64 %129
  store float %124, float* %130, align 4
  %131 = load float, float* %36, align 4
  %132 = load float, float* %39, align 4
  %133 = fadd float %131, %132
  %134 = load float*, float** %11, align 8
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %22, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %22, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %134, i64 %138
  store float %133, float* %139, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %18, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %20, align 4
  br label %146

146:                                              ; preds = %51
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %16, align 4
  br label %47

149:                                              ; preds = %47
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 2
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %580

153:                                              ; preds = %149
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %465

157:                                              ; preds = %153
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %158

158:                                              ; preds = %456, %157
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %459

162:                                              ; preds = %158
  %163 = load i32, i32* %18, align 4
  %164 = shl i32 %163, 2
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* %23, align 4
  %166 = add nsw i32 %164, %165
  store i32 %166, i32* %20, align 4
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %23, align 4
  %168 = add nsw i32 %166, %167
  store i32 %168, i32* %22, align 4
  %169 = load i32, i32* %18, align 4
  store i32 %169, i32* %24, align 4
  store i32 2, i32* %15, align 4
  br label %170

170:                                              ; preds = %449, %162
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %452

174:                                              ; preds = %170
  %175 = load i32, i32* %19, align 4
  %176 = add nsw i32 %175, 2
  store i32 %176, i32* %19, align 4
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %177, 2
  store i32 %178, i32* %20, align 4
  %179 = load i32, i32* %21, align 4
  %180 = sub nsw i32 %179, 2
  store i32 %180, i32* %21, align 4
  %181 = load i32, i32* %22, align 4
  %182 = sub nsw i32 %181, 2
  store i32 %182, i32* %22, align 4
  %183 = load i32, i32* %24, align 4
  %184 = add nsw i32 %183, 2
  store i32 %184, i32* %24, align 4
  %185 = load float*, float** %10, align 8
  %186 = load i32, i32* %19, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %185, i64 %187
  %189 = load float, float* %188, align 4
  %190 = load float*, float** %10, align 8
  %191 = load i32, i32* %22, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %190, i64 %192
  %194 = load float, float* %193, align 4
  %195 = fadd float %189, %194
  store float %195, float* %32, align 4
  %196 = load float*, float** %10, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float*, float** %10, align 8
  %202 = load i32, i32* %22, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %201, i64 %203
  %205 = load float, float* %204, align 4
  %206 = fsub float %200, %205
  store float %206, float* %33, align 4
  %207 = load float*, float** %10, align 8
  %208 = load i32, i32* %20, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %207, i64 %209
  %211 = load float, float* %210, align 4
  %212 = load float*, float** %10, align 8
  %213 = load i32, i32* %21, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  %216 = load float, float* %215, align 4
  %217 = fsub float %211, %216
  store float %217, float* %34, align 4
  %218 = load float*, float** %10, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %218, i64 %220
  %222 = load float, float* %221, align 4
  %223 = load float*, float** %10, align 8
  %224 = load i32, i32* %21, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  %227 = load float, float* %226, align 4
  %228 = fadd float %222, %227
  store float %228, float* %39, align 4
  %229 = load float*, float** %10, align 8
  %230 = load i32, i32* %19, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %229, i64 %232
  %234 = load float, float* %233, align 4
  %235 = load float*, float** %10, align 8
  %236 = load i32, i32* %22, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %235, i64 %238
  %240 = load float, float* %239, align 4
  %241 = fsub float %234, %240
  store float %241, float* %36, align 4
  %242 = load float*, float** %10, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds float, float* %242, i64 %245
  %247 = load float, float* %246, align 4
  %248 = load float*, float** %10, align 8
  %249 = load i32, i32* %22, align 4
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %248, i64 %251
  %253 = load float, float* %252, align 4
  %254 = fadd float %247, %253
  store float %254, float* %37, align 4
  %255 = load float*, float** %10, align 8
  %256 = load i32, i32* %20, align 4
  %257 = sub nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds float, float* %255, i64 %258
  %260 = load float, float* %259, align 4
  %261 = load float*, float** %10, align 8
  %262 = load i32, i32* %21, align 4
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %261, i64 %264
  %266 = load float, float* %265, align 4
  %267 = fsub float %260, %266
  store float %267, float* %35, align 4
  %268 = load float*, float** %10, align 8
  %269 = load i32, i32* %20, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %268, i64 %271
  %273 = load float, float* %272, align 4
  %274 = load float*, float** %10, align 8
  %275 = load i32, i32* %21, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %274, i64 %277
  %279 = load float, float* %278, align 4
  %280 = fadd float %273, %279
  store float %280, float* %38, align 4
  %281 = load float, float* %37, align 4
  %282 = load float, float* %38, align 4
  %283 = fadd float %281, %282
  %284 = load float*, float** %11, align 8
  %285 = load i32, i32* %24, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %284, i64 %287
  store float %283, float* %288, align 4
  %289 = load float, float* %37, align 4
  %290 = load float, float* %38, align 4
  %291 = fsub float %289, %290
  store float %291, float* %30, align 4
  %292 = load float, float* %33, align 4
  %293 = load float, float* %34, align 4
  %294 = fadd float %292, %293
  %295 = load float*, float** %11, align 8
  %296 = load i32, i32* %24, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %295, i64 %297
  store float %294, float* %298, align 4
  %299 = load float, float* %33, align 4
  %300 = load float, float* %34, align 4
  %301 = fsub float %299, %300
  store float %301, float* %27, align 4
  %302 = load float, float* %36, align 4
  %303 = load float, float* %39, align 4
  %304 = fsub float %302, %303
  store float %304, float* %29, align 4
  %305 = load float, float* %36, align 4
  %306 = load float, float* %39, align 4
  %307 = fadd float %305, %306
  store float %307, float* %31, align 4
  %308 = load float, float* %32, align 4
  %309 = load float, float* %35, align 4
  %310 = fadd float %308, %309
  store float %310, float* %26, align 4
  %311 = load float, float* %32, align 4
  %312 = load float, float* %35, align 4
  %313 = fsub float %311, %312
  store float %313, float* %28, align 4
  %314 = load float*, float** %12, align 8
  %315 = load i32, i32* %15, align 4
  %316 = sub nsw i32 %315, 2
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds float, float* %314, i64 %317
  %319 = load float, float* %318, align 4
  %320 = load float, float* %29, align 4
  %321 = fmul float %319, %320
  %322 = load float*, float** %12, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sub nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds float, float* %322, i64 %325
  %327 = load float, float* %326, align 4
  %328 = load float, float* %26, align 4
  %329 = fmul float %327, %328
  %330 = fsub float %321, %329
  %331 = load float*, float** %11, align 8
  %332 = load i32, i32* %24, align 4
  %333 = load i32, i32* %17, align 4
  %334 = add nsw i32 %332, %333
  store i32 %334, i32* %25, align 4
  %335 = sub nsw i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %331, i64 %336
  store float %330, float* %337, align 4
  %338 = load float*, float** %12, align 8
  %339 = load i32, i32* %15, align 4
  %340 = sub nsw i32 %339, 2
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, float* %338, i64 %341
  %343 = load float, float* %342, align 4
  %344 = load float, float* %26, align 4
  %345 = fmul float %343, %344
  %346 = load float*, float** %12, align 8
  %347 = load i32, i32* %15, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %346, i64 %349
  %351 = load float, float* %350, align 4
  %352 = load float, float* %29, align 4
  %353 = fmul float %351, %352
  %354 = fadd float %345, %353
  %355 = load float*, float** %11, align 8
  %356 = load i32, i32* %25, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds float, float* %355, i64 %357
  store float %354, float* %358, align 4
  %359 = load float*, float** %13, align 8
  %360 = load i32, i32* %15, align 4
  %361 = sub nsw i32 %360, 2
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds float, float* %359, i64 %362
  %364 = load float, float* %363, align 4
  %365 = load float, float* %30, align 4
  %366 = fmul float %364, %365
  %367 = load float*, float** %13, align 8
  %368 = load i32, i32* %15, align 4
  %369 = sub nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %367, i64 %370
  %372 = load float, float* %371, align 4
  %373 = load float, float* %27, align 4
  %374 = fmul float %372, %373
  %375 = fsub float %366, %374
  %376 = load float*, float** %11, align 8
  %377 = load i32, i32* %17, align 4
  %378 = load i32, i32* %25, align 4
  %379 = add nsw i32 %378, %377
  store i32 %379, i32* %25, align 4
  %380 = sub nsw i32 %379, 1
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %376, i64 %381
  store float %375, float* %382, align 4
  %383 = load float*, float** %13, align 8
  %384 = load i32, i32* %15, align 4
  %385 = sub nsw i32 %384, 2
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds float, float* %383, i64 %386
  %388 = load float, float* %387, align 4
  %389 = load float, float* %27, align 4
  %390 = fmul float %388, %389
  %391 = load float*, float** %13, align 8
  %392 = load i32, i32* %15, align 4
  %393 = sub nsw i32 %392, 1
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds float, float* %391, i64 %394
  %396 = load float, float* %395, align 4
  %397 = load float, float* %30, align 4
  %398 = fmul float %396, %397
  %399 = fadd float %390, %398
  %400 = load float*, float** %11, align 8
  %401 = load i32, i32* %25, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, float* %400, i64 %402
  store float %399, float* %403, align 4
  %404 = load float*, float** %14, align 8
  %405 = load i32, i32* %15, align 4
  %406 = sub nsw i32 %405, 2
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds float, float* %404, i64 %407
  %409 = load float, float* %408, align 4
  %410 = load float, float* %31, align 4
  %411 = fmul float %409, %410
  %412 = load float*, float** %14, align 8
  %413 = load i32, i32* %15, align 4
  %414 = sub nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %412, i64 %415
  %417 = load float, float* %416, align 4
  %418 = load float, float* %28, align 4
  %419 = fmul float %417, %418
  %420 = fsub float %411, %419
  %421 = load float*, float** %11, align 8
  %422 = load i32, i32* %17, align 4
  %423 = load i32, i32* %25, align 4
  %424 = add nsw i32 %423, %422
  store i32 %424, i32* %25, align 4
  %425 = sub nsw i32 %424, 1
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds float, float* %421, i64 %426
  store float %420, float* %427, align 4
  %428 = load float*, float** %14, align 8
  %429 = load i32, i32* %15, align 4
  %430 = sub nsw i32 %429, 2
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds float, float* %428, i64 %431
  %433 = load float, float* %432, align 4
  %434 = load float, float* %28, align 4
  %435 = fmul float %433, %434
  %436 = load float*, float** %14, align 8
  %437 = load i32, i32* %15, align 4
  %438 = sub nsw i32 %437, 1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds float, float* %436, i64 %439
  %441 = load float, float* %440, align 4
  %442 = load float, float* %31, align 4
  %443 = fmul float %441, %442
  %444 = fadd float %435, %443
  %445 = load float*, float** %11, align 8
  %446 = load i32, i32* %25, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds float, float* %445, i64 %447
  store float %444, float* %448, align 4
  br label %449

449:                                              ; preds = %174
  %450 = load i32, i32* %15, align 4
  %451 = add nsw i32 %450, 2
  store i32 %451, i32* %15, align 4
  br label %170

452:                                              ; preds = %170
  %453 = load i32, i32* %8, align 4
  %454 = load i32, i32* %18, align 4
  %455 = add nsw i32 %454, %453
  store i32 %455, i32* %18, align 4
  br label %456

456:                                              ; preds = %452
  %457 = load i32, i32* %16, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %16, align 4
  br label %158

459:                                              ; preds = %158
  %460 = load i32, i32* %8, align 4
  %461 = srem i32 %460, 2
  %462 = icmp eq i32 %461, 1
  br i1 %462, label %463, label %464

463:                                              ; preds = %459
  br label %580

464:                                              ; preds = %459
  br label %465

465:                                              ; preds = %464, %156
  %466 = load i32, i32* %8, align 4
  store i32 %466, i32* %18, align 4
  %467 = load i32, i32* %8, align 4
  %468 = shl i32 %467, 2
  store i32 %468, i32* %19, align 4
  %469 = load i32, i32* %8, align 4
  %470 = sub nsw i32 %469, 1
  store i32 %470, i32* %20, align 4
  %471 = load i32, i32* %8, align 4
  %472 = load i32, i32* %8, align 4
  %473 = shl i32 %472, 1
  %474 = add nsw i32 %471, %473
  store i32 %474, i32* %21, align 4
  store i32 0, i32* %16, align 4
  br label %475

475:                                              ; preds = %577, %465
  %476 = load i32, i32* %16, align 4
  %477 = load i32, i32* %9, align 4
  %478 = icmp slt i32 %476, %477
  br i1 %478, label %479, label %580

479:                                              ; preds = %475
  %480 = load i32, i32* %20, align 4
  store i32 %480, i32* %22, align 4
  %481 = load float*, float** %10, align 8
  %482 = load i32, i32* %18, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds float, float* %481, i64 %483
  %485 = load float, float* %484, align 4
  %486 = load float*, float** %10, align 8
  %487 = load i32, i32* %21, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds float, float* %486, i64 %488
  %490 = load float, float* %489, align 4
  %491 = fadd float %485, %490
  store float %491, float* %32, align 4
  %492 = load float*, float** %10, align 8
  %493 = load i32, i32* %21, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds float, float* %492, i64 %494
  %496 = load float, float* %495, align 4
  %497 = load float*, float** %10, align 8
  %498 = load i32, i32* %18, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds float, float* %497, i64 %499
  %501 = load float, float* %500, align 4
  %502 = fsub float %496, %501
  store float %502, float* %33, align 4
  %503 = load float*, float** %10, align 8
  %504 = load i32, i32* %18, align 4
  %505 = sub nsw i32 %504, 1
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds float, float* %503, i64 %506
  %508 = load float, float* %507, align 4
  %509 = load float*, float** %10, align 8
  %510 = load i32, i32* %21, align 4
  %511 = sub nsw i32 %510, 1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds float, float* %509, i64 %512
  %514 = load float, float* %513, align 4
  %515 = fsub float %508, %514
  store float %515, float* %36, align 4
  %516 = load float*, float** %10, align 8
  %517 = load i32, i32* %18, align 4
  %518 = sub nsw i32 %517, 1
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds float, float* %516, i64 %519
  %521 = load float, float* %520, align 4
  %522 = load float*, float** %10, align 8
  %523 = load i32, i32* %21, align 4
  %524 = sub nsw i32 %523, 1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds float, float* %522, i64 %525
  %527 = load float, float* %526, align 4
  %528 = fadd float %521, %527
  store float %528, float* %37, align 4
  %529 = load float, float* %37, align 4
  %530 = load float, float* %37, align 4
  %531 = fadd float %529, %530
  %532 = load float*, float** %11, align 8
  %533 = load i32, i32* %22, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds float, float* %532, i64 %534
  store float %531, float* %535, align 4
  %536 = load float, float* @dradb4.sqrt2, align 4
  %537 = load float, float* %36, align 4
  %538 = load float, float* %32, align 4
  %539 = fsub float %537, %538
  %540 = fmul float %536, %539
  %541 = load float*, float** %11, align 8
  %542 = load i32, i32* %17, align 4
  %543 = load i32, i32* %22, align 4
  %544 = add nsw i32 %543, %542
  store i32 %544, i32* %22, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds float, float* %541, i64 %545
  store float %540, float* %546, align 4
  %547 = load float, float* %33, align 4
  %548 = load float, float* %33, align 4
  %549 = fadd float %547, %548
  %550 = load float*, float** %11, align 8
  %551 = load i32, i32* %17, align 4
  %552 = load i32, i32* %22, align 4
  %553 = add nsw i32 %552, %551
  store i32 %553, i32* %22, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds float, float* %550, i64 %554
  store float %549, float* %555, align 4
  %556 = load float, float* @dradb4.sqrt2, align 4
  %557 = fneg float %556
  %558 = load float, float* %36, align 4
  %559 = load float, float* %32, align 4
  %560 = fadd float %558, %559
  %561 = fmul float %557, %560
  %562 = load float*, float** %11, align 8
  %563 = load i32, i32* %17, align 4
  %564 = load i32, i32* %22, align 4
  %565 = add nsw i32 %564, %563
  store i32 %565, i32* %22, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds float, float* %562, i64 %566
  store float %561, float* %567, align 4
  %568 = load i32, i32* %8, align 4
  %569 = load i32, i32* %20, align 4
  %570 = add nsw i32 %569, %568
  store i32 %570, i32* %20, align 4
  %571 = load i32, i32* %19, align 4
  %572 = load i32, i32* %18, align 4
  %573 = add nsw i32 %572, %571
  store i32 %573, i32* %18, align 4
  %574 = load i32, i32* %19, align 4
  %575 = load i32, i32* %21, align 4
  %576 = add nsw i32 %575, %574
  store i32 %576, i32* %21, align 4
  br label %577

577:                                              ; preds = %479
  %578 = load i32, i32* %16, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %16, align 4
  br label %475

580:                                              ; preds = %152, %463, %475
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
