; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_idct_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xvididct.c_idct_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROW_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*, i32*, i32)* @idct_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idct_row(i16* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32*, align 8
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
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i16* %0, i16** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i16*, i16** %5, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 5
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  %63 = load i16*, i16** %5, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 6
  %65 = load i16, i16* %64, align 2
  %66 = sext i16 %65 to i32
  %67 = or i32 %62, %66
  %68 = load i16*, i16** %5, align 8
  %69 = getelementptr inbounds i16, i16* %68, i64 7
  %70 = load i16, i16* %69, align 2
  %71 = sext i16 %70 to i32
  %72 = or i32 %67, %71
  store i32 %72, i32* %15, align 4
  %73 = load i16*, i16** %5, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 1
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  %77 = load i16*, i16** %5, align 8
  %78 = getelementptr inbounds i16, i16* %77, i64 2
  %79 = load i16, i16* %78, align 2
  %80 = sext i16 %79 to i32
  %81 = or i32 %76, %80
  %82 = load i16*, i16** %5, align 8
  %83 = getelementptr inbounds i16, i16* %82, i64 3
  %84 = load i16, i16* %83, align 2
  %85 = sext i16 %84 to i32
  %86 = or i32 %81, %85
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i16*, i16** %5, align 8
  %89 = getelementptr inbounds i16, i16* %88, i64 4
  %90 = load i16, i16* %89, align 2
  %91 = sext i16 %90 to i32
  %92 = or i32 %87, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %282, label %94

94:                                               ; preds = %3
  %95 = load i32, i32* %11, align 4
  %96 = load i16*, i16** %5, align 8
  %97 = getelementptr inbounds i16, i16* %96, i64 0
  %98 = load i16, i16* %97, align 2
  %99 = sext i16 %98 to i32
  %100 = mul nsw i32 %95, %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %254

105:                                              ; preds = %94
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i16*, i16** %5, align 8
  %109 = getelementptr inbounds i16, i16* %108, i64 2
  %110 = load i16, i16* %109, align 2
  %111 = sext i16 %110 to i32
  %112 = mul nsw i32 %107, %111
  %113 = add nsw i32 %106, %112
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i16*, i16** %5, align 8
  %117 = getelementptr inbounds i16, i16* %116, i64 2
  %118 = load i16, i16* %117, align 2
  %119 = sext i16 %118 to i32
  %120 = mul nsw i32 %115, %119
  %121 = add nsw i32 %114, %120
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i16*, i16** %5, align 8
  %125 = getelementptr inbounds i16, i16* %124, i64 2
  %126 = load i16, i16* %125, align 2
  %127 = sext i16 %126 to i32
  %128 = mul nsw i32 %123, %127
  %129 = sub nsw i32 %122, %128
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i16*, i16** %5, align 8
  %133 = getelementptr inbounds i16, i16* %132, i64 2
  %134 = load i16, i16* %133, align 2
  %135 = sext i16 %134 to i32
  %136 = mul nsw i32 %131, %135
  %137 = sub nsw i32 %130, %136
  store i32 %137, i32* %21, align 4
  %138 = load i32, i32* %8, align 4
  %139 = load i16*, i16** %5, align 8
  %140 = getelementptr inbounds i16, i16* %139, i64 1
  %141 = load i16, i16* %140, align 2
  %142 = sext i16 %141 to i32
  %143 = mul nsw i32 %138, %142
  %144 = load i32, i32* %10, align 4
  %145 = load i16*, i16** %5, align 8
  %146 = getelementptr inbounds i16, i16* %145, i64 3
  %147 = load i16, i16* %146, align 2
  %148 = sext i16 %147 to i32
  %149 = mul nsw i32 %144, %148
  %150 = add nsw i32 %143, %149
  store i32 %150, i32* %22, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i16*, i16** %5, align 8
  %153 = getelementptr inbounds i16, i16* %152, i64 1
  %154 = load i16, i16* %153, align 2
  %155 = sext i16 %154 to i32
  %156 = mul nsw i32 %151, %155
  %157 = load i32, i32* %14, align 4
  %158 = load i16*, i16** %5, align 8
  %159 = getelementptr inbounds i16, i16* %158, i64 3
  %160 = load i16, i16* %159, align 2
  %161 = sext i16 %160 to i32
  %162 = mul nsw i32 %157, %161
  %163 = sub nsw i32 %156, %162
  store i32 %163, i32* %23, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i16*, i16** %5, align 8
  %166 = getelementptr inbounds i16, i16* %165, i64 1
  %167 = load i16, i16* %166, align 2
  %168 = sext i16 %167 to i32
  %169 = mul nsw i32 %164, %168
  %170 = load i32, i32* %8, align 4
  %171 = load i16*, i16** %5, align 8
  %172 = getelementptr inbounds i16, i16* %171, i64 3
  %173 = load i16, i16* %172, align 2
  %174 = sext i16 %173 to i32
  %175 = mul nsw i32 %170, %174
  %176 = sub nsw i32 %169, %175
  store i32 %176, i32* %24, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i16*, i16** %5, align 8
  %179 = getelementptr inbounds i16, i16* %178, i64 1
  %180 = load i16, i16* %179, align 2
  %181 = sext i16 %180 to i32
  %182 = mul nsw i32 %177, %181
  %183 = load i32, i32* %12, align 4
  %184 = load i16*, i16** %5, align 8
  %185 = getelementptr inbounds i16, i16* %184, i64 3
  %186 = load i16, i16* %185, align 2
  %187 = sext i16 %186 to i32
  %188 = mul nsw i32 %183, %187
  %189 = sub nsw i32 %182, %188
  store i32 %189, i32* %25, align 4
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %22, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* @ROW_SHIFT, align 4
  %194 = ashr i32 %192, %193
  %195 = trunc i32 %194 to i16
  %196 = load i16*, i16** %5, align 8
  %197 = getelementptr inbounds i16, i16* %196, i64 0
  store i16 %195, i16* %197, align 2
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* %23, align 4
  %200 = add nsw i32 %198, %199
  %201 = load i32, i32* @ROW_SHIFT, align 4
  %202 = ashr i32 %200, %201
  %203 = trunc i32 %202 to i16
  %204 = load i16*, i16** %5, align 8
  %205 = getelementptr inbounds i16, i16* %204, i64 1
  store i16 %203, i16* %205, align 2
  %206 = load i32, i32* %20, align 4
  %207 = load i32, i32* %24, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* @ROW_SHIFT, align 4
  %210 = ashr i32 %208, %209
  %211 = trunc i32 %210 to i16
  %212 = load i16*, i16** %5, align 8
  %213 = getelementptr inbounds i16, i16* %212, i64 2
  store i16 %211, i16* %213, align 2
  %214 = load i32, i32* %21, align 4
  %215 = load i32, i32* %25, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i32, i32* @ROW_SHIFT, align 4
  %218 = ashr i32 %216, %217
  %219 = trunc i32 %218 to i16
  %220 = load i16*, i16** %5, align 8
  %221 = getelementptr inbounds i16, i16* %220, i64 3
  store i16 %219, i16* %221, align 2
  %222 = load i32, i32* %21, align 4
  %223 = load i32, i32* %25, align 4
  %224 = sub nsw i32 %222, %223
  %225 = load i32, i32* @ROW_SHIFT, align 4
  %226 = ashr i32 %224, %225
  %227 = trunc i32 %226 to i16
  %228 = load i16*, i16** %5, align 8
  %229 = getelementptr inbounds i16, i16* %228, i64 4
  store i16 %227, i16* %229, align 2
  %230 = load i32, i32* %20, align 4
  %231 = load i32, i32* %24, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load i32, i32* @ROW_SHIFT, align 4
  %234 = ashr i32 %232, %233
  %235 = trunc i32 %234 to i16
  %236 = load i16*, i16** %5, align 8
  %237 = getelementptr inbounds i16, i16* %236, i64 5
  store i16 %235, i16* %237, align 2
  %238 = load i32, i32* %19, align 4
  %239 = load i32, i32* %23, align 4
  %240 = sub nsw i32 %238, %239
  %241 = load i32, i32* @ROW_SHIFT, align 4
  %242 = ashr i32 %240, %241
  %243 = trunc i32 %242 to i16
  %244 = load i16*, i16** %5, align 8
  %245 = getelementptr inbounds i16, i16* %244, i64 6
  store i16 %243, i16* %245, align 2
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %22, align 4
  %248 = sub nsw i32 %246, %247
  %249 = load i32, i32* @ROW_SHIFT, align 4
  %250 = ashr i32 %248, %249
  %251 = trunc i32 %250 to i16
  %252 = load i16*, i16** %5, align 8
  %253 = getelementptr inbounds i16, i16* %252, i64 7
  store i16 %251, i16* %253, align 2
  br label %281

254:                                              ; preds = %94
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* @ROW_SHIFT, align 4
  %257 = ashr i32 %255, %256
  store i32 %257, i32* %26, align 4
  %258 = load i32, i32* %26, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %279

260:                                              ; preds = %254
  %261 = load i32, i32* %26, align 4
  %262 = trunc i32 %261 to i16
  %263 = load i16*, i16** %5, align 8
  %264 = getelementptr inbounds i16, i16* %263, i64 7
  store i16 %262, i16* %264, align 2
  %265 = load i16*, i16** %5, align 8
  %266 = getelementptr inbounds i16, i16* %265, i64 6
  store i16 %262, i16* %266, align 2
  %267 = load i16*, i16** %5, align 8
  %268 = getelementptr inbounds i16, i16* %267, i64 5
  store i16 %262, i16* %268, align 2
  %269 = load i16*, i16** %5, align 8
  %270 = getelementptr inbounds i16, i16* %269, i64 4
  store i16 %262, i16* %270, align 2
  %271 = load i16*, i16** %5, align 8
  %272 = getelementptr inbounds i16, i16* %271, i64 3
  store i16 %262, i16* %272, align 2
  %273 = load i16*, i16** %5, align 8
  %274 = getelementptr inbounds i16, i16* %273, i64 2
  store i16 %262, i16* %274, align 2
  %275 = load i16*, i16** %5, align 8
  %276 = getelementptr inbounds i16, i16* %275, i64 1
  store i16 %262, i16* %276, align 2
  %277 = load i16*, i16** %5, align 8
  %278 = getelementptr inbounds i16, i16* %277, i64 0
  store i16 %262, i16* %278, align 2
  br label %280

279:                                              ; preds = %254
  store i32 0, i32* %4, align 4
  br label %621

280:                                              ; preds = %260
  br label %281

281:                                              ; preds = %280, %105
  br label %620

282:                                              ; preds = %3
  %283 = load i32, i32* %16, align 4
  %284 = load i32, i32* %15, align 4
  %285 = or i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %350, label %287

287:                                              ; preds = %282
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %11, align 4
  %290 = load i16*, i16** %5, align 8
  %291 = getelementptr inbounds i16, i16* %290, i64 0
  %292 = load i16, i16* %291, align 2
  %293 = sext i16 %292 to i32
  %294 = load i16*, i16** %5, align 8
  %295 = getelementptr inbounds i16, i16* %294, i64 4
  %296 = load i16, i16* %295, align 2
  %297 = sext i16 %296 to i32
  %298 = add nsw i32 %293, %297
  %299 = mul nsw i32 %289, %298
  %300 = add nsw i32 %288, %299
  %301 = load i32, i32* @ROW_SHIFT, align 4
  %302 = ashr i32 %300, %301
  store i32 %302, i32* %27, align 4
  %303 = load i32, i32* %7, align 4
  %304 = load i32, i32* %11, align 4
  %305 = load i16*, i16** %5, align 8
  %306 = getelementptr inbounds i16, i16* %305, i64 0
  %307 = load i16, i16* %306, align 2
  %308 = sext i16 %307 to i32
  %309 = load i16*, i16** %5, align 8
  %310 = getelementptr inbounds i16, i16* %309, i64 4
  %311 = load i16, i16* %310, align 2
  %312 = sext i16 %311 to i32
  %313 = sub nsw i32 %308, %312
  %314 = mul nsw i32 %304, %313
  %315 = add nsw i32 %303, %314
  %316 = load i32, i32* @ROW_SHIFT, align 4
  %317 = ashr i32 %315, %316
  store i32 %317, i32* %28, align 4
  %318 = load i32, i32* %27, align 4
  %319 = trunc i32 %318 to i16
  %320 = load i16*, i16** %5, align 8
  %321 = getelementptr inbounds i16, i16* %320, i64 0
  store i16 %319, i16* %321, align 2
  %322 = load i32, i32* %27, align 4
  %323 = trunc i32 %322 to i16
  %324 = load i16*, i16** %5, align 8
  %325 = getelementptr inbounds i16, i16* %324, i64 3
  store i16 %323, i16* %325, align 2
  %326 = load i32, i32* %27, align 4
  %327 = trunc i32 %326 to i16
  %328 = load i16*, i16** %5, align 8
  %329 = getelementptr inbounds i16, i16* %328, i64 4
  store i16 %327, i16* %329, align 2
  %330 = load i32, i32* %27, align 4
  %331 = trunc i32 %330 to i16
  %332 = load i16*, i16** %5, align 8
  %333 = getelementptr inbounds i16, i16* %332, i64 7
  store i16 %331, i16* %333, align 2
  %334 = load i32, i32* %28, align 4
  %335 = trunc i32 %334 to i16
  %336 = load i16*, i16** %5, align 8
  %337 = getelementptr inbounds i16, i16* %336, i64 1
  store i16 %335, i16* %337, align 2
  %338 = load i32, i32* %28, align 4
  %339 = trunc i32 %338 to i16
  %340 = load i16*, i16** %5, align 8
  %341 = getelementptr inbounds i16, i16* %340, i64 2
  store i16 %339, i16* %341, align 2
  %342 = load i32, i32* %28, align 4
  %343 = trunc i32 %342 to i16
  %344 = load i16*, i16** %5, align 8
  %345 = getelementptr inbounds i16, i16* %344, i64 5
  store i16 %343, i16* %345, align 2
  %346 = load i32, i32* %28, align 4
  %347 = trunc i32 %346 to i16
  %348 = load i16*, i16** %5, align 8
  %349 = getelementptr inbounds i16, i16* %348, i64 6
  store i16 %347, i16* %349, align 2
  br label %619

350:                                              ; preds = %282
  %351 = load i32, i32* %11, align 4
  %352 = load i16*, i16** %5, align 8
  %353 = getelementptr inbounds i16, i16* %352, i64 0
  %354 = load i16, i16* %353, align 2
  %355 = sext i16 %354 to i32
  %356 = mul nsw i32 %351, %355
  %357 = load i32, i32* %7, align 4
  %358 = add nsw i32 %356, %357
  store i32 %358, i32* %29, align 4
  %359 = load i32, i32* %29, align 4
  %360 = load i32, i32* %9, align 4
  %361 = load i16*, i16** %5, align 8
  %362 = getelementptr inbounds i16, i16* %361, i64 2
  %363 = load i16, i16* %362, align 2
  %364 = sext i16 %363 to i32
  %365 = mul nsw i32 %360, %364
  %366 = add nsw i32 %359, %365
  %367 = load i32, i32* %11, align 4
  %368 = load i16*, i16** %5, align 8
  %369 = getelementptr inbounds i16, i16* %368, i64 4
  %370 = load i16, i16* %369, align 2
  %371 = sext i16 %370 to i32
  %372 = mul nsw i32 %367, %371
  %373 = add nsw i32 %366, %372
  %374 = load i32, i32* %13, align 4
  %375 = load i16*, i16** %5, align 8
  %376 = getelementptr inbounds i16, i16* %375, i64 6
  %377 = load i16, i16* %376, align 2
  %378 = sext i16 %377 to i32
  %379 = mul nsw i32 %374, %378
  %380 = add nsw i32 %373, %379
  store i32 %380, i32* %30, align 4
  %381 = load i32, i32* %29, align 4
  %382 = load i32, i32* %13, align 4
  %383 = load i16*, i16** %5, align 8
  %384 = getelementptr inbounds i16, i16* %383, i64 2
  %385 = load i16, i16* %384, align 2
  %386 = sext i16 %385 to i32
  %387 = mul nsw i32 %382, %386
  %388 = add nsw i32 %381, %387
  %389 = load i32, i32* %11, align 4
  %390 = load i16*, i16** %5, align 8
  %391 = getelementptr inbounds i16, i16* %390, i64 4
  %392 = load i16, i16* %391, align 2
  %393 = sext i16 %392 to i32
  %394 = mul nsw i32 %389, %393
  %395 = sub nsw i32 %388, %394
  %396 = load i32, i32* %9, align 4
  %397 = load i16*, i16** %5, align 8
  %398 = getelementptr inbounds i16, i16* %397, i64 6
  %399 = load i16, i16* %398, align 2
  %400 = sext i16 %399 to i32
  %401 = mul nsw i32 %396, %400
  %402 = sub nsw i32 %395, %401
  store i32 %402, i32* %31, align 4
  %403 = load i32, i32* %29, align 4
  %404 = load i32, i32* %13, align 4
  %405 = load i16*, i16** %5, align 8
  %406 = getelementptr inbounds i16, i16* %405, i64 2
  %407 = load i16, i16* %406, align 2
  %408 = sext i16 %407 to i32
  %409 = mul nsw i32 %404, %408
  %410 = sub nsw i32 %403, %409
  %411 = load i32, i32* %11, align 4
  %412 = load i16*, i16** %5, align 8
  %413 = getelementptr inbounds i16, i16* %412, i64 4
  %414 = load i16, i16* %413, align 2
  %415 = sext i16 %414 to i32
  %416 = mul nsw i32 %411, %415
  %417 = sub nsw i32 %410, %416
  %418 = load i32, i32* %9, align 4
  %419 = load i16*, i16** %5, align 8
  %420 = getelementptr inbounds i16, i16* %419, i64 6
  %421 = load i16, i16* %420, align 2
  %422 = sext i16 %421 to i32
  %423 = mul nsw i32 %418, %422
  %424 = add nsw i32 %417, %423
  store i32 %424, i32* %32, align 4
  %425 = load i32, i32* %29, align 4
  %426 = load i32, i32* %9, align 4
  %427 = load i16*, i16** %5, align 8
  %428 = getelementptr inbounds i16, i16* %427, i64 2
  %429 = load i16, i16* %428, align 2
  %430 = sext i16 %429 to i32
  %431 = mul nsw i32 %426, %430
  %432 = sub nsw i32 %425, %431
  %433 = load i32, i32* %11, align 4
  %434 = load i16*, i16** %5, align 8
  %435 = getelementptr inbounds i16, i16* %434, i64 4
  %436 = load i16, i16* %435, align 2
  %437 = sext i16 %436 to i32
  %438 = mul nsw i32 %433, %437
  %439 = add nsw i32 %432, %438
  %440 = load i32, i32* %13, align 4
  %441 = load i16*, i16** %5, align 8
  %442 = getelementptr inbounds i16, i16* %441, i64 6
  %443 = load i16, i16* %442, align 2
  %444 = sext i16 %443 to i32
  %445 = mul nsw i32 %440, %444
  %446 = sub nsw i32 %439, %445
  store i32 %446, i32* %33, align 4
  %447 = load i32, i32* %8, align 4
  %448 = load i16*, i16** %5, align 8
  %449 = getelementptr inbounds i16, i16* %448, i64 1
  %450 = load i16, i16* %449, align 2
  %451 = sext i16 %450 to i32
  %452 = mul nsw i32 %447, %451
  %453 = load i32, i32* %10, align 4
  %454 = load i16*, i16** %5, align 8
  %455 = getelementptr inbounds i16, i16* %454, i64 3
  %456 = load i16, i16* %455, align 2
  %457 = sext i16 %456 to i32
  %458 = mul nsw i32 %453, %457
  %459 = add nsw i32 %452, %458
  %460 = load i32, i32* %12, align 4
  %461 = load i16*, i16** %5, align 8
  %462 = getelementptr inbounds i16, i16* %461, i64 5
  %463 = load i16, i16* %462, align 2
  %464 = sext i16 %463 to i32
  %465 = mul nsw i32 %460, %464
  %466 = add nsw i32 %459, %465
  %467 = load i32, i32* %14, align 4
  %468 = load i16*, i16** %5, align 8
  %469 = getelementptr inbounds i16, i16* %468, i64 7
  %470 = load i16, i16* %469, align 2
  %471 = sext i16 %470 to i32
  %472 = mul nsw i32 %467, %471
  %473 = add nsw i32 %466, %472
  store i32 %473, i32* %34, align 4
  %474 = load i32, i32* %10, align 4
  %475 = load i16*, i16** %5, align 8
  %476 = getelementptr inbounds i16, i16* %475, i64 1
  %477 = load i16, i16* %476, align 2
  %478 = sext i16 %477 to i32
  %479 = mul nsw i32 %474, %478
  %480 = load i32, i32* %14, align 4
  %481 = load i16*, i16** %5, align 8
  %482 = getelementptr inbounds i16, i16* %481, i64 3
  %483 = load i16, i16* %482, align 2
  %484 = sext i16 %483 to i32
  %485 = mul nsw i32 %480, %484
  %486 = sub nsw i32 %479, %485
  %487 = load i32, i32* %8, align 4
  %488 = load i16*, i16** %5, align 8
  %489 = getelementptr inbounds i16, i16* %488, i64 5
  %490 = load i16, i16* %489, align 2
  %491 = sext i16 %490 to i32
  %492 = mul nsw i32 %487, %491
  %493 = sub nsw i32 %486, %492
  %494 = load i32, i32* %12, align 4
  %495 = load i16*, i16** %5, align 8
  %496 = getelementptr inbounds i16, i16* %495, i64 7
  %497 = load i16, i16* %496, align 2
  %498 = sext i16 %497 to i32
  %499 = mul nsw i32 %494, %498
  %500 = sub nsw i32 %493, %499
  store i32 %500, i32* %35, align 4
  %501 = load i32, i32* %12, align 4
  %502 = load i16*, i16** %5, align 8
  %503 = getelementptr inbounds i16, i16* %502, i64 1
  %504 = load i16, i16* %503, align 2
  %505 = sext i16 %504 to i32
  %506 = mul nsw i32 %501, %505
  %507 = load i32, i32* %8, align 4
  %508 = load i16*, i16** %5, align 8
  %509 = getelementptr inbounds i16, i16* %508, i64 3
  %510 = load i16, i16* %509, align 2
  %511 = sext i16 %510 to i32
  %512 = mul nsw i32 %507, %511
  %513 = sub nsw i32 %506, %512
  %514 = load i32, i32* %14, align 4
  %515 = load i16*, i16** %5, align 8
  %516 = getelementptr inbounds i16, i16* %515, i64 5
  %517 = load i16, i16* %516, align 2
  %518 = sext i16 %517 to i32
  %519 = mul nsw i32 %514, %518
  %520 = add nsw i32 %513, %519
  %521 = load i32, i32* %10, align 4
  %522 = load i16*, i16** %5, align 8
  %523 = getelementptr inbounds i16, i16* %522, i64 7
  %524 = load i16, i16* %523, align 2
  %525 = sext i16 %524 to i32
  %526 = mul nsw i32 %521, %525
  %527 = add nsw i32 %520, %526
  store i32 %527, i32* %36, align 4
  %528 = load i32, i32* %14, align 4
  %529 = load i16*, i16** %5, align 8
  %530 = getelementptr inbounds i16, i16* %529, i64 1
  %531 = load i16, i16* %530, align 2
  %532 = sext i16 %531 to i32
  %533 = mul nsw i32 %528, %532
  %534 = load i32, i32* %12, align 4
  %535 = load i16*, i16** %5, align 8
  %536 = getelementptr inbounds i16, i16* %535, i64 3
  %537 = load i16, i16* %536, align 2
  %538 = sext i16 %537 to i32
  %539 = mul nsw i32 %534, %538
  %540 = sub nsw i32 %533, %539
  %541 = load i32, i32* %10, align 4
  %542 = load i16*, i16** %5, align 8
  %543 = getelementptr inbounds i16, i16* %542, i64 5
  %544 = load i16, i16* %543, align 2
  %545 = sext i16 %544 to i32
  %546 = mul nsw i32 %541, %545
  %547 = add nsw i32 %540, %546
  %548 = load i32, i32* %8, align 4
  %549 = load i16*, i16** %5, align 8
  %550 = getelementptr inbounds i16, i16* %549, i64 7
  %551 = load i16, i16* %550, align 2
  %552 = sext i16 %551 to i32
  %553 = mul nsw i32 %548, %552
  %554 = sub nsw i32 %547, %553
  store i32 %554, i32* %37, align 4
  %555 = load i32, i32* %30, align 4
  %556 = load i32, i32* %34, align 4
  %557 = add nsw i32 %555, %556
  %558 = load i32, i32* @ROW_SHIFT, align 4
  %559 = ashr i32 %557, %558
  %560 = trunc i32 %559 to i16
  %561 = load i16*, i16** %5, align 8
  %562 = getelementptr inbounds i16, i16* %561, i64 0
  store i16 %560, i16* %562, align 2
  %563 = load i32, i32* %31, align 4
  %564 = load i32, i32* %35, align 4
  %565 = add nsw i32 %563, %564
  %566 = load i32, i32* @ROW_SHIFT, align 4
  %567 = ashr i32 %565, %566
  %568 = trunc i32 %567 to i16
  %569 = load i16*, i16** %5, align 8
  %570 = getelementptr inbounds i16, i16* %569, i64 1
  store i16 %568, i16* %570, align 2
  %571 = load i32, i32* %32, align 4
  %572 = load i32, i32* %36, align 4
  %573 = add nsw i32 %571, %572
  %574 = load i32, i32* @ROW_SHIFT, align 4
  %575 = ashr i32 %573, %574
  %576 = trunc i32 %575 to i16
  %577 = load i16*, i16** %5, align 8
  %578 = getelementptr inbounds i16, i16* %577, i64 2
  store i16 %576, i16* %578, align 2
  %579 = load i32, i32* %33, align 4
  %580 = load i32, i32* %37, align 4
  %581 = add nsw i32 %579, %580
  %582 = load i32, i32* @ROW_SHIFT, align 4
  %583 = ashr i32 %581, %582
  %584 = trunc i32 %583 to i16
  %585 = load i16*, i16** %5, align 8
  %586 = getelementptr inbounds i16, i16* %585, i64 3
  store i16 %584, i16* %586, align 2
  %587 = load i32, i32* %33, align 4
  %588 = load i32, i32* %37, align 4
  %589 = sub nsw i32 %587, %588
  %590 = load i32, i32* @ROW_SHIFT, align 4
  %591 = ashr i32 %589, %590
  %592 = trunc i32 %591 to i16
  %593 = load i16*, i16** %5, align 8
  %594 = getelementptr inbounds i16, i16* %593, i64 4
  store i16 %592, i16* %594, align 2
  %595 = load i32, i32* %32, align 4
  %596 = load i32, i32* %36, align 4
  %597 = sub nsw i32 %595, %596
  %598 = load i32, i32* @ROW_SHIFT, align 4
  %599 = ashr i32 %597, %598
  %600 = trunc i32 %599 to i16
  %601 = load i16*, i16** %5, align 8
  %602 = getelementptr inbounds i16, i16* %601, i64 5
  store i16 %600, i16* %602, align 2
  %603 = load i32, i32* %31, align 4
  %604 = load i32, i32* %35, align 4
  %605 = sub nsw i32 %603, %604
  %606 = load i32, i32* @ROW_SHIFT, align 4
  %607 = ashr i32 %605, %606
  %608 = trunc i32 %607 to i16
  %609 = load i16*, i16** %5, align 8
  %610 = getelementptr inbounds i16, i16* %609, i64 6
  store i16 %608, i16* %610, align 2
  %611 = load i32, i32* %30, align 4
  %612 = load i32, i32* %34, align 4
  %613 = sub nsw i32 %611, %612
  %614 = load i32, i32* @ROW_SHIFT, align 4
  %615 = ashr i32 %613, %614
  %616 = trunc i32 %615 to i16
  %617 = load i16*, i16** %5, align 8
  %618 = getelementptr inbounds i16, i16* %617, i64 7
  store i16 %616, i16* %618, align 2
  br label %619

619:                                              ; preds = %350, %287
  br label %620

620:                                              ; preds = %619, %281
  store i32 1, i32* %4, align 4
  br label %621

621:                                              ; preds = %620, %279
  %622 = load i32, i32* %4, align 4
  ret i32 %622
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
