; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_idct.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_4xm.c_idct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIX_1_414213562 = common dso_local global i32 0, align 4
@FIX_1_847759065 = common dso_local global i32 0, align 4
@FIX_1_082392200 = common dso_local global i32 0, align 4
@FIX_2_613125930 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @idct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  %21 = alloca [64 x i32], align 16
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %20, align 4
  br label %22

22:                                               ; preds = %235, %1
  %23 = load i32, i32* %20, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %238

25:                                               ; preds = %22
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %20, align 4
  %28 = add nsw i32 0, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %20, align 4
  %34 = add nsw i32 32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %31, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %20, align 4
  %41 = add nsw i32 0, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* %20, align 4
  %47 = add nsw i32 32, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %44, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* %20, align 4
  %54 = add nsw i32 16, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 48, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %57, %63
  store i32 %64, i32* %14, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %20, align 4
  %67 = add nsw i32 16, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 48, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %70, %76
  %78 = load i32, i32* @FIX_1_414213562, align 4
  %79 = call i32 @MULTIPLY(i32 %77, i32 %78)
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %5, align 4
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* %20, align 4
  %96 = add nsw i32 40, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 24, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %99, %105
  store i32 %106, i32* %19, align 4
  %107 = load i32*, i32** %2, align 8
  %108 = load i32, i32* %20, align 4
  %109 = add nsw i32 40, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %2, align 8
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 24, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %112, %118
  store i32 %119, i32* %16, align 4
  %120 = load i32*, i32** %2, align 8
  %121 = load i32, i32* %20, align 4
  %122 = add nsw i32 8, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %2, align 8
  %127 = load i32, i32* %20, align 4
  %128 = add nsw i32 56, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %125, %131
  store i32 %132, i32* %17, align 4
  %133 = load i32*, i32** %2, align 8
  %134 = load i32, i32* %20, align 4
  %135 = add nsw i32 8, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %2, align 8
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 56, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %138, %144
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %19, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %19, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* @FIX_1_414213562, align 4
  %153 = call i32 @MULTIPLY(i32 %151, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* @FIX_1_847759065, align 4
  %158 = call i32 @MULTIPLY(i32 %156, i32 %157)
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* @FIX_1_082392200, align 4
  %161 = call i32 @MULTIPLY(i32 %159, i32 %160)
  %162 = load i32, i32* %15, align 4
  %163 = sub nsw i32 %161, %162
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* @FIX_2_613125930, align 4
  %166 = sub nsw i32 0, %165
  %167 = call i32 @MULTIPLY(i32 %164, i32 %166)
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %167, %168
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %10, align 4
  %172 = sub nsw i32 %170, %171
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 0, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load i32, i32* %3, align 4
  %187 = load i32, i32* %10, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 56, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %191
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32, i32* %20, align 4
  %197 = add nsw i32 8, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %198
  store i32 %195, i32* %199, align 4
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* %9, align 4
  %202 = sub nsw i32 %200, %201
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 48, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %205
  store i32 %202, i32* %206, align 4
  %207 = load i32, i32* %5, align 4
  %208 = load i32, i32* %8, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %20, align 4
  %211 = add nsw i32 16, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %212
  store i32 %209, i32* %213, align 4
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* %8, align 4
  %216 = sub nsw i32 %214, %215
  %217 = load i32, i32* %20, align 4
  %218 = add nsw i32 40, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %219
  store i32 %216, i32* %220, align 4
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %221, %222
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 32, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %226
  store i32 %223, i32* %227, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %7, align 4
  %230 = sub nsw i32 %228, %229
  %231 = load i32, i32* %20, align 4
  %232 = add nsw i32 24, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %233
  store i32 %230, i32* %234, align 4
  br label %235

235:                                              ; preds = %25
  %236 = load i32, i32* %20, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %20, align 4
  br label %22

238:                                              ; preds = %22
  store i32 0, i32* %20, align 4
  br label %239

239:                                              ; preds = %452, %238
  %240 = load i32, i32* %20, align 4
  %241 = icmp slt i32 %240, 64
  br i1 %241, label %242, label %455

242:                                              ; preds = %239
  %243 = load i32, i32* %20, align 4
  %244 = add nsw i32 0, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %20, align 4
  %249 = add nsw i32 4, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %247, %252
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %20, align 4
  %255 = add nsw i32 0, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %20, align 4
  %260 = add nsw i32 4, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %258, %263
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %20, align 4
  %266 = add nsw i32 2, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 6, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %269, %274
  store i32 %275, i32* %14, align 4
  %276 = load i32, i32* %20, align 4
  %277 = add nsw i32 2, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %20, align 4
  %282 = add nsw i32 6, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %280, %285
  %287 = load i32, i32* @FIX_1_414213562, align 4
  %288 = call i32 @MULTIPLY(i32 %286, i32 %287)
  %289 = load i32, i32* %14, align 4
  %290 = sub nsw i32 %288, %289
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* %14, align 4
  %293 = add nsw i32 %291, %292
  store i32 %293, i32* %3, align 4
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* %14, align 4
  %296 = sub nsw i32 %294, %295
  store i32 %296, i32* %6, align 4
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %297, %298
  store i32 %299, i32* %4, align 4
  %300 = load i32, i32* %12, align 4
  %301 = load i32, i32* %13, align 4
  %302 = sub nsw i32 %300, %301
  store i32 %302, i32* %5, align 4
  %303 = load i32, i32* %20, align 4
  %304 = add nsw i32 5, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %20, align 4
  %309 = add nsw i32 3, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %307, %312
  store i32 %313, i32* %19, align 4
  %314 = load i32, i32* %20, align 4
  %315 = add nsw i32 5, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %20, align 4
  %320 = add nsw i32 3, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = sub nsw i32 %318, %323
  store i32 %324, i32* %16, align 4
  %325 = load i32, i32* %20, align 4
  %326 = add nsw i32 1, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %20, align 4
  %331 = add nsw i32 7, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %329, %334
  store i32 %335, i32* %17, align 4
  %336 = load i32, i32* %20, align 4
  %337 = add nsw i32 1, %336
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %20, align 4
  %342 = add nsw i32 7, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [64 x i32], [64 x i32]* %21, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = sub nsw i32 %340, %345
  store i32 %346, i32* %18, align 4
  %347 = load i32, i32* %17, align 4
  %348 = load i32, i32* %19, align 4
  %349 = add nsw i32 %347, %348
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %17, align 4
  %351 = load i32, i32* %19, align 4
  %352 = sub nsw i32 %350, %351
  %353 = load i32, i32* @FIX_1_414213562, align 4
  %354 = call i32 @MULTIPLY(i32 %352, i32 %353)
  store i32 %354, i32* %12, align 4
  %355 = load i32, i32* %16, align 4
  %356 = load i32, i32* %18, align 4
  %357 = add nsw i32 %355, %356
  %358 = load i32, i32* @FIX_1_847759065, align 4
  %359 = call i32 @MULTIPLY(i32 %357, i32 %358)
  store i32 %359, i32* %15, align 4
  %360 = load i32, i32* %18, align 4
  %361 = load i32, i32* @FIX_1_082392200, align 4
  %362 = call i32 @MULTIPLY(i32 %360, i32 %361)
  %363 = load i32, i32* %15, align 4
  %364 = sub nsw i32 %362, %363
  store i32 %364, i32* %11, align 4
  %365 = load i32, i32* %16, align 4
  %366 = load i32, i32* @FIX_2_613125930, align 4
  %367 = sub nsw i32 0, %366
  %368 = call i32 @MULTIPLY(i32 %365, i32 %367)
  %369 = load i32, i32* %15, align 4
  %370 = add nsw i32 %368, %369
  store i32 %370, i32* %13, align 4
  %371 = load i32, i32* %13, align 4
  %372 = load i32, i32* %10, align 4
  %373 = sub nsw i32 %371, %372
  store i32 %373, i32* %9, align 4
  %374 = load i32, i32* %12, align 4
  %375 = load i32, i32* %9, align 4
  %376 = sub nsw i32 %374, %375
  store i32 %376, i32* %8, align 4
  %377 = load i32, i32* %11, align 4
  %378 = load i32, i32* %8, align 4
  %379 = add nsw i32 %377, %378
  store i32 %379, i32* %7, align 4
  %380 = load i32, i32* %3, align 4
  %381 = load i32, i32* %10, align 4
  %382 = add nsw i32 %380, %381
  %383 = ashr i32 %382, 6
  %384 = load i32*, i32** %2, align 8
  %385 = load i32, i32* %20, align 4
  %386 = add nsw i32 0, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  store i32 %383, i32* %388, align 4
  %389 = load i32, i32* %3, align 4
  %390 = load i32, i32* %10, align 4
  %391 = sub nsw i32 %389, %390
  %392 = ashr i32 %391, 6
  %393 = load i32*, i32** %2, align 8
  %394 = load i32, i32* %20, align 4
  %395 = add nsw i32 7, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %393, i64 %396
  store i32 %392, i32* %397, align 4
  %398 = load i32, i32* %4, align 4
  %399 = load i32, i32* %9, align 4
  %400 = add nsw i32 %398, %399
  %401 = ashr i32 %400, 6
  %402 = load i32*, i32** %2, align 8
  %403 = load i32, i32* %20, align 4
  %404 = add nsw i32 1, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %402, i64 %405
  store i32 %401, i32* %406, align 4
  %407 = load i32, i32* %4, align 4
  %408 = load i32, i32* %9, align 4
  %409 = sub nsw i32 %407, %408
  %410 = ashr i32 %409, 6
  %411 = load i32*, i32** %2, align 8
  %412 = load i32, i32* %20, align 4
  %413 = add nsw i32 6, %412
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32, i32* %411, i64 %414
  store i32 %410, i32* %415, align 4
  %416 = load i32, i32* %5, align 4
  %417 = load i32, i32* %8, align 4
  %418 = add nsw i32 %416, %417
  %419 = ashr i32 %418, 6
  %420 = load i32*, i32** %2, align 8
  %421 = load i32, i32* %20, align 4
  %422 = add nsw i32 2, %421
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %420, i64 %423
  store i32 %419, i32* %424, align 4
  %425 = load i32, i32* %5, align 4
  %426 = load i32, i32* %8, align 4
  %427 = sub nsw i32 %425, %426
  %428 = ashr i32 %427, 6
  %429 = load i32*, i32** %2, align 8
  %430 = load i32, i32* %20, align 4
  %431 = add nsw i32 5, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %429, i64 %432
  store i32 %428, i32* %433, align 4
  %434 = load i32, i32* %6, align 4
  %435 = load i32, i32* %7, align 4
  %436 = add nsw i32 %434, %435
  %437 = ashr i32 %436, 6
  %438 = load i32*, i32** %2, align 8
  %439 = load i32, i32* %20, align 4
  %440 = add nsw i32 4, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %438, i64 %441
  store i32 %437, i32* %442, align 4
  %443 = load i32, i32* %6, align 4
  %444 = load i32, i32* %7, align 4
  %445 = sub nsw i32 %443, %444
  %446 = ashr i32 %445, 6
  %447 = load i32*, i32** %2, align 8
  %448 = load i32, i32* %20, align 4
  %449 = add nsw i32 3, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %447, i64 %450
  store i32 %446, i32* %451, align 4
  br label %452

452:                                              ; preds = %242
  %453 = load i32, i32* %20, align 4
  %454 = add nsw i32 %453, 8
  store i32 %454, i32* %20, align 4
  br label %239

455:                                              ; preds = %239
  ret void
}

declare dso_local i32 @MULTIPLY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
