; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_median_abs16_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_pix_median_abs16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32)* @pix_median_abs16_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pix_median_abs16_c(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = call i64 @abs(i64 %21)
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = sub nsw i32 %33, %40
  %42 = sext i32 %41 to i64
  %43 = call i64 @abs(i64 %42)
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = sub nsw i32 %54, %61
  %63 = sext i32 %62 to i64
  %64 = call i64 @abs(i64 %63)
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %11, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = sub nsw i32 %75, %82
  %84 = sext i32 %83 to i64
  %85 = call i64 @abs(i64 %84)
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %11, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = sub nsw i32 %96, %103
  %105 = sext i32 %104 to i64
  %106 = call i64 @abs(i64 %105)
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 5
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 5
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 4
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %120, %123
  %125 = sub nsw i32 %117, %124
  %126 = sext i32 %125 to i64
  %127 = call i64 @abs(i64 %126)
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %11, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 6
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 6
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %134, %137
  %139 = load i32*, i32** %7, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 5
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 5
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %141, %144
  %146 = sub nsw i32 %138, %145
  %147 = sext i32 %146 to i64
  %148 = call i64 @abs(i64 %147)
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %11, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 7
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 7
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %155, %158
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 6
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 6
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %162, %165
  %167 = sub nsw i32 %159, %166
  %168 = sext i32 %167 to i64
  %169 = call i64 @abs(i64 %168)
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %11, align 4
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 8
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %176, %179
  %181 = load i32*, i32** %7, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 7
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 7
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %183, %186
  %188 = sub nsw i32 %180, %187
  %189 = sext i32 %188 to i64
  %190 = call i64 @abs(i64 %189)
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %190
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %11, align 4
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 9
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %8, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 9
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %197, %200
  %202 = load i32*, i32** %7, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 8
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 8
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %204, %207
  %209 = sub nsw i32 %201, %208
  %210 = sext i32 %209 to i64
  %211 = call i64 @abs(i64 %210)
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %213, %211
  %215 = trunc i64 %214 to i32
  store i32 %215, i32* %11, align 4
  %216 = load i32*, i32** %7, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 10
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %8, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 10
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %218, %221
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 9
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %8, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 9
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %225, %228
  %230 = sub nsw i32 %222, %229
  %231 = sext i32 %230 to i64
  %232 = call i64 @abs(i64 %231)
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %11, align 4
  %237 = load i32*, i32** %7, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 11
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %8, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 11
  %242 = load i32, i32* %241, align 4
  %243 = sub nsw i32 %239, %242
  %244 = load i32*, i32** %7, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 10
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %8, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 10
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %246, %249
  %251 = sub nsw i32 %243, %250
  %252 = sext i32 %251 to i64
  %253 = call i64 @abs(i64 %252)
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %253
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %11, align 4
  %258 = load i32*, i32** %7, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 12
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 12
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %260, %263
  %265 = load i32*, i32** %7, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 11
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %8, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 11
  %270 = load i32, i32* %269, align 4
  %271 = sub nsw i32 %267, %270
  %272 = sub nsw i32 %264, %271
  %273 = sext i32 %272 to i64
  %274 = call i64 @abs(i64 %273)
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %276, %274
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %11, align 4
  %279 = load i32*, i32** %7, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 13
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** %8, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 13
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %281, %284
  %286 = load i32*, i32** %7, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 12
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** %8, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 12
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %288, %291
  %293 = sub nsw i32 %285, %292
  %294 = sext i32 %293 to i64
  %295 = call i64 @abs(i64 %294)
  %296 = load i32, i32* %11, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %297, %295
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %11, align 4
  %300 = load i32*, i32** %7, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 14
  %302 = load i32, i32* %301, align 4
  %303 = load i32*, i32** %8, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 14
  %305 = load i32, i32* %304, align 4
  %306 = sub nsw i32 %302, %305
  %307 = load i32*, i32** %7, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 13
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** %8, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 13
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %309, %312
  %314 = sub nsw i32 %306, %313
  %315 = sext i32 %314 to i64
  %316 = call i64 @abs(i64 %315)
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = add nsw i64 %318, %316
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %11, align 4
  %321 = load i32*, i32** %7, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 15
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %8, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 15
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 %323, %326
  %328 = load i32*, i32** %7, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 14
  %330 = load i32, i32* %329, align 4
  %331 = load i32*, i32** %8, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 14
  %333 = load i32, i32* %332, align 4
  %334 = sub nsw i32 %330, %333
  %335 = sub nsw i32 %327, %334
  %336 = sext i32 %335 to i64
  %337 = call i64 @abs(i64 %336)
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = add nsw i64 %339, %337
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %11, align 4
  %342 = load i32, i32* %9, align 4
  %343 = load i32*, i32** %7, align 8
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  store i32* %345, i32** %7, align 8
  %346 = load i32, i32* %9, align 4
  %347 = load i32*, i32** %8, align 8
  %348 = sext i32 %346 to i64
  %349 = getelementptr inbounds i32, i32* %347, i64 %348
  store i32* %349, i32** %8, align 8
  store i32 1, i32* %12, align 4
  br label %350

350:                                              ; preds = %495, %5
  %351 = load i32, i32* %12, align 4
  %352 = load i32, i32* %10, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %498

354:                                              ; preds = %350
  %355 = load i32*, i32** %7, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 0
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** %8, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 0
  %360 = load i32, i32* %359, align 4
  %361 = sub nsw i32 %357, %360
  %362 = load i32*, i32** %7, align 8
  %363 = load i32, i32* %9, align 4
  %364 = sub nsw i32 0, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load i32*, i32** %8, align 8
  %369 = load i32, i32* %9, align 4
  %370 = sub nsw i32 0, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = sub nsw i32 %367, %373
  %375 = sub nsw i32 %361, %374
  %376 = sext i32 %375 to i64
  %377 = call i64 @abs(i64 %376)
  %378 = load i32, i32* %11, align 4
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %379, %377
  %381 = trunc i64 %380 to i32
  store i32 %381, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %382

382:                                              ; preds = %483, %354
  %383 = load i32, i32* %13, align 4
  %384 = icmp slt i32 %383, 16
  br i1 %384, label %385, label %486

385:                                              ; preds = %382
  %386 = load i32*, i32** %7, align 8
  %387 = load i32, i32* %13, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32*, i32** %8, align 8
  %392 = load i32, i32* %13, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = sub nsw i32 %390, %395
  %397 = sext i32 %396 to i64
  %398 = load i32*, i32** %7, align 8
  %399 = load i32, i32* %13, align 4
  %400 = load i32, i32* %9, align 4
  %401 = sub nsw i32 %399, %400
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %398, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = load i32*, i32** %8, align 8
  %406 = load i32, i32* %13, align 4
  %407 = load i32, i32* %9, align 4
  %408 = sub nsw i32 %406, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %405, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = sub nsw i32 %404, %411
  %413 = sext i32 %412 to i64
  %414 = load i32*, i32** %7, align 8
  %415 = load i32, i32* %13, align 4
  %416 = sub nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load i32*, i32** %8, align 8
  %421 = load i32, i32* %13, align 4
  %422 = sub nsw i32 %421, 1
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %420, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = sub nsw i32 %419, %425
  %427 = sext i32 %426 to i64
  %428 = load i32*, i32** %7, align 8
  %429 = load i32, i32* %13, align 4
  %430 = load i32, i32* %9, align 4
  %431 = sub nsw i32 %429, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %428, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = load i32*, i32** %8, align 8
  %436 = load i32, i32* %13, align 4
  %437 = load i32, i32* %9, align 4
  %438 = sub nsw i32 %436, %437
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %435, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = sub nsw i32 %434, %441
  %443 = load i32*, i32** %7, align 8
  %444 = load i32, i32* %13, align 4
  %445 = sub nsw i32 %444, 1
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %443, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = load i32*, i32** %8, align 8
  %450 = load i32, i32* %13, align 4
  %451 = sub nsw i32 %450, 1
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %449, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = sub nsw i32 %448, %454
  %456 = add nsw i32 %442, %455
  %457 = load i32*, i32** %7, align 8
  %458 = load i32, i32* %13, align 4
  %459 = load i32, i32* %9, align 4
  %460 = sub nsw i32 %458, %459
  %461 = sub nsw i32 %460, 1
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %457, i64 %462
  %464 = load i32, i32* %463, align 4
  %465 = load i32*, i32** %8, align 8
  %466 = load i32, i32* %13, align 4
  %467 = load i32, i32* %9, align 4
  %468 = sub nsw i32 %466, %467
  %469 = sub nsw i32 %468, 1
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %465, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = sub nsw i32 %464, %472
  %474 = sub nsw i32 %456, %473
  %475 = sext i32 %474 to i64
  %476 = call i64 @mid_pred(i64 %413, i64 %427, i64 %475)
  %477 = sub nsw i64 %397, %476
  %478 = call i64 @abs(i64 %477)
  %479 = load i32, i32* %11, align 4
  %480 = sext i32 %479 to i64
  %481 = add nsw i64 %480, %478
  %482 = trunc i64 %481 to i32
  store i32 %482, i32* %11, align 4
  br label %483

483:                                              ; preds = %385
  %484 = load i32, i32* %13, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %13, align 4
  br label %382

486:                                              ; preds = %382
  %487 = load i32, i32* %9, align 4
  %488 = load i32*, i32** %7, align 8
  %489 = sext i32 %487 to i64
  %490 = getelementptr inbounds i32, i32* %488, i64 %489
  store i32* %490, i32** %7, align 8
  %491 = load i32, i32* %9, align 4
  %492 = load i32*, i32** %8, align 8
  %493 = sext i32 %491 to i64
  %494 = getelementptr inbounds i32, i32* %492, i64 %493
  store i32* %494, i32** %8, align 8
  br label %495

495:                                              ; preds = %486
  %496 = load i32, i32* %12, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %12, align 4
  br label %350

498:                                              ; preds = %350
  %499 = load i32, i32* %11, align 4
  ret i32 %499
}

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @mid_pred(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
