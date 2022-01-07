; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_gfx.c_gfx_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_gfx.c_gfx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32***, i32*, i32* }

@gfx = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfx_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @memset(%struct.TYPE_3__* @gfx, i32 0, i32 4)
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %33, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 16384
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = and i32 %13, 7
  %15 = shl i32 %14, 8
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %1, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 63
  %20 = shl i32 %19, 2
  %21 = or i32 %16, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %1, align 4
  %24 = ashr i32 %23, 3
  %25 = and i32 %24, 31
  %26 = shl i32 %25, 11
  %27 = or i32 %22, %26
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %12
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %9

36:                                               ; preds = %9
  store i32 16384, i32* %1, align 4
  br label %37

37:                                               ; preds = %61, %36
  %38 = load i32, i32* %1, align 4
  %39 = icmp slt i32 %38, 24576
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i32, i32* %1, align 4
  %42 = and i32 %41, 7
  %43 = shl i32 %42, 8
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %1, align 4
  %46 = ashr i32 %45, 7
  %47 = and i32 %46, 63
  %48 = shl i32 %47, 2
  %49 = or i32 %44, %48
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %1, align 4
  %52 = ashr i32 %51, 3
  %53 = and i32 %52, 15
  %54 = shl i32 %53, 11
  %55 = or i32 %50, %54
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %40
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %37

64:                                               ; preds = %37
  store i32 24576, i32* %1, align 4
  br label %65

65:                                               ; preds = %90, %64
  %66 = load i32, i32* %1, align 4
  %67 = icmp slt i32 %66, 28672
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = load i32, i32* %1, align 4
  %70 = and i32 %69, 7
  %71 = shl i32 %70, 8
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %1, align 4
  %74 = ashr i32 %73, 6
  %75 = and i32 %74, 63
  %76 = shl i32 %75, 2
  %77 = or i32 %72, %76
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %1, align 4
  %80 = ashr i32 %79, 3
  %81 = and i32 %80, 7
  %82 = shl i32 %81, 11
  %83 = or i32 %78, %82
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, 32768
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %90

90:                                               ; preds = %68
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  br label %65

93:                                               ; preds = %65
  store i32 28672, i32* %1, align 4
  br label %94

94:                                               ; preds = %119, %93
  %95 = load i32, i32* %1, align 4
  %96 = icmp slt i32 %95, 30720
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load i32, i32* %1, align 4
  %99 = and i32 %98, 7
  %100 = shl i32 %99, 8
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %1, align 4
  %103 = ashr i32 %102, 5
  %104 = and i32 %103, 63
  %105 = shl i32 %104, 2
  %106 = or i32 %101, %105
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %1, align 4
  %109 = ashr i32 %108, 3
  %110 = and i32 %109, 3
  %111 = shl i32 %110, 11
  %112 = or i32 %107, %111
  store i32 %112, i32* %3, align 4
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, 49152
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %97
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  br label %94

122:                                              ; preds = %94
  store i32 30720, i32* %1, align 4
  br label %123

123:                                              ; preds = %148, %122
  %124 = load i32, i32* %1, align 4
  %125 = icmp slt i32 %124, 32768
  br i1 %125, label %126, label %151

126:                                              ; preds = %123
  %127 = load i32, i32* %1, align 4
  %128 = and i32 %127, 7
  %129 = shl i32 %128, 8
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %1, align 4
  %132 = ashr i32 %131, 5
  %133 = and i32 %132, 63
  %134 = shl i32 %133, 2
  %135 = or i32 %130, %134
  store i32 %135, i32* %3, align 4
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* %1, align 4
  %138 = ashr i32 %137, 3
  %139 = and i32 %138, 3
  %140 = shl i32 %139, 11
  %141 = or i32 %136, %140
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = or i32 %142, 57344
  %144 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 8
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %126
  %149 = load i32, i32* %1, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %1, align 4
  br label %123

151:                                              ; preds = %123
  store i32 0, i32* %1, align 4
  br label %152

152:                                              ; preds = %252, %151
  %153 = load i32, i32* %1, align 4
  %154 = icmp slt i32 %153, 256
  br i1 %154, label %155, label %255

155:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %248, %155
  %157 = load i32, i32* %2, align 4
  %158 = icmp slt i32 %157, 256
  br i1 %158, label %159, label %251

159:                                              ; preds = %156
  %160 = load i32, i32* %2, align 4
  %161 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 8
  %162 = getelementptr inbounds i32**, i32*** %161, i64 0
  %163 = load i32**, i32*** %162, align 8
  %164 = load i32, i32* %1, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %2, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %160, i32* %170, align 4
  %171 = load i32, i32* %1, align 4
  %172 = and i32 %171, 15
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %159
  %175 = load i32, i32* %1, align 4
  %176 = and i32 %175, 15
  br label %180

177:                                              ; preds = %159
  %178 = load i32, i32* %2, align 4
  %179 = and i32 %178, 15
  br label %180

180:                                              ; preds = %177, %174
  %181 = phi i32 [ %176, %174 ], [ %179, %177 ]
  %182 = load i32, i32* %1, align 4
  %183 = and i32 %182, 240
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* %1, align 4
  %187 = and i32 %186, 240
  br label %191

188:                                              ; preds = %180
  %189 = load i32, i32* %2, align 4
  %190 = and i32 %189, 240
  br label %191

191:                                              ; preds = %188, %185
  %192 = phi i32 [ %187, %185 ], [ %190, %188 ]
  %193 = or i32 %181, %192
  %194 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 8
  %195 = getelementptr inbounds i32**, i32*** %194, i64 1
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %1, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %2, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %193, i32* %203, align 4
  %204 = load i32, i32* %2, align 4
  %205 = and i32 %204, 15
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %191
  %208 = load i32, i32* %2, align 4
  %209 = and i32 %208, 15
  br label %213

210:                                              ; preds = %191
  %211 = load i32, i32* %1, align 4
  %212 = and i32 %211, 15
  br label %213

213:                                              ; preds = %210, %207
  %214 = phi i32 [ %209, %207 ], [ %212, %210 ]
  %215 = load i32, i32* %2, align 4
  %216 = and i32 %215, 240
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %213
  %219 = load i32, i32* %2, align 4
  %220 = and i32 %219, 240
  br label %224

221:                                              ; preds = %213
  %222 = load i32, i32* %1, align 4
  %223 = and i32 %222, 240
  br label %224

224:                                              ; preds = %221, %218
  %225 = phi i32 [ %220, %218 ], [ %223, %221 ]
  %226 = or i32 %214, %225
  %227 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 8
  %228 = getelementptr inbounds i32**, i32*** %227, i64 2
  %229 = load i32**, i32*** %228, align 8
  %230 = load i32, i32* %1, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %229, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %2, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 %226, i32* %236, align 4
  %237 = load i32, i32* %1, align 4
  %238 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 8
  %239 = getelementptr inbounds i32**, i32*** %238, i64 3
  %240 = load i32**, i32*** %239, align 8
  %241 = load i32, i32* %1, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %2, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %237, i32* %247, align 4
  br label %248

248:                                              ; preds = %224
  %249 = load i32, i32* %2, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %2, align 4
  br label %156

251:                                              ; preds = %156
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %1, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %1, align 4
  br label %152

255:                                              ; preds = %152
  store i32 0, i32* %1, align 4
  br label %256

256:                                              ; preds = %312, %255
  %257 = load i32, i32* %1, align 4
  %258 = icmp slt i32 %257, 256
  br i1 %258, label %259, label %315

259:                                              ; preds = %256
  %260 = load i32, i32* %1, align 4
  %261 = and i32 %260, 8
  %262 = icmp ne i32 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i32 3, i32 1
  store i32 %264, i32* %4, align 4
  %265 = load i32, i32* %1, align 4
  %266 = ashr i32 %265, 6
  %267 = load i32, i32* %4, align 4
  %268 = and i32 %266, %267
  store i32 %268, i32* %5, align 4
  %269 = load i32, i32* %1, align 4
  %270 = ashr i32 %269, 4
  %271 = load i32, i32* %4, align 4
  %272 = and i32 %270, %271
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %1, align 4
  %274 = and i32 %273, 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %280

276:                                              ; preds = %259
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* %4, align 4
  %279 = xor i32 %277, %278
  store i32 %279, i32* %6, align 4
  br label %280

280:                                              ; preds = %276, %259
  %281 = load i32, i32* %1, align 4
  %282 = and i32 %281, 2
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %280
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* %4, align 4
  %287 = xor i32 %285, %286
  store i32 %287, i32* %6, align 4
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* %4, align 4
  %290 = xor i32 %288, %289
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %284, %280
  %292 = load i32, i32* %1, align 4
  %293 = and i32 %292, 1
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %291
  %296 = load i32, i32* %6, align 4
  store i32 %296, i32* %7, align 4
  %297 = load i32, i32* %5, align 4
  %298 = load i32, i32* %4, align 4
  %299 = xor i32 %297, %298
  store i32 %299, i32* %6, align 4
  %300 = load i32, i32* %7, align 4
  store i32 %300, i32* %5, align 4
  br label %301

301:                                              ; preds = %295, %291
  %302 = load i32, i32* %5, align 4
  %303 = load i32, i32* %6, align 4
  %304 = load i32, i32* %4, align 4
  %305 = add nsw i32 %304, 1
  %306 = mul nsw i32 %303, %305
  %307 = add nsw i32 %302, %306
  %308 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 2), align 8
  %309 = load i32, i32* %1, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %307, i32* %311, align 4
  br label %312

312:                                              ; preds = %301
  %313 = load i32, i32* %1, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %1, align 4
  br label %256

315:                                              ; preds = %256
  store i32 0, i32* %1, align 4
  br label %316

316:                                              ; preds = %359, %315
  %317 = load i32, i32* %1, align 4
  %318 = icmp slt i32 %317, 512
  br i1 %318, label %319, label %362

319:                                              ; preds = %316
  %320 = load i32, i32* %1, align 4
  %321 = ashr i32 %320, 6
  %322 = and i32 %321, 7
  store i32 %322, i32* %5, align 4
  %323 = load i32, i32* %1, align 4
  %324 = ashr i32 %323, 3
  %325 = and i32 %324, 7
  store i32 %325, i32* %6, align 4
  %326 = load i32, i32* %1, align 4
  %327 = and i32 %326, 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %319
  %330 = load i32, i32* %6, align 4
  %331 = xor i32 %330, 7
  store i32 %331, i32* %6, align 4
  br label %332

332:                                              ; preds = %329, %319
  %333 = load i32, i32* %1, align 4
  %334 = and i32 %333, 2
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %332
  %337 = load i32, i32* %6, align 4
  %338 = xor i32 %337, 7
  store i32 %338, i32* %6, align 4
  %339 = load i32, i32* %5, align 4
  %340 = xor i32 %339, 7
  store i32 %340, i32* %5, align 4
  br label %341

341:                                              ; preds = %336, %332
  %342 = load i32, i32* %1, align 4
  %343 = and i32 %342, 1
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %341
  %346 = load i32, i32* %6, align 4
  store i32 %346, i32* %7, align 4
  %347 = load i32, i32* %5, align 4
  %348 = xor i32 %347, 7
  store i32 %348, i32* %6, align 4
  %349 = load i32, i32* %7, align 4
  store i32 %349, i32* %5, align 4
  br label %350

350:                                              ; preds = %345, %341
  %351 = load i32, i32* %6, align 4
  %352 = load i32, i32* %5, align 4
  %353 = mul nsw i32 %352, 8
  %354 = add nsw i32 %351, %353
  %355 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 3), align 8
  %356 = load i32, i32* %1, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  store i32 %354, i32* %358, align 4
  br label %359

359:                                              ; preds = %350
  %360 = load i32, i32* %1, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %1, align 4
  br label %316

362:                                              ; preds = %316
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
