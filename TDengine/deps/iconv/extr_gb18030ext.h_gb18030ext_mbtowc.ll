; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030ext.h_gb18030ext_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb18030ext.h_gb18030ext_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gb18030ext_2uni_pagea9 = common dso_local global i16* null, align 8
@gb18030ext_2uni_pagefe = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @gb18030ext_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb18030ext_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %10, align 1
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 162
  br i1 %19, label %36, label %20

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sge i32 %22, 164
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sle i32 %26, 169
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %20
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 215
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 254
  br i1 %35, label %36, label %364

36:                                               ; preds = %32, %28, %24, %4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %362

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %11, align 1
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 64
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp slt i32 %48, 127
  br i1 %49, label %58, label %50

50:                                               ; preds = %46, %39
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sge i32 %52, 128
  br i1 %53, label %54, label %360

54:                                               ; preds = %50
  %55 = load i8, i8* %11, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp slt i32 %56, 255
  br i1 %57, label %58, label %360

58:                                               ; preds = %54, %46
  %59 = load i8, i8* %10, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, 129
  %62 = mul nsw i32 190, %61
  %63 = load i8, i8* %11, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* %11, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sge i32 %66, 128
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 65, i32 64
  %70 = sub nsw i32 %64, %69
  %71 = add nsw i32 %62, %70
  store i32 %71, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %72 = load i8, i8* %10, align 1
  %73 = zext i8 %72 to i32
  switch i32 %73, label %350 [
    i32 162, label %74
    i32 164, label %120
    i32 165, label %132
    i32 166, label %144
    i32 167, label %197
    i32 168, label %221
    i32 169, label %267
    i32 215, label %327
    i32 254, label %339
  ]

74:                                               ; preds = %58
  %75 = load i32, i32* %12, align 4
  %76 = icmp uge i32 %75, 6376
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = icmp ule i32 %78, 6381
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = sub i32 %81, 6376
  %83 = add i32 59238, %82
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %13, align 2
  br label %119

85:                                               ; preds = %77, %74
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %86, 6432
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i16 8364, i16* %13, align 2
  br label %118

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = icmp eq i32 %90, 6433
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i16 -6291, i16* %13, align 2
  br label %117

93:                                               ; preds = %89
  %94 = load i32, i32* %12, align 4
  %95 = icmp uge i32 %94, 6444
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = icmp ule i32 %97, 6445
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = sub i32 %100, 6444
  %102 = add i32 59246, %101
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %13, align 2
  br label %116

104:                                              ; preds = %96, %93
  %105 = load i32, i32* %12, align 4
  %106 = icmp uge i32 %105, 6458
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = icmp ule i32 %108, 6459
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  %112 = sub i32 %111, 6458
  %113 = add i32 59248, %112
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %13, align 2
  br label %115

115:                                              ; preds = %110, %107, %104
  br label %116

116:                                              ; preds = %115, %99
  br label %117

117:                                              ; preds = %116, %92
  br label %118

118:                                              ; preds = %117, %88
  br label %119

119:                                              ; preds = %118, %80
  br label %351

120:                                              ; preds = %58
  %121 = load i32, i32* %12, align 4
  %122 = icmp uge i32 %121, 6829
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = icmp ule i32 %124, 6839
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = sub i32 %127, 6829
  %129 = add i32 59250, %128
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %13, align 2
  br label %131

131:                                              ; preds = %126, %123, %120
  br label %351

132:                                              ; preds = %58
  %133 = load i32, i32* %12, align 4
  %134 = icmp uge i32 %133, 7022
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp ule i32 %136, 7029
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  %140 = sub i32 %139, 7022
  %141 = add i32 59261, %140
  %142 = trunc i32 %141 to i16
  store i16 %142, i16* %13, align 2
  br label %143

143:                                              ; preds = %138, %135, %132
  br label %351

144:                                              ; preds = %58
  %145 = load i32, i32* %12, align 4
  %146 = icmp uge i32 %145, 7150
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load i32, i32* %12, align 4
  %149 = icmp ule i32 %148, 7157
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %12, align 4
  %152 = sub i32 %151, 7150
  %153 = add i32 59269, %152
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %13, align 2
  br label %196

155:                                              ; preds = %147, %144
  %156 = load i32, i32* %12, align 4
  %157 = icmp uge i32 %156, 7182
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i32, i32* %12, align 4
  %160 = icmp ule i32 %159, 7190
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = sub i32 %162, 7182
  %164 = add i32 59277, %163
  %165 = trunc i32 %164 to i16
  store i16 %165, i16* %13, align 2
  br label %195

166:                                              ; preds = %158, %155
  %167 = load i32, i32* %12, align 4
  %168 = icmp uge i32 %167, 7201
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i32, i32* %12, align 4
  %171 = icmp ule i32 %170, 7202
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* %12, align 4
  %174 = sub i32 %173, 7201
  %175 = add i32 59284, %174
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %13, align 2
  br label %194

177:                                              ; preds = %169, %166
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 7208
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i16 -6250, i16* %13, align 2
  br label %193

181:                                              ; preds = %177
  %182 = load i32, i32* %12, align 4
  %183 = icmp uge i32 %182, 7211
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = load i32, i32* %12, align 4
  %186 = icmp ule i32 %185, 7219
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load i32, i32* %12, align 4
  %189 = sub i32 %188, 7211
  %190 = add i32 59287, %189
  %191 = trunc i32 %190 to i16
  store i16 %191, i16* %13, align 2
  br label %192

192:                                              ; preds = %187, %184, %181
  br label %193

193:                                              ; preds = %192, %180
  br label %194

194:                                              ; preds = %193, %172
  br label %195

195:                                              ; preds = %194, %161
  br label %196

196:                                              ; preds = %195, %150
  br label %351

197:                                              ; preds = %58
  %198 = load i32, i32* %12, align 4
  %199 = icmp uge i32 %198, 7349
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load i32, i32* %12, align 4
  %202 = icmp ule i32 %201, 7363
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i32, i32* %12, align 4
  %205 = sub i32 %204, 7349
  %206 = add i32 59296, %205
  %207 = trunc i32 %206 to i16
  store i16 %207, i16* %13, align 2
  br label %220

208:                                              ; preds = %200, %197
  %209 = load i32, i32* %12, align 4
  %210 = icmp uge i32 %209, 7397
  br i1 %210, label %211, label %219

211:                                              ; preds = %208
  %212 = load i32, i32* %12, align 4
  %213 = icmp ule i32 %212, 7409
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* %12, align 4
  %216 = sub i32 %215, 7397
  %217 = add i32 59311, %216
  %218 = trunc i32 %217 to i16
  store i16 %218, i16* %13, align 2
  br label %219

219:                                              ; preds = %214, %211, %208
  br label %220

220:                                              ; preds = %219, %203
  br label %351

221:                                              ; preds = %58
  %222 = load i32, i32* %12, align 4
  %223 = icmp uge i32 %222, 7495
  br i1 %223, label %224, label %232

224:                                              ; preds = %221
  %225 = load i32, i32* %12, align 4
  %226 = icmp ule i32 %225, 7505
  br i1 %226, label %227, label %232

227:                                              ; preds = %224
  %228 = load i32, i32* %12, align 4
  %229 = sub i32 %228, 7495
  %230 = add i32 59324, %229
  %231 = trunc i32 %230 to i16
  store i16 %231, i16* %13, align 2
  br label %266

232:                                              ; preds = %224, %221
  %233 = load i32, i32* %12, align 4
  %234 = icmp eq i32 %233, 7533
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  store i16 -6201, i16* %13, align 2
  br label %265

236:                                              ; preds = %232
  %237 = load i32, i32* %12, align 4
  %238 = icmp eq i32 %237, 7536
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  store i16 505, i16* %13, align 2
  br label %264

240:                                              ; preds = %236
  %241 = load i32, i32* %12, align 4
  %242 = icmp uge i32 %241, 7538
  br i1 %242, label %243, label %251

243:                                              ; preds = %240
  %244 = load i32, i32* %12, align 4
  %245 = icmp ule i32 %244, 7541
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i32, i32* %12, align 4
  %248 = sub i32 %247, 7538
  %249 = add i32 59337, %248
  %250 = trunc i32 %249 to i16
  store i16 %250, i16* %13, align 2
  br label %263

251:                                              ; preds = %243, %240
  %252 = load i32, i32* %12, align 4
  %253 = icmp uge i32 %252, 7579
  br i1 %253, label %254, label %262

254:                                              ; preds = %251
  %255 = load i32, i32* %12, align 4
  %256 = icmp ule i32 %255, 7599
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load i32, i32* %12, align 4
  %259 = sub i32 %258, 7579
  %260 = add i32 59341, %259
  %261 = trunc i32 %260 to i16
  store i16 %261, i16* %13, align 2
  br label %262

262:                                              ; preds = %257, %254, %251
  br label %263

263:                                              ; preds = %262, %246
  br label %264

264:                                              ; preds = %263, %239
  br label %265

265:                                              ; preds = %264, %235
  br label %266

266:                                              ; preds = %265, %227
  br label %351

267:                                              ; preds = %58
  %268 = load i32, i32* %12, align 4
  %269 = icmp eq i32 %268, 7624
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  store i16 -6174, i16* %13, align 2
  br label %326

271:                                              ; preds = %267
  %272 = load i32, i32* %12, align 4
  %273 = icmp eq i32 %272, 7627
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  store i16 -6173, i16* %13, align 2
  br label %325

275:                                              ; preds = %271
  %276 = load i32, i32* %12, align 4
  %277 = icmp uge i32 %276, 7629
  br i1 %277, label %278, label %286

278:                                              ; preds = %275
  %279 = load i32, i32* %12, align 4
  %280 = icmp ule i32 %279, 7631
  br i1 %280, label %281, label %286

281:                                              ; preds = %278
  %282 = load i32, i32* %12, align 4
  %283 = sub i32 %282, 7629
  %284 = add i32 59364, %283
  %285 = trunc i32 %284 to i16
  store i16 %285, i16* %13, align 2
  br label %324

286:                                              ; preds = %278, %275
  %287 = load i32, i32* %12, align 4
  %288 = icmp uge i32 %287, 7672
  br i1 %288, label %289, label %299

289:                                              ; preds = %286
  %290 = load i32, i32* %12, align 4
  %291 = icmp ult i32 %290, 7685
  br i1 %291, label %292, label %299

292:                                              ; preds = %289
  %293 = load i16*, i16** @gb18030ext_2uni_pagea9, align 8
  %294 = load i32, i32* %12, align 4
  %295 = sub i32 %294, 7672
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i16, i16* %293, i64 %296
  %298 = load i16, i16* %297, align 2
  store i16 %298, i16* %13, align 2
  br label %323

299:                                              ; preds = %289, %286
  %300 = load i32, i32* %12, align 4
  %301 = icmp uge i32 %300, 7686
  br i1 %301, label %302, label %310

302:                                              ; preds = %299
  %303 = load i32, i32* %12, align 4
  %304 = icmp ule i32 %303, 7698
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load i32, i32* %12, align 4
  %307 = sub i32 %306, 7686
  %308 = add i32 59380, %307
  %309 = trunc i32 %308 to i16
  store i16 %309, i16* %13, align 2
  br label %322

310:                                              ; preds = %302, %299
  %311 = load i32, i32* %12, align 4
  %312 = icmp uge i32 %311, 7775
  br i1 %312, label %313, label %321

313:                                              ; preds = %310
  %314 = load i32, i32* %12, align 4
  %315 = icmp ule i32 %314, 7789
  br i1 %315, label %316, label %321

316:                                              ; preds = %313
  %317 = load i32, i32* %12, align 4
  %318 = sub i32 %317, 7775
  %319 = add i32 59393, %318
  %320 = trunc i32 %319 to i16
  store i16 %320, i16* %13, align 2
  br label %321

321:                                              ; preds = %316, %313, %310
  br label %322

322:                                              ; preds = %321, %305
  br label %323

323:                                              ; preds = %322, %292
  br label %324

324:                                              ; preds = %323, %281
  br label %325

325:                                              ; preds = %324, %274
  br label %326

326:                                              ; preds = %325, %270
  br label %351

327:                                              ; preds = %58
  %328 = load i32, i32* %12, align 4
  %329 = icmp uge i32 %328, 16525
  br i1 %329, label %330, label %338

330:                                              ; preds = %327
  %331 = load i32, i32* %12, align 4
  %332 = icmp ule i32 %331, 16529
  br i1 %332, label %333, label %338

333:                                              ; preds = %330
  %334 = load i32, i32* %12, align 4
  %335 = sub i32 %334, 16525
  %336 = add i32 59408, %335
  %337 = trunc i32 %336 to i16
  store i16 %337, i16* %13, align 2
  br label %338

338:                                              ; preds = %333, %330, %327
  br label %351

339:                                              ; preds = %58
  %340 = load i32, i32* %12, align 4
  %341 = icmp ult i32 %340, 23846
  br i1 %341, label %342, label %349

342:                                              ; preds = %339
  %343 = load i16*, i16** @gb18030ext_2uni_pagefe, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sub i32 %344, 23750
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i16, i16* %343, i64 %346
  %348 = load i16, i16* %347, align 2
  store i16 %348, i16* %13, align 2
  br label %349

349:                                              ; preds = %342, %339
  br label %351

350:                                              ; preds = %58
  br label %351

351:                                              ; preds = %350, %349, %338, %326, %266, %220, %196, %143, %131, %119
  %352 = load i16, i16* %13, align 2
  %353 = zext i16 %352 to i32
  %354 = icmp ne i32 %353, 65533
  br i1 %354, label %355, label %359

355:                                              ; preds = %351
  %356 = load i16, i16* %13, align 2
  %357 = zext i16 %356 to i64
  %358 = load i64*, i64** %7, align 8
  store i64 %357, i64* %358, align 8
  store i32 2, i32* %5, align 4
  br label %366

359:                                              ; preds = %351
  br label %360

360:                                              ; preds = %359, %54, %50
  %361 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %361, i32* %5, align 4
  br label %366

362:                                              ; preds = %36
  %363 = call i32 @RET_TOOFEW(i32 0)
  store i32 %363, i32* %5, align 4
  br label %366

364:                                              ; preds = %32
  %365 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %365, i32* %5, align 4
  br label %366

366:                                              ; preds = %364, %362, %360, %355
  %367 = load i32, i32* %5, align 4
  ret i32 %367
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
