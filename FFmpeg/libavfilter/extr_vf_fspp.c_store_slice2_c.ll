; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_store_slice2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_store_slice2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dither = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32)* @store_slice2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_slice2_c(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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

19:                                               ; preds = %422, %7
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %425

23:                                               ; preds = %19
  %24 = load i32**, i32*** @dither, align 8
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %17, align 8
  store i32 0, i32* %16, align 4
  br label %29

29:                                               ; preds = %410, %23
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %413

33:                                               ; preds = %29
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %16, align 4
  %36 = add nsw i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 0
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 16, %43
  %45 = add nsw i32 %42, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %39, %48
  %50 = load i32*, i32** %17, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %14, align 4
  %54 = ashr i32 %52, %53
  %55 = add nsw i32 %49, %54
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 6, %56
  %58 = ashr i32 %55, %57
  store i32 %58, i32* %18, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 0
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 16, %62
  %64 = add nsw i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %18, align 4
  %68 = and i32 %67, 256
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %33
  %71 = load i32, i32* %18, align 4
  %72 = ashr i32 %71, 31
  %73 = xor i32 %72, -1
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %70, %33
  %75 = load i32, i32* %18, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %16, align 4
  %78 = add nsw i32 %77, 0
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 16, %90
  %92 = add nsw i32 %89, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %87, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %86, %95
  %97 = load i32*, i32** %17, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = ashr i32 %99, %100
  %102 = add nsw i32 %96, %101
  %103 = load i32, i32* %14, align 4
  %104 = sub nsw i32 6, %103
  %105 = ashr i32 %102, %104
  store i32 %105, i32* %18, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %11, align 4
  %110 = mul nsw i32 16, %109
  %111 = add nsw i32 %108, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* %18, align 4
  %115 = and i32 %114, 256
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %74
  %118 = load i32, i32* %18, align 4
  %119 = ashr i32 %118, 31
  %120 = xor i32 %119, -1
  store i32 %120, i32* %18, align 4
  br label %121

121:                                              ; preds = %117, %74
  %122 = load i32, i32* %18, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 2
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 16, %137
  %139 = add nsw i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %134, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %133, %142
  %144 = load i32*, i32** %17, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %14, align 4
  %148 = ashr i32 %146, %147
  %149 = add nsw i32 %143, %148
  %150 = load i32, i32* %14, align 4
  %151 = sub nsw i32 6, %150
  %152 = ashr i32 %149, %151
  store i32 %152, i32* %18, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* %16, align 4
  %155 = add nsw i32 %154, 2
  %156 = load i32, i32* %11, align 4
  %157 = mul nsw i32 16, %156
  %158 = add nsw i32 %155, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %153, i64 %159
  store i32 0, i32* %160, align 4
  %161 = load i32, i32* %18, align 4
  %162 = and i32 %161, 256
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %121
  %165 = load i32, i32* %18, align 4
  %166 = ashr i32 %165, 31
  %167 = xor i32 %166, -1
  store i32 %167, i32* %18, align 4
  br label %168

168:                                              ; preds = %164, %121
  %169 = load i32, i32* %18, align 4
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  store i32 %169, i32* %174, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 3
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 3
  %184 = load i32, i32* %11, align 4
  %185 = mul nsw i32 16, %184
  %186 = add nsw i32 %183, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %181, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %180, %189
  %191 = load i32*, i32** %17, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %14, align 4
  %195 = ashr i32 %193, %194
  %196 = add nsw i32 %190, %195
  %197 = load i32, i32* %14, align 4
  %198 = sub nsw i32 6, %197
  %199 = ashr i32 %196, %198
  store i32 %199, i32* %18, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, 3
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 16, %203
  %205 = add nsw i32 %202, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %200, i64 %206
  store i32 0, i32* %207, align 4
  %208 = load i32, i32* %18, align 4
  %209 = and i32 %208, 256
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %168
  %212 = load i32, i32* %18, align 4
  %213 = ashr i32 %212, 31
  %214 = xor i32 %213, -1
  store i32 %214, i32* %18, align 4
  br label %215

215:                                              ; preds = %211, %168
  %216 = load i32, i32* %18, align 4
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %218, 3
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 %216, i32* %221, align 4
  %222 = load i32*, i32** %9, align 8
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %9, align 8
  %229 = load i32, i32* %16, align 4
  %230 = add nsw i32 %229, 4
  %231 = load i32, i32* %11, align 4
  %232 = mul nsw i32 16, %231
  %233 = add nsw i32 %230, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %228, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %227, %236
  %238 = load i32*, i32** %17, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 4
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %14, align 4
  %242 = ashr i32 %240, %241
  %243 = add nsw i32 %237, %242
  %244 = load i32, i32* %14, align 4
  %245 = sub nsw i32 6, %244
  %246 = ashr i32 %243, %245
  store i32 %246, i32* %18, align 4
  %247 = load i32*, i32** %9, align 8
  %248 = load i32, i32* %16, align 4
  %249 = add nsw i32 %248, 4
  %250 = load i32, i32* %11, align 4
  %251 = mul nsw i32 16, %250
  %252 = add nsw i32 %249, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %247, i64 %253
  store i32 0, i32* %254, align 4
  %255 = load i32, i32* %18, align 4
  %256 = and i32 %255, 256
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %215
  %259 = load i32, i32* %18, align 4
  %260 = ashr i32 %259, 31
  %261 = xor i32 %260, -1
  store i32 %261, i32* %18, align 4
  br label %262

262:                                              ; preds = %258, %215
  %263 = load i32, i32* %18, align 4
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* %16, align 4
  %266 = add nsw i32 %265, 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  store i32 %263, i32* %268, align 4
  %269 = load i32*, i32** %9, align 8
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, 5
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %9, align 8
  %276 = load i32, i32* %16, align 4
  %277 = add nsw i32 %276, 5
  %278 = load i32, i32* %11, align 4
  %279 = mul nsw i32 16, %278
  %280 = add nsw i32 %277, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %275, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %274, %283
  %285 = load i32*, i32** %17, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 5
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %14, align 4
  %289 = ashr i32 %287, %288
  %290 = add nsw i32 %284, %289
  %291 = load i32, i32* %14, align 4
  %292 = sub nsw i32 6, %291
  %293 = ashr i32 %290, %292
  store i32 %293, i32* %18, align 4
  %294 = load i32*, i32** %9, align 8
  %295 = load i32, i32* %16, align 4
  %296 = add nsw i32 %295, 5
  %297 = load i32, i32* %11, align 4
  %298 = mul nsw i32 16, %297
  %299 = add nsw i32 %296, %298
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %294, i64 %300
  store i32 0, i32* %301, align 4
  %302 = load i32, i32* %18, align 4
  %303 = and i32 %302, 256
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %262
  %306 = load i32, i32* %18, align 4
  %307 = ashr i32 %306, 31
  %308 = xor i32 %307, -1
  store i32 %308, i32* %18, align 4
  br label %309

309:                                              ; preds = %305, %262
  %310 = load i32, i32* %18, align 4
  %311 = load i32*, i32** %8, align 8
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, 5
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %311, i64 %314
  store i32 %310, i32* %315, align 4
  %316 = load i32*, i32** %9, align 8
  %317 = load i32, i32* %16, align 4
  %318 = add nsw i32 %317, 6
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %316, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32*, i32** %9, align 8
  %323 = load i32, i32* %16, align 4
  %324 = add nsw i32 %323, 6
  %325 = load i32, i32* %11, align 4
  %326 = mul nsw i32 16, %325
  %327 = add nsw i32 %324, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %322, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %321, %330
  %332 = load i32*, i32** %17, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 6
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %14, align 4
  %336 = ashr i32 %334, %335
  %337 = add nsw i32 %331, %336
  %338 = load i32, i32* %14, align 4
  %339 = sub nsw i32 6, %338
  %340 = ashr i32 %337, %339
  store i32 %340, i32* %18, align 4
  %341 = load i32*, i32** %9, align 8
  %342 = load i32, i32* %16, align 4
  %343 = add nsw i32 %342, 6
  %344 = load i32, i32* %11, align 4
  %345 = mul nsw i32 16, %344
  %346 = add nsw i32 %343, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %341, i64 %347
  store i32 0, i32* %348, align 4
  %349 = load i32, i32* %18, align 4
  %350 = and i32 %349, 256
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %309
  %353 = load i32, i32* %18, align 4
  %354 = ashr i32 %353, 31
  %355 = xor i32 %354, -1
  store i32 %355, i32* %18, align 4
  br label %356

356:                                              ; preds = %352, %309
  %357 = load i32, i32* %18, align 4
  %358 = load i32*, i32** %8, align 8
  %359 = load i32, i32* %16, align 4
  %360 = add nsw i32 %359, 6
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  store i32 %357, i32* %362, align 4
  %363 = load i32*, i32** %9, align 8
  %364 = load i32, i32* %16, align 4
  %365 = add nsw i32 %364, 7
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %363, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = load i32*, i32** %9, align 8
  %370 = load i32, i32* %16, align 4
  %371 = add nsw i32 %370, 7
  %372 = load i32, i32* %11, align 4
  %373 = mul nsw i32 16, %372
  %374 = add nsw i32 %371, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %369, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %368, %377
  %379 = load i32*, i32** %17, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 7
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %14, align 4
  %383 = ashr i32 %381, %382
  %384 = add nsw i32 %378, %383
  %385 = load i32, i32* %14, align 4
  %386 = sub nsw i32 6, %385
  %387 = ashr i32 %384, %386
  store i32 %387, i32* %18, align 4
  %388 = load i32*, i32** %9, align 8
  %389 = load i32, i32* %16, align 4
  %390 = add nsw i32 %389, 7
  %391 = load i32, i32* %11, align 4
  %392 = mul nsw i32 16, %391
  %393 = add nsw i32 %390, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %388, i64 %394
  store i32 0, i32* %395, align 4
  %396 = load i32, i32* %18, align 4
  %397 = and i32 %396, 256
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %403

399:                                              ; preds = %356
  %400 = load i32, i32* %18, align 4
  %401 = ashr i32 %400, 31
  %402 = xor i32 %401, -1
  store i32 %402, i32* %18, align 4
  br label %403

403:                                              ; preds = %399, %356
  %404 = load i32, i32* %18, align 4
  %405 = load i32*, i32** %8, align 8
  %406 = load i32, i32* %16, align 4
  %407 = add nsw i32 %406, 7
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %405, i64 %408
  store i32 %404, i32* %409, align 4
  br label %410

410:                                              ; preds = %403
  %411 = load i32, i32* %16, align 4
  %412 = add nsw i32 %411, 8
  store i32 %412, i32* %16, align 4
  br label %29

413:                                              ; preds = %29
  %414 = load i32, i32* %11, align 4
  %415 = load i32*, i32** %9, align 8
  %416 = sext i32 %414 to i64
  %417 = getelementptr inbounds i32, i32* %415, i64 %416
  store i32* %417, i32** %9, align 8
  %418 = load i32, i32* %10, align 4
  %419 = load i32*, i32** %8, align 8
  %420 = sext i32 %418 to i64
  %421 = getelementptr inbounds i32, i32* %419, i64 %420
  store i32* %421, i32** %8, align 8
  br label %422

422:                                              ; preds = %413
  %423 = load i32, i32* %15, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %15, align 4
  br label %19

425:                                              ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
