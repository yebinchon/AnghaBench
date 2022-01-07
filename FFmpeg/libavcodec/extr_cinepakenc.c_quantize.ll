; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_quantize.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepakenc.c_quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32*, i32*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64, i8*, i32*, i8*, i32 }
%struct.TYPE_12__ = type { i32*, i32*, i32, i32 }

@AV_PIX_FMT_RGB24 = common dso_local global i64 0, align 8
@MB_AREA = common dso_local global i32 0, align 4
@MB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, i32**, i32*, i32, %struct.TYPE_12__*, i64)* @quantize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quantize(%struct.TYPE_14__* %0, i32 %1, i32** %2, i32* %3, i32 %4, %struct.TYPE_12__* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca [4 x i32*], align 16
  %35 = alloca [4 x i32*], align 16
  %36 = alloca [4 x i32], align 16
  %37 = alloca [4 x i32], align 16
  %38 = alloca i32*, align 8
  %39 = alloca i32, align 4
  %40 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %14, align 8
  store i64 %6, i64* %15, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AV_PIX_FMT_RGB24, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 6, i32 4
  store i32 %47, i32* %28, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %7
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  br label %58

54:                                               ; preds = %7
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32* [ %53, %50 ], [ %57, %54 ]
  store i32* %59, i32** %29, align 8
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  br label %70

66:                                               ; preds = %58
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i32 [ %65, %62 ], [ %69, %66 ]
  store i32 %71, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %72 = load i32, i32* @MB_AREA, align 4
  %73 = mul nsw i32 %72, 3
  %74 = sdiv i32 %73, 2
  %75 = zext i32 %74 to i64
  %76 = call i8* @llvm.stacksave()
  store i8* %76, i8** %32, align 8
  %77 = alloca i32, i64 %75, align 16
  store i64 %75, i64* %33, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %27, align 4
  br label %78

78:                                               ; preds = %374, %70
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %378

82:                                               ; preds = %78
  store i32 0, i32* %16, align 4
  br label %83

83:                                               ; preds = %367, %82
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %373

89:                                               ; preds = %83
  %90 = load i64, i64* %15, align 8
  %91 = call i64 @CERTAIN(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = load i32, i32* %27, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %15, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %367

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %89
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %28, align 4
  %112 = mul nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  store i32* %114, i32** %38, align 8
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %276

117:                                              ; preds = %106
  store i32 0, i32* %22, align 4
  store i32 0, i32* %19, align 4
  br label %118

118:                                              ; preds = %272, %117
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %28, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %275

122:                                              ; preds = %118
  store i32 0, i32* %21, align 4
  br label %123

123:                                              ; preds = %266, %122
  %124 = load i32, i32* %21, align 4
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %271

126:                                              ; preds = %123
  %127 = load i32, i32* %22, align 4
  %128 = icmp slt i32 %127, 4
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %134

130:                                              ; preds = %126
  %131 = load i32, i32* %21, align 4
  %132 = ashr i32 %131, 1
  %133 = add nsw i32 1, %132
  br label %134

134:                                              ; preds = %130, %129
  %135 = phi i32 [ 0, %129 ], [ %133, %130 ]
  store i32 %135, i32* %25, align 4
  %136 = load i32, i32* %22, align 4
  %137 = icmp slt i32 %136, 4
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 0, i32 1
  store i32 %139, i32* %26, align 4
  %140 = load i32, i32* %26, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %145

143:                                              ; preds = %134
  %144 = load i32, i32* %21, align 4
  br label %145

145:                                              ; preds = %143, %142
  %146 = phi i32 [ 0, %142 ], [ %144, %143 ]
  store i32 %146, i32* %23, align 4
  %147 = load i32, i32* %26, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %22, align 4
  br label %152

152:                                              ; preds = %150, %149
  %153 = phi i32 [ 0, %149 ], [ %151, %150 ]
  store i32 %153, i32* %24, align 4
  %154 = load i32**, i32*** %11, align 8
  %155 = load i32, i32* %25, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32*, i32** %154, i64 %156
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %23, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %26, align 4
  %163 = ashr i32 %161, %162
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %24, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %26, align 4
  %168 = ashr i32 %166, %167
  %169 = load i32*, i32** %12, align 8
  %170 = load i32, i32* %25, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %168, %173
  %175 = add nsw i32 %163, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %158, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32**, i32*** %11, align 8
  %180 = load i32, i32* %25, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32*, i32** %179, i64 %181
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %23, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %26, align 4
  %188 = ashr i32 %186, %187
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %24, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* %26, align 4
  %194 = ashr i32 %192, %193
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %25, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %194, %199
  %201 = add nsw i32 %189, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %183, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %178, %204
  %206 = load i32**, i32*** %11, align 8
  %207 = load i32, i32* %25, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i32, i32* %23, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* %26, align 4
  %215 = ashr i32 %213, %214
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %24, align 4
  %218 = add nsw i32 %216, %217
  %219 = load i32, i32* %26, align 4
  %220 = ashr i32 %218, %219
  %221 = add nsw i32 %220, 1
  %222 = load i32*, i32** %12, align 8
  %223 = load i32, i32* %25, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %221, %226
  %228 = add nsw i32 %215, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %210, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %205, %231
  %233 = load i32**, i32*** %11, align 8
  %234 = load i32, i32* %25, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* %23, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* %26, align 4
  %242 = ashr i32 %240, %241
  %243 = add nsw i32 %242, 1
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %24, align 4
  %246 = add nsw i32 %244, %245
  %247 = load i32, i32* %26, align 4
  %248 = ashr i32 %246, %247
  %249 = add nsw i32 %248, 1
  %250 = load i32*, i32** %12, align 8
  %251 = load i32, i32* %25, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = mul nsw i32 %249, %254
  %256 = add nsw i32 %243, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %237, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %232, %259
  %261 = ashr i32 %260, 2
  %262 = load i32*, i32** %38, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %261, i32* %265, align 4
  br label %266

266:                                              ; preds = %152
  %267 = load i32, i32* %21, align 4
  %268 = add nsw i32 %267, 2
  store i32 %268, i32* %21, align 4
  %269 = load i32, i32* %19, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %19, align 4
  br label %123

271:                                              ; preds = %123
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %22, align 4
  %274 = add nsw i32 %273, 2
  store i32 %274, i32* %22, align 4
  br label %118

275:                                              ; preds = %118
  br label %360

276:                                              ; preds = %106
  store i32 0, i32* %22, align 4
  store i32 0, i32* %19, align 4
  br label %277

277:                                              ; preds = %356, %276
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* @MB_SIZE, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %359

281:                                              ; preds = %277
  store i32 0, i32* %21, align 4
  br label %282

282:                                              ; preds = %352, %281
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* @MB_SIZE, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %355

286:                                              ; preds = %282
  store i32 0, i32* %20, align 4
  br label %287

287:                                              ; preds = %346, %286
  %288 = load i32, i32* %20, align 4
  %289 = load i32, i32* %28, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %351

291:                                              ; preds = %287
  %292 = load i32, i32* %20, align 4
  %293 = icmp sge i32 %292, 4
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* %20, align 4
  %296 = sub nsw i32 %295, 3
  br label %298

297:                                              ; preds = %291
  br label %298

298:                                              ; preds = %297, %294
  %299 = phi i32 [ %296, %294 ], [ 0, %297 ]
  store i32 %299, i32* %25, align 4
  %300 = load i32, i32* %20, align 4
  %301 = icmp sge i32 %300, 4
  br i1 %301, label %302, label %311

302:                                              ; preds = %298
  %303 = load i32, i32* %16, align 4
  %304 = load i32, i32* %21, align 4
  %305 = add nsw i32 %303, %304
  %306 = ashr i32 %305, 1
  store i32 %306, i32* %23, align 4
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* %22, align 4
  %309 = add nsw i32 %307, %308
  %310 = ashr i32 %309, 1
  store i32 %310, i32* %24, align 4
  br label %324

311:                                              ; preds = %298
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* %21, align 4
  %314 = add nsw i32 %312, %313
  %315 = load i32, i32* %20, align 4
  %316 = and i32 %315, 1
  %317 = add nsw i32 %314, %316
  store i32 %317, i32* %23, align 4
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %22, align 4
  %320 = add nsw i32 %318, %319
  %321 = load i32, i32* %20, align 4
  %322 = ashr i32 %321, 1
  %323 = add nsw i32 %320, %322
  store i32 %323, i32* %24, align 4
  br label %324

324:                                              ; preds = %311, %302
  %325 = load i32**, i32*** %11, align 8
  %326 = load i32, i32* %25, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %23, align 4
  %331 = load i32, i32* %24, align 4
  %332 = load i32*, i32** %12, align 8
  %333 = load i32, i32* %25, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %331, %336
  %338 = add nsw i32 %330, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %329, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32*, i32** %38, align 8
  %343 = load i32, i32* %19, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  store i32 %341, i32* %345, align 4
  br label %346

346:                                              ; preds = %324
  %347 = load i32, i32* %20, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %20, align 4
  %349 = load i32, i32* %19, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %19, align 4
  br label %287

351:                                              ; preds = %287
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %21, align 4
  %354 = add nsw i32 %353, 2
  store i32 %354, i32* %21, align 4
  br label %282

355:                                              ; preds = %282
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %22, align 4
  %358 = add nsw i32 %357, 2
  store i32 %358, i32* %22, align 4
  br label %277

359:                                              ; preds = %277
  br label %360

360:                                              ; preds = %359, %275
  %361 = load i32, i32* %13, align 4
  %362 = icmp ne i32 %361, 0
  %363 = zext i1 %362 to i64
  %364 = select i1 %362, i32 1, i32 4
  %365 = load i32, i32* %18, align 4
  %366 = add nsw i32 %365, %364
  store i32 %366, i32* %18, align 4
  br label %367

367:                                              ; preds = %360, %104
  %368 = load i32, i32* @MB_SIZE, align 4
  %369 = load i32, i32* %16, align 4
  %370 = add nsw i32 %369, %368
  store i32 %370, i32* %16, align 4
  %371 = load i32, i32* %27, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %27, align 4
  br label %83

373:                                              ; preds = %83
  br label %374

374:                                              ; preds = %373
  %375 = load i32, i32* @MB_SIZE, align 4
  %376 = load i32, i32* %17, align 4
  %377 = add nsw i32 %376, %375
  store i32 %377, i32* %17, align 4
  br label %78

378:                                              ; preds = %78
  %379 = load i32, i32* %18, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %378
  store i32 0, i32* %8, align 4
  store i32 1, i32* %39, align 4
  br label %577

382:                                              ; preds = %378
  %383 = load i32, i32* %18, align 4
  %384 = load i32, i32* %30, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %382
  %387 = load i32, i32* %18, align 4
  store i32 %387, i32* %30, align 4
  br label %388

388:                                              ; preds = %386, %382
  %389 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %390 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %389, i32 0, i32 2
  %391 = load i32*, i32** %390, align 8
  %392 = load i32, i32* %28, align 4
  %393 = load i32, i32* %18, align 4
  %394 = load i32*, i32** %29, align 8
  %395 = load i32, i32* %30, align 4
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 3
  %398 = load i32*, i32** %397, align 8
  %399 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 5
  %401 = call i32 @avpriv_init_elbg(i32* %391, i32 %392, i32 %393, i32* %394, i32 %395, i32 1, i32* %398, i32* %400)
  %402 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 2
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %28, align 4
  %406 = load i32, i32* %18, align 4
  %407 = load i32*, i32** %29, align 8
  %408 = load i32, i32* %30, align 4
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %410 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %409, i32 0, i32 3
  %411 = load i32*, i32** %410, align 8
  %412 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %413 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %412, i32 0, i32 5
  %414 = call i32 @avpriv_do_elbg(i32* %404, i32 %405, i32 %406, i32* %407, i32 %408, i32 1, i32* %411, i32* %413)
  %415 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 0
  store i32* %77, i32** %415, align 16
  %416 = load i32, i32* @MB_SIZE, align 4
  %417 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 0
  store i32 %416, i32* %417, align 16
  %418 = load i32, i32* @MB_AREA, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %77, i64 %419
  %421 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 1
  store i32* %420, i32** %421, align 8
  %422 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 1
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* @MB_AREA, align 4
  %425 = ashr i32 %424, 2
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %423, i64 %426
  %428 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 2
  store i32* %427, i32** %428, align 16
  %429 = load i32, i32* @MB_SIZE, align 4
  %430 = ashr i32 %429, 1
  %431 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 2
  store i32 %430, i32* %431, align 8
  %432 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 1
  store i32 %430, i32* %432, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %433

433:                                              ; preds = %566, %388
  %434 = load i32, i32* %17, align 4
  %435 = load i32, i32* %10, align 4
  %436 = icmp slt i32 %434, %435
  br i1 %436, label %437, label %570

437:                                              ; preds = %433
  store i32 0, i32* %16, align 4
  br label %438

438:                                              ; preds = %559, %437
  %439 = load i32, i32* %16, align 4
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 8
  %443 = icmp slt i32 %439, %442
  br i1 %443, label %444, label %565

444:                                              ; preds = %438
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 4
  %447 = load %struct.TYPE_13__*, %struct.TYPE_13__** %446, align 8
  %448 = load i32, i32* %19, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %447, i64 %449
  store %struct.TYPE_13__* %450, %struct.TYPE_13__** %40, align 8
  %451 = load i64, i64* %15, align 8
  %452 = call i64 @CERTAIN(i64 %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %461

454:                                              ; preds = %444
  %455 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %455, i32 0, i32 0
  %457 = load i64, i64* %456, align 8
  %458 = load i64, i64* %15, align 8
  %459 = icmp ne i64 %457, %458
  br i1 %459, label %460, label %461

460:                                              ; preds = %454
  br label %559

461:                                              ; preds = %454, %444
  %462 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %463 = load i32, i32* %16, align 4
  %464 = load i32, i32* %17, align 4
  %465 = load i32**, i32*** %11, align 8
  %466 = load i32*, i32** %12, align 8
  %467 = getelementptr inbounds [4 x i32*], [4 x i32*]* %34, i64 0, i64 0
  %468 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %469 = call i32 @get_sub_picture(%struct.TYPE_14__* %462, i32 %463, i32 %464, i32** %465, i32* %466, i32** %467, i32* %468)
  %470 = load i32, i32* %13, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %505

472:                                              ; preds = %461
  %473 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %474 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %473, i32 0, i32 3
  %475 = load i32*, i32** %474, align 8
  %476 = load i32, i32* %18, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 4
  store i32 %479, i32* %481, align 8
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %483 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 0
  %484 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 0
  %485 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 4
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %489 = call i32 @decode_v1_vector(%struct.TYPE_14__* %482, i32** %483, i32* %484, i32 %487, %struct.TYPE_12__* %488)
  %490 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %491 = getelementptr inbounds [4 x i32*], [4 x i32*]* %34, i64 0, i64 0
  %492 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %493 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 0
  %494 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 0
  %495 = call i8* @compute_mb_distortion(%struct.TYPE_14__* %490, i32** %491, i32* %492, i32** %493, i32* %494)
  %496 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 3
  store i8* %495, i8** %497, align 8
  %498 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %499 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %498, i32 0, i32 3
  %500 = load i8*, i8** %499, align 8
  %501 = load i32, i32* %31, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr i8, i8* %500, i64 %502
  %504 = ptrtoint i8* %503 to i32
  store i32 %504, i32* %31, align 4
  br label %552

505:                                              ; preds = %461
  store i32 0, i32* %20, align 4
  br label %506

506:                                              ; preds = %525, %505
  %507 = load i32, i32* %20, align 4
  %508 = icmp slt i32 %507, 4
  br i1 %508, label %509, label %528

509:                                              ; preds = %506
  %510 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %511 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %510, i32 0, i32 3
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* %18, align 4
  %514 = load i32, i32* %20, align 4
  %515 = add nsw i32 %513, %514
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %512, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %520 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %519, i32 0, i32 2
  %521 = load i32*, i32** %520, align 8
  %522 = load i32, i32* %20, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  store i32 %518, i32* %524, align 4
  br label %525

525:                                              ; preds = %509
  %526 = load i32, i32* %20, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %20, align 4
  br label %506

528:                                              ; preds = %506
  %529 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %530 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 0
  %531 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 0
  %532 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %533 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %532, i32 0, i32 2
  %534 = load i32*, i32** %533, align 8
  %535 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %536 = call i32 @decode_v4_vector(%struct.TYPE_14__* %529, i32** %530, i32* %531, i32* %534, %struct.TYPE_12__* %535)
  %537 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %538 = getelementptr inbounds [4 x i32*], [4 x i32*]* %34, i64 0, i64 0
  %539 = getelementptr inbounds [4 x i32], [4 x i32]* %36, i64 0, i64 0
  %540 = getelementptr inbounds [4 x i32*], [4 x i32*]* %35, i64 0, i64 0
  %541 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 0
  %542 = call i8* @compute_mb_distortion(%struct.TYPE_14__* %537, i32** %538, i32* %539, i32** %540, i32* %541)
  %543 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %544 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %543, i32 0, i32 1
  store i8* %542, i8** %544, align 8
  %545 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %546 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %545, i32 0, i32 1
  %547 = load i8*, i8** %546, align 8
  %548 = load i32, i32* %31, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr i8, i8* %547, i64 %549
  %551 = ptrtoint i8* %550 to i32
  store i32 %551, i32* %31, align 4
  br label %552

552:                                              ; preds = %528, %472
  %553 = load i32, i32* %13, align 4
  %554 = icmp ne i32 %553, 0
  %555 = zext i1 %554 to i64
  %556 = select i1 %554, i32 1, i32 4
  %557 = load i32, i32* %18, align 4
  %558 = add nsw i32 %557, %556
  store i32 %558, i32* %18, align 4
  br label %559

559:                                              ; preds = %552, %460
  %560 = load i32, i32* @MB_SIZE, align 4
  %561 = load i32, i32* %16, align 4
  %562 = add nsw i32 %561, %560
  store i32 %562, i32* %16, align 4
  %563 = load i32, i32* %19, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %19, align 4
  br label %438

565:                                              ; preds = %438
  br label %566

566:                                              ; preds = %565
  %567 = load i32, i32* @MB_SIZE, align 4
  %568 = load i32, i32* %17, align 4
  %569 = add nsw i32 %568, %567
  store i32 %569, i32* %17, align 4
  br label %433

570:                                              ; preds = %433
  %571 = load i32, i32* %18, align 4
  %572 = load i32, i32* %30, align 4
  %573 = icmp sge i32 %571, %572
  %574 = zext i1 %573 to i32
  %575 = call i32 @av_assert0(i32 %574)
  %576 = load i32, i32* %30, align 4
  store i32 %576, i32* %8, align 4
  store i32 1, i32* %39, align 4
  br label %577

577:                                              ; preds = %570, %381
  %578 = load i8*, i8** %32, align 8
  call void @llvm.stackrestore(i8* %578)
  %579 = load i32, i32* %8, align 4
  ret i32 %579
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @CERTAIN(i64) #2

declare dso_local i32 @avpriv_init_elbg(i32*, i32, i32, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @avpriv_do_elbg(i32*, i32, i32, i32*, i32, i32, i32*, i32*) #2

declare dso_local i32 @get_sub_picture(%struct.TYPE_14__*, i32, i32, i32**, i32*, i32**, i32*) #2

declare dso_local i32 @decode_v1_vector(%struct.TYPE_14__*, i32**, i32*, i32, %struct.TYPE_12__*) #2

declare dso_local i8* @compute_mb_distortion(%struct.TYPE_14__*, i32**, i32*, i32**, i32*) #2

declare dso_local i32 @decode_v4_vector(%struct.TYPE_14__*, i32**, i32*, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @av_assert0(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
