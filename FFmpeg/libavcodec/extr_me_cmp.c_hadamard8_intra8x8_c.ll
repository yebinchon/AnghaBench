; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_hadamard8_intra8x8_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_me_cmp.c_hadamard8_intra8x8_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32)* @hadamard8_intra8x8_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hadamard8_intra8x8_c(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [64 x i32], align 16
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 8
  %16 = zext i1 %15 to i32
  %17 = call i32 @av_assert2(i32 %16)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %242, %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %245

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 8, %22
  %24 = add nsw i32 %23, 0
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 8, %28
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %37, 0
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BUTTERFLY2(i32 %27, i32 %33, i32 %41, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 8, %51
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = mul nsw i32 8, %57
  %59 = add nsw i32 %58, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @BUTTERFLY2(i32 %56, i32 %62, i32 %70, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 8, %80
  %82 = add nsw i32 %81, 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = mul nsw i32 8, %86
  %88 = add nsw i32 %87, 5
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %11, align 4
  %103 = mul nsw i32 %101, %102
  %104 = add nsw i32 %103, 5
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %100, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @BUTTERFLY2(i32 %85, i32 %91, i32 %99, i32 %107)
  %109 = load i32, i32* %11, align 4
  %110 = mul nsw i32 8, %109
  %111 = add nsw i32 %110, 6
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = mul nsw i32 8, %115
  %117 = add nsw i32 %116, 7
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %11, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %124, 6
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %121, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %132, 7
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @BUTTERFLY2(i32 %114, i32 %120, i32 %128, i32 %136)
  %138 = load i32, i32* %11, align 4
  %139 = mul nsw i32 8, %138
  %140 = add nsw i32 %139, 0
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %11, align 4
  %145 = mul nsw i32 8, %144
  %146 = add nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @BUTTERFLY1(i32 %143, i32 %149)
  %151 = load i32, i32* %11, align 4
  %152 = mul nsw i32 8, %151
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %11, align 4
  %158 = mul nsw i32 8, %157
  %159 = add nsw i32 %158, 3
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @BUTTERFLY1(i32 %156, i32 %162)
  %164 = load i32, i32* %11, align 4
  %165 = mul nsw i32 8, %164
  %166 = add nsw i32 %165, 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %11, align 4
  %171 = mul nsw i32 8, %170
  %172 = add nsw i32 %171, 6
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @BUTTERFLY1(i32 %169, i32 %175)
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 8, %177
  %179 = add nsw i32 %178, 5
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %11, align 4
  %184 = mul nsw i32 8, %183
  %185 = add nsw i32 %184, 7
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @BUTTERFLY1(i32 %182, i32 %188)
  %190 = load i32, i32* %11, align 4
  %191 = mul nsw i32 8, %190
  %192 = add nsw i32 %191, 0
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %11, align 4
  %197 = mul nsw i32 8, %196
  %198 = add nsw i32 %197, 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @BUTTERFLY1(i32 %195, i32 %201)
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 8, %203
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %11, align 4
  %210 = mul nsw i32 8, %209
  %211 = add nsw i32 %210, 5
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @BUTTERFLY1(i32 %208, i32 %214)
  %216 = load i32, i32* %11, align 4
  %217 = mul nsw i32 8, %216
  %218 = add nsw i32 %217, 2
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %11, align 4
  %223 = mul nsw i32 8, %222
  %224 = add nsw i32 %223, 6
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @BUTTERFLY1(i32 %221, i32 %227)
  %229 = load i32, i32* %11, align 4
  %230 = mul nsw i32 8, %229
  %231 = add nsw i32 %230, 3
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %11, align 4
  %236 = mul nsw i32 8, %235
  %237 = add nsw i32 %236, 7
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @BUTTERFLY1(i32 %234, i32 %240)
  br label %242

242:                                              ; preds = %21
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %11, align 4
  br label %18

245:                                              ; preds = %18
  store i32 0, i32* %11, align 4
  br label %246

246:                                              ; preds = %389, %245
  %247 = load i32, i32* %11, align 4
  %248 = icmp slt i32 %247, 8
  br i1 %248, label %249, label %392

249:                                              ; preds = %246
  %250 = load i32, i32* %11, align 4
  %251 = add nsw i32 0, %250
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 8, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @BUTTERFLY1(i32 %254, i32 %259)
  %261 = load i32, i32* %11, align 4
  %262 = add nsw i32 16, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %11, align 4
  %267 = add nsw i32 24, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @BUTTERFLY1(i32 %265, i32 %270)
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 32, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 40, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @BUTTERFLY1(i32 %276, i32 %281)
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 48, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %11, align 4
  %289 = add nsw i32 56, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @BUTTERFLY1(i32 %287, i32 %292)
  %294 = load i32, i32* %11, align 4
  %295 = add nsw i32 0, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 16, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @BUTTERFLY1(i32 %298, i32 %303)
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 8, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %11, align 4
  %311 = add nsw i32 24, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @BUTTERFLY1(i32 %309, i32 %314)
  %316 = load i32, i32* %11, align 4
  %317 = add nsw i32 32, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %11, align 4
  %322 = add nsw i32 48, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @BUTTERFLY1(i32 %320, i32 %325)
  %327 = load i32, i32* %11, align 4
  %328 = add nsw i32 40, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %11, align 4
  %333 = add nsw i32 56, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @BUTTERFLY1(i32 %331, i32 %336)
  %338 = load i32, i32* %11, align 4
  %339 = add nsw i32 0, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %11, align 4
  %344 = add nsw i32 32, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = call i64 @BUTTERFLYA(i32 %342, i32 %347)
  %349 = load i32, i32* %11, align 4
  %350 = add nsw i32 8, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %11, align 4
  %355 = add nsw i32 40, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = call i64 @BUTTERFLYA(i32 %353, i32 %358)
  %360 = add nsw i64 %348, %359
  %361 = load i32, i32* %11, align 4
  %362 = add nsw i32 16, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %11, align 4
  %367 = add nsw i32 48, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = call i64 @BUTTERFLYA(i32 %365, i32 %370)
  %372 = add nsw i64 %360, %371
  %373 = load i32, i32* %11, align 4
  %374 = add nsw i32 24, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %11, align 4
  %379 = add nsw i32 56, %378
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = call i64 @BUTTERFLYA(i32 %377, i32 %382)
  %384 = add nsw i64 %372, %383
  %385 = load i32, i32* %13, align 4
  %386 = sext i32 %385 to i64
  %387 = add nsw i64 %386, %384
  %388 = trunc i64 %387 to i32
  store i32 %388, i32* %13, align 4
  br label %389

389:                                              ; preds = %249
  %390 = load i32, i32* %11, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %11, align 4
  br label %246

392:                                              ; preds = %246
  %393 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 0
  %394 = load i32, i32* %393, align 16
  %395 = getelementptr inbounds [64 x i32], [64 x i32]* %12, i64 0, i64 32
  %396 = load i32, i32* %395, align 16
  %397 = add nsw i32 %394, %396
  %398 = call i64 @FFABS(i32 %397)
  %399 = load i32, i32* %13, align 4
  %400 = sext i32 %399 to i64
  %401 = sub nsw i64 %400, %398
  %402 = trunc i64 %401 to i32
  store i32 %402, i32* %13, align 4
  %403 = load i32, i32* %13, align 4
  ret i32 %403
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @BUTTERFLY2(i32, i32, i32, i32) #1

declare dso_local i32 @BUTTERFLY1(i32, i32) #1

declare dso_local i64 @BUTTERFLYA(i32, i32) #1

declare dso_local i64 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
