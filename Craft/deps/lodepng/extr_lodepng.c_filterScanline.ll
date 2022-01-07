; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_filterScanline.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_filterScanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i64, i64, i8)* @filterScanline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filterScanline(i8* %0, i8* %1, i8* %2, i64 %3, i64 %4, i8 zeroext %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8 %5, i8* %12, align 1
  %14 = load i8, i8* %12, align 1
  %15 = zext i8 %14 to i32
  switch i32 %15, label %390 [
    i32 0, label %16
    i32 1, label %33
    i32 2, label %125
    i32 3, label %171
    i32 4, label %280
  ]

16:                                               ; preds = %6
  store i64 0, i64* %13, align 8
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %13, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 %25, i8* %28, align 1
  br label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %13, align 8
  br label %17

32:                                               ; preds = %17
  br label %391

33:                                               ; preds = %6
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  store i64 0, i64* %13, align 8
  br label %37

37:                                               ; preds = %49, %36
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %13, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %7, align 8
  %47 = load i64, i64* %13, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 %45, i8* %48, align 1
  br label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %13, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %13, align 8
  br label %37

52:                                               ; preds = %37
  %53 = load i64, i64* %11, align 8
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %76, %52
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %11, align 8
  %67 = sub i64 %65, %66
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %63, %70
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %7, align 8
  %74 = load i64, i64* %13, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 %72, i8* %75, align 1
  br label %76

76:                                               ; preds = %58
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %13, align 8
  br label %54

79:                                               ; preds = %54
  br label %124

80:                                               ; preds = %33
  store i64 0, i64* %13, align 8
  br label %81

81:                                               ; preds = %93, %80
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load i8*, i8** %8, align 8
  %87 = load i64, i64* %13, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %7, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 %89, i8* %92, align 1
  br label %93

93:                                               ; preds = %85
  %94 = load i64, i64* %13, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %13, align 8
  br label %81

96:                                               ; preds = %81
  %97 = load i64, i64* %11, align 8
  store i64 %97, i64* %13, align 8
  br label %98

98:                                               ; preds = %120, %96
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8*, i8** %8, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %11, align 8
  %111 = sub i64 %109, %110
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = sub nsw i32 %107, %114
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %7, align 8
  %118 = load i64, i64* %13, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8 %116, i8* %119, align 1
  br label %120

120:                                              ; preds = %102
  %121 = load i64, i64* %13, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %13, align 8
  br label %98

123:                                              ; preds = %98
  br label %124

124:                                              ; preds = %123, %79
  br label %391

125:                                              ; preds = %6
  %126 = load i8*, i8** %9, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %153

128:                                              ; preds = %125
  store i64 0, i64* %13, align 8
  br label %129

129:                                              ; preds = %149, %128
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load i8*, i8** %8, align 8
  %135 = load i64, i64* %13, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8*, i8** %9, align 8
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = sub nsw i32 %138, %143
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %7, align 8
  %147 = load i64, i64* %13, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8 %145, i8* %148, align 1
  br label %149

149:                                              ; preds = %133
  %150 = load i64, i64* %13, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %13, align 8
  br label %129

152:                                              ; preds = %129
  br label %170

153:                                              ; preds = %125
  store i64 0, i64* %13, align 8
  br label %154

154:                                              ; preds = %166, %153
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* %10, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load i8*, i8** %8, align 8
  %160 = load i64, i64* %13, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = load i8*, i8** %7, align 8
  %164 = load i64, i64* %13, align 8
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8 %162, i8* %165, align 1
  br label %166

166:                                              ; preds = %158
  %167 = load i64, i64* %13, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %13, align 8
  br label %154

169:                                              ; preds = %154
  br label %170

170:                                              ; preds = %169, %152
  br label %391

171:                                              ; preds = %6
  %172 = load i8*, i8** %9, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %234

174:                                              ; preds = %171
  store i64 0, i64* %13, align 8
  br label %175

175:                                              ; preds = %196, %174
  %176 = load i64, i64* %13, align 8
  %177 = load i64, i64* %11, align 8
  %178 = icmp ult i64 %176, %177
  br i1 %178, label %179, label %199

179:                                              ; preds = %175
  %180 = load i8*, i8** %8, align 8
  %181 = load i64, i64* %13, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i8*, i8** %9, align 8
  %186 = load i64, i64* %13, align 8
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = sdiv i32 %189, 2
  %191 = sub nsw i32 %184, %190
  %192 = trunc i32 %191 to i8
  %193 = load i8*, i8** %7, align 8
  %194 = load i64, i64* %13, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8 %192, i8* %195, align 1
  br label %196

196:                                              ; preds = %179
  %197 = load i64, i64* %13, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %13, align 8
  br label %175

199:                                              ; preds = %175
  %200 = load i64, i64* %11, align 8
  store i64 %200, i64* %13, align 8
  br label %201

201:                                              ; preds = %230, %199
  %202 = load i64, i64* %13, align 8
  %203 = load i64, i64* %10, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %233

205:                                              ; preds = %201
  %206 = load i8*, i8** %8, align 8
  %207 = load i64, i64* %13, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = load i8*, i8** %8, align 8
  %212 = load i64, i64* %13, align 8
  %213 = load i64, i64* %11, align 8
  %214 = sub i64 %212, %213
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = load i8*, i8** %9, align 8
  %219 = load i64, i64* %13, align 8
  %220 = getelementptr inbounds i8, i8* %218, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = add nsw i32 %217, %222
  %224 = sdiv i32 %223, 2
  %225 = sub nsw i32 %210, %224
  %226 = trunc i32 %225 to i8
  %227 = load i8*, i8** %7, align 8
  %228 = load i64, i64* %13, align 8
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8 %226, i8* %229, align 1
  br label %230

230:                                              ; preds = %205
  %231 = load i64, i64* %13, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %13, align 8
  br label %201

233:                                              ; preds = %201
  br label %279

234:                                              ; preds = %171
  store i64 0, i64* %13, align 8
  br label %235

235:                                              ; preds = %247, %234
  %236 = load i64, i64* %13, align 8
  %237 = load i64, i64* %11, align 8
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %235
  %240 = load i8*, i8** %8, align 8
  %241 = load i64, i64* %13, align 8
  %242 = getelementptr inbounds i8, i8* %240, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = load i8*, i8** %7, align 8
  %245 = load i64, i64* %13, align 8
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  store i8 %243, i8* %246, align 1
  br label %247

247:                                              ; preds = %239
  %248 = load i64, i64* %13, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %13, align 8
  br label %235

250:                                              ; preds = %235
  %251 = load i64, i64* %11, align 8
  store i64 %251, i64* %13, align 8
  br label %252

252:                                              ; preds = %275, %250
  %253 = load i64, i64* %13, align 8
  %254 = load i64, i64* %10, align 8
  %255 = icmp ult i64 %253, %254
  br i1 %255, label %256, label %278

256:                                              ; preds = %252
  %257 = load i8*, i8** %8, align 8
  %258 = load i64, i64* %13, align 8
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = load i8*, i8** %8, align 8
  %263 = load i64, i64* %13, align 8
  %264 = load i64, i64* %11, align 8
  %265 = sub i64 %263, %264
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = sdiv i32 %268, 2
  %270 = sub nsw i32 %261, %269
  %271 = trunc i32 %270 to i8
  %272 = load i8*, i8** %7, align 8
  %273 = load i64, i64* %13, align 8
  %274 = getelementptr inbounds i8, i8* %272, i64 %273
  store i8 %271, i8* %274, align 1
  br label %275

275:                                              ; preds = %256
  %276 = load i64, i64* %13, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %13, align 8
  br label %252

278:                                              ; preds = %252
  br label %279

279:                                              ; preds = %278, %233
  br label %391

280:                                              ; preds = %6
  %281 = load i8*, i8** %9, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %345

283:                                              ; preds = %280
  store i64 0, i64* %13, align 8
  br label %284

284:                                              ; preds = %304, %283
  %285 = load i64, i64* %13, align 8
  %286 = load i64, i64* %11, align 8
  %287 = icmp ult i64 %285, %286
  br i1 %287, label %288, label %307

288:                                              ; preds = %284
  %289 = load i8*, i8** %8, align 8
  %290 = load i64, i64* %13, align 8
  %291 = getelementptr inbounds i8, i8* %289, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = load i8*, i8** %9, align 8
  %295 = load i64, i64* %13, align 8
  %296 = getelementptr inbounds i8, i8* %294, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = sub nsw i32 %293, %298
  %300 = trunc i32 %299 to i8
  %301 = load i8*, i8** %7, align 8
  %302 = load i64, i64* %13, align 8
  %303 = getelementptr inbounds i8, i8* %301, i64 %302
  store i8 %300, i8* %303, align 1
  br label %304

304:                                              ; preds = %288
  %305 = load i64, i64* %13, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %13, align 8
  br label %284

307:                                              ; preds = %284
  %308 = load i64, i64* %11, align 8
  store i64 %308, i64* %13, align 8
  br label %309

309:                                              ; preds = %341, %307
  %310 = load i64, i64* %13, align 8
  %311 = load i64, i64* %10, align 8
  %312 = icmp ult i64 %310, %311
  br i1 %312, label %313, label %344

313:                                              ; preds = %309
  %314 = load i8*, i8** %8, align 8
  %315 = load i64, i64* %13, align 8
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = load i8*, i8** %8, align 8
  %320 = load i64, i64* %13, align 8
  %321 = load i64, i64* %11, align 8
  %322 = sub i64 %320, %321
  %323 = getelementptr inbounds i8, i8* %319, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = load i8*, i8** %9, align 8
  %326 = load i64, i64* %13, align 8
  %327 = getelementptr inbounds i8, i8* %325, i64 %326
  %328 = load i8, i8* %327, align 1
  %329 = load i8*, i8** %9, align 8
  %330 = load i64, i64* %13, align 8
  %331 = load i64, i64* %11, align 8
  %332 = sub i64 %330, %331
  %333 = getelementptr inbounds i8, i8* %329, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = call i32 @paethPredictor(i8 zeroext %324, i8 zeroext %328, i8 zeroext %334)
  %336 = sub nsw i32 %318, %335
  %337 = trunc i32 %336 to i8
  %338 = load i8*, i8** %7, align 8
  %339 = load i64, i64* %13, align 8
  %340 = getelementptr inbounds i8, i8* %338, i64 %339
  store i8 %337, i8* %340, align 1
  br label %341

341:                                              ; preds = %313
  %342 = load i64, i64* %13, align 8
  %343 = add i64 %342, 1
  store i64 %343, i64* %13, align 8
  br label %309

344:                                              ; preds = %309
  br label %389

345:                                              ; preds = %280
  store i64 0, i64* %13, align 8
  br label %346

346:                                              ; preds = %358, %345
  %347 = load i64, i64* %13, align 8
  %348 = load i64, i64* %11, align 8
  %349 = icmp ult i64 %347, %348
  br i1 %349, label %350, label %361

350:                                              ; preds = %346
  %351 = load i8*, i8** %8, align 8
  %352 = load i64, i64* %13, align 8
  %353 = getelementptr inbounds i8, i8* %351, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = load i8*, i8** %7, align 8
  %356 = load i64, i64* %13, align 8
  %357 = getelementptr inbounds i8, i8* %355, i64 %356
  store i8 %354, i8* %357, align 1
  br label %358

358:                                              ; preds = %350
  %359 = load i64, i64* %13, align 8
  %360 = add i64 %359, 1
  store i64 %360, i64* %13, align 8
  br label %346

361:                                              ; preds = %346
  %362 = load i64, i64* %11, align 8
  store i64 %362, i64* %13, align 8
  br label %363

363:                                              ; preds = %385, %361
  %364 = load i64, i64* %13, align 8
  %365 = load i64, i64* %10, align 8
  %366 = icmp ult i64 %364, %365
  br i1 %366, label %367, label %388

367:                                              ; preds = %363
  %368 = load i8*, i8** %8, align 8
  %369 = load i64, i64* %13, align 8
  %370 = getelementptr inbounds i8, i8* %368, i64 %369
  %371 = load i8, i8* %370, align 1
  %372 = zext i8 %371 to i32
  %373 = load i8*, i8** %8, align 8
  %374 = load i64, i64* %13, align 8
  %375 = load i64, i64* %11, align 8
  %376 = sub i64 %374, %375
  %377 = getelementptr inbounds i8, i8* %373, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = sub nsw i32 %372, %379
  %381 = trunc i32 %380 to i8
  %382 = load i8*, i8** %7, align 8
  %383 = load i64, i64* %13, align 8
  %384 = getelementptr inbounds i8, i8* %382, i64 %383
  store i8 %381, i8* %384, align 1
  br label %385

385:                                              ; preds = %367
  %386 = load i64, i64* %13, align 8
  %387 = add i64 %386, 1
  store i64 %387, i64* %13, align 8
  br label %363

388:                                              ; preds = %363
  br label %389

389:                                              ; preds = %388, %344
  br label %391

390:                                              ; preds = %6
  br label %391

391:                                              ; preds = %390, %389, %279, %170, %124, %32
  ret void
}

declare dso_local i32 @paethPredictor(i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
