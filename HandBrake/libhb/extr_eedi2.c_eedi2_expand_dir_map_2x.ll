; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_expand_dir_map_2x.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_expand_dir_map_2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eedi2_limlut = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eedi2_expand_dir_map_2x(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca [9 x i32], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @eedi2_bit_blit(i32* %31, i32 %32, i32* %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %16, align 4
  %40 = sub nsw i32 2, %39
  %41 = mul nsw i32 %38, %40
  %42 = load i32*, i32** %12, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = bitcast i32* %50 to i8*
  store i8* %51, i8** %22, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = mul nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %23, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %16, align 4
  %60 = sub nsw i32 1, %59
  %61 = mul nsw i32 %58, %60
  %62 = load i32*, i32** %10, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = bitcast i32* %69 to i8*
  store i8* %70, i8** %24, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 2, %72
  %74 = mul nsw i32 %71, %73
  %75 = load i32*, i32** %14, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %14, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 2, %78
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %406, %9
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %17, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %409

85:                                               ; preds = %80
  store i32 1, i32* %19, align 4
  br label %86

86:                                               ; preds = %372, %85
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %375

91:                                               ; preds = %86
  %92 = load i32*, i32** %12, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 255
  br i1 %97, label %113, label %98

98:                                               ; preds = %91
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 255
  br i1 %104, label %105, label %114

105:                                              ; preds = %98
  %106 = load i8*, i8** %24, align 8
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %111, 255
  br i1 %112, label %113, label %114

113:                                              ; preds = %105, %91
  br label %372

114:                                              ; preds = %105, %98
  store i32 0, i32* %25, align 4
  %115 = load i32, i32* %20, align 4
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %179

117:                                              ; preds = %114
  %118 = load i8*, i8** %22, align 8
  %119 = load i32, i32* %19, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 255
  br i1 %125, label %126, label %138

126:                                              ; preds = %117
  %127 = load i8*, i8** %22, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32, i32* %25, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %25, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %126, %117
  %139 = load i8*, i8** %22, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 255
  br i1 %145, label %146, label %157

146:                                              ; preds = %138
  %147 = load i8*, i8** %22, align 8
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = load i32, i32* %25, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %25, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %155
  store i32 %152, i32* %156, align 4
  br label %157

157:                                              ; preds = %146, %138
  %158 = load i8*, i8** %22, align 8
  %159 = load i32, i32* %19, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp ne i32 %164, 255
  br i1 %165, label %166, label %178

166:                                              ; preds = %157
  %167 = load i8*, i8** %22, align 8
  %168 = load i32, i32* %19, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = load i32, i32* %25, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %25, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %176
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %166, %157
  br label %179

179:                                              ; preds = %178, %114
  %180 = load i32*, i32** %12, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 255
  br i1 %186, label %187, label %198

187:                                              ; preds = %179
  %188 = load i32*, i32** %12, align 8
  %189 = load i32, i32* %19, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %25, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %25, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %196
  store i32 %193, i32* %197, align 4
  br label %198

198:                                              ; preds = %187, %179
  %199 = load i32*, i32** %12, align 8
  %200 = load i32, i32* %19, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %199, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 255
  br i1 %205, label %206, label %217

206:                                              ; preds = %198
  %207 = load i32*, i32** %12, align 8
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %25, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %25, align 4
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %215
  store i32 %212, i32* %216, align 4
  br label %217

217:                                              ; preds = %206, %198
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* %17, align 4
  %220 = sub nsw i32 %219, 2
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %284

222:                                              ; preds = %217
  %223 = load i8*, i8** %23, align 8
  %224 = load i32, i32* %19, align 4
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %223, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp ne i32 %229, 255
  br i1 %230, label %231, label %243

231:                                              ; preds = %222
  %232 = load i8*, i8** %23, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = load i32, i32* %25, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %25, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %241
  store i32 %238, i32* %242, align 4
  br label %243

243:                                              ; preds = %231, %222
  %244 = load i8*, i8** %23, align 8
  %245 = load i32, i32* %19, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %244, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp ne i32 %249, 255
  br i1 %250, label %251, label %262

251:                                              ; preds = %243
  %252 = load i8*, i8** %23, align 8
  %253 = load i32, i32* %19, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %252, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = load i32, i32* %25, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %25, align 4
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %260
  store i32 %257, i32* %261, align 4
  br label %262

262:                                              ; preds = %251, %243
  %263 = load i8*, i8** %23, align 8
  %264 = load i32, i32* %19, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp ne i32 %269, 255
  br i1 %270, label %271, label %283

271:                                              ; preds = %262
  %272 = load i8*, i8** %23, align 8
  %273 = load i32, i32* %19, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %272, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = load i32, i32* %25, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %25, align 4
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %281
  store i32 %278, i32* %282, align 4
  br label %283

283:                                              ; preds = %271, %262
  br label %284

284:                                              ; preds = %283, %217
  %285 = load i32, i32* %25, align 4
  %286 = icmp slt i32 %285, 5
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  br label %372

288:                                              ; preds = %284
  %289 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %290 = load i32, i32* %25, align 4
  %291 = call i32 @eedi2_sort_metrics(i32* %289, i32 %290)
  %292 = load i32, i32* %25, align 4
  %293 = and i32 %292, 1
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %288
  %296 = load i32, i32* %25, align 4
  %297 = ashr i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  br label %316

301:                                              ; preds = %288
  %302 = load i32, i32* %25, align 4
  %303 = sub nsw i32 %302, 1
  %304 = ashr i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %25, align 4
  %309 = ashr i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %307, %312
  %314 = add nsw i32 %313, 1
  %315 = ashr i32 %314, 1
  br label %316

316:                                              ; preds = %301, %295
  %317 = phi i32 [ %300, %295 ], [ %315, %301 ]
  store i32 %317, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %318 = load i32*, i32** @eedi2_limlut, align 8
  %319 = load i32, i32* %27, align 4
  %320 = sub nsw i32 %319, 128
  %321 = call i32 @abs(i32 %320)
  %322 = ashr i32 %321, 2
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %318, i64 %323
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %30, align 4
  store i32 0, i32* %21, align 4
  br label %326

326:                                              ; preds = %350, %316
  %327 = load i32, i32* %21, align 4
  %328 = load i32, i32* %25, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %353

330:                                              ; preds = %326
  %331 = load i32, i32* %21, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %27, align 4
  %336 = sub nsw i32 %334, %335
  %337 = call i32 @abs(i32 %336)
  %338 = load i32, i32* %30, align 4
  %339 = icmp sle i32 %337, %338
  br i1 %339, label %340, label %349

340:                                              ; preds = %330
  %341 = load i32, i32* %29, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %29, align 4
  %343 = load i32, i32* %21, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %28, align 4
  %348 = add nsw i32 %347, %346
  store i32 %348, i32* %28, align 4
  br label %349

349:                                              ; preds = %340, %330
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %21, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %21, align 4
  br label %326

353:                                              ; preds = %326
  %354 = load i32, i32* %29, align 4
  %355 = icmp slt i32 %354, 5
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  br label %372

357:                                              ; preds = %353
  %358 = load i32, i32* %28, align 4
  %359 = load i32, i32* %27, align 4
  %360 = add nsw i32 %358, %359
  %361 = sitofp i32 %360 to float
  %362 = load i32, i32* %29, align 4
  %363 = add nsw i32 %362, 1
  %364 = sitofp i32 %363 to float
  %365 = fdiv float %361, %364
  %366 = fadd float %365, 5.000000e-01
  %367 = fptosi float %366 to i32
  %368 = load i32*, i32** %14, align 8
  %369 = load i32, i32* %19, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  store i32 %367, i32* %371, align 4
  br label %372

372:                                              ; preds = %357, %356, %287, %113
  %373 = load i32, i32* %19, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %19, align 4
  br label %86

375:                                              ; preds = %86
  %376 = load i32, i32* %11, align 4
  %377 = mul nsw i32 %376, 2
  %378 = load i32*, i32** %10, align 8
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  store i32* %380, i32** %10, align 8
  %381 = load i32, i32* %11, align 4
  %382 = mul nsw i32 %381, 2
  %383 = load i8*, i8** %24, align 8
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  store i8* %385, i8** %24, align 8
  %386 = load i32, i32* %13, align 4
  %387 = mul nsw i32 %386, 2
  %388 = load i8*, i8** %22, align 8
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i8, i8* %388, i64 %389
  store i8* %390, i8** %22, align 8
  %391 = load i32, i32* %13, align 4
  %392 = mul nsw i32 %391, 2
  %393 = load i32*, i32** %12, align 8
  %394 = sext i32 %392 to i64
  %395 = getelementptr inbounds i32, i32* %393, i64 %394
  store i32* %395, i32** %12, align 8
  %396 = load i32, i32* %13, align 4
  %397 = mul nsw i32 %396, 2
  %398 = load i8*, i8** %23, align 8
  %399 = sext i32 %397 to i64
  %400 = getelementptr inbounds i8, i8* %398, i64 %399
  store i8* %400, i8** %23, align 8
  %401 = load i32, i32* %15, align 4
  %402 = mul nsw i32 %401, 2
  %403 = load i32*, i32** %14, align 8
  %404 = sext i32 %402 to i64
  %405 = getelementptr inbounds i32, i32* %403, i64 %404
  store i32* %405, i32** %14, align 8
  br label %406

406:                                              ; preds = %375
  %407 = load i32, i32* %20, align 4
  %408 = add nsw i32 %407, 2
  store i32 %408, i32* %20, align 4
  br label %80

409:                                              ; preds = %80
  ret void
}

declare dso_local i32 @eedi2_bit_blit(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @eedi2_sort_metrics(i32*, i32) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
