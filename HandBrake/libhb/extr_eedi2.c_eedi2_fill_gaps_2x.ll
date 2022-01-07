; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_fill_gaps_2x.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_fill_gaps_2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eedi2_fill_gaps_2x(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
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
  %38 = alloca i32, align 4
  %39 = alloca double, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @eedi2_bit_blit(i32* %40, i32 %41, i32* %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %16, align 4
  %49 = sub nsw i32 2, %48
  %50 = mul nsw i32 %47, %49
  %51 = load i32*, i32** %12, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %12, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = sub i64 0, %57
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = bitcast i32* %59 to i8*
  store i8* %60, i8** %22, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = bitcast i32* %65 to i8*
  store i8* %66, i8** %23, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sub nsw i32 1, %68
  %70 = mul nsw i32 %67, %69
  %71 = load i32*, i32** %10, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = bitcast i32* %79 to i8*
  store i8* %80, i8** %24, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = bitcast i32* %85 to i8*
  store i8* %86, i8** %25, align 8
  %87 = load i8*, i8** %25, align 8
  %88 = load i32, i32* %11, align 4
  %89 = mul nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8* %91, i8** %26, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = sub nsw i32 2, %93
  %95 = mul nsw i32 %92, %94
  %96 = load i32*, i32** %14, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %14, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sub nsw i32 2, %99
  store i32 %100, i32* %20, align 4
  br label %101

101:                                              ; preds = %491, %9
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %103, 1
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %494

106:                                              ; preds = %101
  store i32 1, i32* %19, align 4
  br label %107

107:                                              ; preds = %447, %106
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %18, align 4
  %110 = sub nsw i32 %109, 1
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %450

112:                                              ; preds = %107
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 255
  br i1 %118, label %134, label %119

119:                                              ; preds = %112
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 255
  br i1 %125, label %126, label %135

126:                                              ; preds = %119
  %127 = load i8*, i8** %25, align 8
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %132, 255
  br i1 %133, label %134, label %135

134:                                              ; preds = %126, %112
  br label %447

135:                                              ; preds = %126, %119
  %136 = load i32, i32* %19, align 4
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %27, align 4
  store i32 500, i32* %28, align 4
  store i32 -500, i32* %29, align 4
  br label %138

138:                                              ; preds = %170, %135
  %139 = load i32, i32* %27, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %138
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %27, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 255
  br i1 %147, label %148, label %154

148:                                              ; preds = %141
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %27, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %28, align 4
  br label %173

154:                                              ; preds = %141
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %27, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 255
  br i1 %160, label %161, label %170

161:                                              ; preds = %154
  %162 = load i8*, i8** %25, align 8
  %163 = load i32, i32* %27, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp ne i32 %167, 255
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %173

170:                                              ; preds = %161, %154
  %171 = load i32, i32* %27, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %27, align 4
  br label %138

173:                                              ; preds = %169, %148, %138
  %174 = load i32, i32* %19, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %30, align 4
  br label %176

176:                                              ; preds = %209, %173
  %177 = load i32, i32* %30, align 4
  %178 = load i32, i32* %18, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %212

180:                                              ; preds = %176
  %181 = load i32*, i32** %12, align 8
  %182 = load i32, i32* %30, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 255
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load i32*, i32** %12, align 8
  %189 = load i32, i32* %30, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %29, align 4
  br label %212

193:                                              ; preds = %180
  %194 = load i32*, i32** %10, align 8
  %195 = load i32, i32* %30, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 255
  br i1 %199, label %200, label %209

200:                                              ; preds = %193
  %201 = load i8*, i8** %25, align 8
  %202 = load i32, i32* %30, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp ne i32 %206, 255
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %212

209:                                              ; preds = %200, %193
  %210 = load i32, i32* %30, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %30, align 4
  br label %176

212:                                              ; preds = %208, %187, %176
  store i32 1, i32* %31, align 4
  store i32 1, i32* %32, align 4
  store i32 500, i32* %33, align 4
  store i32 -20, i32* %34, align 4
  store i32 500, i32* %35, align 4
  store i32 -20, i32* %36, align 4
  %213 = load i32, i32* %27, align 4
  store i32 %213, i32* %21, align 4
  br label %214

214:                                              ; preds = %350, %212
  %215 = load i32, i32* %21, align 4
  %216 = load i32, i32* %30, align 4
  %217 = icmp sle i32 %215, %216
  br i1 %217, label %218, label %353

218:                                              ; preds = %214
  %219 = load i32, i32* %31, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %282

221:                                              ; preds = %218
  %222 = load i32, i32* %20, align 4
  %223 = icmp sle i32 %222, 2
  br i1 %223, label %247, label %224

224:                                              ; preds = %221
  %225 = load i8*, i8** %22, align 8
  %226 = load i32, i32* %21, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp eq i32 %230, 255
  br i1 %231, label %247, label %232

232:                                              ; preds = %224
  %233 = load i8*, i8** %24, align 8
  %234 = load i32, i32* %21, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp ne i32 %238, 255
  br i1 %239, label %240, label %248

240:                                              ; preds = %232
  %241 = load i32*, i32** %10, align 8
  %242 = load i32, i32* %21, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 255
  br i1 %246, label %247, label %248

247:                                              ; preds = %240, %224, %221
  store i32 0, i32* %31, align 4
  store i32 20, i32* %34, align 4
  store i32 20, i32* %33, align 4
  br label %281

248:                                              ; preds = %240, %232
  %249 = load i8*, i8** %22, align 8
  %250 = load i32, i32* %21, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = load i32, i32* %33, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %248
  %258 = load i8*, i8** %22, align 8
  %259 = load i32, i32* %21, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  store i32 %263, i32* %33, align 4
  br label %264

264:                                              ; preds = %257, %248
  %265 = load i8*, i8** %22, align 8
  %266 = load i32, i32* %21, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = load i32, i32* %34, align 4
  %272 = icmp sgt i32 %270, %271
  br i1 %272, label %273, label %280

273:                                              ; preds = %264
  %274 = load i8*, i8** %22, align 8
  %275 = load i32, i32* %21, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  store i32 %279, i32* %34, align 4
  br label %280

280:                                              ; preds = %273, %264
  br label %281

281:                                              ; preds = %280, %247
  br label %282

282:                                              ; preds = %281, %218
  %283 = load i32, i32* %32, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %349

285:                                              ; preds = %282
  %286 = load i32, i32* %20, align 4
  %287 = load i32, i32* %17, align 4
  %288 = sub nsw i32 %287, 3
  %289 = icmp sge i32 %286, %288
  br i1 %289, label %314, label %290

290:                                              ; preds = %285
  %291 = load i8*, i8** %23, align 8
  %292 = load i32, i32* %21, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %291, i64 %293
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = icmp eq i32 %296, 255
  br i1 %297, label %314, label %298

298:                                              ; preds = %290
  %299 = load i8*, i8** %25, align 8
  %300 = load i32, i32* %21, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp ne i32 %304, 255
  br i1 %305, label %306, label %315

306:                                              ; preds = %298
  %307 = load i8*, i8** %26, align 8
  %308 = load i32, i32* %21, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = icmp ne i32 %312, 255
  br i1 %313, label %314, label %315

314:                                              ; preds = %306, %290, %285
  store i32 0, i32* %32, align 4
  store i32 20, i32* %36, align 4
  store i32 20, i32* %35, align 4
  br label %348

315:                                              ; preds = %306, %298
  %316 = load i8*, i8** %23, align 8
  %317 = load i32, i32* %21, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %316, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = load i32, i32* %35, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %315
  %325 = load i8*, i8** %23, align 8
  %326 = load i32, i32* %21, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  store i32 %330, i32* %35, align 4
  br label %331

331:                                              ; preds = %324, %315
  %332 = load i8*, i8** %23, align 8
  %333 = load i32, i32* %21, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %332, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i32
  %338 = load i32, i32* %36, align 4
  %339 = icmp sgt i32 %337, %338
  br i1 %339, label %340, label %347

340:                                              ; preds = %331
  %341 = load i8*, i8** %23, align 8
  %342 = load i32, i32* %21, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  store i32 %346, i32* %36, align 4
  br label %347

347:                                              ; preds = %340, %331
  br label %348

348:                                              ; preds = %347, %314
  br label %349

349:                                              ; preds = %348, %282
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %21, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %21, align 4
  br label %214

353:                                              ; preds = %214
  %354 = load i32, i32* %34, align 4
  %355 = icmp eq i32 %354, -20
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  store i32 20, i32* %33, align 4
  store i32 20, i32* %34, align 4
  br label %357

357:                                              ; preds = %356, %353
  %358 = load i32, i32* %36, align 4
  %359 = icmp eq i32 %358, -20
  br i1 %359, label %360, label %361

360:                                              ; preds = %357
  store i32 20, i32* %35, align 4
  store i32 20, i32* %36, align 4
  br label %361

361:                                              ; preds = %360, %357
  %362 = load i32, i32* %29, align 4
  %363 = sub nsw i32 %362, 128
  %364 = call i32 @abs(i32 %363) #3
  %365 = load i32, i32* %28, align 4
  %366 = sub nsw i32 %365, 128
  %367 = call i32 @abs(i32 %366) #3
  %368 = call i32 @MAX(i32 %364, i32 %367)
  %369 = ashr i32 %368, 2
  %370 = call i32 @MAX(i32 %369, i32 8)
  %371 = load i32, i32* %33, align 4
  %372 = load i32, i32* %34, align 4
  %373 = sub nsw i32 %371, %372
  %374 = call i32 @abs(i32 %373) #3
  %375 = load i32, i32* %35, align 4
  %376 = load i32, i32* %36, align 4
  %377 = sub nsw i32 %375, %376
  %378 = call i32 @abs(i32 %377) #3
  %379 = call i32 @MAX(i32 %374, i32 %378)
  %380 = call i32 @MAX(i32 %370, i32 %379)
  store i32 %380, i32* %37, align 4
  %381 = load i32, i32* %29, align 4
  %382 = sub nsw i32 %381, 128
  %383 = call i32 @abs(i32 %382) #3
  %384 = load i32, i32* %28, align 4
  %385 = sub nsw i32 %384, 128
  %386 = call i32 @abs(i32 %385) #3
  %387 = call i32 @MAX(i32 %383, i32 %386)
  %388 = ashr i32 %387, 2
  %389 = call i32 @MIN(i32 %388, i32 6)
  store i32 %389, i32* %38, align 4
  %390 = load i32, i32* %29, align 4
  %391 = load i32, i32* %28, align 4
  %392 = sub nsw i32 %390, %391
  %393 = call i32 @abs(i32 %392) #3
  %394 = load i32, i32* %37, align 4
  %395 = icmp sle i32 %393, %394
  br i1 %395, label %396, label %446

396:                                              ; preds = %361
  %397 = load i32, i32* %30, align 4
  %398 = load i32, i32* %27, align 4
  %399 = sub nsw i32 %397, %398
  %400 = sub nsw i32 %399, 1
  %401 = load i32, i32* %38, align 4
  %402 = icmp sle i32 %400, %401
  br i1 %402, label %409, label %403

403:                                              ; preds = %396
  %404 = load i32, i32* %31, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %403
  %407 = load i32, i32* %32, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %446

409:                                              ; preds = %406, %403, %396
  %410 = load i32, i32* %29, align 4
  %411 = load i32, i32* %28, align 4
  %412 = sub nsw i32 %410, %411
  %413 = sitofp i32 %412 to double
  %414 = load i32, i32* %30, align 4
  %415 = load i32, i32* %27, align 4
  %416 = sub nsw i32 %414, %415
  %417 = sitofp i32 %416 to double
  %418 = fdiv double %413, %417
  store double %418, double* %39, align 8
  store i32 0, i32* %21, align 4
  br label %419

419:                                              ; preds = %442, %409
  %420 = load i32, i32* %21, align 4
  %421 = load i32, i32* %30, align 4
  %422 = load i32, i32* %27, align 4
  %423 = sub nsw i32 %421, %422
  %424 = sub nsw i32 %423, 1
  %425 = icmp slt i32 %420, %424
  br i1 %425, label %426, label %445

426:                                              ; preds = %419
  %427 = load i32, i32* %28, align 4
  %428 = load i32, i32* %21, align 4
  %429 = sitofp i32 %428 to double
  %430 = load double, double* %39, align 8
  %431 = fmul double %429, %430
  %432 = fadd double %431, 5.000000e-01
  %433 = fptosi double %432 to i32
  %434 = add nsw i32 %427, %433
  %435 = load i32*, i32** %14, align 8
  %436 = load i32, i32* %27, align 4
  %437 = load i32, i32* %21, align 4
  %438 = add nsw i32 %436, %437
  %439 = add nsw i32 %438, 1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %435, i64 %440
  store i32 %434, i32* %441, align 4
  br label %442

442:                                              ; preds = %426
  %443 = load i32, i32* %21, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %21, align 4
  br label %419

445:                                              ; preds = %419
  br label %446

446:                                              ; preds = %445, %406, %361
  br label %447

447:                                              ; preds = %446, %134
  %448 = load i32, i32* %19, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %19, align 4
  br label %107

450:                                              ; preds = %107
  %451 = load i32, i32* %11, align 4
  %452 = mul nsw i32 %451, 2
  %453 = load i8*, i8** %24, align 8
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i8, i8* %453, i64 %454
  store i8* %455, i8** %24, align 8
  %456 = load i32, i32* %11, align 4
  %457 = mul nsw i32 %456, 2
  %458 = load i32*, i32** %10, align 8
  %459 = sext i32 %457 to i64
  %460 = getelementptr inbounds i32, i32* %458, i64 %459
  store i32* %460, i32** %10, align 8
  %461 = load i32, i32* %11, align 4
  %462 = mul nsw i32 %461, 2
  %463 = load i8*, i8** %25, align 8
  %464 = sext i32 %462 to i64
  %465 = getelementptr inbounds i8, i8* %463, i64 %464
  store i8* %465, i8** %25, align 8
  %466 = load i32, i32* %11, align 4
  %467 = mul nsw i32 %466, 2
  %468 = load i8*, i8** %26, align 8
  %469 = sext i32 %467 to i64
  %470 = getelementptr inbounds i8, i8* %468, i64 %469
  store i8* %470, i8** %26, align 8
  %471 = load i32, i32* %13, align 4
  %472 = mul nsw i32 %471, 2
  %473 = load i8*, i8** %22, align 8
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds i8, i8* %473, i64 %474
  store i8* %475, i8** %22, align 8
  %476 = load i32, i32* %13, align 4
  %477 = mul nsw i32 %476, 2
  %478 = load i32*, i32** %12, align 8
  %479 = sext i32 %477 to i64
  %480 = getelementptr inbounds i32, i32* %478, i64 %479
  store i32* %480, i32** %12, align 8
  %481 = load i32, i32* %13, align 4
  %482 = mul nsw i32 %481, 2
  %483 = load i8*, i8** %23, align 8
  %484 = sext i32 %482 to i64
  %485 = getelementptr inbounds i8, i8* %483, i64 %484
  store i8* %485, i8** %23, align 8
  %486 = load i32, i32* %15, align 4
  %487 = mul nsw i32 %486, 2
  %488 = load i32*, i32** %14, align 8
  %489 = sext i32 %487 to i64
  %490 = getelementptr inbounds i32, i32* %488, i64 %489
  store i32* %490, i32** %14, align 8
  br label %491

491:                                              ; preds = %450
  %492 = load i32, i32* %20, align 4
  %493 = add nsw i32 %492, 2
  store i32 %493, i32* %20, align 4
  br label %101

494:                                              ; preds = %101
  ret void
}

declare dso_local i32 @eedi2_bit_blit(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
