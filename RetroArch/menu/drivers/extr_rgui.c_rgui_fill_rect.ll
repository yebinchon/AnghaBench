; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_fill_rect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_rgui.c_rgui_fill_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_FB_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32, i32, i32, i32, i32, i64, i64, i32)* @rgui_fill_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgui_fill_rect(i64* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7, i64 %8, i32 %9) #0 {
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64*, align 8
  %33 = alloca i64*, align 8
  %34 = alloca i64*, align 8
  %35 = alloca i64*, align 8
  %36 = alloca i64*, align 8
  %37 = alloca i64*, align 8
  %38 = alloca i64*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i64*, align 8
  %41 = alloca i64*, align 8
  %42 = alloca i64*, align 8
  %43 = alloca i32, align 4
  store i64* %0, i64** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  store i32 %9, i32* %20, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ule i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %10
  %48 = load i32, i32* %14, align 4
  br label %51

49:                                               ; preds = %10
  %50 = load i32, i32* %12, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ule i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %15, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %13, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %24, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %16, align 4
  %64 = add i32 %62, %63
  store i32 %64, i32* %25, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %17, align 4
  %67 = add i32 %65, %66
  store i32 %67, i32* %26, align 4
  %68 = load i32, i32* @MAX_FB_WIDTH, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %28, align 8
  %71 = alloca i64, i64 %69, align 16
  store i64 %69, i64* %29, align 8
  %72 = load i32, i32* @MAX_FB_WIDTH, align 4
  %73 = zext i32 %72 to i64
  %74 = alloca i64, i64 %73, align 16
  store i64 %73, i64* %30, align 8
  %75 = load i32, i32* %25, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ule i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i32, i32* %25, align 4
  br label %82

80:                                               ; preds = %60
  %81 = load i32, i32* %12, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %25, align 4
  %84 = load i32, i32* %26, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ule i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %26, align 4
  br label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %26, align 4
  %93 = load i32, i32* %25, align 4
  %94 = load i32, i32* %23, align 4
  %95 = sub i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = mul i64 %96, 8
  store i64 %97, i64* %27, align 8
  %98 = load i64, i64* %27, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 1, i32* %31, align 4
  br label %410

101:                                              ; preds = %91
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %19, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %146

105:                                              ; preds = %101
  %106 = load i32, i32* %23, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %71, i64 %107
  store i64* %108, i64** %32, align 8
  %109 = load i64*, i64** %11, align 8
  %110 = load i32, i32* %23, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64* %112, i64** %33, align 8
  %113 = load i32, i32* %23, align 4
  store i32 %113, i32* %21, align 4
  br label %114

114:                                              ; preds = %123, %105
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %25, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load i64, i64* %18, align 8
  %120 = load i32, i32* %21, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %71, i64 %121
  store i64 %119, i64* %122, align 8
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %21, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %21, align 4
  br label %114

126:                                              ; preds = %114
  %127 = load i32, i32* %24, align 4
  store i32 %127, i32* %22, align 4
  br label %128

128:                                              ; preds = %142, %126
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* %26, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = load i64*, i64** %33, align 8
  %134 = load i32, i32* %22, align 4
  %135 = load i32, i32* %12, align 4
  %136 = mul i32 %134, %135
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %133, i64 %137
  %139 = load i64*, i64** %32, align 8
  %140 = load i64, i64* %27, align 8
  %141 = call i32 @memcpy(i64* %138, i64* %139, i64 %140)
  br label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %22, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %22, align 4
  br label %128

145:                                              ; preds = %128
  br label %409

146:                                              ; preds = %101
  %147 = load i32, i32* %20, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %310

149:                                              ; preds = %146
  store i64* null, i64** %34, align 8
  store i64* null, i64** %35, align 8
  store i64* null, i64** %36, align 8
  store i64* null, i64** %37, align 8
  %150 = load i64*, i64** %11, align 8
  %151 = load i32, i32* %23, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  store i64* %153, i64** %38, align 8
  %154 = load i32, i32* %24, align 4
  %155 = and i32 %154, 3
  switch i32 %155, label %184 [
    i32 1, label %156
    i32 2, label %165
    i32 3, label %174
    i32 0, label %183
  ]

156:                                              ; preds = %149
  %157 = load i32, i32* %23, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %71, i64 %158
  store i64* %159, i64** %34, align 8
  %160 = load i32, i32* %23, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %74, i64 %161
  store i64* %162, i64** %35, align 8
  %163 = load i64*, i64** %35, align 8
  store i64* %163, i64** %36, align 8
  %164 = load i64*, i64** %34, align 8
  store i64* %164, i64** %37, align 8
  br label %193

165:                                              ; preds = %149
  %166 = load i32, i32* %23, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %74, i64 %167
  store i64* %168, i64** %34, align 8
  %169 = load i64*, i64** %34, align 8
  store i64* %169, i64** %35, align 8
  %170 = load i32, i32* %23, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %71, i64 %171
  store i64* %172, i64** %36, align 8
  %173 = load i64*, i64** %36, align 8
  store i64* %173, i64** %37, align 8
  br label %193

174:                                              ; preds = %149
  %175 = load i32, i32* %23, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %74, i64 %176
  store i64* %177, i64** %34, align 8
  %178 = load i32, i32* %23, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %71, i64 %179
  store i64* %180, i64** %35, align 8
  %181 = load i64*, i64** %35, align 8
  store i64* %181, i64** %36, align 8
  %182 = load i64*, i64** %34, align 8
  store i64* %182, i64** %37, align 8
  br label %193

183:                                              ; preds = %149
  br label %184

184:                                              ; preds = %149, %183
  %185 = load i32, i32* %23, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %71, i64 %186
  store i64* %187, i64** %34, align 8
  %188 = load i64*, i64** %34, align 8
  store i64* %188, i64** %35, align 8
  %189 = load i32, i32* %23, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %74, i64 %190
  store i64* %191, i64** %36, align 8
  %192 = load i64*, i64** %36, align 8
  store i64* %192, i64** %37, align 8
  br label %193

193:                                              ; preds = %184, %174, %165, %156
  %194 = load i32, i32* %23, align 4
  store i32 %194, i32* %21, align 4
  br label %195

195:                                              ; preds = %227, %193
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %25, align 4
  %198 = icmp ult i32 %196, %197
  br i1 %198, label %199, label %230

199:                                              ; preds = %195
  %200 = load i32, i32* %21, align 4
  %201 = lshr i32 %200, 1
  %202 = and i32 %201, 1
  %203 = icmp eq i32 %202, 0
  %204 = zext i1 %203 to i32
  store i32 %204, i32* %39, align 4
  %205 = load i32, i32* %39, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = load i64, i64* %18, align 8
  br label %211

209:                                              ; preds = %199
  %210 = load i64, i64* %19, align 8
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i64 [ %208, %207 ], [ %210, %209 ]
  %213 = load i32, i32* %21, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %71, i64 %214
  store i64 %212, i64* %215, align 8
  %216 = load i32, i32* %39, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = load i64, i64* %19, align 8
  br label %222

220:                                              ; preds = %211
  %221 = load i64, i64* %18, align 8
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i64 [ %219, %218 ], [ %221, %220 ]
  %224 = load i32, i32* %21, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %74, i64 %225
  store i64 %223, i64* %226, align 8
  br label %227

227:                                              ; preds = %222
  %228 = load i32, i32* %21, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %21, align 4
  br label %195

230:                                              ; preds = %195
  %231 = load i32, i32* %24, align 4
  store i32 %231, i32* %22, align 4
  br label %232

232:                                              ; preds = %246, %230
  %233 = load i32, i32* %22, align 4
  %234 = load i32, i32* %26, align 4
  %235 = icmp ult i32 %233, %234
  br i1 %235, label %236, label %249

236:                                              ; preds = %232
  %237 = load i64*, i64** %38, align 8
  %238 = load i32, i32* %22, align 4
  %239 = load i32, i32* %12, align 4
  %240 = mul i32 %238, %239
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %237, i64 %241
  %243 = load i64*, i64** %34, align 8
  %244 = load i64, i64* %27, align 8
  %245 = call i32 @memcpy(i64* %242, i64* %243, i64 %244)
  br label %246

246:                                              ; preds = %236
  %247 = load i32, i32* %22, align 4
  %248 = add i32 %247, 4
  store i32 %248, i32* %22, align 4
  br label %232

249:                                              ; preds = %232
  %250 = load i32, i32* %24, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %22, align 4
  br label %252

252:                                              ; preds = %266, %249
  %253 = load i32, i32* %22, align 4
  %254 = load i32, i32* %26, align 4
  %255 = icmp ult i32 %253, %254
  br i1 %255, label %256, label %269

256:                                              ; preds = %252
  %257 = load i64*, i64** %38, align 8
  %258 = load i32, i32* %22, align 4
  %259 = load i32, i32* %12, align 4
  %260 = mul i32 %258, %259
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %257, i64 %261
  %263 = load i64*, i64** %35, align 8
  %264 = load i64, i64* %27, align 8
  %265 = call i32 @memcpy(i64* %262, i64* %263, i64 %264)
  br label %266

266:                                              ; preds = %256
  %267 = load i32, i32* %22, align 4
  %268 = add i32 %267, 4
  store i32 %268, i32* %22, align 4
  br label %252

269:                                              ; preds = %252
  %270 = load i32, i32* %24, align 4
  %271 = add i32 %270, 2
  store i32 %271, i32* %22, align 4
  br label %272

272:                                              ; preds = %286, %269
  %273 = load i32, i32* %22, align 4
  %274 = load i32, i32* %26, align 4
  %275 = icmp ult i32 %273, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %272
  %277 = load i64*, i64** %38, align 8
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* %12, align 4
  %280 = mul i32 %278, %279
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %277, i64 %281
  %283 = load i64*, i64** %36, align 8
  %284 = load i64, i64* %27, align 8
  %285 = call i32 @memcpy(i64* %282, i64* %283, i64 %284)
  br label %286

286:                                              ; preds = %276
  %287 = load i32, i32* %22, align 4
  %288 = add i32 %287, 4
  store i32 %288, i32* %22, align 4
  br label %272

289:                                              ; preds = %272
  %290 = load i32, i32* %24, align 4
  %291 = add i32 %290, 3
  store i32 %291, i32* %22, align 4
  br label %292

292:                                              ; preds = %306, %289
  %293 = load i32, i32* %22, align 4
  %294 = load i32, i32* %26, align 4
  %295 = icmp ult i32 %293, %294
  br i1 %295, label %296, label %309

296:                                              ; preds = %292
  %297 = load i64*, i64** %38, align 8
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %12, align 4
  %300 = mul i32 %298, %299
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %297, i64 %301
  %303 = load i64*, i64** %37, align 8
  %304 = load i64, i64* %27, align 8
  %305 = call i32 @memcpy(i64* %302, i64* %303, i64 %304)
  br label %306

306:                                              ; preds = %296
  %307 = load i32, i32* %22, align 4
  %308 = add i32 %307, 4
  store i32 %308, i32* %22, align 4
  br label %292

309:                                              ; preds = %292
  br label %408

310:                                              ; preds = %146
  store i64* null, i64** %40, align 8
  store i64* null, i64** %41, align 8
  %311 = load i64*, i64** %11, align 8
  %312 = load i32, i32* %23, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  store i64* %314, i64** %42, align 8
  %315 = load i32, i32* %24, align 4
  %316 = and i32 %315, 1
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %325

318:                                              ; preds = %310
  %319 = load i32, i32* %23, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %71, i64 %320
  store i64* %321, i64** %40, align 8
  %322 = load i32, i32* %23, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i64, i64* %74, i64 %323
  store i64* %324, i64** %41, align 8
  br label %332

325:                                              ; preds = %310
  %326 = load i32, i32* %23, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %74, i64 %327
  store i64* %328, i64** %40, align 8
  %329 = load i32, i32* %23, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i64, i64* %71, i64 %330
  store i64* %331, i64** %41, align 8
  br label %332

332:                                              ; preds = %325, %318
  %333 = load i32, i32* %23, align 4
  store i32 %333, i32* %21, align 4
  br label %334

334:                                              ; preds = %365, %332
  %335 = load i32, i32* %21, align 4
  %336 = load i32, i32* %25, align 4
  %337 = icmp ult i32 %335, %336
  br i1 %337, label %338, label %368

338:                                              ; preds = %334
  %339 = load i32, i32* %21, align 4
  %340 = and i32 %339, 1
  %341 = icmp eq i32 %340, 0
  %342 = zext i1 %341 to i32
  store i32 %342, i32* %43, align 4
  %343 = load i32, i32* %43, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %338
  %346 = load i64, i64* %18, align 8
  br label %349

347:                                              ; preds = %338
  %348 = load i64, i64* %19, align 8
  br label %349

349:                                              ; preds = %347, %345
  %350 = phi i64 [ %346, %345 ], [ %348, %347 ]
  %351 = load i32, i32* %21, align 4
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds i64, i64* %71, i64 %352
  store i64 %350, i64* %353, align 8
  %354 = load i32, i32* %43, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %349
  %357 = load i64, i64* %19, align 8
  br label %360

358:                                              ; preds = %349
  %359 = load i64, i64* %18, align 8
  br label %360

360:                                              ; preds = %358, %356
  %361 = phi i64 [ %357, %356 ], [ %359, %358 ]
  %362 = load i32, i32* %21, align 4
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds i64, i64* %74, i64 %363
  store i64 %361, i64* %364, align 8
  br label %365

365:                                              ; preds = %360
  %366 = load i32, i32* %21, align 4
  %367 = add i32 %366, 1
  store i32 %367, i32* %21, align 4
  br label %334

368:                                              ; preds = %334
  %369 = load i32, i32* %24, align 4
  store i32 %369, i32* %22, align 4
  br label %370

370:                                              ; preds = %384, %368
  %371 = load i32, i32* %22, align 4
  %372 = load i32, i32* %26, align 4
  %373 = icmp ult i32 %371, %372
  br i1 %373, label %374, label %387

374:                                              ; preds = %370
  %375 = load i64*, i64** %42, align 8
  %376 = load i32, i32* %22, align 4
  %377 = load i32, i32* %12, align 4
  %378 = mul i32 %376, %377
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i64, i64* %375, i64 %379
  %381 = load i64*, i64** %40, align 8
  %382 = load i64, i64* %27, align 8
  %383 = call i32 @memcpy(i64* %380, i64* %381, i64 %382)
  br label %384

384:                                              ; preds = %374
  %385 = load i32, i32* %22, align 4
  %386 = add i32 %385, 2
  store i32 %386, i32* %22, align 4
  br label %370

387:                                              ; preds = %370
  %388 = load i32, i32* %24, align 4
  %389 = add i32 %388, 1
  store i32 %389, i32* %22, align 4
  br label %390

390:                                              ; preds = %404, %387
  %391 = load i32, i32* %22, align 4
  %392 = load i32, i32* %26, align 4
  %393 = icmp ult i32 %391, %392
  br i1 %393, label %394, label %407

394:                                              ; preds = %390
  %395 = load i64*, i64** %42, align 8
  %396 = load i32, i32* %22, align 4
  %397 = load i32, i32* %12, align 4
  %398 = mul i32 %396, %397
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %395, i64 %399
  %401 = load i64*, i64** %41, align 8
  %402 = load i64, i64* %27, align 8
  %403 = call i32 @memcpy(i64* %400, i64* %401, i64 %402)
  br label %404

404:                                              ; preds = %394
  %405 = load i32, i32* %22, align 4
  %406 = add i32 %405, 2
  store i32 %406, i32* %22, align 4
  br label %390

407:                                              ; preds = %390
  br label %408

408:                                              ; preds = %407, %309
  br label %409

409:                                              ; preds = %408, %145
  store i32 0, i32* %31, align 4
  br label %410

410:                                              ; preds = %409, %100
  %411 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %411)
  %412 = load i32, i32* %31, align 4
  switch i32 %412, label %414 [
    i32 0, label %413
    i32 1, label %413
  ]

413:                                              ; preds = %410, %410
  ret void

414:                                              ; preds = %410
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
