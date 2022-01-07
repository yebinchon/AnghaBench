; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_store_slice_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_store_slice_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dither = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32)* @store_slice_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_slice_c(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %382, %7
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %385

23:                                               ; preds = %19
  %24 = load i32**, i32*** @dither, align 8
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %17, align 8
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %370, %23
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %373

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %17, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %14, align 4
  %44 = ashr i32 %42, %43
  %45 = add nsw i32 %39, %44
  %46 = load i32, i32* %14, align 4
  %47 = sub nsw i32 6, %46
  %48 = ashr i32 %45, %47
  store i32 %48, i32* %18, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, 0
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 8, %52
  %54 = sub nsw i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %49, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 0
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* %18, align 4
  %63 = and i32 %62, 256
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %33
  %66 = load i32, i32* %18, align 4
  %67 = ashr i32 %66, 31
  %68 = xor i32 %67, -1
  store i32 %68, i32* %18, align 4
  br label %69

69:                                               ; preds = %65, %33
  %70 = load i32, i32* %18, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 0
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = ashr i32 %84, %85
  %87 = add nsw i32 %81, %86
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 6, %88
  %90 = ashr i32 %87, %89
  store i32 %90, i32* %18, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 8, %94
  %96 = sub nsw i32 %93, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %91, i64 %97
  store i32 0, i32* %98, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* %18, align 4
  %105 = and i32 %104, 256
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %69
  %108 = load i32, i32* %18, align 4
  %109 = ashr i32 %108, 31
  %110 = xor i32 %109, -1
  store i32 %110, i32* %18, align 4
  br label %111

111:                                              ; preds = %107, %69
  %112 = load i32, i32* %18, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %17, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %14, align 4
  %128 = ashr i32 %126, %127
  %129 = add nsw i32 %123, %128
  %130 = load i32, i32* %14, align 4
  %131 = sub nsw i32 6, %130
  %132 = ashr i32 %129, %131
  store i32 %132, i32* %18, align 4
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, 2
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 8, %136
  %138 = sub nsw i32 %135, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %133, i64 %139
  store i32 0, i32* %140, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 0, i32* %145, align 4
  %146 = load i32, i32* %18, align 4
  %147 = and i32 %146, 256
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %111
  %150 = load i32, i32* %18, align 4
  %151 = ashr i32 %150, 31
  %152 = xor i32 %151, -1
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %149, %111
  %154 = load i32, i32* %18, align 4
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %154, i32* %159, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 3
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %17, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %14, align 4
  %170 = ashr i32 %168, %169
  %171 = add nsw i32 %165, %170
  %172 = load i32, i32* %14, align 4
  %173 = sub nsw i32 6, %172
  %174 = ashr i32 %171, %173
  store i32 %174, i32* %18, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 3
  %178 = load i32, i32* %11, align 4
  %179 = mul nsw i32 8, %178
  %180 = sub nsw i32 %177, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %175, i64 %181
  store i32 0, i32* %182, align 4
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 3
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  store i32 0, i32* %187, align 4
  %188 = load i32, i32* %18, align 4
  %189 = and i32 %188, 256
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %153
  %192 = load i32, i32* %18, align 4
  %193 = ashr i32 %192, 31
  %194 = xor i32 %193, -1
  store i32 %194, i32* %18, align 4
  br label %195

195:                                              ; preds = %191, %153
  %196 = load i32, i32* %18, align 4
  %197 = load i32*, i32** %8, align 8
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, 3
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32 %196, i32* %201, align 4
  %202 = load i32*, i32** %9, align 8
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %17, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 4
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %14, align 4
  %212 = ashr i32 %210, %211
  %213 = add nsw i32 %207, %212
  %214 = load i32, i32* %14, align 4
  %215 = sub nsw i32 6, %214
  %216 = ashr i32 %213, %215
  store i32 %216, i32* %18, align 4
  %217 = load i32*, i32** %9, align 8
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %218, 4
  %220 = load i32, i32* %11, align 4
  %221 = mul nsw i32 8, %220
  %222 = sub nsw i32 %219, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %217, i64 %223
  store i32 0, i32* %224, align 4
  %225 = load i32*, i32** %9, align 8
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  store i32 0, i32* %229, align 4
  %230 = load i32, i32* %18, align 4
  %231 = and i32 %230, 256
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %195
  %234 = load i32, i32* %18, align 4
  %235 = ashr i32 %234, 31
  %236 = xor i32 %235, -1
  store i32 %236, i32* %18, align 4
  br label %237

237:                                              ; preds = %233, %195
  %238 = load i32, i32* %18, align 4
  %239 = load i32*, i32** %8, align 8
  %240 = load i32, i32* %16, align 4
  %241 = add nsw i32 %240, 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  store i32 %238, i32* %243, align 4
  %244 = load i32*, i32** %9, align 8
  %245 = load i32, i32* %16, align 4
  %246 = add nsw i32 %245, 5
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %17, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 5
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %14, align 4
  %254 = ashr i32 %252, %253
  %255 = add nsw i32 %249, %254
  %256 = load i32, i32* %14, align 4
  %257 = sub nsw i32 6, %256
  %258 = ashr i32 %255, %257
  store i32 %258, i32* %18, align 4
  %259 = load i32*, i32** %9, align 8
  %260 = load i32, i32* %16, align 4
  %261 = add nsw i32 %260, 5
  %262 = load i32, i32* %11, align 4
  %263 = mul nsw i32 8, %262
  %264 = sub nsw i32 %261, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %259, i64 %265
  store i32 0, i32* %266, align 4
  %267 = load i32*, i32** %9, align 8
  %268 = load i32, i32* %16, align 4
  %269 = add nsw i32 %268, 5
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  store i32 0, i32* %271, align 4
  %272 = load i32, i32* %18, align 4
  %273 = and i32 %272, 256
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %237
  %276 = load i32, i32* %18, align 4
  %277 = ashr i32 %276, 31
  %278 = xor i32 %277, -1
  store i32 %278, i32* %18, align 4
  br label %279

279:                                              ; preds = %275, %237
  %280 = load i32, i32* %18, align 4
  %281 = load i32*, i32** %8, align 8
  %282 = load i32, i32* %16, align 4
  %283 = add nsw i32 %282, 5
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  store i32 %280, i32* %285, align 4
  %286 = load i32*, i32** %9, align 8
  %287 = load i32, i32* %16, align 4
  %288 = add nsw i32 %287, 6
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %17, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 6
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %14, align 4
  %296 = ashr i32 %294, %295
  %297 = add nsw i32 %291, %296
  %298 = load i32, i32* %14, align 4
  %299 = sub nsw i32 6, %298
  %300 = ashr i32 %297, %299
  store i32 %300, i32* %18, align 4
  %301 = load i32*, i32** %9, align 8
  %302 = load i32, i32* %16, align 4
  %303 = add nsw i32 %302, 6
  %304 = load i32, i32* %11, align 4
  %305 = mul nsw i32 8, %304
  %306 = sub nsw i32 %303, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %301, i64 %307
  store i32 0, i32* %308, align 4
  %309 = load i32*, i32** %9, align 8
  %310 = load i32, i32* %16, align 4
  %311 = add nsw i32 %310, 6
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  store i32 0, i32* %313, align 4
  %314 = load i32, i32* %18, align 4
  %315 = and i32 %314, 256
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %279
  %318 = load i32, i32* %18, align 4
  %319 = ashr i32 %318, 31
  %320 = xor i32 %319, -1
  store i32 %320, i32* %18, align 4
  br label %321

321:                                              ; preds = %317, %279
  %322 = load i32, i32* %18, align 4
  %323 = load i32*, i32** %8, align 8
  %324 = load i32, i32* %16, align 4
  %325 = add nsw i32 %324, 6
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  store i32 %322, i32* %327, align 4
  %328 = load i32*, i32** %9, align 8
  %329 = load i32, i32* %16, align 4
  %330 = add nsw i32 %329, 7
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %328, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32*, i32** %17, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 7
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* %14, align 4
  %338 = ashr i32 %336, %337
  %339 = add nsw i32 %333, %338
  %340 = load i32, i32* %14, align 4
  %341 = sub nsw i32 6, %340
  %342 = ashr i32 %339, %341
  store i32 %342, i32* %18, align 4
  %343 = load i32*, i32** %9, align 8
  %344 = load i32, i32* %16, align 4
  %345 = add nsw i32 %344, 7
  %346 = load i32, i32* %11, align 4
  %347 = mul nsw i32 8, %346
  %348 = sub nsw i32 %345, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %343, i64 %349
  store i32 0, i32* %350, align 4
  %351 = load i32*, i32** %9, align 8
  %352 = load i32, i32* %16, align 4
  %353 = add nsw i32 %352, 7
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  store i32 0, i32* %355, align 4
  %356 = load i32, i32* %18, align 4
  %357 = and i32 %356, 256
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %321
  %360 = load i32, i32* %18, align 4
  %361 = ashr i32 %360, 31
  %362 = xor i32 %361, -1
  store i32 %362, i32* %18, align 4
  br label %363

363:                                              ; preds = %359, %321
  %364 = load i32, i32* %18, align 4
  %365 = load i32*, i32** %8, align 8
  %366 = load i32, i32* %16, align 4
  %367 = add nsw i32 %366, 7
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %365, i64 %368
  store i32 %364, i32* %369, align 4
  br label %370

370:                                              ; preds = %363
  %371 = load i32, i32* %16, align 4
  %372 = add nsw i32 %371, 8
  store i32 %372, i32* %16, align 4
  br label %29

373:                                              ; preds = %29
  %374 = load i32, i32* %11, align 4
  %375 = load i32*, i32** %9, align 8
  %376 = sext i32 %374 to i64
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  store i32* %377, i32** %9, align 8
  %378 = load i32, i32* %10, align 4
  %379 = load i32*, i32** %8, align 8
  %380 = sext i32 %378 to i64
  %381 = getelementptr inbounds i32, i32* %379, i64 %380
  store i32* %381, i32** %8, align 8
  br label %382

382:                                              ; preds = %373
  %383 = load i32, i32* %15, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %15, align 4
  br label %19

385:                                              ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
