; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.h_decode_run_p.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr.h_decode_run_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32*, i32, i32, i32, i32*, i32*)* @decode_run_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_run_p(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9, i32* %10, i32* %11, i32 %12, i32 %13, i32 %14, i32* %15, i32* %16) #0 {
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_3__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %19, align 8
  store i32 %1, i32* %20, align 4
  store i32 %2, i32* %21, align 4
  store i32 %3, i32* %22, align 4
  store i32 %4, i32* %23, align 4
  store i32 %5, i32* %24, align 4
  store i32* %6, i32** %25, align 8
  store i32* %7, i32** %26, align 8
  store i32 %8, i32* %27, align 4
  store i32 %9, i32* %28, align 4
  store i32* %10, i32** %29, align 8
  store i32* %11, i32** %30, align 8
  store i32 %12, i32* %31, align 4
  store i32 %13, i32* %32, align 4
  store i32 %14, i32* %33, align 4
  store i32* %15, i32** %34, align 8
  store i32* %16, i32** %35, align 8
  %41 = load i32, i32* %20, align 4
  switch i32 %41, label %624 [
    i32 0, label %42
    i32 1, label %96
    i32 2, label %177
    i32 3, label %247
    i32 4, label %312
    i32 5, label %538
  ]

42:                                               ; preds = %17
  br label %43

43:                                               ; preds = %94, %42
  %44 = load i32, i32* %21, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %21, align 4
  %46 = icmp sgt i32 %44, 0
  br i1 %46, label %47, label %95

47:                                               ; preds = %43
  %48 = load i32*, i32** %30, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %18, align 4
  br label %648

56:                                               ; preds = %47
  %57 = load i32, i32* %24, align 4
  %58 = load i32*, i32** %25, align 8
  %59 = load i32*, i32** %30, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %27, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32*, i32** %29, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %62, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  store i32 %57, i32* %67, align 4
  %68 = load i32*, i32** %29, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32*, i32** %29, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %22, align 4
  %74 = mul nsw i32 %73, 16
  %75 = load i32, i32* %33, align 4
  %76 = add nsw i32 %74, %75
  %77 = icmp sge i32 %72, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %56
  %79 = load i32*, i32** %29, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %80, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %78, %56
  %86 = load i32, i32* %22, align 4
  %87 = mul nsw i32 %86, 16
  %88 = load i32, i32* %32, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32*, i32** %29, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %30, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85, %78
  br label %43

95:                                               ; preds = %43
  br label %624

96:                                               ; preds = %17
  br label %97

97:                                               ; preds = %175, %96
  %98 = load i32, i32* %21, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %21, align 4
  %100 = icmp sgt i32 %98, 0
  br i1 %100, label %101, label %176

101:                                              ; preds = %97
  %102 = load i32*, i32** %29, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i32*, i32** %30, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %18, align 4
  br label %648

111:                                              ; preds = %105
  %112 = load i32, i32* %31, align 4
  store i32 %112, i32* %39, align 4
  br label %114

113:                                              ; preds = %101
  store i32 0, i32* %39, align 4
  br label %114

114:                                              ; preds = %113, %111
  %115 = load i32*, i32** %30, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp sge i32 %116, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %122, i32* %18, align 4
  br label %648

123:                                              ; preds = %114
  %124 = load i32*, i32** %25, align 8
  %125 = load i32*, i32** %30, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %27, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32*, i32** %29, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %128, %130
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %39, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %124, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %24, align 4
  %138 = load i32, i32* %24, align 4
  %139 = load i32*, i32** %25, align 8
  %140 = load i32*, i32** %30, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %27, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32*, i32** %29, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %143, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %139, i64 %147
  store i32 %138, i32* %148, align 4
  %149 = load i32*, i32** %29, align 8
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load i32*, i32** %29, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %22, align 4
  %155 = mul nsw i32 %154, 16
  %156 = load i32, i32* %33, align 4
  %157 = add nsw i32 %155, %156
  %158 = icmp sge i32 %153, %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %123
  %160 = load i32*, i32** %29, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sge i32 %161, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %159, %123
  %167 = load i32, i32* %22, align 4
  %168 = mul nsw i32 %167, 16
  %169 = load i32, i32* %32, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32*, i32** %29, align 8
  store i32 %170, i32* %171, align 4
  %172 = load i32*, i32** %30, align 8
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %166, %159
  br label %97

176:                                              ; preds = %97
  br label %624

177:                                              ; preds = %17
  br label %178

178:                                              ; preds = %245, %177
  %179 = load i32, i32* %21, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %21, align 4
  %181 = icmp sgt i32 %179, 0
  br i1 %181, label %182, label %246

182:                                              ; preds = %178
  %183 = load i32*, i32** %30, align 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %184, 1
  br i1 %185, label %193, label %186

186:                                              ; preds = %182
  %187 = load i32*, i32** %30, align 8
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp sge i32 %188, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %186, %182
  %194 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %194, i32* %18, align 4
  br label %648

195:                                              ; preds = %186
  %196 = load i32*, i32** %25, align 8
  %197 = load i32*, i32** %30, align 8
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %198, 1
  %200 = load i32, i32* %27, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load i32*, i32** %29, align 8
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %201, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %196, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %24, align 4
  %208 = load i32, i32* %24, align 4
  %209 = load i32*, i32** %25, align 8
  %210 = load i32*, i32** %30, align 8
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %27, align 4
  %213 = mul nsw i32 %211, %212
  %214 = load i32*, i32** %29, align 8
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %213, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %209, i64 %217
  store i32 %208, i32* %218, align 4
  %219 = load i32*, i32** %29, align 8
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load i32*, i32** %29, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %22, align 4
  %225 = mul nsw i32 %224, 16
  %226 = load i32, i32* %33, align 4
  %227 = add nsw i32 %225, %226
  %228 = icmp sge i32 %223, %227
  br i1 %228, label %236, label %229

229:                                              ; preds = %195
  %230 = load i32*, i32** %29, align 8
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp sge i32 %231, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %229, %195
  %237 = load i32, i32* %22, align 4
  %238 = mul nsw i32 %237, 16
  %239 = load i32, i32* %32, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32*, i32** %29, align 8
  store i32 %240, i32* %241, align 4
  %242 = load i32*, i32** %30, align 8
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %236, %229
  br label %178

246:                                              ; preds = %178
  br label %624

247:                                              ; preds = %17
  br label %248

248:                                              ; preds = %310, %247
  %249 = load i32, i32* %21, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %21, align 4
  %251 = icmp sgt i32 %249, 0
  br i1 %251, label %252, label %311

252:                                              ; preds = %248
  %253 = load i32*, i32** %30, align 8
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp sge i32 %254, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %252
  %260 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %260, i32* %18, align 4
  br label %648

261:                                              ; preds = %252
  %262 = load i32*, i32** %26, align 8
  %263 = load i32*, i32** %30, align 8
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %28, align 4
  %266 = mul nsw i32 %264, %265
  %267 = load i32*, i32** %29, align 8
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %266, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %262, i64 %270
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %24, align 4
  %273 = load i32, i32* %24, align 4
  %274 = load i32*, i32** %25, align 8
  %275 = load i32*, i32** %30, align 8
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %27, align 4
  %278 = mul nsw i32 %276, %277
  %279 = load i32*, i32** %29, align 8
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %278, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %274, i64 %282
  store i32 %273, i32* %283, align 4
  %284 = load i32*, i32** %29, align 8
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  %287 = load i32*, i32** %29, align 8
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %22, align 4
  %290 = mul nsw i32 %289, 16
  %291 = load i32, i32* %33, align 4
  %292 = add nsw i32 %290, %291
  %293 = icmp sge i32 %288, %292
  br i1 %293, label %301, label %294

294:                                              ; preds = %261
  %295 = load i32*, i32** %29, align 8
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp sge i32 %296, %299
  br i1 %300, label %301, label %310

301:                                              ; preds = %294, %261
  %302 = load i32, i32* %22, align 4
  %303 = mul nsw i32 %302, 16
  %304 = load i32, i32* %32, align 4
  %305 = add nsw i32 %303, %304
  %306 = load i32*, i32** %29, align 8
  store i32 %305, i32* %306, align 4
  %307 = load i32*, i32** %30, align 8
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %301, %294
  br label %248

311:                                              ; preds = %248
  br label %624

312:                                              ; preds = %17
  br label %313

313:                                              ; preds = %536, %312
  %314 = load i32, i32* %21, align 4
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* %21, align 4
  %316 = icmp sgt i32 %314, 0
  br i1 %316, label %317, label %537

317:                                              ; preds = %313
  %318 = load i32*, i32** %25, align 8
  store i32* %318, i32** %40, align 8
  %319 = load i32*, i32** %30, align 8
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %320, 1
  br i1 %321, label %329, label %322

322:                                              ; preds = %317
  %323 = load i32*, i32** %30, align 8
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp sge i32 %324, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %322, %317
  %330 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %330, i32* %18, align 4
  br label %648

331:                                              ; preds = %322
  %332 = load i32*, i32** %29, align 8
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %331
  %336 = load i32*, i32** %30, align 8
  %337 = load i32, i32* %336, align 4
  %338 = icmp slt i32 %337, 2
  br i1 %338, label %339, label %341

339:                                              ; preds = %335
  %340 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %340, i32* %18, align 4
  br label %648

341:                                              ; preds = %335
  %342 = load i32, i32* %31, align 4
  store i32 %342, i32* %39, align 4
  br label %344

343:                                              ; preds = %331
  store i32 0, i32* %39, align 4
  br label %344

344:                                              ; preds = %343, %341
  %345 = load i32*, i32** %40, align 8
  %346 = load i32*, i32** %30, align 8
  %347 = load i32, i32* %346, align 4
  %348 = sub nsw i32 %347, 1
  %349 = load i32, i32* %27, align 4
  %350 = mul nsw i32 %348, %349
  %351 = load i32*, i32** %29, align 8
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %350, %352
  %354 = mul nsw i32 %353, 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %345, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** %40, align 8
  %359 = load i32*, i32** %30, align 8
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %27, align 4
  %362 = mul nsw i32 %360, %361
  %363 = load i32*, i32** %29, align 8
  %364 = load i32, i32* %363, align 4
  %365 = add nsw i32 %362, %364
  %366 = sub nsw i32 %365, 1
  %367 = load i32, i32* %39, align 4
  %368 = sub nsw i32 %366, %367
  %369 = mul nsw i32 %368, 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %358, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %357, %372
  %374 = load i32*, i32** %40, align 8
  %375 = load i32*, i32** %30, align 8
  %376 = load i32, i32* %375, align 4
  %377 = sub nsw i32 %376, 1
  %378 = load i32, i32* %27, align 4
  %379 = mul nsw i32 %377, %378
  %380 = load i32*, i32** %29, align 8
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %379, %381
  %383 = sub nsw i32 %382, 1
  %384 = load i32, i32* %39, align 4
  %385 = sub nsw i32 %383, %384
  %386 = mul nsw i32 %385, 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %374, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = sub nsw i32 %373, %389
  store i32 %390, i32* %36, align 4
  %391 = load i32*, i32** %40, align 8
  %392 = load i32*, i32** %30, align 8
  %393 = load i32, i32* %392, align 4
  %394 = sub nsw i32 %393, 1
  %395 = load i32, i32* %27, align 4
  %396 = mul nsw i32 %394, %395
  %397 = load i32*, i32** %29, align 8
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %396, %398
  %400 = mul nsw i32 %399, 4
  %401 = add nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %391, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = load i32*, i32** %40, align 8
  %406 = load i32*, i32** %30, align 8
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %27, align 4
  %409 = mul nsw i32 %407, %408
  %410 = load i32*, i32** %29, align 8
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %409, %411
  %413 = sub nsw i32 %412, 1
  %414 = load i32, i32* %39, align 4
  %415 = sub nsw i32 %413, %414
  %416 = mul nsw i32 %415, 4
  %417 = add nsw i32 %416, 1
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %405, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = add nsw i32 %404, %420
  %422 = load i32*, i32** %40, align 8
  %423 = load i32*, i32** %30, align 8
  %424 = load i32, i32* %423, align 4
  %425 = sub nsw i32 %424, 1
  %426 = load i32, i32* %27, align 4
  %427 = mul nsw i32 %425, %426
  %428 = load i32*, i32** %29, align 8
  %429 = load i32, i32* %428, align 4
  %430 = add nsw i32 %427, %429
  %431 = sub nsw i32 %430, 1
  %432 = load i32, i32* %39, align 4
  %433 = sub nsw i32 %431, %432
  %434 = mul nsw i32 %433, 4
  %435 = add nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %422, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = sub nsw i32 %421, %438
  store i32 %439, i32* %37, align 4
  %440 = load i32*, i32** %40, align 8
  %441 = load i32*, i32** %30, align 8
  %442 = load i32, i32* %441, align 4
  %443 = sub nsw i32 %442, 1
  %444 = load i32, i32* %27, align 4
  %445 = mul nsw i32 %443, %444
  %446 = load i32*, i32** %29, align 8
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %445, %447
  %449 = mul nsw i32 %448, 4
  %450 = add nsw i32 %449, 2
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %440, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = load i32*, i32** %40, align 8
  %455 = load i32*, i32** %30, align 8
  %456 = load i32, i32* %455, align 4
  %457 = load i32, i32* %27, align 4
  %458 = mul nsw i32 %456, %457
  %459 = load i32*, i32** %29, align 8
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %458, %460
  %462 = sub nsw i32 %461, 1
  %463 = load i32, i32* %39, align 4
  %464 = sub nsw i32 %462, %463
  %465 = mul nsw i32 %464, 4
  %466 = add nsw i32 %465, 2
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %454, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = add nsw i32 %453, %469
  %471 = load i32*, i32** %40, align 8
  %472 = load i32*, i32** %30, align 8
  %473 = load i32, i32* %472, align 4
  %474 = sub nsw i32 %473, 1
  %475 = load i32, i32* %27, align 4
  %476 = mul nsw i32 %474, %475
  %477 = load i32*, i32** %29, align 8
  %478 = load i32, i32* %477, align 4
  %479 = add nsw i32 %476, %478
  %480 = sub nsw i32 %479, 1
  %481 = load i32, i32* %39, align 4
  %482 = sub nsw i32 %480, %481
  %483 = mul nsw i32 %482, 4
  %484 = add nsw i32 %483, 2
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %471, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = sub nsw i32 %470, %487
  store i32 %488, i32* %38, align 4
  %489 = load i32, i32* %38, align 4
  %490 = and i32 %489, 255
  %491 = shl i32 %490, 16
  %492 = load i32, i32* %37, align 4
  %493 = and i32 %492, 255
  %494 = shl i32 %493, 8
  %495 = add nsw i32 %491, %494
  %496 = load i32, i32* %36, align 4
  %497 = and i32 %496, 255
  %498 = add nsw i32 %495, %497
  store i32 %498, i32* %24, align 4
  %499 = load i32, i32* %24, align 4
  %500 = load i32*, i32** %25, align 8
  %501 = load i32*, i32** %30, align 8
  %502 = load i32, i32* %501, align 4
  %503 = load i32, i32* %27, align 4
  %504 = mul nsw i32 %502, %503
  %505 = load i32*, i32** %29, align 8
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %504, %506
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %500, i64 %508
  store i32 %499, i32* %509, align 4
  %510 = load i32*, i32** %29, align 8
  %511 = load i32, i32* %510, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %510, align 4
  %513 = load i32*, i32** %29, align 8
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* %22, align 4
  %516 = mul nsw i32 %515, 16
  %517 = load i32, i32* %33, align 4
  %518 = add nsw i32 %516, %517
  %519 = icmp sge i32 %514, %518
  br i1 %519, label %527, label %520

520:                                              ; preds = %344
  %521 = load i32*, i32** %29, align 8
  %522 = load i32, i32* %521, align 4
  %523 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %524 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = icmp sge i32 %522, %525
  br i1 %526, label %527, label %536

527:                                              ; preds = %520, %344
  %528 = load i32, i32* %22, align 4
  %529 = mul nsw i32 %528, 16
  %530 = load i32, i32* %32, align 4
  %531 = add nsw i32 %529, %530
  %532 = load i32*, i32** %29, align 8
  store i32 %531, i32* %532, align 4
  %533 = load i32*, i32** %30, align 8
  %534 = load i32, i32* %533, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %533, align 4
  br label %536

536:                                              ; preds = %527, %520
  br label %313

537:                                              ; preds = %313
  br label %624

538:                                              ; preds = %17
  br label %539

539:                                              ; preds = %622, %538
  %540 = load i32, i32* %21, align 4
  %541 = add nsw i32 %540, -1
  store i32 %541, i32* %21, align 4
  %542 = icmp sgt i32 %540, 0
  br i1 %542, label %543, label %623

543:                                              ; preds = %539
  %544 = load i32*, i32** %30, align 8
  %545 = load i32, i32* %544, align 4
  %546 = icmp slt i32 %545, 1
  br i1 %546, label %554, label %547

547:                                              ; preds = %543
  %548 = load i32*, i32** %30, align 8
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %551 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = icmp sge i32 %549, %552
  br i1 %553, label %554, label %556

554:                                              ; preds = %547, %543
  %555 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %555, i32* %18, align 4
  br label %648

556:                                              ; preds = %547
  %557 = load i32*, i32** %29, align 8
  %558 = load i32, i32* %557, align 4
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %560, label %568

560:                                              ; preds = %556
  %561 = load i32*, i32** %30, align 8
  %562 = load i32, i32* %561, align 4
  %563 = icmp slt i32 %562, 2
  br i1 %563, label %564, label %566

564:                                              ; preds = %560
  %565 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %565, i32* %18, align 4
  br label %648

566:                                              ; preds = %560
  %567 = load i32, i32* %31, align 4
  store i32 %567, i32* %39, align 4
  br label %569

568:                                              ; preds = %556
  store i32 0, i32* %39, align 4
  br label %569

569:                                              ; preds = %568, %566
  %570 = load i32*, i32** %25, align 8
  %571 = load i32*, i32** %30, align 8
  %572 = load i32, i32* %571, align 4
  %573 = sub nsw i32 %572, 1
  %574 = load i32, i32* %27, align 4
  %575 = mul nsw i32 %573, %574
  %576 = load i32*, i32** %29, align 8
  %577 = load i32, i32* %576, align 4
  %578 = add nsw i32 %575, %577
  %579 = sub nsw i32 %578, 1
  %580 = load i32, i32* %39, align 4
  %581 = sub nsw i32 %579, %580
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32, i32* %570, i64 %582
  %584 = load i32, i32* %583, align 4
  store i32 %584, i32* %24, align 4
  %585 = load i32, i32* %24, align 4
  %586 = load i32*, i32** %25, align 8
  %587 = load i32*, i32** %30, align 8
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* %27, align 4
  %590 = mul nsw i32 %588, %589
  %591 = load i32*, i32** %29, align 8
  %592 = load i32, i32* %591, align 4
  %593 = add nsw i32 %590, %592
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, i32* %586, i64 %594
  store i32 %585, i32* %595, align 4
  %596 = load i32*, i32** %29, align 8
  %597 = load i32, i32* %596, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %596, align 4
  %599 = load i32*, i32** %29, align 8
  %600 = load i32, i32* %599, align 4
  %601 = load i32, i32* %22, align 4
  %602 = mul nsw i32 %601, 16
  %603 = load i32, i32* %33, align 4
  %604 = add nsw i32 %602, %603
  %605 = icmp sge i32 %600, %604
  br i1 %605, label %613, label %606

606:                                              ; preds = %569
  %607 = load i32*, i32** %29, align 8
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %610 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 4
  %612 = icmp sge i32 %608, %611
  br i1 %612, label %613, label %622

613:                                              ; preds = %606, %569
  %614 = load i32, i32* %22, align 4
  %615 = mul nsw i32 %614, 16
  %616 = load i32, i32* %32, align 4
  %617 = add nsw i32 %615, %616
  %618 = load i32*, i32** %29, align 8
  store i32 %617, i32* %618, align 4
  %619 = load i32*, i32** %30, align 8
  %620 = load i32, i32* %619, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %619, align 4
  br label %622

622:                                              ; preds = %613, %606
  br label %539

623:                                              ; preds = %539
  br label %624

624:                                              ; preds = %17, %623, %537, %311, %246, %176, %95
  %625 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %626 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %625, i32 0, i32 2
  %627 = load i32, i32* %626, align 4
  %628 = icmp eq i32 %627, 16
  br i1 %628, label %629, label %638

629:                                              ; preds = %624
  %630 = load i32, i32* %24, align 4
  %631 = and i32 %630, 16128
  %632 = ashr i32 %631, 2
  %633 = load i32*, i32** %35, align 8
  store i32 %632, i32* %633, align 4
  %634 = load i32, i32* %24, align 4
  %635 = and i32 %634, 4194303
  %636 = ashr i32 %635, 16
  %637 = load i32*, i32** %34, align 8
  store i32 %636, i32* %637, align 4
  br label %647

638:                                              ; preds = %624
  %639 = load i32, i32* %24, align 4
  %640 = and i32 %639, 64512
  %641 = ashr i32 %640, 4
  %642 = load i32*, i32** %35, align 8
  store i32 %641, i32* %642, align 4
  %643 = load i32, i32* %24, align 4
  %644 = and i32 %643, 16777215
  %645 = ashr i32 %644, 18
  %646 = load i32*, i32** %34, align 8
  store i32 %645, i32* %646, align 4
  br label %647

647:                                              ; preds = %638, %629
  store i32 0, i32* %18, align 4
  br label %648

648:                                              ; preds = %647, %564, %554, %339, %329, %259, %193, %121, %109, %54
  %649 = load i32, i32* %18, align 4
  ret i32 %649
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
