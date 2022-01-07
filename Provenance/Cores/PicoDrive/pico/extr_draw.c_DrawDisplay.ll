; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawDisplay.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.PicoVideo }
%struct.TYPE_3__ = type { i32 }
%struct.PicoVideo = type { i32* }

@HighLnSpr = common dso_local global i8** null, align 8
@DrawScanline = common dso_local global i64 0, align 8
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PDRAW_SHHI_DONE = common dso_local global i32 0, align 4
@PDRAW_PLANE_HI_PRIO = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@PicoDrawMask = common dso_local global i32 0, align 4
@PDRAW_LAYERB_ON = common dso_local global i32 0, align 4
@HighCacheB = common dso_local global i32* null, align 8
@PDRAW_LAYERA_ON = common dso_local global i32 0, align 4
@HighCacheA = common dso_local global i32* null, align 8
@PDRAW_SPRITES_LOW_ON = common dso_local global i32 0, align 4
@PDRAW_INTERLACE = common dso_local global i32 0, align 4
@SPRL_HAVE_LO = common dso_local global i8 0, align 1
@PDRAW_SPRITES_HI_ON = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_ACC_SPRITES = common dso_local global i32 0, align 4
@SPRL_MAY_HAVE_OP = common dso_local global i8 0, align 1
@SPRL_HAVE_HI = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @DrawDisplay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrawDisplay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.PicoVideo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i8**, i8*** @HighLnSpr, align 8
  %11 = load i64, i64* @DrawScanline, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8* %14, i8** %3, align 8
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), %struct.PicoVideo** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* @PDRAW_SHHI_DONE, align 4
  %16 = load i32, i32* @PDRAW_PLANE_HI_PRIO, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @rendstatus, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @rendstatus, align 4
  %21 = load %struct.PicoVideo*, %struct.PicoVideo** %4, align 8
  %22 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 12
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store i32 328, i32* %8, align 4
  store i32 40, i32* %9, align 4
  br label %30

29:                                               ; preds = %1
  store i32 264, i32* %8, align 4
  store i32 32, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.PicoVideo*, %struct.PicoVideo** %4, align 8
  %32 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 18
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 31
  %38 = shl i32 %37, 3
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 128
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %30
  %43 = load i64, i64* @DrawScanline, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp uge i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %42
  br label %56

49:                                               ; preds = %30
  %50 = load i64, i64* @DrawScanline, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %96, label %59

59:                                               ; preds = %56
  %60 = load %struct.PicoVideo*, %struct.PicoVideo** %4, align 8
  %61 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 17
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 31
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 128
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %59
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  store i32 1, i32* %7, align 4
  br label %81

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 2, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %74
  br label %81

81:                                               ; preds = %80, %73
  br label %95

82:                                               ; preds = %59
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %94

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 2, i32* %7, align 4
  br label %93

92:                                               ; preds = %86
  store i32 1, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %91
  br label %94

94:                                               ; preds = %93, %85
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95, %56
  %97 = load i32, i32* @PicoDrawMask, align 4
  %98 = load i32, i32* @PDRAW_LAYERB_ON, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* %2, align 4
  %103 = shl i32 %102, 1
  %104 = or i32 1, %103
  %105 = load i32*, i32** @HighCacheB, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @DrawLayer(i32 %104, i32* %105, i32 0, i32 %106)
  br label %108

108:                                              ; preds = %101, %96
  %109 = load i32, i32* @PicoDrawMask, align 4
  %110 = load i32, i32* @PDRAW_LAYERA_ON, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %179

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = ashr i32 %118, 1
  %120 = load i32, i32* %2, align 4
  %121 = call i32 @DrawWindow(i32 0, i32 %119, i32 0, i32 %120)
  br label %178

122:                                              ; preds = %114
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %170

125:                                              ; preds = %122
  %126 = load i32, i32* %2, align 4
  %127 = shl i32 %126, 1
  %128 = or i32 0, %127
  %129 = load i32*, i32** @HighCacheA, align 8
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, 128
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %137

134:                                              ; preds = %125
  %135 = load i32, i32* %6, align 4
  %136 = shl i32 %135, 1
  br label %137

137:                                              ; preds = %134, %133
  %138 = phi i32 [ 0, %133 ], [ %136, %134 ]
  %139 = load i32, i32* %5, align 4
  %140 = and i32 %139, 128
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %6, align 4
  %144 = shl i32 %143, 1
  br label %147

145:                                              ; preds = %137
  %146 = load i32, i32* %9, align 4
  br label %147

147:                                              ; preds = %145, %142
  %148 = phi i32 [ %144, %142 ], [ %146, %145 ]
  %149 = call i32 @DrawLayer(i32 %128, i32* %129, i32 %138, i32 %148)
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, 128
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i32, i32* %6, align 4
  br label %156

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i32 [ %154, %153 ], [ 0, %155 ]
  %158 = load i32, i32* %5, align 4
  %159 = and i32 %158, 128
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* %9, align 4
  %163 = ashr i32 %162, 1
  br label %166

164:                                              ; preds = %156
  %165 = load i32, i32* %6, align 4
  br label %166

166:                                              ; preds = %164, %161
  %167 = phi i32 [ %163, %161 ], [ %165, %164 ]
  %168 = load i32, i32* %2, align 4
  %169 = call i32 @DrawWindow(i32 %157, i32 %167, i32 0, i32 %168)
  br label %177

170:                                              ; preds = %122
  %171 = load i32, i32* %2, align 4
  %172 = shl i32 %171, 1
  %173 = or i32 0, %172
  %174 = load i32*, i32** @HighCacheA, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @DrawLayer(i32 %173, i32* %174, i32 0, i32 %175)
  br label %177

177:                                              ; preds = %170, %166
  br label %178

178:                                              ; preds = %177, %117
  br label %179

179:                                              ; preds = %178, %113
  %180 = load i32, i32* @PicoDrawMask, align 4
  %181 = load i32, i32* @PDRAW_SPRITES_LOW_ON, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  br label %208

185:                                              ; preds = %179
  %186 = load i32, i32* @rendstatus, align 4
  %187 = load i32, i32* @PDRAW_INTERLACE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i32, i32* %2, align 4
  %192 = call i32 @DrawAllSpritesInterlace(i32 0, i32 %191)
  br label %207

193:                                              ; preds = %185
  %194 = load i8*, i8** %3, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 1
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8, i8* @SPRL_HAVE_LO, align 1
  %199 = zext i8 %198 to i32
  %200 = and i32 %197, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %193
  %203 = load i8*, i8** %3, align 8
  %204 = load i32, i32* %2, align 4
  %205 = call i32 @DrawAllSprites(i8* %203, i32 0, i32 %204)
  br label %206

206:                                              ; preds = %202, %193
  br label %207

207:                                              ; preds = %206, %190
  br label %208

208:                                              ; preds = %207, %184
  %209 = load i32, i32* @PicoDrawMask, align 4
  %210 = load i32, i32* @PDRAW_LAYERB_ON, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %208
  %214 = load i32*, i32** @HighCacheB, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load i32*, i32** @HighCacheB, align 8
  %220 = load i32, i32* %2, align 4
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @DrawTilesFromCache(i32* %219, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %218, %213, %208
  %224 = load i32, i32* @PicoDrawMask, align 4
  %225 = load i32, i32* @PDRAW_LAYERA_ON, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %223
  br label %293

229:                                              ; preds = %223
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load i32, i32* %9, align 4
  %234 = ashr i32 %233, 1
  %235 = load i32, i32* %2, align 4
  %236 = call i32 @DrawWindow(i32 0, i32 %234, i32 1, i32 %235)
  br label %292

237:                                              ; preds = %229
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %280

240:                                              ; preds = %237
  %241 = load i32*, i32** @HighCacheA, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %259

245:                                              ; preds = %240
  %246 = load i32*, i32** @HighCacheA, align 8
  %247 = load i32, i32* %2, align 4
  %248 = load i32, i32* %5, align 4
  %249 = and i32 %248, 128
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load i32, i32* %6, align 4
  %253 = shl i32 %252, 4
  br label %256

254:                                              ; preds = %245
  %255 = load i32, i32* %8, align 4
  br label %256

256:                                              ; preds = %254, %251
  %257 = phi i32 [ %253, %251 ], [ %255, %254 ]
  %258 = call i32 @DrawTilesFromCache(i32* %246, i32 %247, i32 %257)
  br label %259

259:                                              ; preds = %256, %240
  %260 = load i32, i32* %5, align 4
  %261 = and i32 %260, 128
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %259
  %264 = load i32, i32* %6, align 4
  br label %266

265:                                              ; preds = %259
  br label %266

266:                                              ; preds = %265, %263
  %267 = phi i32 [ %264, %263 ], [ 0, %265 ]
  %268 = load i32, i32* %5, align 4
  %269 = and i32 %268, 128
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load i32, i32* %9, align 4
  %273 = ashr i32 %272, 1
  br label %276

274:                                              ; preds = %266
  %275 = load i32, i32* %6, align 4
  br label %276

276:                                              ; preds = %274, %271
  %277 = phi i32 [ %273, %271 ], [ %275, %274 ]
  %278 = load i32, i32* %2, align 4
  %279 = call i32 @DrawWindow(i32 %267, i32 %277, i32 1, i32 %278)
  br label %291

280:                                              ; preds = %237
  %281 = load i32*, i32** @HighCacheA, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load i32*, i32** @HighCacheA, align 8
  %287 = load i32, i32* %2, align 4
  %288 = load i32, i32* %8, align 4
  %289 = call i32 @DrawTilesFromCache(i32* %286, i32 %287, i32 %288)
  br label %290

290:                                              ; preds = %285, %280
  br label %291

291:                                              ; preds = %290, %276
  br label %292

292:                                              ; preds = %291, %232
  br label %293

293:                                              ; preds = %292, %228
  %294 = load i32, i32* @PicoDrawMask, align 4
  %295 = load i32, i32* @PDRAW_SPRITES_HI_ON, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %293
  br label %354

299:                                              ; preds = %293
  %300 = load i32, i32* @rendstatus, align 4
  %301 = load i32, i32* @PDRAW_INTERLACE, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %299
  %305 = load i32, i32* %2, align 4
  %306 = call i32 @DrawAllSpritesInterlace(i32 1, i32 %305)
  br label %353

307:                                              ; preds = %299
  %308 = load i8*, i8** %3, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 1
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = and i32 %311, 208
  %313 = icmp eq i32 %312, 208
  br i1 %313, label %314, label %323

314:                                              ; preds = %307
  %315 = load i32, i32* @PicoOpt, align 4
  %316 = load i32, i32* @POPT_ACC_SPRITES, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %314
  %320 = load i8*, i8** %3, align 8
  %321 = load i32, i32* %2, align 4
  %322 = call i32 @DrawSpritesHiAS(i8* %320, i32 %321)
  br label %352

323:                                              ; preds = %314, %307
  %324 = load i32, i32* %2, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %338

326:                                              ; preds = %323
  %327 = load i8*, i8** %3, align 8
  %328 = getelementptr inbounds i8, i8* %327, i64 1
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = load i8, i8* @SPRL_MAY_HAVE_OP, align 1
  %332 = zext i8 %331 to i32
  %333 = and i32 %330, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %326
  %336 = load i8*, i8** %3, align 8
  %337 = call i32 @DrawSpritesSHi(i8* %336)
  br label %351

338:                                              ; preds = %326, %323
  %339 = load i8*, i8** %3, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 1
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = load i8, i8* @SPRL_HAVE_HI, align 1
  %344 = zext i8 %343 to i32
  %345 = and i32 %342, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %338
  %348 = load i8*, i8** %3, align 8
  %349 = call i32 @DrawAllSprites(i8* %348, i32 1, i32 0)
  br label %350

350:                                              ; preds = %347, %338
  br label %351

351:                                              ; preds = %350, %335
  br label %352

352:                                              ; preds = %351, %319
  br label %353

353:                                              ; preds = %352, %304
  br label %354

354:                                              ; preds = %353, %298
  ret i32 0
}

declare dso_local i32 @DrawLayer(i32, i32*, i32, i32) #1

declare dso_local i32 @DrawWindow(i32, i32, i32, i32) #1

declare dso_local i32 @DrawAllSpritesInterlace(i32, i32) #1

declare dso_local i32 @DrawAllSprites(i8*, i32, i32) #1

declare dso_local i32 @DrawTilesFromCache(i32*, i32, i32) #1

declare dso_local i32 @DrawSpritesHiAS(i8*, i32) #1

declare dso_local i32 @DrawSpritesSHi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
