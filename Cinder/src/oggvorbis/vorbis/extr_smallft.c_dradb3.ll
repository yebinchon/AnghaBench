; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_dradb3.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_smallft.c_dradb3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dradb3.taur = internal global float -5.000000e-01, align 4
@dradb3.taui = internal global float 0x3FEBB67AE0000000, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float*, float*, float*, float*)* @dradb3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dradb3(i32 %0, i32 %1, float* %2, float* %3, float* %4, float* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %39 = load i32, i32* %15, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 1
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 1
  %46 = add nsw i32 %43, %45
  store i32 %46, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %125, %6
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %128

51:                                               ; preds = %47
  %52 = load float*, float** %9, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %52, i64 %55
  %57 = load float, float* %56, align 4
  %58 = load float*, float** %9, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %58, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fadd float %57, %63
  store float %64, float* %35, align 4
  %65 = load float*, float** %9, align 8
  %66 = load i32, i32* %20, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, float* %65, i64 %67
  %69 = load float, float* %68, align 4
  %70 = load float, float* @dradb3.taur, align 4
  %71 = load float, float* %35, align 4
  %72 = fmul float %70, %71
  %73 = fadd float %69, %72
  store float %73, float* %30, align 4
  %74 = load float*, float** %9, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load float, float* %35, align 4
  %80 = fadd float %78, %79
  %81 = load float*, float** %10, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float %80, float* %84, align 4
  %85 = load float, float* @dradb3.taui, align 4
  %86 = load float*, float** %9, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load float, float* %89, align 4
  %91 = load float*, float** %9, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load float, float* %94, align 4
  %96 = fadd float %90, %95
  %97 = fmul float %85, %96
  store float %97, float* %27, align 4
  %98 = load float, float* %30, align 4
  %99 = load float, float* %27, align 4
  %100 = fsub float %98, %99
  %101 = load float*, float** %10, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %101, i64 %105
  store float %100, float* %106, align 4
  %107 = load float, float* %30, align 4
  %108 = load float, float* %27, align 4
  %109 = fadd float %107, %108
  %110 = load float*, float** %10, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %110, i64 %114
  store float %109, float* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %20, align 4
  br label %125

125:                                              ; preds = %51
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %47

128:                                              ; preds = %47
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %373

132:                                              ; preds = %128
  store i32 0, i32* %16, align 4
  %133 = load i32, i32* %7, align 4
  %134 = shl i32 %133, 1
  store i32 %134, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %135

135:                                              ; preds = %370, %132
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %373

139:                                              ; preds = %135
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %16, align 4
  %142 = shl i32 %141, 1
  %143 = add nsw i32 %140, %142
  store i32 %143, i32* %22, align 4
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %144, %145
  store i32 %146, i32* %20, align 4
  store i32 %146, i32* %21, align 4
  %147 = load i32, i32* %16, align 4
  store i32 %147, i32* %23, align 4
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %148, %149
  store i32 %150, i32* %24, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %150, %151
  store i32 %152, i32* %25, align 4
  store i32 2, i32* %13, align 4
  br label %153

153:                                              ; preds = %363, %139
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %366

157:                                              ; preds = %153
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %158, 2
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %21, align 4
  %161 = sub nsw i32 %160, 2
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* %22, align 4
  %163 = add nsw i32 %162, 2
  store i32 %163, i32* %22, align 4
  %164 = load i32, i32* %23, align 4
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %23, align 4
  %166 = load i32, i32* %24, align 4
  %167 = add nsw i32 %166, 2
  store i32 %167, i32* %24, align 4
  %168 = load i32, i32* %25, align 4
  %169 = add nsw i32 %168, 2
  store i32 %169, i32* %25, align 4
  %170 = load float*, float** %9, align 8
  %171 = load i32, i32* %20, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %170, i64 %173
  %175 = load float, float* %174, align 4
  %176 = load float*, float** %9, align 8
  %177 = load i32, i32* %21, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %176, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fadd float %175, %181
  store float %182, float* %35, align 4
  %183 = load float*, float** %9, align 8
  %184 = load i32, i32* %22, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %183, i64 %186
  %188 = load float, float* %187, align 4
  %189 = load float, float* @dradb3.taur, align 4
  %190 = load float, float* %35, align 4
  %191 = fmul float %189, %190
  %192 = fadd float %188, %191
  store float %192, float* %30, align 4
  %193 = load float*, float** %9, align 8
  %194 = load i32, i32* %22, align 4
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %193, i64 %196
  %198 = load float, float* %197, align 4
  %199 = load float, float* %35, align 4
  %200 = fadd float %198, %199
  %201 = load float*, float** %10, align 8
  %202 = load i32, i32* %23, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float, float* %201, i64 %204
  store float %200, float* %205, align 4
  %206 = load float*, float** %9, align 8
  %207 = load i32, i32* %20, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = load float*, float** %9, align 8
  %212 = load i32, i32* %21, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %211, i64 %213
  %215 = load float, float* %214, align 4
  %216 = fsub float %210, %215
  store float %216, float* %34, align 4
  %217 = load float*, float** %9, align 8
  %218 = load i32, i32* %22, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  %221 = load float, float* %220, align 4
  %222 = load float, float* @dradb3.taur, align 4
  %223 = load float, float* %34, align 4
  %224 = fmul float %222, %223
  %225 = fadd float %221, %224
  store float %225, float* %26, align 4
  %226 = load float*, float** %9, align 8
  %227 = load i32, i32* %22, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  %230 = load float, float* %229, align 4
  %231 = load float, float* %34, align 4
  %232 = fadd float %230, %231
  %233 = load float*, float** %10, align 8
  %234 = load i32, i32* %23, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %233, i64 %235
  store float %232, float* %236, align 4
  %237 = load float, float* @dradb3.taui, align 4
  %238 = load float*, float** %9, align 8
  %239 = load i32, i32* %20, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %238, i64 %241
  %243 = load float, float* %242, align 4
  %244 = load float*, float** %9, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %244, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fsub float %243, %249
  %251 = fmul float %237, %250
  store float %251, float* %31, align 4
  %252 = load float, float* @dradb3.taui, align 4
  %253 = load float*, float** %9, align 8
  %254 = load i32, i32* %20, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %253, i64 %255
  %257 = load float, float* %256, align 4
  %258 = load float*, float** %9, align 8
  %259 = load i32, i32* %21, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %258, i64 %260
  %262 = load float, float* %261, align 4
  %263 = fadd float %257, %262
  %264 = fmul float %252, %263
  store float %264, float* %27, align 4
  %265 = load float, float* %30, align 4
  %266 = load float, float* %27, align 4
  %267 = fsub float %265, %266
  store float %267, float* %32, align 4
  %268 = load float, float* %30, align 4
  %269 = load float, float* %27, align 4
  %270 = fadd float %268, %269
  store float %270, float* %33, align 4
  %271 = load float, float* %26, align 4
  %272 = load float, float* %31, align 4
  %273 = fadd float %271, %272
  store float %273, float* %28, align 4
  %274 = load float, float* %26, align 4
  %275 = load float, float* %31, align 4
  %276 = fsub float %274, %275
  store float %276, float* %29, align 4
  %277 = load float*, float** %11, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sub nsw i32 %278, 2
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds float, float* %277, i64 %280
  %282 = load float, float* %281, align 4
  %283 = load float, float* %32, align 4
  %284 = fmul float %282, %283
  %285 = load float*, float** %11, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %285, i64 %288
  %290 = load float, float* %289, align 4
  %291 = load float, float* %28, align 4
  %292 = fmul float %290, %291
  %293 = fsub float %284, %292
  %294 = load float*, float** %10, align 8
  %295 = load i32, i32* %24, align 4
  %296 = sub nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %294, i64 %297
  store float %293, float* %298, align 4
  %299 = load float*, float** %11, align 8
  %300 = load i32, i32* %13, align 4
  %301 = sub nsw i32 %300, 2
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, float* %299, i64 %302
  %304 = load float, float* %303, align 4
  %305 = load float, float* %28, align 4
  %306 = fmul float %304, %305
  %307 = load float*, float** %11, align 8
  %308 = load i32, i32* %13, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds float, float* %307, i64 %310
  %312 = load float, float* %311, align 4
  %313 = load float, float* %32, align 4
  %314 = fmul float %312, %313
  %315 = fadd float %306, %314
  %316 = load float*, float** %10, align 8
  %317 = load i32, i32* %24, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds float, float* %316, i64 %318
  store float %315, float* %319, align 4
  %320 = load float*, float** %12, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sub nsw i32 %321, 2
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %320, i64 %323
  %325 = load float, float* %324, align 4
  %326 = load float, float* %33, align 4
  %327 = fmul float %325, %326
  %328 = load float*, float** %12, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %328, i64 %331
  %333 = load float, float* %332, align 4
  %334 = load float, float* %29, align 4
  %335 = fmul float %333, %334
  %336 = fsub float %327, %335
  %337 = load float*, float** %10, align 8
  %338 = load i32, i32* %25, align 4
  %339 = sub nsw i32 %338, 1
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds float, float* %337, i64 %340
  store float %336, float* %341, align 4
  %342 = load float*, float** %12, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sub nsw i32 %343, 2
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %342, i64 %345
  %347 = load float, float* %346, align 4
  %348 = load float, float* %29, align 4
  %349 = fmul float %347, %348
  %350 = load float*, float** %12, align 8
  %351 = load i32, i32* %13, align 4
  %352 = sub nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %350, i64 %353
  %355 = load float, float* %354, align 4
  %356 = load float, float* %33, align 4
  %357 = fmul float %355, %356
  %358 = fadd float %349, %357
  %359 = load float*, float** %10, align 8
  %360 = load i32, i32* %25, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds float, float* %359, i64 %361
  store float %358, float* %362, align 4
  br label %363

363:                                              ; preds = %157
  %364 = load i32, i32* %13, align 4
  %365 = add nsw i32 %364, 2
  store i32 %365, i32* %13, align 4
  br label %153

366:                                              ; preds = %153
  %367 = load i32, i32* %7, align 4
  %368 = load i32, i32* %16, align 4
  %369 = add nsw i32 %368, %367
  store i32 %369, i32* %16, align 4
  br label %370

370:                                              ; preds = %366
  %371 = load i32, i32* %14, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %14, align 4
  br label %135

373:                                              ; preds = %131, %135
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
