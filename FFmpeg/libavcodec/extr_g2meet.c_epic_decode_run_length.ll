; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_epic_decode_run_length.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_epic_decode_run_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32*, i32, i32*, i32, i64*, i32* }

@EPIC_PIX_STACK_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32, i64*, i64*, i64*, i64*, i32*)* @epic_decode_run_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epic_decode_run_length(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i64* %4, i64* %5, i64* %6, i64* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64* %7, i64** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %40 = load i32*, i32** %19, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @LOAD_NEIGHBOURS(i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %9
  store i32 1, i32* %22, align 4
  br label %110

49:                                               ; preds = %9
  %50 = load i64, i64* %25, align 8
  %51 = load i64, i64* %24, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = shl i32 %53, 7
  %55 = load i64, i64* %28, align 8
  %56 = load i64, i64* %24, align 8
  %57 = icmp ne i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = shl i32 %58, 6
  %60 = or i32 %54, %59
  %61 = load i64, i64* %26, align 8
  %62 = load i64, i64* %29, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = shl i32 %64, 5
  %66 = or i32 %60, %65
  %67 = load i64, i64* %28, align 8
  %68 = load i64, i64* %26, align 8
  %69 = icmp ne i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = shl i32 %70, 4
  %72 = or i32 %66, %71
  %73 = load i64, i64* %30, align 8
  %74 = load i64, i64* %28, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = shl i32 %76, 3
  %78 = or i32 %72, %77
  %79 = load i64, i64* %32, align 8
  %80 = load i64, i64* %29, align 8
  %81 = icmp ne i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = shl i32 %82, 2
  %84 = or i32 %78, %83
  %85 = load i64, i64* %27, align 8
  %86 = load i64, i64* %26, align 8
  %87 = icmp ne i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = shl i32 %88, 1
  %90 = or i32 %84, %89
  %91 = load i64, i64* %31, align 8
  %92 = load i64, i64* %28, align 8
  %93 = icmp ne i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = or i32 %90, %94
  store i32 %95, i32* %20, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @ff_els_decode_bit(i32* %97, i32* %103)
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %49
  %108 = load i32, i32* %22, align 4
  store i32 %108, i32* %10, align 4
  br label %462

109:                                              ; preds = %49
  br label %110

110:                                              ; preds = %109, %48
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i64, i64* %24, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 7
  %117 = load i64*, i64** %116, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = sext i32 %120 to i64
  %123 = load i64, i64* @EPIC_PIX_STACK_MAX, align 8
  %124 = and i64 %122, %123
  %125 = getelementptr inbounds i64, i64* %117, i64 %124
  store i64 %114, i64* %125, align 8
  br label %129

126:                                              ; preds = %110
  %127 = load i64, i64* %24, align 8
  %128 = load i64*, i64** %18, align 8
  store i64 %127, i64* %128, align 8
  store i32 1, i32* %21, align 4
  br label %129

129:                                              ; preds = %126, %113
  br label %130

130:                                              ; preds = %450, %129
  store i32 1, i32* %33, align 4
  %131 = load i32, i32* %21, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i64*, i64** %18, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %26, align 8
  %137 = icmp ne i64 %135, %136
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %33, align 4
  br label %259

139:                                              ; preds = %130
  %140 = load i32*, i32** %19, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %33, align 4
  br label %150

145:                                              ; preds = %139
  %146 = load i64, i64* %28, align 8
  %147 = load i64, i64* %24, align 8
  %148 = icmp ne i64 %146, %147
  %149 = zext i1 %148 to i32
  br label %150

150:                                              ; preds = %145, %143
  %151 = phi i32 [ %144, %143 ], [ %149, %145 ]
  store i32 %151, i32* %33, align 4
  %152 = load i64, i64* %28, align 8
  %153 = load i64, i64* %26, align 8
  %154 = icmp ne i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = shl i32 %155, 2
  %157 = load i32, i32* %33, align 4
  %158 = shl i32 %157, 1
  %159 = or i32 %156, %158
  %160 = load i32, i32* %22, align 4
  %161 = or i32 %159, %160
  switch i32 %161, label %238 [
    i32 0, label %162
    i32 3, label %163
    i32 5, label %163
    i32 6, label %163
    i32 7, label %163
  ]

162:                                              ; preds = %150
  br label %258

163:                                              ; preds = %150, %150, %150, %150
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %165 = load i64, i64* %26, align 8
  %166 = call i32 @is_pixel_on_stack(%struct.TYPE_4__* %164, i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %237, label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %22, align 4
  %170 = shl i32 %169, 8
  %171 = load i32*, i32** %19, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* %23, align 4
  br label %181

176:                                              ; preds = %168
  %177 = load i64, i64* %25, align 8
  %178 = load i64, i64* %24, align 8
  %179 = icmp ne i64 %177, %178
  %180 = zext i1 %179 to i32
  br label %181

181:                                              ; preds = %176, %174
  %182 = phi i32 [ %175, %174 ], [ %180, %176 ]
  %183 = shl i32 %182, 7
  %184 = or i32 %170, %183
  %185 = load i32, i32* %33, align 4
  %186 = shl i32 %185, 6
  %187 = or i32 %184, %186
  %188 = load i64, i64* %26, align 8
  %189 = load i64, i64* %29, align 8
  %190 = icmp ne i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = shl i32 %191, 5
  %193 = or i32 %187, %192
  %194 = load i64, i64* %28, align 8
  %195 = load i64, i64* %26, align 8
  %196 = icmp ne i64 %194, %195
  %197 = zext i1 %196 to i32
  %198 = shl i32 %197, 4
  %199 = or i32 %193, %198
  %200 = load i64, i64* %30, align 8
  %201 = load i64, i64* %28, align 8
  %202 = icmp ne i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = shl i32 %203, 3
  %205 = or i32 %199, %204
  %206 = load i64, i64* %32, align 8
  %207 = load i64, i64* %29, align 8
  %208 = icmp ne i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = shl i32 %209, 2
  %211 = or i32 %205, %210
  %212 = load i64, i64* %27, align 8
  %213 = load i64, i64* %26, align 8
  %214 = icmp ne i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = shl i32 %215, 1
  %217 = or i32 %211, %216
  %218 = load i64, i64* %31, align 8
  %219 = load i64, i64* %28, align 8
  %220 = icmp ne i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = or i32 %217, %221
  store i32 %222, i32* %20, align 4
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 8
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %20, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = call i32 @ff_els_decode_bit(i32* %224, i32* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %181
  store i32 0, i32* %33, align 4
  %234 = load i64, i64* %26, align 8
  %235 = load i64*, i64** %18, align 8
  store i64 %234, i64* %235, align 8
  store i32 1, i32* %21, align 4
  br label %258

236:                                              ; preds = %181
  br label %237

237:                                              ; preds = %236, %163
  br label %238

238:                                              ; preds = %150, %237
  store i32 1, i32* %33, align 4
  %239 = load i32, i32* %22, align 4
  store i32 %239, i32* %23, align 4
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %241 = load i64, i64* %26, align 8
  %242 = call i32 @is_pixel_on_stack(%struct.TYPE_4__* %240, i64 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %257, label %244

244:                                              ; preds = %238
  %245 = load i64, i64* %26, align 8
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 7
  %248 = load i64*, i64** %247, align 8
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 8
  %253 = sext i32 %251 to i64
  %254 = load i64, i64* @EPIC_PIX_STACK_MAX, align 8
  %255 = and i64 %253, %254
  %256 = getelementptr inbounds i64, i64* %248, i64 %255
  store i64 %245, i64* %256, align 8
  br label %257

257:                                              ; preds = %244, %238
  br label %258

258:                                              ; preds = %257, %233, %162
  br label %259

259:                                              ; preds = %258, %133
  %260 = load i32*, i32** %19, align 8
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load i32*, i32** %19, align 8
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %263, %265
  %267 = load i32, i32* %14, align 4
  %268 = sub nsw i32 %267, 1
  %269 = icmp sge i32 %266, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %259
  br label %454

271:                                              ; preds = %259
  %272 = load i32, i32* %12, align 4
  %273 = load i32*, i32** %19, align 8
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %272, %274
  %276 = call i32 @UPDATE_NEIGHBOURS(i32 %275)
  %277 = load i32, i32* %33, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %400, label %279

279:                                              ; preds = %271
  %280 = load i64, i64* %28, align 8
  %281 = load i64, i64* %26, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %400

283:                                              ; preds = %279
  %284 = load i64, i64* %26, align 8
  %285 = load i64, i64* %29, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %400

287:                                              ; preds = %283
  %288 = load i32, i32* %12, align 4
  %289 = load i32*, i32** %19, align 8
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %288, %290
  store i32 %291, i32* %37, align 4
  %292 = load i64*, i64** %16, align 8
  %293 = load i32, i32* %37, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %292, i64 %295
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %38, align 8
  %298 = load i32, i32* %37, align 4
  %299 = add nsw i32 %298, 2
  store i32 %299, i32* %34, align 4
  br label %300

300:                                              ; preds = %314, %287
  %301 = load i32, i32* %34, align 4
  %302 = load i32, i32* %14, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %317

304:                                              ; preds = %300
  %305 = load i64*, i64** %16, align 8
  %306 = load i32, i32* %34, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i64, i64* %305, i64 %307
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* %38, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %313, label %312

312:                                              ; preds = %304
  br label %317

313:                                              ; preds = %304
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %34, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %34, align 4
  br label %300

317:                                              ; preds = %312, %300
  %318 = load i32, i32* %34, align 4
  %319 = load i32, i32* %37, align 4
  %320 = sub nsw i32 %318, %319
  %321 = sub nsw i32 %320, 1
  store i32 %321, i32* %35, align 4
  %322 = load i32, i32* %35, align 4
  %323 = call i32 @av_ceil_log2(i32 %322)
  store i32 %323, i32* %20, align 4
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 5
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %20, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = call i32 @ff_els_decode_bit(i32* %325, i32* %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %317
  %335 = load i32, i32* %35, align 4
  %336 = load i32*, i32** %19, align 8
  %337 = load i32, i32* %336, align 4
  %338 = add nsw i32 %337, %335
  store i32 %338, i32* %336, align 4
  br label %385

339:                                              ; preds = %317
  %340 = load i32, i32* %20, align 4
  %341 = sub nsw i32 %340, 1
  store i32 %341, i32* %34, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %39, align 4
  br label %342

342:                                              ; preds = %377, %339
  %343 = load i32, i32* %34, align 4
  %344 = icmp sge i32 %343, 0
  br i1 %344, label %345, label %380

345:                                              ; preds = %342
  %346 = load i32, i32* %34, align 4
  %347 = shl i32 1, %346
  %348 = load i32, i32* %36, align 4
  %349 = add nsw i32 %347, %348
  %350 = load i32, i32* %35, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %376

352:                                              ; preds = %345
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 2
  %355 = load i32, i32* %39, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %352
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 4
  br label %367

360:                                              ; preds = %352
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 3
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %34, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  br label %367

367:                                              ; preds = %360, %357
  %368 = phi i32* [ %359, %357 ], [ %366, %360 ]
  %369 = call i32 @ff_els_decode_bit(i32* %354, i32* %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %376

371:                                              ; preds = %367
  store i32 1, i32* %39, align 4
  %372 = load i32, i32* %34, align 4
  %373 = shl i32 1, %372
  %374 = load i32, i32* %36, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %36, align 4
  br label %376

376:                                              ; preds = %371, %367, %345
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %34, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %34, align 4
  br label %342

380:                                              ; preds = %342
  %381 = load i32, i32* %36, align 4
  %382 = load i32*, i32** %19, align 8
  %383 = load i32, i32* %382, align 4
  %384 = add nsw i32 %383, %381
  store i32 %384, i32* %382, align 4
  br label %454

385:                                              ; preds = %334
  %386 = load i32, i32* %12, align 4
  %387 = load i32*, i32** %19, align 8
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %386, %388
  %390 = load i32, i32* %14, align 4
  %391 = sub nsw i32 %390, 1
  %392 = icmp sge i32 %389, %391
  br i1 %392, label %393, label %394

393:                                              ; preds = %385
  br label %454

394:                                              ; preds = %385
  %395 = load i32, i32* %12, align 4
  %396 = load i32*, i32** %19, align 8
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %395, %397
  %399 = call i32 @LOAD_NEIGHBOURS(i32 %398)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %33, align 4
  br label %400

400:                                              ; preds = %394, %283, %279, %271
  %401 = load i32, i32* %22, align 4
  %402 = shl i32 %401, 7
  %403 = load i32, i32* %33, align 4
  %404 = shl i32 %403, 6
  %405 = or i32 %402, %404
  %406 = load i64, i64* %26, align 8
  %407 = load i64, i64* %29, align 8
  %408 = icmp ne i64 %406, %407
  %409 = zext i1 %408 to i32
  %410 = shl i32 %409, 5
  %411 = or i32 %405, %410
  %412 = load i64, i64* %28, align 8
  %413 = load i64, i64* %26, align 8
  %414 = icmp ne i64 %412, %413
  %415 = zext i1 %414 to i32
  %416 = shl i32 %415, 4
  %417 = or i32 %411, %416
  %418 = load i64, i64* %30, align 8
  %419 = load i64, i64* %28, align 8
  %420 = icmp ne i64 %418, %419
  %421 = zext i1 %420 to i32
  %422 = shl i32 %421, 3
  %423 = or i32 %417, %422
  %424 = load i64, i64* %32, align 8
  %425 = load i64, i64* %29, align 8
  %426 = icmp ne i64 %424, %425
  %427 = zext i1 %426 to i32
  %428 = shl i32 %427, 2
  %429 = or i32 %423, %428
  %430 = load i64, i64* %27, align 8
  %431 = load i64, i64* %26, align 8
  %432 = icmp ne i64 %430, %431
  %433 = zext i1 %432 to i32
  %434 = shl i32 %433, 1
  %435 = or i32 %429, %434
  %436 = load i64, i64* %31, align 8
  %437 = load i64, i64* %28, align 8
  %438 = icmp ne i64 %436, %437
  %439 = zext i1 %438 to i32
  %440 = or i32 %435, %439
  store i32 %440, i32* %20, align 4
  %441 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 2
  %443 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 1
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %20, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = call i32 @ff_els_decode_bit(i32* %442, i32* %448)
  store i32 %449, i32* %22, align 4
  br label %450

450:                                              ; preds = %400
  %451 = load i32, i32* %22, align 4
  %452 = icmp ne i32 %451, 0
  %453 = xor i1 %452, true
  br i1 %453, label %130, label %454

454:                                              ; preds = %450, %393, %380, %270
  %455 = load i32, i32* %12, align 4
  %456 = load i32*, i32** %19, align 8
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %455, %457
  %459 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %460 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %459, i32 0, i32 0
  store i32 %458, i32* %460, align 8
  %461 = load i32, i32* %21, align 4
  store i32 %461, i32* %10, align 4
  br label %462

462:                                              ; preds = %454, %107
  %463 = load i32, i32* %10, align 4
  ret i32 %463
}

declare dso_local i32 @LOAD_NEIGHBOURS(i32) #1

declare dso_local i32 @ff_els_decode_bit(i32*, i32*) #1

declare dso_local i32 @is_pixel_on_stack(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @UPDATE_NEIGHBOURS(i32) #1

declare dso_local i32 @av_ceil_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
