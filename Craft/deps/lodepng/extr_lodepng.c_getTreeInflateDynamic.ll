; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getTreeInflateDynamic.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_getTreeInflateDynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_CODE_LENGTH_CODES = common dso_local global i32 0, align 4
@CLCL_ORDER = common dso_local global i64* null, align 8
@NUM_DEFLATE_CODE_SYMBOLS = common dso_local global i32 0, align 4
@NUM_DISTANCE_SYMBOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64*, i64)* @getTreeInflateDynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getTreeInflateDynamic(i32* %0, i32* %1, i8* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %28 = load i64, i64* %11, align 8
  %29 = mul i64 %28, 8
  store i64 %29, i64* %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %30 = load i64*, i64** %10, align 8
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %31, 3
  %33 = load i64, i64* %11, align 8
  %34 = sub i64 %33, 2
  %35 = icmp uge i64 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 49, i32* %6, align 4
  br label %416

37:                                               ; preds = %5
  %38 = load i64*, i64** %10, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @readBitsFromStream(i64* %38, i8* %39, i32 5)
  %41 = add i32 %40, 257
  store i32 %41, i32* %14, align 4
  %42 = load i64*, i64** %10, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @readBitsFromStream(i64* %42, i8* %43, i32 5)
  %45 = add i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = load i64*, i64** %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @readBitsFromStream(i64* %46, i8* %47, i32 4)
  %49 = add i32 %48, 4
  store i32 %49, i32* %16, align 4
  %50 = call i32 @HuffmanTree_init(i32* %22)
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %407

55:                                               ; preds = %51
  %56 = load i32, i32* @NUM_CODE_LENGTH_CODES, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i64 @lodepng_malloc(i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %21, align 8
  %62 = load i32*, i32** %21, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = call i32 @ERROR_BREAK(i32 83)
  br label %66

66:                                               ; preds = %64, %55
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %95, %66
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* @NUM_CODE_LENGTH_CODES, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i64*, i64** %10, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @readBitsFromStream(i64* %76, i8* %77, i32 3)
  %79 = load i32*, i32** %21, align 8
  %80 = load i64*, i64** @CLCL_ORDER, align 8
  %81 = load i32, i32* %17, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  store i32 %78, i32* %85, align 4
  br label %94

86:                                               ; preds = %71
  %87 = load i32*, i32** %21, align 8
  %88 = load i64*, i64** @CLCL_ORDER, align 8
  %89 = load i32, i32* %17, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  store i32 0, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %75
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %17, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %67

98:                                               ; preds = %67
  %99 = load i32*, i32** %21, align 8
  %100 = load i32, i32* @NUM_CODE_LENGTH_CODES, align 4
  %101 = call i32 @HuffmanTree_makeFromLengths(i32* %22, i32* %99, i32 %100, i32 7)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %407

105:                                              ; preds = %98
  %106 = load i32, i32* @NUM_DEFLATE_CODE_SYMBOLS, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i64 @lodepng_malloc(i32 %109)
  %111 = inttoptr i64 %110 to i32*
  store i32* %111, i32** %19, align 8
  %112 = load i32, i32* @NUM_DISTANCE_SYMBOLS, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i64 @lodepng_malloc(i32 %115)
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %20, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %105
  %121 = load i32*, i32** %20, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %120, %105
  %124 = call i32 @ERROR_BREAK(i32 83)
  br label %125

125:                                              ; preds = %123, %120
  store i32 0, i32* %17, align 4
  br label %126

126:                                              ; preds = %135, %125
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* @NUM_DEFLATE_CODE_SYMBOLS, align 4
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load i32*, i32** %19, align 8
  %132 = load i32, i32* %17, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %17, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %17, align 4
  br label %126

138:                                              ; preds = %126
  store i32 0, i32* %17, align 4
  br label %139

139:                                              ; preds = %148, %138
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @NUM_DISTANCE_SYMBOLS, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load i32*, i32** %20, align 8
  %145 = load i32, i32* %17, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 0, i32* %147, align 4
  br label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %17, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %17, align 4
  br label %139

151:                                              ; preds = %139
  store i32 0, i32* %17, align 4
  br label %152

152:                                              ; preds = %382, %151
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %15, align 4
  %156 = add i32 %154, %155
  %157 = icmp ult i32 %153, %156
  br i1 %157, label %158, label %383

158:                                              ; preds = %152
  %159 = load i8*, i8** %9, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = load i64, i64* %18, align 8
  %162 = call i32 @huffmanDecodeSymbol(i8* %159, i64* %160, i32* %22, i64 %161)
  store i32 %162, i32* %23, align 4
  %163 = load i32, i32* %23, align 4
  %164 = icmp ule i32 %163, 15
  br i1 %164, label %165, label %186

165:                                              ; preds = %158
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i32, i32* %23, align 4
  %171 = load i32*, i32** %19, align 8
  %172 = load i32, i32* %17, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %170, i32* %174, align 4
  br label %183

175:                                              ; preds = %165
  %176 = load i32, i32* %23, align 4
  %177 = load i32*, i32** %20, align 8
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %14, align 4
  %180 = sub i32 %178, %179
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  store i32 %176, i32* %182, align 4
  br label %183

183:                                              ; preds = %175, %169
  %184 = load i32, i32* %17, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %17, align 4
  br label %382

186:                                              ; preds = %158
  %187 = load i32, i32* %23, align 4
  %188 = icmp eq i32 %187, 16
  br i1 %188, label %189, label %265

189:                                              ; preds = %186
  store i32 3, i32* %24, align 4
  %190 = load i64*, i64** %10, align 8
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %18, align 8
  %193 = icmp uge i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = call i32 @ERROR_BREAK(i32 50)
  br label %196

196:                                              ; preds = %194, %189
  %197 = load i32, i32* %17, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = call i32 @ERROR_BREAK(i32 54)
  br label %201

201:                                              ; preds = %199, %196
  %202 = load i64*, i64** %10, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 @readBitsFromStream(i64* %202, i8* %203, i32 2)
  %205 = load i32, i32* %24, align 4
  %206 = add i32 %205, %204
  store i32 %206, i32* %24, align 4
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %14, align 4
  %209 = add i32 %208, 1
  %210 = icmp ult i32 %207, %209
  br i1 %210, label %211, label %218

211:                                              ; preds = %201
  %212 = load i32*, i32** %19, align 8
  %213 = load i32, i32* %17, align 4
  %214 = sub i32 %213, 1
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %212, i64 %215
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %25, align 4
  br label %227

218:                                              ; preds = %201
  %219 = load i32*, i32** %20, align 8
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* %14, align 4
  %222 = sub i32 %220, %221
  %223 = sub i32 %222, 1
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %219, i64 %224
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %25, align 4
  br label %227

227:                                              ; preds = %218, %211
  store i32 0, i32* %13, align 4
  br label %228

228:                                              ; preds = %261, %227
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %24, align 4
  %231 = icmp ult i32 %229, %230
  br i1 %231, label %232, label %264

232:                                              ; preds = %228
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %14, align 4
  %235 = load i32, i32* %15, align 4
  %236 = add i32 %234, %235
  %237 = icmp uge i32 %233, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %232
  %239 = call i32 @ERROR_BREAK(i32 13)
  br label %240

240:                                              ; preds = %238, %232
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %14, align 4
  %243 = icmp ult i32 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load i32, i32* %25, align 4
  %246 = load i32*, i32** %19, align 8
  %247 = load i32, i32* %17, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %245, i32* %249, align 4
  br label %258

250:                                              ; preds = %240
  %251 = load i32, i32* %25, align 4
  %252 = load i32*, i32** %20, align 8
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %14, align 4
  %255 = sub i32 %253, %254
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  store i32 %251, i32* %257, align 4
  br label %258

258:                                              ; preds = %250, %244
  %259 = load i32, i32* %17, align 4
  %260 = add i32 %259, 1
  store i32 %260, i32* %17, align 4
  br label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %13, align 4
  %263 = add i32 %262, 1
  store i32 %263, i32* %13, align 4
  br label %228

264:                                              ; preds = %228
  br label %381

265:                                              ; preds = %186
  %266 = load i32, i32* %23, align 4
  %267 = icmp eq i32 %266, 17
  br i1 %267, label %268, label %316

268:                                              ; preds = %265
  store i32 3, i32* %26, align 4
  %269 = load i64*, i64** %10, align 8
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %18, align 8
  %272 = icmp uge i64 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = call i32 @ERROR_BREAK(i32 50)
  br label %275

275:                                              ; preds = %273, %268
  %276 = load i64*, i64** %10, align 8
  %277 = load i8*, i8** %9, align 8
  %278 = call i32 @readBitsFromStream(i64* %276, i8* %277, i32 3)
  %279 = load i32, i32* %26, align 4
  %280 = add i32 %279, %278
  store i32 %280, i32* %26, align 4
  store i32 0, i32* %13, align 4
  br label %281

281:                                              ; preds = %312, %275
  %282 = load i32, i32* %13, align 4
  %283 = load i32, i32* %26, align 4
  %284 = icmp ult i32 %282, %283
  br i1 %284, label %285, label %315

285:                                              ; preds = %281
  %286 = load i32, i32* %17, align 4
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* %15, align 4
  %289 = add i32 %287, %288
  %290 = icmp uge i32 %286, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %285
  %292 = call i32 @ERROR_BREAK(i32 14)
  br label %293

293:                                              ; preds = %291, %285
  %294 = load i32, i32* %17, align 4
  %295 = load i32, i32* %14, align 4
  %296 = icmp ult i32 %294, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = load i32*, i32** %19, align 8
  %299 = load i32, i32* %17, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32 0, i32* %301, align 4
  br label %309

302:                                              ; preds = %293
  %303 = load i32*, i32** %20, align 8
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* %14, align 4
  %306 = sub i32 %304, %305
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %303, i64 %307
  store i32 0, i32* %308, align 4
  br label %309

309:                                              ; preds = %302, %297
  %310 = load i32, i32* %17, align 4
  %311 = add i32 %310, 1
  store i32 %311, i32* %17, align 4
  br label %312

312:                                              ; preds = %309
  %313 = load i32, i32* %13, align 4
  %314 = add i32 %313, 1
  store i32 %314, i32* %13, align 4
  br label %281

315:                                              ; preds = %281
  br label %380

316:                                              ; preds = %265
  %317 = load i32, i32* %23, align 4
  %318 = icmp eq i32 %317, 18
  br i1 %318, label %319, label %367

319:                                              ; preds = %316
  store i32 11, i32* %27, align 4
  %320 = load i64*, i64** %10, align 8
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* %18, align 8
  %323 = icmp uge i64 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = call i32 @ERROR_BREAK(i32 50)
  br label %326

326:                                              ; preds = %324, %319
  %327 = load i64*, i64** %10, align 8
  %328 = load i8*, i8** %9, align 8
  %329 = call i32 @readBitsFromStream(i64* %327, i8* %328, i32 7)
  %330 = load i32, i32* %27, align 4
  %331 = add i32 %330, %329
  store i32 %331, i32* %27, align 4
  store i32 0, i32* %13, align 4
  br label %332

332:                                              ; preds = %363, %326
  %333 = load i32, i32* %13, align 4
  %334 = load i32, i32* %27, align 4
  %335 = icmp ult i32 %333, %334
  br i1 %335, label %336, label %366

336:                                              ; preds = %332
  %337 = load i32, i32* %17, align 4
  %338 = load i32, i32* %14, align 4
  %339 = load i32, i32* %15, align 4
  %340 = add i32 %338, %339
  %341 = icmp uge i32 %337, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %336
  %343 = call i32 @ERROR_BREAK(i32 15)
  br label %344

344:                                              ; preds = %342, %336
  %345 = load i32, i32* %17, align 4
  %346 = load i32, i32* %14, align 4
  %347 = icmp ult i32 %345, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %344
  %349 = load i32*, i32** %19, align 8
  %350 = load i32, i32* %17, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  store i32 0, i32* %352, align 4
  br label %360

353:                                              ; preds = %344
  %354 = load i32*, i32** %20, align 8
  %355 = load i32, i32* %17, align 4
  %356 = load i32, i32* %14, align 4
  %357 = sub i32 %355, %356
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %354, i64 %358
  store i32 0, i32* %359, align 4
  br label %360

360:                                              ; preds = %353, %348
  %361 = load i32, i32* %17, align 4
  %362 = add i32 %361, 1
  store i32 %362, i32* %17, align 4
  br label %363

363:                                              ; preds = %360
  %364 = load i32, i32* %13, align 4
  %365 = add i32 %364, 1
  store i32 %365, i32* %13, align 4
  br label %332

366:                                              ; preds = %332
  br label %379

367:                                              ; preds = %316
  %368 = load i32, i32* %23, align 4
  %369 = icmp eq i32 %368, -1
  br i1 %369, label %370, label %377

370:                                              ; preds = %367
  %371 = load i64*, i64** %10, align 8
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* %18, align 8
  %374 = icmp ugt i64 %372, %373
  %375 = zext i1 %374 to i64
  %376 = select i1 %374, i32 10, i32 11
  store i32 %376, i32* %12, align 4
  br label %378

377:                                              ; preds = %367
  store i32 16, i32* %12, align 4
  br label %378

378:                                              ; preds = %377, %370
  br label %383

379:                                              ; preds = %366
  br label %380

380:                                              ; preds = %379, %315
  br label %381

381:                                              ; preds = %380, %264
  br label %382

382:                                              ; preds = %381, %183
  br label %152

383:                                              ; preds = %378, %152
  %384 = load i32, i32* %12, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  br label %407

387:                                              ; preds = %383
  %388 = load i32*, i32** %19, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 256
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %387
  %393 = call i32 @ERROR_BREAK(i32 64)
  br label %394

394:                                              ; preds = %392, %387
  %395 = load i32*, i32** %7, align 8
  %396 = load i32*, i32** %19, align 8
  %397 = load i32, i32* @NUM_DEFLATE_CODE_SYMBOLS, align 4
  %398 = call i32 @HuffmanTree_makeFromLengths(i32* %395, i32* %396, i32 %397, i32 15)
  store i32 %398, i32* %12, align 4
  %399 = load i32, i32* %12, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %394
  br label %407

402:                                              ; preds = %394
  %403 = load i32*, i32** %8, align 8
  %404 = load i32*, i32** %20, align 8
  %405 = load i32, i32* @NUM_DISTANCE_SYMBOLS, align 4
  %406 = call i32 @HuffmanTree_makeFromLengths(i32* %403, i32* %404, i32 %405, i32 15)
  store i32 %406, i32* %12, align 4
  br label %407

407:                                              ; preds = %402, %401, %386, %104, %51
  %408 = load i32*, i32** %21, align 8
  %409 = call i32 @lodepng_free(i32* %408)
  %410 = load i32*, i32** %19, align 8
  %411 = call i32 @lodepng_free(i32* %410)
  %412 = load i32*, i32** %20, align 8
  %413 = call i32 @lodepng_free(i32* %412)
  %414 = call i32 @HuffmanTree_cleanup(i32* %22)
  %415 = load i32, i32* %12, align 4
  store i32 %415, i32* %6, align 4
  br label %416

416:                                              ; preds = %407, %36
  %417 = load i32, i32* %6, align 4
  ret i32 %417
}

declare dso_local i32 @readBitsFromStream(i64*, i8*, i32) #1

declare dso_local i32 @HuffmanTree_init(i32*) #1

declare dso_local i64 @lodepng_malloc(i32) #1

declare dso_local i32 @ERROR_BREAK(i32) #1

declare dso_local i32 @HuffmanTree_makeFromLengths(i32*, i32*, i32, i32) #1

declare dso_local i32 @huffmanDecodeSymbol(i8*, i64*, i32*, i64) #1

declare dso_local i32 @lodepng_free(i32*) #1

declare dso_local i32 @HuffmanTree_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
