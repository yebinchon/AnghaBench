; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_deband_16_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deband.c_deband_16_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i32*, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @deband_16_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deband_16_c(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
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
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %10, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %11, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %12, align 8
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %340, %4
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %343

52:                                               ; preds = %46
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %16, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %17, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 2
  store i32 %76, i32* %18, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 2
  store i32 %84, i32* %19, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %20, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %8, align 4
  %102 = sdiv i32 %100, %101
  store i32 %102, i32* %21, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  %112 = mul nsw i32 %109, %111
  %113 = load i32, i32* %8, align 4
  %114 = sdiv i32 %112, %113
  store i32 %114, i32* %22, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %23, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %24, align 4
  %131 = load i32, i32* %21, align 4
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %336, %52
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %22, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %339

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %137, %142
  store i32 %143, i32* %25, align 4
  store i32 0, i32* %13, align 4
  br label %144

144:                                              ; preds = %332, %136
  %145 = load i32, i32* %13, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %145, %152
  br i1 %153, label %154, label %335

154:                                              ; preds = %144
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %25, align 4
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %26, align 4
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %27, align 4
  %173 = load i32*, i32** %16, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %27, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %24, align 4
  %178 = call i32 @av_clip(i32 %176, i32 0, i32 %177)
  %179 = load i32, i32* %19, align 4
  %180 = mul nsw i32 %178, %179
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %26, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %23, align 4
  %185 = call i32 @av_clip(i32 %183, i32 0, i32 %184)
  %186 = add nsw i32 %180, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %173, i64 %187
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %28, align 4
  %190 = load i32*, i32** %16, align 8
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* %27, align 4
  %193 = sub nsw i32 0, %192
  %194 = add nsw i32 %191, %193
  %195 = load i32, i32* %24, align 4
  %196 = call i32 @av_clip(i32 %194, i32 0, i32 %195)
  %197 = load i32, i32* %19, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %26, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* %23, align 4
  %203 = call i32 @av_clip(i32 %201, i32 0, i32 %202)
  %204 = add nsw i32 %198, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %190, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %29, align 4
  %208 = load i32*, i32** %16, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %27, align 4
  %211 = sub nsw i32 0, %210
  %212 = add nsw i32 %209, %211
  %213 = load i32, i32* %24, align 4
  %214 = call i32 @av_clip(i32 %212, i32 0, i32 %213)
  %215 = load i32, i32* %19, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %26, align 4
  %219 = sub nsw i32 0, %218
  %220 = add nsw i32 %217, %219
  %221 = load i32, i32* %23, align 4
  %222 = call i32 @av_clip(i32 %220, i32 0, i32 %221)
  %223 = add nsw i32 %216, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %208, i64 %224
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %30, align 4
  %227 = load i32*, i32** %16, align 8
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %27, align 4
  %230 = add nsw i32 %228, %229
  %231 = load i32, i32* %24, align 4
  %232 = call i32 @av_clip(i32 %230, i32 0, i32 %231)
  %233 = load i32, i32* %19, align 4
  %234 = mul nsw i32 %232, %233
  %235 = load i32, i32* %13, align 4
  %236 = load i32, i32* %26, align 4
  %237 = sub nsw i32 0, %236
  %238 = add nsw i32 %235, %237
  %239 = load i32, i32* %23, align 4
  %240 = call i32 @av_clip(i32 %238, i32 0, i32 %239)
  %241 = add nsw i32 %234, %240
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %227, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %31, align 4
  %245 = load i32*, i32** %16, align 8
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* %19, align 4
  %248 = mul nsw i32 %246, %247
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %248, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %245, i64 %251
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %32, align 4
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 6
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %285

258:                                              ; preds = %154
  %259 = load i32, i32* %28, align 4
  %260 = load i32, i32* %29, align 4
  %261 = load i32, i32* %30, align 4
  %262 = load i32, i32* %31, align 4
  %263 = call i32 @get_avg(i32 %259, i32 %260, i32 %261, i32 %262)
  store i32 %263, i32* %33, align 4
  %264 = load i32, i32* %32, align 4
  %265 = load i32, i32* %33, align 4
  %266 = sub nsw i32 %264, %265
  %267 = call i32 @FFABS(i32 %266)
  store i32 %267, i32* %34, align 4
  %268 = load i32, i32* %34, align 4
  %269 = load i32, i32* %20, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %258
  %272 = load i32, i32* %33, align 4
  br label %275

273:                                              ; preds = %258
  %274 = load i32, i32* %32, align 4
  br label %275

275:                                              ; preds = %273, %271
  %276 = phi i32 [ %272, %271 ], [ %274, %273 ]
  %277 = load i32*, i32** %17, align 8
  %278 = load i32, i32* %14, align 4
  %279 = load i32, i32* %18, align 4
  %280 = mul nsw i32 %278, %279
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %280, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %277, i64 %283
  store i32 %276, i32* %284, align 4
  br label %331

285:                                              ; preds = %154
  %286 = load i32, i32* %32, align 4
  %287 = load i32, i32* %28, align 4
  %288 = sub nsw i32 %286, %287
  %289 = call i32 @FFABS(i32 %288)
  %290 = load i32, i32* %20, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %319

292:                                              ; preds = %285
  %293 = load i32, i32* %32, align 4
  %294 = load i32, i32* %29, align 4
  %295 = sub nsw i32 %293, %294
  %296 = call i32 @FFABS(i32 %295)
  %297 = load i32, i32* %20, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %319

299:                                              ; preds = %292
  %300 = load i32, i32* %32, align 4
  %301 = load i32, i32* %30, align 4
  %302 = sub nsw i32 %300, %301
  %303 = call i32 @FFABS(i32 %302)
  %304 = load i32, i32* %20, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %319

306:                                              ; preds = %299
  %307 = load i32, i32* %32, align 4
  %308 = load i32, i32* %31, align 4
  %309 = sub nsw i32 %307, %308
  %310 = call i32 @FFABS(i32 %309)
  %311 = load i32, i32* %20, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %306
  %314 = load i32, i32* %28, align 4
  %315 = load i32, i32* %29, align 4
  %316 = load i32, i32* %30, align 4
  %317 = load i32, i32* %31, align 4
  %318 = call i32 @get_avg(i32 %314, i32 %315, i32 %316, i32 %317)
  br label %321

319:                                              ; preds = %306, %299, %292, %285
  %320 = load i32, i32* %32, align 4
  br label %321

321:                                              ; preds = %319, %313
  %322 = phi i32 [ %318, %313 ], [ %320, %319 ]
  %323 = load i32*, i32** %17, align 8
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* %18, align 4
  %326 = mul nsw i32 %324, %325
  %327 = load i32, i32* %13, align 4
  %328 = add nsw i32 %326, %327
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %323, i64 %329
  store i32 %322, i32* %330, align 4
  br label %331

331:                                              ; preds = %321, %275
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %13, align 4
  br label %144

335:                                              ; preds = %144
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %14, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %14, align 4
  br label %132

339:                                              ; preds = %132
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %15, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %15, align 4
  br label %46

343:                                              ; preds = %46
  ret i32 0
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @get_avg(i32, i32, i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
