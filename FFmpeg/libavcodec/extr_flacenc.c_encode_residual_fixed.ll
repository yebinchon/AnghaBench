; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacenc.c_encode_residual_fixed.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacenc.c_encode_residual_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @encode_residual_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_residual_fixed(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
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
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %36, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %58, %42
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %44

61:                                               ; preds = %44
  br label %379

62:                                               ; preds = %39
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %92

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %88, %65
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %76, %82
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %67

91:                                               ; preds = %67
  br label %378

92:                                               ; preds = %62
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %158

95:                                               ; preds = %92
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %101, %107
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %154, %95
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %157

114:                                              ; preds = %110
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %119, %125
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %127, %128
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %129, i32* %133, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %139, %144
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %114
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 2
  store i32 %156, i32* %9, align 4
  br label %110

157:                                              ; preds = %110
  br label %377

158:                                              ; preds = %92
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 3
  br i1 %160, label %161, label %251

161:                                              ; preds = %158
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %167, %173
  store i32 %174, i32* %12, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %6, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sub nsw i32 %182, 2
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 2, %186
  %188 = sub nsw i32 %180, %187
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sub nsw i32 %190, 3
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %188, %194
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %247, %161
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %250

201:                                              ; preds = %197
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %6, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %206, %212
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %12, align 4
  %216 = sub nsw i32 %214, %215
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 %217, %218
  %220 = load i32*, i32** %5, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  store i32 %219, i32* %223, align 4
  %224 = load i32*, i32** %6, align 8
  %225 = load i32, i32* %9, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %229, %234
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %14, align 4
  %238 = sub nsw i32 %236, %237
  store i32 %238, i32* %13, align 4
  %239 = load i32, i32* %13, align 4
  %240 = load i32, i32* %15, align 4
  %241 = sub nsw i32 %239, %240
  %242 = load i32*, i32** %5, align 8
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  store i32 %241, i32* %246, align 4
  br label %247

247:                                              ; preds = %201
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 2
  store i32 %249, i32* %9, align 4
  br label %197

250:                                              ; preds = %197
  br label %376

251:                                              ; preds = %158
  %252 = load i32*, i32** %6, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %6, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sub nsw i32 %259, 2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %257, %263
  store i32 %264, i32* %16, align 4
  %265 = load i32*, i32** %6, align 8
  %266 = load i32, i32* %8, align 4
  %267 = sub nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32*, i32** %6, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sub nsw i32 %272, 2
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = mul nsw i32 2, %276
  %278 = sub nsw i32 %270, %277
  %279 = load i32*, i32** %6, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sub nsw i32 %280, 3
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %278, %284
  store i32 %285, i32* %17, align 4
  %286 = load i32*, i32** %6, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %6, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sub nsw i32 %293, 2
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 3, %297
  %299 = sub nsw i32 %291, %298
  %300 = load i32*, i32** %6, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sub nsw i32 %301, 3
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 3, %305
  %307 = add nsw i32 %299, %306
  %308 = load i32*, i32** %6, align 8
  %309 = load i32, i32* %8, align 4
  %310 = sub nsw i32 %309, 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = sub nsw i32 %307, %313
  store i32 %314, i32* %18, align 4
  %315 = load i32, i32* %8, align 4
  store i32 %315, i32* %9, align 4
  br label %316

316:                                              ; preds = %372, %251
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* %7, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %375

320:                                              ; preds = %316
  %321 = load i32*, i32** %6, align 8
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32*, i32** %6, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sub nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %326, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = sub nsw i32 %325, %331
  store i32 %332, i32* %19, align 4
  %333 = load i32, i32* %19, align 4
  %334 = load i32, i32* %16, align 4
  %335 = sub nsw i32 %333, %334
  store i32 %335, i32* %20, align 4
  %336 = load i32, i32* %20, align 4
  %337 = load i32, i32* %17, align 4
  %338 = sub nsw i32 %336, %337
  store i32 %338, i32* %21, align 4
  %339 = load i32, i32* %21, align 4
  %340 = load i32, i32* %18, align 4
  %341 = sub nsw i32 %339, %340
  %342 = load i32*, i32** %5, align 8
  %343 = load i32, i32* %9, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  store i32 %341, i32* %345, align 4
  %346 = load i32*, i32** %6, align 8
  %347 = load i32, i32* %9, align 4
  %348 = add nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %346, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32*, i32** %6, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %351, %356
  store i32 %357, i32* %16, align 4
  %358 = load i32, i32* %16, align 4
  %359 = load i32, i32* %19, align 4
  %360 = sub nsw i32 %358, %359
  store i32 %360, i32* %17, align 4
  %361 = load i32, i32* %17, align 4
  %362 = load i32, i32* %20, align 4
  %363 = sub nsw i32 %361, %362
  store i32 %363, i32* %18, align 4
  %364 = load i32, i32* %18, align 4
  %365 = load i32, i32* %21, align 4
  %366 = sub nsw i32 %364, %365
  %367 = load i32*, i32** %5, align 8
  %368 = load i32, i32* %9, align 4
  %369 = add nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %367, i64 %370
  store i32 %366, i32* %371, align 4
  br label %372

372:                                              ; preds = %320
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %373, 2
  store i32 %374, i32* %9, align 4
  br label %316

375:                                              ; preds = %316
  br label %376

376:                                              ; preds = %375, %250
  br label %377

377:                                              ; preds = %376, %157
  br label %378

378:                                              ; preds = %377, %91
  br label %379

379:                                              ; preds = %378, %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
