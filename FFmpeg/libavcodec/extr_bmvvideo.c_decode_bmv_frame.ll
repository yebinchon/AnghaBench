; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bmvvideo.c_decode_bmv_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bmvvideo.c_decode_bmv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCREEN_WIDE = common dso_local global i32 0, align 4
@SCREEN_HIGH = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @decode_bmv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_bmv_frame(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @SCREEN_WIDE, align 4
  %34 = load i32, i32* @SCREEN_HIGH, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32* %37, i32** %15, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @SCREEN_WIDE, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp sle i32 %38, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 0
  br label %45

45:                                               ; preds = %42, %4
  %46 = phi i1 [ true, %4 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %20, align 4
  store i32 0, i32* %24, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %51, i32* %5, align 4
  br label %473

52:                                               ; preds = %45
  %53 = load i32, i32* %20, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %8, align 8
  store i32* %57, i32** %16, align 8
  %58 = load i32*, i32** %15, align 8
  store i32* %58, i32** %17, align 8
  br label %69

59:                                               ; preds = %52
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = getelementptr inbounds i32, i32* %63, i64 -1
  store i32* %64, i32** %13, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 -1
  store i32* %66, i32** %16, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 -1
  store i32* %68, i32** %17, align 8
  br label %69

69:                                               ; preds = %59, %55
  br label %70

70:                                               ; preds = %472, %69
  store i32 0, i32* %26, align 4
  store i32 0, i32* %22, align 4
  %71 = load i32, i32* %24, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %89

76:                                               ; preds = %73, %70
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = icmp ult i32* %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = icmp uge i32* %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80, %76
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %5, align 4
  br label %473

86:                                               ; preds = %80
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  store i32 1, i32* %21, align 4
  br label %91

89:                                               ; preds = %73
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %10, align 4
  store i32 0, i32* %21, align 4
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 12
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %153, label %95

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %151, %95
  %97 = load i32, i32* %26, align 4
  %98 = icmp sgt i32 %97, 22
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %473

100:                                              ; preds = %96
  %101 = load i32, i32* %21, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %100
  %104 = load i32*, i32** %13, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = icmp ult i32* %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32*, i32** %13, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = icmp uge i32* %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %103
  %112 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %112, i32* %5, align 4
  br label %473

113:                                              ; preds = %107
  %114 = load i32, i32* %26, align 4
  %115 = add nsw i32 %114, 2
  store i32 %115, i32* %26, align 4
  %116 = load i32*, i32** %13, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %26, align 4
  %119 = shl i32 %117, %118
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 12
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %152

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %100
  store i32 0, i32* %21, align 4
  %129 = load i32, i32* %26, align 4
  %130 = add nsw i32 %129, 2
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* %26, align 4
  %132 = shl i32 1, %131
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %10, align 4
  %135 = lshr i32 %134, 2
  %136 = load i32, i32* %19, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %19, align 4
  %141 = and i32 %139, %140
  %142 = or i32 %138, %141
  store i32 %142, i32* %10, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @NEXT_BYTE(i32* %143)
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %26, align 4
  %147 = shl i32 12, %146
  %148 = and i32 %145, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %128
  store i32 1, i32* %22, align 4
  br label %152

151:                                              ; preds = %128
  br label %96

152:                                              ; preds = %150, %126
  br label %161

153:                                              ; preds = %91
  %154 = load i32, i32* %24, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 4
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %22, align 4
  br label %160

160:                                              ; preds = %156, %153
  br label %161

161:                                              ; preds = %160, %152
  %162 = load i32, i32* %22, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 4, i32* %12, align 4
  br label %178

165:                                              ; preds = %161
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %26, align 4
  %168 = add nsw i32 4, %167
  %169 = lshr i32 %166, %168
  store i32 %169, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %170 = load i32, i32* %26, align 4
  %171 = add nsw i32 %170, 4
  %172 = shl i32 1, %171
  %173 = sub nsw i32 %172, 1
  %174 = load i32, i32* %10, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %10, align 4
  %176 = load i32*, i32** %13, align 8
  %177 = call i32 @NEXT_BYTE(i32* %176)
  br label %178

178:                                              ; preds = %165, %164
  %179 = load i32, i32* %10, align 4
  %180 = and i32 %179, 1
  store i32 %180, i32* %23, align 4
  %181 = load i32, i32* %10, align 4
  %182 = lshr i32 %181, 1
  %183 = sub i32 %182, 1
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp sgt i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @av_assert0(i32 %186)
  %188 = load i32, i32* %23, align 4
  %189 = add nsw i32 1, %188
  %190 = load i32, i32* %24, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %24, align 4
  %192 = load i32, i32* %24, align 4
  %193 = icmp sge i32 %192, 4
  br i1 %193, label %194, label %197

194:                                              ; preds = %178
  %195 = load i32, i32* %24, align 4
  %196 = sub nsw i32 %195, 3
  store i32 %196, i32* %24, align 4
  br label %197

197:                                              ; preds = %194, %178
  %198 = load i32, i32* %18, align 4
  %199 = icmp sle i32 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %197
  %201 = load i32*, i32** %17, align 8
  %202 = load i32*, i32** %16, align 8
  %203 = ptrtoint i32* %201 to i64
  %204 = ptrtoint i32* %202 to i64
  %205 = sub i64 %203, %204
  %206 = sdiv exact i64 %205, 4
  %207 = trunc i64 %206 to i32
  %208 = call i32 @FFABS(i32 %207)
  %209 = load i32, i32* %18, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %200, %197
  %212 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %212, i32* %5, align 4
  br label %473

213:                                              ; preds = %200
  %214 = load i32, i32* %24, align 4
  switch i32 %214, label %467 [
    i32 1, label %215
    i32 2, label %373
    i32 3, label %432
  ]

215:                                              ; preds = %213
  %216 = load i32, i32* %20, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %294

218:                                              ; preds = %215
  %219 = load i32*, i32** %16, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = ptrtoint i32* %219 to i64
  %222 = ptrtoint i32* %220 to i64
  %223 = sub i64 %221, %222
  %224 = sdiv exact i64 %223, 4
  %225 = load i32, i32* @SCREEN_WIDE, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %224, %226
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = icmp slt i64 %227, %229
  br i1 %230, label %267, label %231

231:                                              ; preds = %218
  %232 = load i32*, i32** %16, align 8
  %233 = load i32*, i32** %8, align 8
  %234 = ptrtoint i32* %232 to i64
  %235 = ptrtoint i32* %233 to i64
  %236 = sub i64 %234, %235
  %237 = sdiv exact i64 %236, 4
  %238 = load i32, i32* @SCREEN_WIDE, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %237, %239
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = add nsw i64 %240, %242
  %244 = icmp slt i64 %243, 0
  br i1 %244, label %267, label %245

245:                                              ; preds = %231
  %246 = load i32*, i32** %15, align 8
  %247 = load i32*, i32** %16, align 8
  %248 = ptrtoint i32* %246 to i64
  %249 = ptrtoint i32* %247 to i64
  %250 = sub i64 %248, %249
  %251 = sdiv exact i64 %250, 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %18, align 4
  %254 = add nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = icmp slt i64 %251, %255
  br i1 %256, label %267, label %257

257:                                              ; preds = %245
  %258 = load i32*, i32** %15, align 8
  %259 = load i32*, i32** %16, align 8
  %260 = ptrtoint i32* %258 to i64
  %261 = ptrtoint i32* %259 to i64
  %262 = sub i64 %260, %261
  %263 = sdiv exact i64 %262, 4
  %264 = load i32, i32* %18, align 4
  %265 = sext i32 %264 to i64
  %266 = icmp slt i64 %263, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %257, %245, %231, %218
  %268 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %268, i32* %5, align 4
  br label %473

269:                                              ; preds = %257
  store i32 0, i32* %25, align 4
  br label %270

270:                                              ; preds = %286, %269
  %271 = load i32, i32* %25, align 4
  %272 = load i32, i32* %18, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %289

274:                                              ; preds = %270
  %275 = load i32*, i32** %16, align 8
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %25, align 4
  %278 = add nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** %16, align 8
  %283 = load i32, i32* %25, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  store i32 %281, i32* %285, align 4
  br label %286

286:                                              ; preds = %274
  %287 = load i32, i32* %25, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %25, align 4
  br label %270

289:                                              ; preds = %270
  %290 = load i32, i32* %18, align 4
  %291 = load i32*, i32** %16, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32* %293, i32** %16, align 8
  br label %372

294:                                              ; preds = %215
  %295 = load i32, i32* %18, align 4
  %296 = load i32*, i32** %16, align 8
  %297 = sext i32 %295 to i64
  %298 = sub i64 0, %297
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  store i32* %299, i32** %16, align 8
  %300 = load i32*, i32** %16, align 8
  %301 = load i32*, i32** %8, align 8
  %302 = ptrtoint i32* %300 to i64
  %303 = ptrtoint i32* %301 to i64
  %304 = sub i64 %302, %303
  %305 = sdiv exact i64 %304, 4
  %306 = load i32, i32* @SCREEN_WIDE, align 4
  %307 = sext i32 %306 to i64
  %308 = add nsw i64 %305, %307
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = icmp slt i64 %308, %310
  br i1 %311, label %348, label %312

312:                                              ; preds = %294
  %313 = load i32*, i32** %16, align 8
  %314 = load i32*, i32** %8, align 8
  %315 = ptrtoint i32* %313 to i64
  %316 = ptrtoint i32* %314 to i64
  %317 = sub i64 %315, %316
  %318 = sdiv exact i64 %317, 4
  %319 = load i32, i32* @SCREEN_WIDE, align 4
  %320 = sext i32 %319 to i64
  %321 = add nsw i64 %318, %320
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %321, %323
  %325 = icmp slt i64 %324, 0
  br i1 %325, label %348, label %326

326:                                              ; preds = %312
  %327 = load i32*, i32** %15, align 8
  %328 = load i32*, i32** %16, align 8
  %329 = ptrtoint i32* %327 to i64
  %330 = ptrtoint i32* %328 to i64
  %331 = sub i64 %329, %330
  %332 = sdiv exact i64 %331, 4
  %333 = load i32, i32* %9, align 4
  %334 = load i32, i32* %18, align 4
  %335 = add nsw i32 %333, %334
  %336 = sext i32 %335 to i64
  %337 = icmp slt i64 %332, %336
  br i1 %337, label %348, label %338

338:                                              ; preds = %326
  %339 = load i32*, i32** %15, align 8
  %340 = load i32*, i32** %16, align 8
  %341 = ptrtoint i32* %339 to i64
  %342 = ptrtoint i32* %340 to i64
  %343 = sub i64 %341, %342
  %344 = sdiv exact i64 %343, 4
  %345 = load i32, i32* %18, align 4
  %346 = sext i32 %345 to i64
  %347 = icmp slt i64 %344, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %338, %326, %312, %294
  %349 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %349, i32* %5, align 4
  br label %473

350:                                              ; preds = %338
  %351 = load i32, i32* %18, align 4
  %352 = sub nsw i32 %351, 1
  store i32 %352, i32* %25, align 4
  br label %353

353:                                              ; preds = %368, %350
  %354 = load i32, i32* %25, align 4
  %355 = icmp sge i32 %354, 0
  br i1 %355, label %356, label %371

356:                                              ; preds = %353
  %357 = load i32*, i32** %16, align 8
  %358 = load i32, i32* %9, align 4
  %359 = load i32, i32* %25, align 4
  %360 = add nsw i32 %358, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %357, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load i32*, i32** %16, align 8
  %365 = load i32, i32* %25, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  store i32 %363, i32* %367, align 4
  br label %368

368:                                              ; preds = %356
  %369 = load i32, i32* %25, align 4
  %370 = add nsw i32 %369, -1
  store i32 %370, i32* %25, align 4
  br label %353

371:                                              ; preds = %353
  br label %372

372:                                              ; preds = %371, %289
  br label %467

373:                                              ; preds = %213
  %374 = load i32, i32* %20, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %404

376:                                              ; preds = %373
  %377 = load i32*, i32** %6, align 8
  %378 = load i32, i32* %7, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  %381 = load i32*, i32** %13, align 8
  %382 = ptrtoint i32* %380 to i64
  %383 = ptrtoint i32* %381 to i64
  %384 = sub i64 %382, %383
  %385 = sdiv exact i64 %384, 4
  %386 = load i32, i32* %18, align 4
  %387 = sext i32 %386 to i64
  %388 = icmp slt i64 %385, %387
  br i1 %388, label %389, label %391

389:                                              ; preds = %376
  %390 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %390, i32* %5, align 4
  br label %473

391:                                              ; preds = %376
  %392 = load i32*, i32** %16, align 8
  %393 = load i32*, i32** %13, align 8
  %394 = load i32, i32* %18, align 4
  %395 = call i32 @memcpy(i32* %392, i32* %393, i32 %394)
  %396 = load i32, i32* %18, align 4
  %397 = load i32*, i32** %16, align 8
  %398 = sext i32 %396 to i64
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  store i32* %399, i32** %16, align 8
  %400 = load i32, i32* %18, align 4
  %401 = load i32*, i32** %13, align 8
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i32, i32* %401, i64 %402
  store i32* %403, i32** %13, align 8
  br label %431

404:                                              ; preds = %373
  %405 = load i32*, i32** %13, align 8
  %406 = load i32*, i32** %6, align 8
  %407 = ptrtoint i32* %405 to i64
  %408 = ptrtoint i32* %406 to i64
  %409 = sub i64 %407, %408
  %410 = sdiv exact i64 %409, 4
  %411 = load i32, i32* %18, align 4
  %412 = sext i32 %411 to i64
  %413 = icmp slt i64 %410, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %404
  %415 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %415, i32* %5, align 4
  br label %473

416:                                              ; preds = %404
  %417 = load i32, i32* %18, align 4
  %418 = load i32*, i32** %16, align 8
  %419 = sext i32 %417 to i64
  %420 = sub i64 0, %419
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  store i32* %421, i32** %16, align 8
  %422 = load i32, i32* %18, align 4
  %423 = load i32*, i32** %13, align 8
  %424 = sext i32 %422 to i64
  %425 = sub i64 0, %424
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  store i32* %426, i32** %13, align 8
  %427 = load i32*, i32** %16, align 8
  %428 = load i32*, i32** %13, align 8
  %429 = load i32, i32* %18, align 4
  %430 = call i32 @memcpy(i32* %427, i32* %428, i32 %429)
  br label %431

431:                                              ; preds = %416, %391
  br label %467

432:                                              ; preds = %213
  %433 = load i32, i32* %20, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %432
  %436 = load i32*, i32** %16, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 -1
  %438 = load i32, i32* %437, align 4
  br label %443

439:                                              ; preds = %432
  %440 = load i32*, i32** %16, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 1
  %442 = load i32, i32* %441, align 4
  br label %443

443:                                              ; preds = %439, %435
  %444 = phi i32 [ %438, %435 ], [ %442, %439 ]
  store i32 %444, i32* %10, align 4
  %445 = load i32, i32* %20, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %456

447:                                              ; preds = %443
  %448 = load i32*, i32** %16, align 8
  %449 = load i32, i32* %10, align 4
  %450 = load i32, i32* %18, align 4
  %451 = call i32 @memset(i32* %448, i32 %449, i32 %450)
  %452 = load i32, i32* %18, align 4
  %453 = load i32*, i32** %16, align 8
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i32, i32* %453, i64 %454
  store i32* %455, i32** %16, align 8
  br label %466

456:                                              ; preds = %443
  %457 = load i32, i32* %18, align 4
  %458 = load i32*, i32** %16, align 8
  %459 = sext i32 %457 to i64
  %460 = sub i64 0, %459
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  store i32* %461, i32** %16, align 8
  %462 = load i32*, i32** %16, align 8
  %463 = load i32, i32* %10, align 4
  %464 = load i32, i32* %18, align 4
  %465 = call i32 @memset(i32* %462, i32 %463, i32 %464)
  br label %466

466:                                              ; preds = %456, %447
  br label %467

467:                                              ; preds = %213, %466, %431, %372
  %468 = load i32*, i32** %16, align 8
  %469 = load i32*, i32** %17, align 8
  %470 = icmp eq i32* %468, %469
  br i1 %470, label %471, label %472

471:                                              ; preds = %467
  store i32 0, i32* %5, align 4
  br label %473

472:                                              ; preds = %467
  br label %70

473:                                              ; preds = %471, %414, %389, %348, %267, %211, %111, %99, %84, %50
  %474 = load i32, i32* %5, align 4
  ret i32 %474
}

declare dso_local i32 @NEXT_BYTE(i32*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
