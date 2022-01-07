; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_PrepareSprites.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_PrepareSprites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HighPreSpr = common dso_local global i32* null, align 8
@PicoOpt = common dso_local global i32 0, align 4
@POPT_DIS_SPRITE_LIM = common dso_local global i32 0, align 4
@MAX_LINE_SPRITES = common dso_local global i32 0, align 4
@DrawScanline = common dso_local global i32 0, align 4
@HighLnSpr = common dso_local global i32** null, align 8
@SPRL_HAVE_HI = common dso_local global i32 0, align 4
@SPRL_HAVE_LO = common dso_local global i32 0, align 4
@SPRL_MAY_HAVE_OP = common dso_local global i32 0, align 4
@SPRL_LO_ABOVE_HI = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrepareSprites(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.PicoVideo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), %struct.PicoVideo** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %38 = load i32*, i32** @HighPreSpr, align 8
  store i32* %38, i32** %8, align 8
  store i32 224, i32* %9, align 4
  store i32 80, i32* %10, align 4
  store i32 328, i32* %11, align 4
  store i32 20, i32* %12, align 4
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1, i32 0), align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 12
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %1
  store i32 64, i32* %10, align 4
  store i32 16, i32* %12, align 4
  store i32 264, i32* %11, align 4
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32, i32* @PicoOpt, align 4
  %47 = load i32, i32* @POPT_DIS_SPRITE_LIM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @MAX_LINE_SPRITES, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %54 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 240, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %52
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1, i32 0), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 8
  store i32 %65, i32* %6, align 4
  %66 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %67 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 127
  store i32 %71, i32* %7, align 4
  %72 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %73 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 12
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %61
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 126
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %61
  %83 = load i32, i32* %7, align 4
  %84 = shl i32 %83, 8
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %284, label %87

87:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %278, %87
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i1 [ false, %88 ], [ %95, %92 ]
  br i1 %97, label %98, label %283

98:                                               ; preds = %96
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %5, align 4
  %102 = shl i32 %101, 2
  %103 = add nsw i32 %100, %102
  %104 = and i32 %103, 32764
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %99, %105
  %107 = inttoptr i64 %106 to i32*
  store i32* %107, i32** %14, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = ashr i32 %111, 16
  %113 = and i32 %112, 511
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = sub nsw i32 %114, 120
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %13, align 4
  %117 = shl i32 %116, 16
  %118 = ashr i32 %117, 16
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %13, align 4
  %120 = ashr i32 %119, 24
  %121 = and i32 %120, 15
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %261

125:                                              ; preds = %98
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %18, align 4
  %128 = shl i32 %127, 3
  %129 = add nsw i32 %126, %128
  %130 = load i32, i32* @DrawScanline, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %261

132:                                              ; preds = %125
  %133 = load i32, i32* %16, align 4
  %134 = icmp sgt i32 %133, -24
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %261

139:                                              ; preds = %135, %132
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @DrawScanline, align 4
  %142 = icmp sge i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = load i32, i32* %17, align 4
  br label %147

145:                                              ; preds = %139
  %146 = load i32, i32* @DrawScanline, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  store i32 %148, i32* %19, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = load i32*, i32** @HighPreSpr, align 8
  %151 = ptrtoint i32* %149 to i64
  %152 = ptrtoint i32* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 4
  %155 = sdiv i64 %154, 2
  %156 = load i32, i32* %15, align 4
  %157 = ashr i32 %156, 8
  %158 = and i32 %157, 128
  %159 = sext i32 %158 to i64
  %160 = or i64 %155, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %20, align 4
  br label %162

162:                                              ; preds = %257, %147
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %18, align 4
  %166 = shl i32 %165, 3
  %167 = add nsw i32 %164, %166
  %168 = icmp slt i32 %163, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp slt i32 %170, %171
  br label %173

173:                                              ; preds = %169, %162
  %174 = phi i1 [ false, %162 ], [ %172, %169 ]
  br i1 %174, label %175, label %260

175:                                              ; preds = %173
  %176 = load i32**, i32*** @HighLnSpr, align 8
  %177 = load i32, i32* %19, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = and i32 %182, 127
  store i32 %183, i32* %22, align 4
  %184 = load i32, i32* %22, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %175
  br label %257

188:                                              ; preds = %175
  store i32 0, i32* %21, align 4
  br label %189

189:                                              ; preds = %210, %188
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %22, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %189
  %194 = load i32**, i32*** @HighLnSpr, align 8
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32*, i32** %194, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %21, align 4
  %200 = add nsw i32 3, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %20, align 4
  %205 = xor i32 %203, %204
  %206 = and i32 %205, 127
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %193
  br label %232

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %21, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %21, align 4
  br label %189

213:                                              ; preds = %189
  %214 = load i32, i32* %20, align 4
  %215 = load i32**, i32*** @HighLnSpr, align 8
  %216 = load i32, i32* %19, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32*, i32** %215, i64 %217
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %22, align 4
  %221 = add nsw i32 3, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %214, i32* %223, align 4
  %224 = load i32, i32* %22, align 4
  %225 = add nsw i32 %224, 1
  %226 = load i32**, i32*** @HighLnSpr, align 8
  %227 = load i32, i32* %19, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %226, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 0
  store i32 %225, i32* %231, align 4
  br label %232

232:                                              ; preds = %213, %208
  %233 = load i32, i32* %20, align 4
  %234 = and i32 %233, 128
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %232
  %237 = load i32, i32* @SPRL_HAVE_HI, align 4
  %238 = load i32**, i32*** @HighLnSpr, align 8
  %239 = load i32, i32* %19, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %237
  store i32 %245, i32* %243, align 4
  br label %256

246:                                              ; preds = %232
  %247 = load i32, i32* @SPRL_HAVE_LO, align 4
  %248 = load i32**, i32*** @HighLnSpr, align 8
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %248, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %247
  store i32 %255, i32* %253, align 4
  br label %256

256:                                              ; preds = %246, %236
  br label %257

257:                                              ; preds = %256, %187
  %258 = load i32, i32* %19, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %19, align 4
  br label %162

260:                                              ; preds = %173
  br label %261

261:                                              ; preds = %260, %135, %125, %98
  %262 = load i32, i32* %15, align 4
  %263 = and i32 %262, 33554431
  store i32 %263, i32* %15, align 4
  %264 = load i32, i32* %15, align 4
  %265 = sub nsw i32 %264, 7864320
  store i32 %265, i32* %15, align 4
  %266 = load i32, i32* %15, align 4
  %267 = load i32*, i32** %8, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  store i32 %266, i32* %268, align 4
  %269 = load i32*, i32** %14, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = lshr i32 %271, 16
  %273 = and i32 %272, 127
  store i32 %273, i32* %5, align 4
  %274 = load i32, i32* %5, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %261
  br label %283

277:                                              ; preds = %261
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %4, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %4, align 4
  %281 = load i32*, i32** %8, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  store i32* %282, i32** %8, align 8
  br label %88

283:                                              ; preds = %276, %96
  br label %565

284:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %285

285:                                              ; preds = %296, %284
  %286 = load i32, i32* %4, align 4
  %287 = load i32, i32* %9, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %285
  %290 = load i32**, i32*** @HighLnSpr, align 8
  %291 = load i32, i32* %4, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32*, i32** %290, i64 %292
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  store i32 0, i32* %295, align 4
  br label %296

296:                                              ; preds = %289
  %297 = load i32, i32* %4, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %4, align 4
  br label %285

299:                                              ; preds = %285
  store i32 0, i32* %4, align 4
  br label %300

300:                                              ; preds = %560, %299
  %301 = load i32, i32* %4, align 4
  %302 = load i32, i32* %10, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %563

304:                                              ; preds = %300
  %305 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* %5, align 4
  %308 = shl i32 %307, 2
  %309 = add nsw i32 %306, %308
  %310 = and i32 %309, 32764
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %305, %311
  %313 = inttoptr i64 %312 to i32*
  store i32* %313, i32** %23, align 8
  %314 = load i32*, i32** %23, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* %24, align 4
  %317 = load i32, i32* %24, align 4
  %318 = and i32 %317, 511
  %319 = sub nsw i32 %318, 128
  store i32 %319, i32* %27, align 4
  %320 = load i32, i32* %24, align 4
  %321 = ashr i32 %320, 24
  %322 = and i32 %321, 15
  store i32 %322, i32* %28, align 4
  %323 = load i32, i32* %28, align 4
  %324 = and i32 %323, 3
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %29, align 4
  %326 = load i32, i32* %28, align 4
  %327 = ashr i32 %326, 2
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %30, align 4
  %329 = load i32*, i32** %23, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %25, align 4
  %332 = load i32, i32* %25, align 4
  %333 = ashr i32 %332, 16
  %334 = and i32 %333, 511
  store i32 %334, i32* %26, align 4
  %335 = load i32, i32* %26, align 4
  %336 = sub nsw i32 %335, 120
  store i32 %336, i32* %26, align 4
  %337 = load i32, i32* %27, align 4
  %338 = load i32, i32* %9, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %530

340:                                              ; preds = %304
  %341 = load i32, i32* %27, align 4
  %342 = load i32, i32* %29, align 4
  %343 = shl i32 %342, 3
  %344 = add nsw i32 %341, %343
  %345 = load i32, i32* @DrawScanline, align 4
  %346 = icmp sgt i32 %344, %345
  br i1 %346, label %347, label %530

347:                                              ; preds = %340
  store i32 0, i32* %35, align 4
  %348 = load i32, i32* %30, align 4
  %349 = shl i32 %348, 3
  %350 = sub nsw i32 8, %349
  store i32 %350, i32* %33, align 4
  %351 = load i32, i32* %33, align 4
  %352 = load i32, i32* %26, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %358

354:                                              ; preds = %347
  %355 = load i32, i32* %26, align 4
  %356 = load i32, i32* %11, align 4
  %357 = icmp slt i32 %355, %356
  br label %358

358:                                              ; preds = %354, %347
  %359 = phi i1 [ false, %347 ], [ %357, %354 ]
  %360 = zext i1 %359 to i32
  store i32 %360, i32* %34, align 4
  %361 = load i32, i32* %6, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %358
  %364 = load i32, i32* %25, align 4
  %365 = and i32 %364, 24576
  %366 = icmp eq i32 %365, 24576
  br i1 %366, label %367, label %369

367:                                              ; preds = %363
  %368 = load i32, i32* @SPRL_MAY_HAVE_OP, align 4
  store i32 %368, i32* %35, align 4
  br label %369

369:                                              ; preds = %367, %363, %358
  %370 = load i32*, i32** %8, align 8
  %371 = load i32*, i32** @HighPreSpr, align 8
  %372 = ptrtoint i32* %370 to i64
  %373 = ptrtoint i32* %371 to i64
  %374 = sub i64 %372, %373
  %375 = sdiv exact i64 %374, 4
  %376 = sdiv i64 %375, 2
  %377 = load i32, i32* %25, align 4
  %378 = ashr i32 %377, 8
  %379 = and i32 %378, 128
  %380 = sext i32 %379 to i64
  %381 = or i64 %376, %380
  %382 = trunc i64 %381 to i32
  store i32 %382, i32* %31, align 4
  %383 = load i32, i32* %27, align 4
  %384 = load i32, i32* @DrawScanline, align 4
  %385 = icmp sge i32 %383, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %369
  %387 = load i32, i32* %27, align 4
  br label %390

388:                                              ; preds = %369
  %389 = load i32, i32* @DrawScanline, align 4
  br label %390

390:                                              ; preds = %388, %386
  %391 = phi i32 [ %387, %386 ], [ %389, %388 ]
  store i32 %391, i32* %32, align 4
  br label %392

392:                                              ; preds = %526, %390
  %393 = load i32, i32* %32, align 4
  %394 = load i32, i32* %27, align 4
  %395 = load i32, i32* %29, align 4
  %396 = shl i32 %395, 3
  %397 = add nsw i32 %394, %396
  %398 = icmp slt i32 %393, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %392
  %400 = load i32, i32* %32, align 4
  %401 = load i32, i32* %9, align 4
  %402 = icmp slt i32 %400, %401
  br label %403

403:                                              ; preds = %399, %392
  %404 = phi i1 [ false, %392 ], [ %402, %399 ]
  br i1 %404, label %405, label %529

405:                                              ; preds = %403
  %406 = load i32**, i32*** @HighLnSpr, align 8
  %407 = load i32, i32* %32, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32*, i32** %406, i64 %408
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 0
  %412 = bitcast i32* %411 to i8*
  store i8* %412, i8** %36, align 8
  %413 = load i8*, i8** %36, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 0
  %415 = load i8, i8* %414, align 1
  %416 = zext i8 %415 to i32
  store i32 %416, i32* %37, align 4
  %417 = load i32, i32* %37, align 4
  %418 = load i32, i32* %12, align 4
  %419 = icmp sge i32 %417, %418
  br i1 %419, label %420, label %421

420:                                              ; preds = %405
  br label %526

421:                                              ; preds = %405
  %422 = load i8*, i8** %36, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 2
  %424 = load i8, i8* %423, align 1
  %425 = zext i8 %424 to i32
  %426 = load i32, i32* %12, align 4
  %427 = mul nsw i32 %426, 2
  %428 = icmp sge i32 %425, %427
  br i1 %428, label %429, label %436

429:                                              ; preds = %421
  %430 = load i8*, i8** %36, align 8
  %431 = getelementptr inbounds i8, i8* %430, i64 0
  %432 = load i8, i8* %431, align 1
  %433 = zext i8 %432 to i32
  %434 = or i32 %433, 128
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %431, align 1
  br label %526

436:                                              ; preds = %421
  %437 = load i32, i32* %30, align 4
  %438 = load i8*, i8** %36, align 8
  %439 = getelementptr inbounds i8, i8* %438, i64 2
  %440 = load i8, i8* %439, align 1
  %441 = zext i8 %440 to i32
  %442 = add nsw i32 %441, %437
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %439, align 1
  %444 = load i32, i32* %26, align 4
  %445 = icmp eq i32 %444, -120
  br i1 %445, label %446, label %457

446:                                              ; preds = %436
  %447 = load i32, i32* %37, align 4
  %448 = icmp sgt i32 %447, 0
  br i1 %448, label %449, label %456

449:                                              ; preds = %446
  %450 = load i8*, i8** %36, align 8
  %451 = getelementptr inbounds i8, i8* %450, i64 0
  %452 = load i8, i8* %451, align 1
  %453 = zext i8 %452 to i32
  %454 = or i32 %453, 128
  %455 = trunc i32 %454 to i8
  store i8 %455, i8* %451, align 1
  br label %456

456:                                              ; preds = %449, %446
  br label %526

457:                                              ; preds = %436
  %458 = load i32, i32* %37, align 4
  %459 = icmp sgt i32 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %457
  %461 = load i32, i32* %34, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %464, label %463

463:                                              ; preds = %460
  br label %526

464:                                              ; preds = %460, %457
  %465 = load i32, i32* %31, align 4
  %466 = trunc i32 %465 to i8
  %467 = load i8*, i8** %36, align 8
  %468 = load i32, i32* %37, align 4
  %469 = add nsw i32 3, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i8, i8* %467, i64 %470
  store i8 %466, i8* %471, align 1
  %472 = load i32, i32* %37, align 4
  %473 = add nsw i32 %472, 1
  %474 = trunc i32 %473 to i8
  %475 = load i8*, i8** %36, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 0
  store i8 %474, i8* %476, align 1
  %477 = load i32, i32* %31, align 4
  %478 = and i32 %477, 128
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %464
  %481 = load i32, i32* @SPRL_HAVE_HI, align 4
  br label %484

482:                                              ; preds = %464
  %483 = load i32, i32* @SPRL_HAVE_LO, align 4
  br label %484

484:                                              ; preds = %482, %480
  %485 = phi i32 [ %481, %480 ], [ %483, %482 ]
  %486 = load i8*, i8** %36, align 8
  %487 = getelementptr inbounds i8, i8* %486, i64 1
  %488 = load i8, i8* %487, align 1
  %489 = zext i8 %488 to i32
  %490 = or i32 %489, %485
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %487, align 1
  %492 = load i32, i32* %35, align 4
  %493 = load i8*, i8** %36, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 1
  %495 = load i8, i8* %494, align 1
  %496 = zext i8 %495 to i32
  %497 = or i32 %496, %492
  %498 = trunc i32 %497 to i8
  store i8 %498, i8* %494, align 1
  %499 = load i32, i32* %37, align 4
  %500 = icmp sgt i32 %499, 0
  br i1 %500, label %501, label %525

501:                                              ; preds = %484
  %502 = load i32, i32* %25, align 4
  %503 = and i32 %502, 32768
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %525

505:                                              ; preds = %501
  %506 = load i8*, i8** %36, align 8
  %507 = load i32, i32* %37, align 4
  %508 = add nsw i32 3, %507
  %509 = sub nsw i32 %508, 1
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8, i8* %506, i64 %510
  %512 = load i8, i8* %511, align 1
  %513 = zext i8 %512 to i32
  %514 = and i32 %513, 128
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %525, label %516

516:                                              ; preds = %505
  %517 = load i8, i8* @SPRL_LO_ABOVE_HI, align 1
  %518 = zext i8 %517 to i32
  %519 = load i8*, i8** %36, align 8
  %520 = getelementptr inbounds i8, i8* %519, i64 1
  %521 = load i8, i8* %520, align 1
  %522 = zext i8 %521 to i32
  %523 = or i32 %522, %518
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %520, align 1
  br label %525

525:                                              ; preds = %516, %505, %501, %484
  br label %526

526:                                              ; preds = %525, %463, %456, %429, %420
  %527 = load i32, i32* %32, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %32, align 4
  br label %392

529:                                              ; preds = %403
  br label %530

530:                                              ; preds = %529, %340, %304
  %531 = load i32, i32* %30, align 4
  %532 = shl i32 %531, 28
  %533 = load i32, i32* %29, align 4
  %534 = shl i32 %533, 24
  %535 = or i32 %532, %534
  %536 = load i32, i32* %28, align 4
  %537 = shl i32 %536, 16
  %538 = or i32 %535, %537
  %539 = load i32, i32* %27, align 4
  %540 = trunc i32 %539 to i16
  %541 = zext i16 %540 to i32
  %542 = or i32 %538, %541
  %543 = load i32*, i32** %8, align 8
  %544 = getelementptr inbounds i32, i32* %543, i32 1
  store i32* %544, i32** %8, align 8
  store i32 %542, i32* %543, align 4
  %545 = load i32, i32* %26, align 4
  %546 = shl i32 %545, 16
  %547 = load i32, i32* %25, align 4
  %548 = trunc i32 %547 to i16
  %549 = zext i16 %548 to i32
  %550 = or i32 %546, %549
  %551 = load i32*, i32** %8, align 8
  %552 = getelementptr inbounds i32, i32* %551, i32 1
  store i32* %552, i32** %8, align 8
  store i32 %550, i32* %551, align 4
  %553 = load i32, i32* %24, align 4
  %554 = ashr i32 %553, 16
  %555 = and i32 %554, 127
  store i32 %555, i32* %5, align 4
  %556 = load i32, i32* %5, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %559, label %558

558:                                              ; preds = %530
  br label %563

559:                                              ; preds = %530
  br label %560

560:                                              ; preds = %559
  %561 = load i32, i32* %4, align 4
  %562 = add nsw i32 %561, 1
  store i32 %562, i32* %4, align 4
  br label %300

563:                                              ; preds = %558, %300
  %564 = load i32*, i32** %8, align 8
  store i32 0, i32* %564, align 4
  br label %565

565:                                              ; preds = %563, %283
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
