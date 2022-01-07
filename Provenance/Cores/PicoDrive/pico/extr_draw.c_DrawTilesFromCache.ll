; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawTilesFromCache.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawTilesFromCache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@rendstatus = common dso_local global i32 0, align 4
@PDRAW_SHHI_DONE = common dso_local global i32 0, align 4
@PDRAW_PLANE_HI_PRIO = common dso_local global i32 0, align 4
@HighCol = common dso_local global i8* null, align 8
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @DrawTilesFromCache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawTilesFromCache(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load i32, i32* @rendstatus, align 4
  %21 = load i32, i32* @PDRAW_SHHI_DONE, align 4
  %22 = load i32, i32* @PDRAW_PLANE_HI_PRIO, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load i32, i32* @rendstatus, align 4
  %28 = load i32, i32* @PDRAW_SHHI_DONE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 (...) @DrawTilesFromCacheShPrep()
  br label %33

33:                                               ; preds = %31, %26
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %19, %3
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %92, label %37

37:                                               ; preds = %34
  store i16 -1, i16* %11, align 2
  br label %38

38:                                               ; preds = %90, %50, %37
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %4, align 8
  %41 = load i32, i32* %39, align 4
  store i32 %41, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %91

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = trunc i32 %44 to i16
  %46 = sext i16 %45 to i32
  %47 = load i16, i16* %11, align 2
  %48 = sext i16 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %38

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 2047
  %54 = shl i32 %53, 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = lshr i32 %55, 25
  %57 = load i32, i32* %8, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 511
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 9
  %64 = and i32 %63, 48
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %186

70:                                               ; preds = %51
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 2048
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @TileFlip(i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %84

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @TileNorm(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* %11, align 2
  br label %90

90:                                               ; preds = %87, %84
  br label %38

91:                                               ; preds = %38
  br label %185

92:                                               ; preds = %34
  br label %93

93:                                               ; preds = %183, %92
  %94 = load i32*, i32** %4, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %4, align 8
  %96 = load i32, i32* %94, align 4
  store i32 %96, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %184

98:                                               ; preds = %93
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, 2047
  %101 = shl i32 %100, 4
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = lshr i32 %102, 25
  %104 = load i32, i32* %8, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %7, align 4
  %107 = ashr i32 %106, 16
  %108 = and i32 %107, 511
  store i32 %108, i32* %9, align 4
  %109 = load i8*, i8** @HighCol, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8* %112, i8** %13, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %13, align 8
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 191
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %113, align 1
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %13, align 8
  %121 = load i8, i8* %119, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 191
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %119, align 1
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %13, align 8
  %127 = load i8, i8* %125, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 191
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %125, align 1
  %131 = load i8*, i8** %13, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %13, align 8
  %133 = load i8, i8* %131, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 191
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %131, align 1
  %137 = load i8*, i8** %13, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %13, align 8
  %139 = load i8, i8* %137, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 191
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %137, align 1
  %143 = load i8*, i8** %13, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %13, align 8
  %145 = load i8, i8* %143, align 1
  %146 = zext i8 %145 to i32
  %147 = and i32 %146, 191
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %143, align 1
  %149 = load i8*, i8** %13, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %13, align 8
  %151 = load i8, i8* %149, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 191
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %149, align 1
  %155 = load i8*, i8** %13, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %13, align 8
  %157 = load i8, i8* %155, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 191
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %155, align 1
  %161 = load i32, i32* %7, align 4
  %162 = ashr i32 %161, 9
  %163 = and i32 %162, 48
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %9, align 4
  %166 = sub nsw i32 %164, %165
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %98
  br label %186

169:                                              ; preds = %98
  %170 = load i32, i32* %7, align 4
  %171 = and i32 %170, 2048
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @TileFlip(i32 %174, i32 %175, i32 %176)
  br label %183

178:                                              ; preds = %169
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @TileNorm(i32 %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %178, %173
  br label %93

184:                                              ; preds = %93
  br label %185

185:                                              ; preds = %184, %91
  br label %412

186:                                              ; preds = %168, %69
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  %191 = inttoptr i64 %190 to i32*
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %15, align 4
  %193 = load i8*, i8** @HighCol, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  store i8* %196, i8** %16, align 8
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %186
  br label %412

200:                                              ; preds = %186
  %201 = load i32, i32* %7, align 4
  %202 = and i32 %201, 2048
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %308

204:                                              ; preds = %200
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %9, align 4
  %207 = sub nsw i32 %205, %206
  %208 = add nsw i32 %207, 8
  switch i32 %208, label %306 [
    i32 7, label %209
    i32 6, label %223
    i32 5, label %237
    i32 4, label %250
    i32 3, label %264
    i32 2, label %278
    i32 1, label %292
  ]

209:                                              ; preds = %204
  %210 = load i32, i32* %15, align 4
  %211 = and i32 %210, 3840
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %209
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %14, align 4
  %217 = lshr i32 %216, 8
  %218 = or i32 %215, %217
  %219 = trunc i32 %218 to i8
  %220 = load i8*, i8** %16, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 6
  store i8 %219, i8* %221, align 1
  br label %222

222:                                              ; preds = %214, %209
  br label %223

223:                                              ; preds = %204, %222
  %224 = load i32, i32* %15, align 4
  %225 = and i32 %224, 240
  store i32 %225, i32* %14, align 4
  %226 = load i32, i32* %14, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %223
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %14, align 4
  %231 = lshr i32 %230, 4
  %232 = or i32 %229, %231
  %233 = trunc i32 %232 to i8
  %234 = load i8*, i8** %16, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 5
  store i8 %233, i8* %235, align 1
  br label %236

236:                                              ; preds = %228, %223
  br label %237

237:                                              ; preds = %204, %236
  %238 = load i32, i32* %15, align 4
  %239 = and i32 %238, 15
  store i32 %239, i32* %14, align 4
  %240 = load i32, i32* %14, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %14, align 4
  %245 = or i32 %243, %244
  %246 = trunc i32 %245 to i8
  %247 = load i8*, i8** %16, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 4
  store i8 %246, i8* %248, align 1
  br label %249

249:                                              ; preds = %242, %237
  br label %250

250:                                              ; preds = %204, %249
  %251 = load i32, i32* %15, align 4
  %252 = and i32 %251, -268435456
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %14, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %250
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* %14, align 4
  %258 = lshr i32 %257, 28
  %259 = or i32 %256, %258
  %260 = trunc i32 %259 to i8
  %261 = load i8*, i8** %16, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 3
  store i8 %260, i8* %262, align 1
  br label %263

263:                                              ; preds = %255, %250
  br label %264

264:                                              ; preds = %204, %263
  %265 = load i32, i32* %15, align 4
  %266 = and i32 %265, 251658240
  store i32 %266, i32* %14, align 4
  %267 = load i32, i32* %14, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %277

269:                                              ; preds = %264
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %14, align 4
  %272 = lshr i32 %271, 24
  %273 = or i32 %270, %272
  %274 = trunc i32 %273 to i8
  %275 = load i8*, i8** %16, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 2
  store i8 %274, i8* %276, align 1
  br label %277

277:                                              ; preds = %269, %264
  br label %278

278:                                              ; preds = %204, %277
  %279 = load i32, i32* %15, align 4
  %280 = and i32 %279, 15728640
  store i32 %280, i32* %14, align 4
  %281 = load i32, i32* %14, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %278
  %284 = load i32, i32* %10, align 4
  %285 = load i32, i32* %14, align 4
  %286 = lshr i32 %285, 20
  %287 = or i32 %284, %286
  %288 = trunc i32 %287 to i8
  %289 = load i8*, i8** %16, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  store i8 %288, i8* %290, align 1
  br label %291

291:                                              ; preds = %283, %278
  br label %292

292:                                              ; preds = %204, %291
  %293 = load i32, i32* %15, align 4
  %294 = and i32 %293, 983040
  store i32 %294, i32* %14, align 4
  %295 = load i32, i32* %14, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %292
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* %14, align 4
  %300 = lshr i32 %299, 16
  %301 = or i32 %298, %300
  %302 = trunc i32 %301 to i8
  %303 = load i8*, i8** %16, align 8
  %304 = getelementptr inbounds i8, i8* %303, i64 0
  store i8 %302, i8* %304, align 1
  br label %305

305:                                              ; preds = %297, %292
  br label %306

306:                                              ; preds = %204, %305
  br label %307

307:                                              ; preds = %306
  br label %412

308:                                              ; preds = %200
  %309 = load i32, i32* %6, align 4
  %310 = load i32, i32* %9, align 4
  %311 = sub nsw i32 %309, %310
  %312 = add nsw i32 %311, 8
  switch i32 %312, label %410 [
    i32 7, label %313
    i32 6, label %327
    i32 5, label %341
    i32 4, label %355
    i32 3, label %368
    i32 2, label %382
    i32 1, label %396
  ]

313:                                              ; preds = %308
  %314 = load i32, i32* %15, align 4
  %315 = and i32 %314, 15728640
  store i32 %315, i32* %14, align 4
  %316 = load i32, i32* %14, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %326

318:                                              ; preds = %313
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* %14, align 4
  %321 = lshr i32 %320, 20
  %322 = or i32 %319, %321
  %323 = trunc i32 %322 to i8
  %324 = load i8*, i8** %16, align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 6
  store i8 %323, i8* %325, align 1
  br label %326

326:                                              ; preds = %318, %313
  br label %327

327:                                              ; preds = %308, %326
  %328 = load i32, i32* %15, align 4
  %329 = and i32 %328, 251658240
  store i32 %329, i32* %14, align 4
  %330 = load i32, i32* %14, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %327
  %333 = load i32, i32* %10, align 4
  %334 = load i32, i32* %14, align 4
  %335 = lshr i32 %334, 24
  %336 = or i32 %333, %335
  %337 = trunc i32 %336 to i8
  %338 = load i8*, i8** %16, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 5
  store i8 %337, i8* %339, align 1
  br label %340

340:                                              ; preds = %332, %327
  br label %341

341:                                              ; preds = %308, %340
  %342 = load i32, i32* %15, align 4
  %343 = and i32 %342, -268435456
  store i32 %343, i32* %14, align 4
  %344 = load i32, i32* %14, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %341
  %347 = load i32, i32* %10, align 4
  %348 = load i32, i32* %14, align 4
  %349 = lshr i32 %348, 28
  %350 = or i32 %347, %349
  %351 = trunc i32 %350 to i8
  %352 = load i8*, i8** %16, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 4
  store i8 %351, i8* %353, align 1
  br label %354

354:                                              ; preds = %346, %341
  br label %355

355:                                              ; preds = %308, %354
  %356 = load i32, i32* %15, align 4
  %357 = and i32 %356, 15
  store i32 %357, i32* %14, align 4
  %358 = load i32, i32* %14, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %367

360:                                              ; preds = %355
  %361 = load i32, i32* %10, align 4
  %362 = load i32, i32* %14, align 4
  %363 = or i32 %361, %362
  %364 = trunc i32 %363 to i8
  %365 = load i8*, i8** %16, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 3
  store i8 %364, i8* %366, align 1
  br label %367

367:                                              ; preds = %360, %355
  br label %368

368:                                              ; preds = %308, %367
  %369 = load i32, i32* %15, align 4
  %370 = and i32 %369, 240
  store i32 %370, i32* %14, align 4
  %371 = load i32, i32* %14, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %368
  %374 = load i32, i32* %10, align 4
  %375 = load i32, i32* %14, align 4
  %376 = lshr i32 %375, 4
  %377 = or i32 %374, %376
  %378 = trunc i32 %377 to i8
  %379 = load i8*, i8** %16, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 2
  store i8 %378, i8* %380, align 1
  br label %381

381:                                              ; preds = %373, %368
  br label %382

382:                                              ; preds = %308, %381
  %383 = load i32, i32* %15, align 4
  %384 = and i32 %383, 3840
  store i32 %384, i32* %14, align 4
  %385 = load i32, i32* %14, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %382
  %388 = load i32, i32* %10, align 4
  %389 = load i32, i32* %14, align 4
  %390 = lshr i32 %389, 8
  %391 = or i32 %388, %390
  %392 = trunc i32 %391 to i8
  %393 = load i8*, i8** %16, align 8
  %394 = getelementptr inbounds i8, i8* %393, i64 1
  store i8 %392, i8* %394, align 1
  br label %395

395:                                              ; preds = %387, %382
  br label %396

396:                                              ; preds = %308, %395
  %397 = load i32, i32* %15, align 4
  %398 = and i32 %397, 61440
  store i32 %398, i32* %14, align 4
  %399 = load i32, i32* %14, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %396
  %402 = load i32, i32* %10, align 4
  %403 = load i32, i32* %14, align 4
  %404 = lshr i32 %403, 12
  %405 = or i32 %402, %404
  %406 = trunc i32 %405 to i8
  %407 = load i8*, i8** %16, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 0
  store i8 %406, i8* %408, align 1
  br label %409

409:                                              ; preds = %401, %396
  br label %410

410:                                              ; preds = %308, %409
  br label %411

411:                                              ; preds = %410
  br label %412

412:                                              ; preds = %185, %199, %411, %307
  ret void
}

declare dso_local i32 @DrawTilesFromCacheShPrep(...) #1

declare dso_local i32 @TileFlip(i32, i32, i32) #1

declare dso_local i32 @TileNorm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
