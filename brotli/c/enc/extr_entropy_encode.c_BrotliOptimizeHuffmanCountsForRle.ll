; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliOptimizeHuffmanCountsForRle.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_entropy_encode.c_BrotliOptimizeHuffmanCountsForRle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliOptimizeHuffmanCountsForRle(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 1240, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %35, %3
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  br label %21

38:                                               ; preds = %21
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %39, 16
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %379

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %4, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %46, %43
  %54 = phi i1 [ false, %43 ], [ %52, %46 ]
  br i1 %54, label %55, label %58

55:                                               ; preds = %53
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %4, align 8
  br label %43

58:                                               ; preds = %53
  %59 = load i64, i64* %4, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %379

62:                                               ; preds = %58
  store i64 0, i64* %13, align 8
  store i32 1073741824, i32* %14, align 4
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %89, %62
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = load i64, i64* %13, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %76, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load i32*, i32** %5, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %82, %73
  br label %88

88:                                               ; preds = %87, %67
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %12, align 8
  br label %63

92:                                               ; preds = %63
  %93 = load i64, i64* %13, align 8
  %94 = icmp ult i64 %93, 5
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %379

96:                                               ; preds = %92
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %141

99:                                               ; preds = %96
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* %13, align 8
  %102 = sub i64 %100, %101
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %15, align 8
  %104 = icmp ult i64 %103, 6
  br i1 %104, label %105, label %140

105:                                              ; preds = %99
  store i64 1, i64* %12, align 8
  br label %106

106:                                              ; preds = %136, %105
  %107 = load i64, i64* %12, align 8
  %108 = load i64, i64* %4, align 8
  %109 = sub i64 %108, 1
  %110 = icmp ult i64 %107, %109
  br i1 %110, label %111, label %139

111:                                              ; preds = %106
  %112 = load i32*, i32** %5, align 8
  %113 = load i64, i64* %12, align 8
  %114 = sub i64 %113, 1
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %111
  %119 = load i32*, i32** %5, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %118
  %125 = load i32*, i32** %5, align 8
  %126 = load i64, i64* %12, align 8
  %127 = add i64 %126, 1
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i32*, i32** %5, align 8
  %133 = load i64, i64* %12, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %124, %118, %111
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %12, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %12, align 8
  br label %106

139:                                              ; preds = %106
  br label %140

140:                                              ; preds = %139, %99
  br label %141

141:                                              ; preds = %140, %96
  %142 = load i64, i64* %13, align 8
  %143 = icmp ult i64 %142, 28
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %379

145:                                              ; preds = %141
  %146 = load i32*, i32** %6, align 8
  %147 = load i64, i64* %4, align 8
  %148 = call i32 @memset(i32* %146, i32 0, i64 %147)
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %12, align 8
  br label %152

152:                                              ; preds = %209, %145
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* %4, align 8
  %155 = icmp ule i64 %153, %154
  br i1 %155, label %156, label %212

156:                                              ; preds = %152
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %4, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %167, label %160

160:                                              ; preds = %156
  %161 = load i32*, i32** %5, align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %16, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %205

167:                                              ; preds = %160, %156
  %168 = load i32, i32* %16, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i64, i64* %17, align 8
  %172 = icmp uge i64 %171, 5
  br i1 %172, label %179, label %173

173:                                              ; preds = %170, %167
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %173
  %177 = load i64, i64* %17, align 8
  %178 = icmp uge i64 %177, 7
  br i1 %178, label %179, label %195

179:                                              ; preds = %176, %170
  store i64 0, i64* %18, align 8
  br label %180

180:                                              ; preds = %191, %179
  %181 = load i64, i64* %18, align 8
  %182 = load i64, i64* %17, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %180
  %185 = load i32*, i32** %6, align 8
  %186 = load i64, i64* %12, align 8
  %187 = load i64, i64* %18, align 8
  %188 = sub i64 %186, %187
  %189 = sub i64 %188, 1
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  store i32 1, i32* %190, align 4
  br label %191

191:                                              ; preds = %184
  %192 = load i64, i64* %18, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %18, align 8
  br label %180

194:                                              ; preds = %180
  br label %195

195:                                              ; preds = %194, %176, %173
  store i64 1, i64* %17, align 8
  %196 = load i64, i64* %12, align 8
  %197 = load i64, i64* %4, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i32*, i32** %5, align 8
  %201 = load i64, i64* %12, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %16, align 4
  br label %204

204:                                              ; preds = %199, %195
  br label %208

205:                                              ; preds = %160
  %206 = load i64, i64* %17, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %17, align 8
  br label %208

208:                                              ; preds = %205, %204
  br label %209

209:                                              ; preds = %208
  %210 = load i64, i64* %12, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %12, align 8
  br label %152

212:                                              ; preds = %152
  store i64 0, i64* %8, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %215, %218
  %220 = load i32*, i32** %5, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %219, %222
  %224 = mul nsw i32 256, %223
  %225 = sdiv i32 %224, 3
  %226 = add nsw i32 %225, 420
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %228

228:                                              ; preds = %376, %212
  %229 = load i64, i64* %12, align 8
  %230 = load i64, i64* %4, align 8
  %231 = icmp ule i64 %229, %230
  br i1 %231, label %232, label %379

232:                                              ; preds = %228
  %233 = load i64, i64* %12, align 8
  %234 = load i64, i64* %4, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %263, label %236

236:                                              ; preds = %232
  %237 = load i32*, i32** %6, align 8
  %238 = load i64, i64* %12, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %263, label %242

242:                                              ; preds = %236
  %243 = load i64, i64* %12, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load i32*, i32** %6, align 8
  %247 = load i64, i64* %12, align 8
  %248 = sub i64 %247, 1
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %263, label %252

252:                                              ; preds = %245, %242
  %253 = load i32*, i32** %5, align 8
  %254 = load i64, i64* %12, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = mul nsw i32 256, %256
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* %9, align 8
  %260 = sub i64 %258, %259
  %261 = add i64 %260, 1240
  %262 = icmp uge i64 %261, 2480
  br i1 %262, label %263, label %344

263:                                              ; preds = %252, %245, %236, %232
  %264 = load i64, i64* %8, align 8
  %265 = icmp uge i64 %264, 4
  br i1 %265, label %272, label %266

266:                                              ; preds = %263
  %267 = load i64, i64* %8, align 8
  %268 = icmp uge i64 %267, 3
  br i1 %268, label %269, label %304

269:                                              ; preds = %266
  %270 = load i64, i64* %10, align 8
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %304

272:                                              ; preds = %269, %263
  %273 = load i64, i64* %10, align 8
  %274 = load i64, i64* %8, align 8
  %275 = udiv i64 %274, 2
  %276 = add i64 %273, %275
  %277 = load i64, i64* %8, align 8
  %278 = udiv i64 %276, %277
  store i64 %278, i64* %20, align 8
  %279 = load i64, i64* %20, align 8
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %272
  store i64 1, i64* %20, align 8
  br label %282

282:                                              ; preds = %281, %272
  %283 = load i64, i64* %10, align 8
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i64 0, i64* %20, align 8
  br label %286

286:                                              ; preds = %285, %282
  store i64 0, i64* %19, align 8
  br label %287

287:                                              ; preds = %300, %286
  %288 = load i64, i64* %19, align 8
  %289 = load i64, i64* %8, align 8
  %290 = icmp ult i64 %288, %289
  br i1 %290, label %291, label %303

291:                                              ; preds = %287
  %292 = load i64, i64* %20, align 8
  %293 = trunc i64 %292 to i32
  %294 = load i32*, i32** %5, align 8
  %295 = load i64, i64* %12, align 8
  %296 = load i64, i64* %19, align 8
  %297 = sub i64 %295, %296
  %298 = sub i64 %297, 1
  %299 = getelementptr inbounds i32, i32* %294, i64 %298
  store i32 %293, i32* %299, align 4
  br label %300

300:                                              ; preds = %291
  %301 = load i64, i64* %19, align 8
  %302 = add i64 %301, 1
  store i64 %302, i64* %19, align 8
  br label %287

303:                                              ; preds = %287
  br label %304

304:                                              ; preds = %303, %269, %266
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %305 = load i64, i64* %12, align 8
  %306 = load i64, i64* %4, align 8
  %307 = sub i64 %306, 2
  %308 = icmp ult i64 %305, %307
  br i1 %308, label %309, label %330

309:                                              ; preds = %304
  %310 = load i32*, i32** %5, align 8
  %311 = load i64, i64* %12, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** %5, align 8
  %315 = load i64, i64* %12, align 8
  %316 = add i64 %315, 1
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %313, %318
  %320 = load i32*, i32** %5, align 8
  %321 = load i64, i64* %12, align 8
  %322 = add i64 %321, 2
  %323 = getelementptr inbounds i32, i32* %320, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %319, %324
  %326 = mul nsw i32 256, %325
  %327 = sdiv i32 %326, 3
  %328 = add nsw i32 %327, 420
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %9, align 8
  br label %343

330:                                              ; preds = %304
  %331 = load i64, i64* %12, align 8
  %332 = load i64, i64* %4, align 8
  %333 = icmp ult i64 %331, %332
  br i1 %333, label %334, label %341

334:                                              ; preds = %330
  %335 = load i32*, i32** %5, align 8
  %336 = load i64, i64* %12, align 8
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = mul nsw i32 256, %338
  %340 = sext i32 %339 to i64
  store i64 %340, i64* %9, align 8
  br label %342

341:                                              ; preds = %330
  store i64 0, i64* %9, align 8
  br label %342

342:                                              ; preds = %341, %334
  br label %343

343:                                              ; preds = %342, %309
  br label %344

344:                                              ; preds = %343, %252
  %345 = load i64, i64* %8, align 8
  %346 = add i64 %345, 1
  store i64 %346, i64* %8, align 8
  %347 = load i64, i64* %12, align 8
  %348 = load i64, i64* %4, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %375

350:                                              ; preds = %344
  %351 = load i32*, i32** %5, align 8
  %352 = load i64, i64* %12, align 8
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = load i64, i64* %10, align 8
  %357 = add i64 %356, %355
  store i64 %357, i64* %10, align 8
  %358 = load i64, i64* %8, align 8
  %359 = icmp uge i64 %358, 4
  br i1 %359, label %360, label %368

360:                                              ; preds = %350
  %361 = load i64, i64* %10, align 8
  %362 = mul i64 256, %361
  %363 = load i64, i64* %8, align 8
  %364 = udiv i64 %363, 2
  %365 = add i64 %362, %364
  %366 = load i64, i64* %8, align 8
  %367 = udiv i64 %365, %366
  store i64 %367, i64* %9, align 8
  br label %368

368:                                              ; preds = %360, %350
  %369 = load i64, i64* %8, align 8
  %370 = icmp eq i64 %369, 4
  br i1 %370, label %371, label %374

371:                                              ; preds = %368
  %372 = load i64, i64* %9, align 8
  %373 = add i64 %372, 120
  store i64 %373, i64* %9, align 8
  br label %374

374:                                              ; preds = %371, %368
  br label %375

375:                                              ; preds = %374, %344
  br label %376

376:                                              ; preds = %375
  %377 = load i64, i64* %12, align 8
  %378 = add i64 %377, 1
  store i64 %378, i64* %12, align 8
  br label %228

379:                                              ; preds = %41, %61, %95, %144, %228
  ret void
}

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
