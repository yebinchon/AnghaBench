; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8dsp.c_x8_loop_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_intrax8dsp.c_x8_loop_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @x8_loop_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x8_loop_filter(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 10
  %32 = ashr i32 %31, 3
  store i32 %32, i32* %21, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %391, %4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %398

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 -5, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 -4, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 -3, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 -2, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 -1, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %16, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 1, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %17, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = mul nsw i32 2, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %18, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 3, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %19, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %6, align 4
  %90 = mul nsw i32 4, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @FFABS(i32 %96)
  %98 = load i32, i32* %21, align 4
  %99 = icmp sle i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 @FFABS(i32 %103)
  %105 = load i32, i32* %21, align 4
  %106 = icmp sle i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = add nsw i32 %100, %107
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %15, align 4
  %111 = sub nsw i32 %109, %110
  %112 = call i32 @FFABS(i32 %111)
  %113 = load i32, i32* %21, align 4
  %114 = icmp sle i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = add nsw i32 %108, %115
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i32 @FFABS(i32 %119)
  %121 = load i32, i32* %21, align 4
  %122 = icmp sle i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = add nsw i32 %116, %123
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %289

127:                                              ; preds = %36
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %17, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i32 @FFABS(i32 %130)
  %132 = load i32, i32* %21, align 4
  %133 = icmp sle i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %18, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i32 @FFABS(i32 %137)
  %139 = load i32, i32* %21, align 4
  %140 = icmp sle i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = add nsw i32 %134, %141
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %19, align 4
  %145 = sub nsw i32 %143, %144
  %146 = call i32 @FFABS(i32 %145)
  %147 = load i32, i32* %21, align 4
  %148 = icmp sle i32 %146, %147
  %149 = zext i1 %148 to i32
  %150 = add nsw i32 %142, %149
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %20, align 4
  %153 = sub nsw i32 %151, %152
  %154 = call i32 @FFABS(i32 %153)
  %155 = load i32, i32* %21, align 4
  %156 = icmp sle i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = add nsw i32 %150, %157
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = sub nsw i32 %159, %160
  %162 = call i32 @FFABS(i32 %161)
  %163 = load i32, i32* %21, align 4
  %164 = icmp sle i32 %162, %163
  %165 = zext i1 %164 to i32
  %166 = add nsw i32 %158, %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %10, align 4
  %170 = icmp sge i32 %169, 6
  br i1 %170, label %171, label %288

171:                                              ; preds = %127
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %23, align 4
  store i32 %172, i32* %22, align 4
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @FFMIN(i32 %173, i32 %174)
  store i32 %175, i32* %22, align 4
  %176 = load i32, i32* %23, align 4
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @FFMAX(i32 %176, i32 %177)
  store i32 %178, i32* %23, align 4
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @FFMIN(i32 %179, i32 %180)
  store i32 %181, i32* %22, align 4
  %182 = load i32, i32* %23, align 4
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @FFMAX(i32 %182, i32 %183)
  store i32 %184, i32* %23, align 4
  %185 = load i32, i32* %22, align 4
  %186 = load i32, i32* %19, align 4
  %187 = call i32 @FFMIN(i32 %185, i32 %186)
  store i32 %187, i32* %22, align 4
  %188 = load i32, i32* %23, align 4
  %189 = load i32, i32* %19, align 4
  %190 = call i32 @FFMAX(i32 %188, i32 %189)
  store i32 %190, i32* %23, align 4
  %191 = load i32, i32* %23, align 4
  %192 = load i32, i32* %22, align 4
  %193 = sub nsw i32 %191, %192
  %194 = load i32, i32* %8, align 4
  %195 = mul nsw i32 2, %194
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %287

197:                                              ; preds = %171
  %198 = load i32, i32* %22, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @FFMIN(i32 %198, i32 %199)
  store i32 %200, i32* %22, align 4
  %201 = load i32, i32* %23, align 4
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @FFMAX(i32 %201, i32 %202)
  store i32 %203, i32* %23, align 4
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* %15, align 4
  %206 = call i32 @FFMIN(i32 %204, i32 %205)
  store i32 %206, i32* %22, align 4
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %15, align 4
  %209 = call i32 @FFMAX(i32 %207, i32 %208)
  store i32 %209, i32* %23, align 4
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* %17, align 4
  %212 = call i32 @FFMIN(i32 %210, i32 %211)
  store i32 %212, i32* %22, align 4
  %213 = load i32, i32* %23, align 4
  %214 = load i32, i32* %17, align 4
  %215 = call i32 @FFMAX(i32 %213, i32 %214)
  store i32 %215, i32* %23, align 4
  %216 = load i32, i32* %22, align 4
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @FFMIN(i32 %216, i32 %217)
  store i32 %218, i32* %22, align 4
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @FFMAX(i32 %219, i32 %220)
  store i32 %221, i32* %23, align 4
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %22, align 4
  %224 = sub nsw i32 %222, %223
  %225 = load i32, i32* %8, align 4
  %226 = mul nsw i32 2, %225
  %227 = icmp slt i32 %224, %226
  br i1 %227, label %228, label %286

228:                                              ; preds = %197
  %229 = load i32, i32* %13, align 4
  %230 = mul nsw i32 4, %229
  %231 = load i32, i32* %14, align 4
  %232 = mul nsw i32 3, %231
  %233 = add nsw i32 %230, %232
  %234 = load i32, i32* %18, align 4
  %235 = mul nsw i32 1, %234
  %236 = add nsw i32 %233, %235
  %237 = add nsw i32 %236, 4
  %238 = ashr i32 %237, 3
  %239 = load i32*, i32** %5, align 8
  %240 = load i32, i32* %6, align 4
  %241 = mul nsw i32 -2, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  store i32 %238, i32* %243, align 4
  %244 = load i32, i32* %13, align 4
  %245 = mul nsw i32 3, %244
  %246 = load i32, i32* %15, align 4
  %247 = mul nsw i32 3, %246
  %248 = add nsw i32 %245, %247
  %249 = load i32, i32* %18, align 4
  %250 = mul nsw i32 2, %249
  %251 = add nsw i32 %248, %250
  %252 = add nsw i32 %251, 4
  %253 = ashr i32 %252, 3
  %254 = load i32*, i32** %5, align 8
  %255 = load i32, i32* %6, align 4
  %256 = mul nsw i32 -1, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %253, i32* %258, align 4
  %259 = load i32, i32* %13, align 4
  %260 = mul nsw i32 2, %259
  %261 = load i32, i32* %16, align 4
  %262 = mul nsw i32 3, %261
  %263 = add nsw i32 %260, %262
  %264 = load i32, i32* %18, align 4
  %265 = mul nsw i32 3, %264
  %266 = add nsw i32 %263, %265
  %267 = add nsw i32 %266, 4
  %268 = ashr i32 %267, 3
  %269 = load i32*, i32** %5, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* %13, align 4
  %272 = mul nsw i32 1, %271
  %273 = load i32, i32* %17, align 4
  %274 = mul nsw i32 3, %273
  %275 = add nsw i32 %272, %274
  %276 = load i32, i32* %18, align 4
  %277 = mul nsw i32 4, %276
  %278 = add nsw i32 %275, %277
  %279 = add nsw i32 %278, 4
  %280 = ashr i32 %279, 3
  %281 = load i32*, i32** %5, align 8
  %282 = load i32, i32* %6, align 4
  %283 = mul nsw i32 1, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  store i32 %280, i32* %285, align 4
  br label %391

286:                                              ; preds = %197
  br label %287

287:                                              ; preds = %286, %171
  br label %288

288:                                              ; preds = %287, %127
  br label %289

289:                                              ; preds = %288, %36
  %290 = load i32, i32* %14, align 4
  %291 = mul nsw i32 2, %290
  %292 = load i32, i32* %15, align 4
  %293 = mul nsw i32 5, %292
  %294 = sub nsw i32 %291, %293
  %295 = load i32, i32* %16, align 4
  %296 = mul nsw i32 5, %295
  %297 = add nsw i32 %294, %296
  %298 = load i32, i32* %17, align 4
  %299 = mul nsw i32 2, %298
  %300 = sub nsw i32 %297, %299
  %301 = add nsw i32 %300, 4
  %302 = ashr i32 %301, 3
  store i32 %302, i32* %25, align 4
  %303 = load i32, i32* %25, align 4
  %304 = call i32 @FFABS(i32 %303)
  %305 = load i32, i32* %8, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %390

307:                                              ; preds = %289
  %308 = load i32, i32* %12, align 4
  %309 = mul nsw i32 2, %308
  %310 = load i32, i32* %13, align 4
  %311 = mul nsw i32 5, %310
  %312 = sub nsw i32 %309, %311
  %313 = load i32, i32* %14, align 4
  %314 = mul nsw i32 5, %313
  %315 = add nsw i32 %312, %314
  %316 = load i32, i32* %15, align 4
  %317 = mul nsw i32 2, %316
  %318 = sub nsw i32 %315, %317
  %319 = add nsw i32 %318, 4
  %320 = ashr i32 %319, 3
  store i32 %320, i32* %26, align 4
  %321 = load i32, i32* %16, align 4
  %322 = mul nsw i32 2, %321
  %323 = load i32, i32* %17, align 4
  %324 = mul nsw i32 5, %323
  %325 = sub nsw i32 %322, %324
  %326 = load i32, i32* %18, align 4
  %327 = mul nsw i32 5, %326
  %328 = add nsw i32 %325, %327
  %329 = load i32, i32* %19, align 4
  %330 = mul nsw i32 2, %329
  %331 = sub nsw i32 %328, %330
  %332 = add nsw i32 %331, 4
  %333 = ashr i32 %332, 3
  store i32 %333, i32* %27, align 4
  %334 = load i32, i32* %25, align 4
  %335 = call i32 @FFABS(i32 %334)
  %336 = load i32, i32* %26, align 4
  %337 = call i32 @FFABS(i32 %336)
  %338 = load i32, i32* %27, align 4
  %339 = call i32 @FFABS(i32 %338)
  %340 = call i32 @FFMIN(i32 %337, i32 %339)
  %341 = sub nsw i32 %335, %340
  store i32 %341, i32* %24, align 4
  %342 = load i32, i32* %15, align 4
  %343 = load i32, i32* %16, align 4
  %344 = sub nsw i32 %342, %343
  store i32 %344, i32* %28, align 4
  %345 = load i32, i32* %24, align 4
  %346 = icmp sgt i32 %345, 0
  br i1 %346, label %347, label %389

347:                                              ; preds = %307
  %348 = load i32, i32* %28, align 4
  %349 = load i32, i32* %25, align 4
  %350 = xor i32 %348, %349
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %352, label %389

352:                                              ; preds = %347
  %353 = load i32, i32* %28, align 4
  %354 = ashr i32 %353, 31
  store i32 %354, i32* %29, align 4
  %355 = load i32, i32* %28, align 4
  %356 = load i32, i32* %29, align 4
  %357 = xor i32 %355, %356
  %358 = load i32, i32* %29, align 4
  %359 = sub nsw i32 %357, %358
  store i32 %359, i32* %28, align 4
  %360 = load i32, i32* %28, align 4
  %361 = ashr i32 %360, 1
  store i32 %361, i32* %28, align 4
  %362 = load i32, i32* %24, align 4
  %363 = mul nsw i32 5, %362
  %364 = ashr i32 %363, 3
  store i32 %364, i32* %24, align 4
  %365 = load i32, i32* %24, align 4
  %366 = load i32, i32* %28, align 4
  %367 = icmp sgt i32 %365, %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %352
  %369 = load i32, i32* %28, align 4
  store i32 %369, i32* %24, align 4
  br label %370

370:                                              ; preds = %368, %352
  %371 = load i32, i32* %24, align 4
  %372 = load i32, i32* %29, align 4
  %373 = xor i32 %371, %372
  %374 = load i32, i32* %29, align 4
  %375 = sub nsw i32 %373, %374
  store i32 %375, i32* %24, align 4
  %376 = load i32, i32* %24, align 4
  %377 = load i32*, i32** %5, align 8
  %378 = load i32, i32* %6, align 4
  %379 = mul nsw i32 -1, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = sub nsw i32 %382, %376
  store i32 %383, i32* %381, align 4
  %384 = load i32, i32* %24, align 4
  %385 = load i32*, i32** %5, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 0
  %387 = load i32, i32* %386, align 4
  %388 = add nsw i32 %387, %384
  store i32 %388, i32* %386, align 4
  br label %389

389:                                              ; preds = %370, %347, %307
  br label %390

390:                                              ; preds = %389, %289
  br label %391

391:                                              ; preds = %390, %228
  %392 = load i32, i32* %9, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %9, align 4
  %394 = load i32, i32* %7, align 4
  %395 = load i32*, i32** %5, align 8
  %396 = sext i32 %394 to i64
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  store i32* %397, i32** %5, align 8
  br label %33

398:                                              ; preds = %33
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
