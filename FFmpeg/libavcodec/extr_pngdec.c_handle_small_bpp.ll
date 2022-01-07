; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_handle_small_bpp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_handle_small_bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32** }

@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*)* @handle_small_bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_small_bpp(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %197

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %197

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %193, %25
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %196

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* %5, align 4
  store i32 7, i32* %7, align 4
  br label %42

42:                                               ; preds = %71, %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 1
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 7
  %50 = load i32, i32* %7, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 8, %58
  %60 = ashr i32 %57, %59
  %61 = and i32 %60, 1
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 8, %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %62, i64 %68
  store i32 %61, i32* %69, align 4
  br label %70

70:                                               ; preds = %52, %45
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %183, %74
  %78 = load i32, i32* %5, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %186

80:                                               ; preds = %77
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 1
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %5, align 4
  %89 = mul nsw i32 8, %88
  %90 = add nsw i32 %89, 7
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  store i32 %86, i32* %92, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 1
  %99 = and i32 %98, 1
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %5, align 4
  %102 = mul nsw i32 8, %101
  %103 = add nsw i32 %102, 6
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 2
  %112 = and i32 %111, 1
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %5, align 4
  %115 = mul nsw i32 8, %114
  %116 = add nsw i32 %115, 5
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  store i32 %112, i32* %118, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 3
  %125 = and i32 %124, 1
  %126 = load i32*, i32** %8, align 8
  %127 = load i32, i32* %5, align 4
  %128 = mul nsw i32 8, %127
  %129 = add nsw i32 %128, 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  store i32 %125, i32* %131, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = ashr i32 %136, 4
  %138 = and i32 %137, 1
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %5, align 4
  %141 = mul nsw i32 8, %140
  %142 = add nsw i32 %141, 3
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %139, i64 %143
  store i32 %138, i32* %144, align 4
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 5
  %151 = and i32 %150, 1
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %5, align 4
  %154 = mul nsw i32 8, %153
  %155 = add nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  store i32 %151, i32* %157, align 4
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = ashr i32 %162, 6
  %164 = and i32 %163, 1
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %5, align 4
  %167 = mul nsw i32 8, %166
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  store i32 %164, i32* %170, align 4
  %171 = load i32*, i32** %8, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 7
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %5, align 4
  %179 = mul nsw i32 8, %178
  %180 = add nsw i32 %179, 0
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  store i32 %176, i32* %182, align 4
  br label %183

183:                                              ; preds = %80
  %184 = load i32, i32* %5, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %5, align 4
  br label %77

186:                                              ; preds = %77
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** %8, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32* %192, i32** %8, align 8
  br label %193

193:                                              ; preds = %186
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %6, align 4
  br label %31

196:                                              ; preds = %31
  br label %633

197:                                              ; preds = %19, %2
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %482

202:                                              ; preds = %197
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32**, i32*** %204, align 8
  %206 = getelementptr inbounds i32*, i32** %205, i64 0
  %207 = load i32*, i32** %206, align 8
  store i32* %207, i32** %11, align 8
  store i32 0, i32* %10, align 4
  br label %208

208:                                              ; preds = %478, %202
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %481

214:                                              ; preds = %208
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = sdiv i32 %217, 4
  store i32 %218, i32* %9, align 4
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %344

224:                                              ; preds = %214
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 3
  %229 = icmp sge i32 %228, 3
  br i1 %229, label %230, label %244

230:                                              ; preds = %224
  %231 = load i32*, i32** %11, align 8
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = ashr i32 %235, 2
  %237 = and i32 %236, 3
  %238 = load i32*, i32** %11, align 8
  %239 = load i32, i32* %9, align 4
  %240 = mul nsw i32 4, %239
  %241 = add nsw i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %238, i64 %242
  store i32 %237, i32* %243, align 4
  br label %244

244:                                              ; preds = %230, %224
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, 3
  %249 = icmp sge i32 %248, 2
  br i1 %249, label %250, label %264

250:                                              ; preds = %244
  %251 = load i32*, i32** %11, align 8
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = ashr i32 %255, 4
  %257 = and i32 %256, 3
  %258 = load i32*, i32** %11, align 8
  %259 = load i32, i32* %9, align 4
  %260 = mul nsw i32 4, %259
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %258, i64 %262
  store i32 %257, i32* %263, align 4
  br label %264

264:                                              ; preds = %250, %244
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, 3
  %269 = icmp sge i32 %268, 1
  br i1 %269, label %270, label %283

270:                                              ; preds = %264
  %271 = load i32*, i32** %11, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = ashr i32 %275, 6
  %277 = load i32*, i32** %11, align 8
  %278 = load i32, i32* %9, align 4
  %279 = mul nsw i32 4, %278
  %280 = add nsw i32 %279, 0
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %277, i64 %281
  store i32 %276, i32* %282, align 4
  br label %283

283:                                              ; preds = %270, %264
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* %9, align 4
  br label %286

286:                                              ; preds = %340, %283
  %287 = load i32, i32* %9, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %343

289:                                              ; preds = %286
  %290 = load i32*, i32** %11, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, 3
  %296 = load i32*, i32** %11, align 8
  %297 = load i32, i32* %9, align 4
  %298 = mul nsw i32 4, %297
  %299 = add nsw i32 %298, 3
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %296, i64 %300
  store i32 %295, i32* %301, align 4
  %302 = load i32*, i32** %11, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = ashr i32 %306, 2
  %308 = and i32 %307, 3
  %309 = load i32*, i32** %11, align 8
  %310 = load i32, i32* %9, align 4
  %311 = mul nsw i32 4, %310
  %312 = add nsw i32 %311, 2
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %309, i64 %313
  store i32 %308, i32* %314, align 4
  %315 = load i32*, i32** %11, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = ashr i32 %319, 4
  %321 = and i32 %320, 3
  %322 = load i32*, i32** %11, align 8
  %323 = load i32, i32* %9, align 4
  %324 = mul nsw i32 4, %323
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %322, i64 %326
  store i32 %321, i32* %327, align 4
  %328 = load i32*, i32** %11, align 8
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = ashr i32 %332, 6
  %334 = load i32*, i32** %11, align 8
  %335 = load i32, i32* %9, align 4
  %336 = mul nsw i32 4, %335
  %337 = add nsw i32 %336, 0
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %334, i64 %338
  store i32 %333, i32* %339, align 4
  br label %340

340:                                              ; preds = %289
  %341 = load i32, i32* %9, align 4
  %342 = add nsw i32 %341, -1
  store i32 %342, i32* %9, align 4
  br label %286

343:                                              ; preds = %286
  br label %471

344:                                              ; preds = %214
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 3
  %349 = icmp sge i32 %348, 3
  br i1 %349, label %350, label %365

350:                                              ; preds = %344
  %351 = load i32*, i32** %11, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %351, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = ashr i32 %355, 2
  %357 = and i32 %356, 3
  %358 = mul nsw i32 %357, 85
  %359 = load i32*, i32** %11, align 8
  %360 = load i32, i32* %9, align 4
  %361 = mul nsw i32 4, %360
  %362 = add nsw i32 %361, 2
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %359, i64 %363
  store i32 %358, i32* %364, align 4
  br label %365

365:                                              ; preds = %350, %344
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 3
  %370 = icmp sge i32 %369, 2
  br i1 %370, label %371, label %386

371:                                              ; preds = %365
  %372 = load i32*, i32** %11, align 8
  %373 = load i32, i32* %9, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = ashr i32 %376, 4
  %378 = and i32 %377, 3
  %379 = mul nsw i32 %378, 85
  %380 = load i32*, i32** %11, align 8
  %381 = load i32, i32* %9, align 4
  %382 = mul nsw i32 4, %381
  %383 = add nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %380, i64 %384
  store i32 %379, i32* %385, align 4
  br label %386

386:                                              ; preds = %371, %365
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = and i32 %389, 3
  %391 = icmp sge i32 %390, 1
  br i1 %391, label %392, label %406

392:                                              ; preds = %386
  %393 = load i32*, i32** %11, align 8
  %394 = load i32, i32* %9, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = ashr i32 %397, 6
  %399 = mul nsw i32 %398, 85
  %400 = load i32*, i32** %11, align 8
  %401 = load i32, i32* %9, align 4
  %402 = mul nsw i32 4, %401
  %403 = add nsw i32 %402, 0
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %400, i64 %404
  store i32 %399, i32* %405, align 4
  br label %406

406:                                              ; preds = %392, %386
  %407 = load i32, i32* %9, align 4
  %408 = add nsw i32 %407, -1
  store i32 %408, i32* %9, align 4
  br label %409

409:                                              ; preds = %467, %406
  %410 = load i32, i32* %9, align 4
  %411 = icmp sge i32 %410, 0
  br i1 %411, label %412, label %470

412:                                              ; preds = %409
  %413 = load i32*, i32** %11, align 8
  %414 = load i32, i32* %9, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %413, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = and i32 %417, 3
  %419 = mul nsw i32 %418, 85
  %420 = load i32*, i32** %11, align 8
  %421 = load i32, i32* %9, align 4
  %422 = mul nsw i32 4, %421
  %423 = add nsw i32 %422, 3
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %420, i64 %424
  store i32 %419, i32* %425, align 4
  %426 = load i32*, i32** %11, align 8
  %427 = load i32, i32* %9, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = ashr i32 %430, 2
  %432 = and i32 %431, 3
  %433 = mul nsw i32 %432, 85
  %434 = load i32*, i32** %11, align 8
  %435 = load i32, i32* %9, align 4
  %436 = mul nsw i32 4, %435
  %437 = add nsw i32 %436, 2
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %434, i64 %438
  store i32 %433, i32* %439, align 4
  %440 = load i32*, i32** %11, align 8
  %441 = load i32, i32* %9, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = ashr i32 %444, 4
  %446 = and i32 %445, 3
  %447 = mul nsw i32 %446, 85
  %448 = load i32*, i32** %11, align 8
  %449 = load i32, i32* %9, align 4
  %450 = mul nsw i32 4, %449
  %451 = add nsw i32 %450, 1
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %448, i64 %452
  store i32 %447, i32* %453, align 4
  %454 = load i32*, i32** %11, align 8
  %455 = load i32, i32* %9, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %454, i64 %456
  %458 = load i32, i32* %457, align 4
  %459 = ashr i32 %458, 6
  %460 = mul nsw i32 %459, 85
  %461 = load i32*, i32** %11, align 8
  %462 = load i32, i32* %9, align 4
  %463 = mul nsw i32 4, %462
  %464 = add nsw i32 %463, 0
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %461, i64 %465
  store i32 %460, i32* %466, align 4
  br label %467

467:                                              ; preds = %412
  %468 = load i32, i32* %9, align 4
  %469 = add nsw i32 %468, -1
  store i32 %469, i32* %9, align 4
  br label %409

470:                                              ; preds = %409
  br label %471

471:                                              ; preds = %470, %343
  %472 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 8
  %475 = load i32*, i32** %11, align 8
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i32, i32* %475, i64 %476
  store i32* %477, i32** %11, align 8
  br label %478

478:                                              ; preds = %471
  %479 = load i32, i32* %10, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %10, align 4
  br label %208

481:                                              ; preds = %208
  br label %632

482:                                              ; preds = %197
  %483 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = icmp eq i32 %485, 4
  br i1 %486, label %487, label %631

487:                                              ; preds = %482
  %488 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %488, i32 0, i32 0
  %490 = load i32**, i32*** %489, align 8
  %491 = getelementptr inbounds i32*, i32** %490, i64 0
  %492 = load i32*, i32** %491, align 8
  store i32* %492, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %493

493:                                              ; preds = %627, %487
  %494 = load i32, i32* %13, align 4
  %495 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 8
  %498 = icmp slt i32 %494, %497
  br i1 %498, label %499, label %630

499:                                              ; preds = %493
  %500 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %500, i32 0, i32 3
  %502 = load i32, i32* %501, align 4
  %503 = sdiv i32 %502, 2
  store i32 %503, i32* %12, align 4
  %504 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %505 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %504, i32 0, i32 1
  %506 = load i64, i64* %505, align 8
  %507 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %508 = icmp eq i64 %506, %507
  br i1 %508, label %509, label %563

509:                                              ; preds = %499
  %510 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 4
  %513 = and i32 %512, 1
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %528

515:                                              ; preds = %509
  %516 = load i32*, i32** %14, align 8
  %517 = load i32, i32* %12, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = ashr i32 %520, 4
  %522 = load i32*, i32** %14, align 8
  %523 = load i32, i32* %12, align 4
  %524 = mul nsw i32 2, %523
  %525 = add nsw i32 %524, 0
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %522, i64 %526
  store i32 %521, i32* %527, align 4
  br label %528

528:                                              ; preds = %515, %509
  %529 = load i32, i32* %12, align 4
  %530 = add nsw i32 %529, -1
  store i32 %530, i32* %12, align 4
  br label %531

531:                                              ; preds = %559, %528
  %532 = load i32, i32* %12, align 4
  %533 = icmp sge i32 %532, 0
  br i1 %533, label %534, label %562

534:                                              ; preds = %531
  %535 = load i32*, i32** %14, align 8
  %536 = load i32, i32* %12, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %535, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = and i32 %539, 15
  %541 = load i32*, i32** %14, align 8
  %542 = load i32, i32* %12, align 4
  %543 = mul nsw i32 2, %542
  %544 = add nsw i32 %543, 1
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %541, i64 %545
  store i32 %540, i32* %546, align 4
  %547 = load i32*, i32** %14, align 8
  %548 = load i32, i32* %12, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32, i32* %547, i64 %549
  %551 = load i32, i32* %550, align 4
  %552 = ashr i32 %551, 4
  %553 = load i32*, i32** %14, align 8
  %554 = load i32, i32* %12, align 4
  %555 = mul nsw i32 2, %554
  %556 = add nsw i32 %555, 0
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds i32, i32* %553, i64 %557
  store i32 %552, i32* %558, align 4
  br label %559

559:                                              ; preds = %534
  %560 = load i32, i32* %12, align 4
  %561 = add nsw i32 %560, -1
  store i32 %561, i32* %12, align 4
  br label %531

562:                                              ; preds = %531
  br label %620

563:                                              ; preds = %499
  %564 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %565 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %564, i32 0, i32 3
  %566 = load i32, i32* %565, align 4
  %567 = and i32 %566, 1
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %583

569:                                              ; preds = %563
  %570 = load i32*, i32** %14, align 8
  %571 = load i32, i32* %12, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds i32, i32* %570, i64 %572
  %574 = load i32, i32* %573, align 4
  %575 = ashr i32 %574, 4
  %576 = mul nsw i32 %575, 17
  %577 = load i32*, i32** %14, align 8
  %578 = load i32, i32* %12, align 4
  %579 = mul nsw i32 2, %578
  %580 = add nsw i32 %579, 0
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i32, i32* %577, i64 %581
  store i32 %576, i32* %582, align 4
  br label %583

583:                                              ; preds = %569, %563
  %584 = load i32, i32* %12, align 4
  %585 = add nsw i32 %584, -1
  store i32 %585, i32* %12, align 4
  br label %586

586:                                              ; preds = %616, %583
  %587 = load i32, i32* %12, align 4
  %588 = icmp sge i32 %587, 0
  br i1 %588, label %589, label %619

589:                                              ; preds = %586
  %590 = load i32*, i32** %14, align 8
  %591 = load i32, i32* %12, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i32, i32* %590, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = and i32 %594, 15
  %596 = mul nsw i32 %595, 17
  %597 = load i32*, i32** %14, align 8
  %598 = load i32, i32* %12, align 4
  %599 = mul nsw i32 2, %598
  %600 = add nsw i32 %599, 1
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32, i32* %597, i64 %601
  store i32 %596, i32* %602, align 4
  %603 = load i32*, i32** %14, align 8
  %604 = load i32, i32* %12, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %603, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = ashr i32 %607, 4
  %609 = mul nsw i32 %608, 17
  %610 = load i32*, i32** %14, align 8
  %611 = load i32, i32* %12, align 4
  %612 = mul nsw i32 2, %611
  %613 = add nsw i32 %612, 0
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32* %610, i64 %614
  store i32 %609, i32* %615, align 4
  br label %616

616:                                              ; preds = %589
  %617 = load i32, i32* %12, align 4
  %618 = add nsw i32 %617, -1
  store i32 %618, i32* %12, align 4
  br label %586

619:                                              ; preds = %586
  br label %620

620:                                              ; preds = %619, %562
  %621 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %622 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %621, i32 0, i32 4
  %623 = load i32, i32* %622, align 8
  %624 = load i32*, i32** %14, align 8
  %625 = sext i32 %623 to i64
  %626 = getelementptr inbounds i32, i32* %624, i64 %625
  store i32* %626, i32** %14, align 8
  br label %627

627:                                              ; preds = %620
  %628 = load i32, i32* %13, align 4
  %629 = add nsw i32 %628, 1
  store i32 %629, i32* %13, align 4
  br label %493

630:                                              ; preds = %493
  br label %631

631:                                              ; preds = %630, %482
  br label %632

632:                                              ; preds = %631, %481
  br label %633

633:                                              ; preds = %632, %196
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
