; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc_dwt.c_vc2_subband_dwt_53.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc2enc_dwt.c_vc2_subband_dwt_53.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32, i32)* @vc2_subband_dwt_53 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc2_subband_dwt_53(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %13, align 8
  store i32* %21, i32** %14, align 8
  %22 = load i32*, i32** %7, align 8
  store i32* %22, i32** %15, align 8
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %59, %5
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %47, %31
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 1
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load i32, i32* %16, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %14, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %15, align 8
  br label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %27

62:                                               ; preds = %27
  %63 = load i32*, i32** %13, align 8
  store i32* %63, i32** %14, align 8
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %189, %62
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %192

68:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %99, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %102

74:                                               ; preds = %69
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 2, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 2, %82
  %84 = add nsw i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %80, %87
  %89 = add nsw i32 %88, 1
  %90 = ashr i32 %89, 1
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 2, %92
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, %90
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %74
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %69

102:                                              ; preds = %69
  %103 = load i32*, i32** %14, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sub nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 2, %108
  %110 = add nsw i32 %109, 1
  %111 = ashr i32 %110, 1
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %117, %111
  store i32 %118, i32* %116, align 4
  %119 = load i32*, i32** %14, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 2, %121
  %123 = add nsw i32 %122, 2
  %124 = ashr i32 %123, 2
  %125 = load i32*, i32** %14, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 4
  store i32 1, i32* %11, align 4
  br label %129

129:                                              ; preds = %159, %102
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sub nsw i32 %131, 1
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %162

134:                                              ; preds = %129
  %135 = load i32*, i32** %14, align 8
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 2, %136
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %135, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %11, align 4
  %144 = mul nsw i32 2, %143
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %141, %148
  %150 = add nsw i32 %149, 2
  %151 = ashr i32 %150, 2
  %152 = load i32*, i32** %14, align 8
  %153 = load i32, i32* %11, align 4
  %154 = mul nsw i32 2, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, %151
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %134
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %129

162:                                              ; preds = %129
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sub nsw i32 %164, 3
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %168, %174
  %176 = add nsw i32 %175, 2
  %177 = ashr i32 %176, 2
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* %16, align 4
  %180 = sub nsw i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %177
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %16, align 4
  %186 = load i32*, i32** %14, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %14, align 8
  br label %189

189:                                              ; preds = %162
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %64

192:                                              ; preds = %64
  %193 = load i32*, i32** %13, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32* %196, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %197

197:                                              ; preds = %225, %192
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %228

201:                                              ; preds = %197
  %202 = load i32*, i32** %14, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %16, align 4
  %205 = sub nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %14, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %208, %215
  %217 = add nsw i32 %216, 1
  %218 = ashr i32 %217, 1
  %219 = load i32*, i32** %14, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %223, %218
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %201
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %197

228:                                              ; preds = %197
  %229 = load i32*, i32** %13, align 8
  %230 = load i32, i32* %16, align 4
  %231 = shl i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  store i32* %233, i32** %14, align 8
  store i32 1, i32* %12, align 4
  br label %234

234:                                              ; preds = %278, %228
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %10, align 4
  %237 = sub nsw i32 %236, 1
  %238 = icmp slt i32 %235, %237
  br i1 %238, label %239, label %281

239:                                              ; preds = %234
  store i32 0, i32* %11, align 4
  br label %240

240:                                              ; preds = %269, %239
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* %16, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %272

244:                                              ; preds = %240
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %14, align 8
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* %16, align 4
  %253 = mul nsw i32 %252, 2
  %254 = add nsw i32 %251, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %250, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %249, %257
  %259 = add nsw i32 %258, 1
  %260 = ashr i32 %259, 1
  %261 = load i32*, i32** %14, align 8
  %262 = load i32, i32* %11, align 4
  %263 = load i32, i32* %16, align 4
  %264 = add nsw i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %261, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %267, %260
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %244
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %11, align 4
  br label %240

272:                                              ; preds = %240
  %273 = load i32, i32* %16, align 4
  %274 = shl i32 %273, 1
  %275 = load i32*, i32** %14, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32* %277, i32** %14, align 8
  br label %278

278:                                              ; preds = %272
  %279 = load i32, i32* %12, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %12, align 4
  br label %234

281:                                              ; preds = %234
  %282 = load i32*, i32** %13, align 8
  %283 = load i32, i32* %17, align 4
  %284 = sub nsw i32 %283, 1
  %285 = load i32, i32* %16, align 4
  %286 = mul nsw i32 %284, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %282, i64 %287
  store i32* %288, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %289

289:                                              ; preds = %310, %281
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* %16, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %313

293:                                              ; preds = %289
  %294 = load i32*, i32** %14, align 8
  %295 = load i32, i32* %11, align 4
  %296 = load i32, i32* %16, align 4
  %297 = sub nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %294, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = mul nsw i32 2, %300
  %302 = add nsw i32 %301, 1
  %303 = ashr i32 %302, 1
  %304 = load i32*, i32** %14, align 8
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = sub nsw i32 %308, %303
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %293
  %311 = load i32, i32* %11, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %11, align 4
  br label %289

313:                                              ; preds = %289
  %314 = load i32*, i32** %13, align 8
  store i32* %314, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %315

315:                                              ; preds = %336, %313
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* %16, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %339

319:                                              ; preds = %315
  %320 = load i32*, i32** %14, align 8
  %321 = load i32, i32* %16, align 4
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %320, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = mul nsw i32 2, %326
  %328 = add nsw i32 %327, 2
  %329 = ashr i32 %328, 2
  %330 = load i32*, i32** %14, align 8
  %331 = load i32, i32* %11, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = add nsw i32 %334, %329
  store i32 %335, i32* %333, align 4
  br label %336

336:                                              ; preds = %319
  %337 = load i32, i32* %11, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %11, align 4
  br label %315

339:                                              ; preds = %315
  %340 = load i32*, i32** %13, align 8
  %341 = load i32, i32* %16, align 4
  %342 = shl i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  store i32* %344, i32** %14, align 8
  store i32 1, i32* %12, align 4
  br label %345

345:                                              ; preds = %388, %339
  %346 = load i32, i32* %12, align 4
  %347 = load i32, i32* %10, align 4
  %348 = sub nsw i32 %347, 1
  %349 = icmp slt i32 %346, %348
  br i1 %349, label %350, label %391

350:                                              ; preds = %345
  store i32 0, i32* %11, align 4
  br label %351

351:                                              ; preds = %379, %350
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* %16, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %382

355:                                              ; preds = %351
  %356 = load i32*, i32** %14, align 8
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* %16, align 4
  %359 = add nsw i32 %357, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %356, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32*, i32** %14, align 8
  %364 = load i32, i32* %11, align 4
  %365 = load i32, i32* %16, align 4
  %366 = sub nsw i32 %364, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %363, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %362, %369
  %371 = add nsw i32 %370, 2
  %372 = ashr i32 %371, 2
  %373 = load i32*, i32** %14, align 8
  %374 = load i32, i32* %11, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, %372
  store i32 %378, i32* %376, align 4
  br label %379

379:                                              ; preds = %355
  %380 = load i32, i32* %11, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %11, align 4
  br label %351

382:                                              ; preds = %351
  %383 = load i32, i32* %16, align 4
  %384 = shl i32 %383, 1
  %385 = load i32*, i32** %14, align 8
  %386 = sext i32 %384 to i64
  %387 = getelementptr inbounds i32, i32* %385, i64 %386
  store i32* %387, i32** %14, align 8
  br label %388

388:                                              ; preds = %382
  %389 = load i32, i32* %12, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %12, align 4
  br label %345

391:                                              ; preds = %345
  %392 = load i32*, i32** %13, align 8
  %393 = load i32, i32* %17, align 4
  %394 = sub nsw i32 %393, 2
  %395 = load i32, i32* %16, align 4
  %396 = mul nsw i32 %394, %395
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %392, i64 %397
  store i32* %398, i32** %14, align 8
  store i32 0, i32* %11, align 4
  br label %399

399:                                              ; preds = %427, %391
  %400 = load i32, i32* %11, align 4
  %401 = load i32, i32* %16, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %430

403:                                              ; preds = %399
  %404 = load i32*, i32** %14, align 8
  %405 = load i32, i32* %11, align 4
  %406 = load i32, i32* %16, align 4
  %407 = sub nsw i32 %405, %406
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %404, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = load i32*, i32** %14, align 8
  %412 = load i32, i32* %11, align 4
  %413 = load i32, i32* %16, align 4
  %414 = add nsw i32 %412, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %411, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = add nsw i32 %410, %417
  %419 = add nsw i32 %418, 2
  %420 = ashr i32 %419, 2
  %421 = load i32*, i32** %14, align 8
  %422 = load i32, i32* %11, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %425, %420
  store i32 %426, i32* %424, align 4
  br label %427

427:                                              ; preds = %403
  %428 = load i32, i32* %11, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %11, align 4
  br label %399

430:                                              ; preds = %399
  %431 = load i32*, i32** %7, align 8
  %432 = load i32, i32* %8, align 4
  %433 = load i32, i32* %9, align 4
  %434 = load i32, i32* %10, align 4
  %435 = load i32*, i32** %13, align 8
  %436 = call i32 @deinterleave(i32* %431, i32 %432, i32 %433, i32 %434, i32* %435)
  ret void
}

declare dso_local i32 @deinterleave(i32*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
