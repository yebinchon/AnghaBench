; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_displace.c_displace_planar.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_displace.c_displace_planar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32*, i32, i32* }
%struct.TYPE_9__ = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*)* @displace_planar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @displace_planar(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3, %struct.TYPE_9__* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
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
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %381, %5
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %384

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %16, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %17, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %18, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %19, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %20, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %21, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %22, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %23, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %24, align 4
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %377, %39
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %380

121:                                              ; preds = %117
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %364 [
    i32 131, label %125
    i32 129, label %185
    i32 128, label %230
    i32 130, label %287
  ]

125:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %181, %125
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %184

130:                                              ; preds = %126
  %131 = load i32, i32* %13, align 4
  %132 = load i32*, i32** %21, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %131, %136
  %138 = sub nsw i32 %137, 128
  store i32 %138, i32* %25, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32*, i32** %22, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %139, %144
  %146 = sub nsw i32 %145, 128
  store i32 %146, i32* %26, align 4
  %147 = load i32, i32* %25, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %130
  %150 = load i32, i32* %25, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %160, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %26, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %26, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp sge i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156, %153, %149, %130
  %161 = load i32, i32* %24, align 4
  %162 = load i32*, i32** %23, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %161, i32* %165, align 4
  br label %180

166:                                              ; preds = %156
  %167 = load i32*, i32** %20, align 8
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* %17, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32, i32* %26, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %167, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %23, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  br label %180

180:                                              ; preds = %166, %160
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %126

184:                                              ; preds = %126
  br label %364

185:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  br label %186

186:                                              ; preds = %226, %185
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %15, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %229

190:                                              ; preds = %186
  %191 = load i32, i32* %13, align 4
  %192 = load i32*, i32** %21, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %191, %196
  %198 = sub nsw i32 %197, 128
  %199 = load i32, i32* %14, align 4
  %200 = sub nsw i32 %199, 1
  %201 = call i32 @av_clip(i32 %198, i32 0, i32 %200)
  store i32 %201, i32* %27, align 4
  %202 = load i32, i32* %12, align 4
  %203 = load i32*, i32** %22, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %202, %207
  %209 = sub nsw i32 %208, 128
  %210 = load i32, i32* %15, align 4
  %211 = sub nsw i32 %210, 1
  %212 = call i32 @av_clip(i32 %209, i32 0, i32 %211)
  store i32 %212, i32* %28, align 4
  %213 = load i32*, i32** %20, align 8
  %214 = load i32, i32* %27, align 4
  %215 = load i32, i32* %17, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %28, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %213, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %23, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  store i32 %221, i32* %225, align 4
  br label %226

226:                                              ; preds = %190
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %186

229:                                              ; preds = %186
  br label %364

230:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  br label %231

231:                                              ; preds = %283, %230
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %15, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %286

235:                                              ; preds = %231
  %236 = load i32, i32* %13, align 4
  %237 = load i32*, i32** %21, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %236, %241
  %243 = sub nsw i32 %242, 128
  %244 = load i32, i32* %14, align 4
  %245 = srem i32 %243, %244
  store i32 %245, i32* %29, align 4
  %246 = load i32, i32* %12, align 4
  %247 = load i32*, i32** %22, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %246, %251
  %253 = sub nsw i32 %252, 128
  %254 = load i32, i32* %15, align 4
  %255 = srem i32 %253, %254
  store i32 %255, i32* %30, align 4
  %256 = load i32, i32* %29, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %235
  %259 = load i32, i32* %14, align 4
  %260 = load i32, i32* %29, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %29, align 4
  br label %262

262:                                              ; preds = %258, %235
  %263 = load i32, i32* %30, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* %30, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %30, align 4
  br label %269

269:                                              ; preds = %265, %262
  %270 = load i32*, i32** %20, align 8
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %17, align 4
  %273 = mul nsw i32 %271, %272
  %274 = load i32, i32* %30, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %270, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %23, align 8
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %278, i32* %282, align 4
  br label %283

283:                                              ; preds = %269
  %284 = load i32, i32* %12, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %12, align 4
  br label %231

286:                                              ; preds = %231
  br label %364

287:                                              ; preds = %121
  store i32 0, i32* %12, align 4
  br label %288

288:                                              ; preds = %360, %287
  %289 = load i32, i32* %12, align 4
  %290 = load i32, i32* %15, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %363

292:                                              ; preds = %288
  %293 = load i32, i32* %13, align 4
  %294 = load i32*, i32** %21, align 8
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %293, %298
  %300 = sub nsw i32 %299, 128
  store i32 %300, i32* %31, align 4
  %301 = load i32, i32* %12, align 4
  %302 = load i32*, i32** %22, align 8
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %301, %306
  %308 = sub nsw i32 %307, 128
  store i32 %308, i32* %32, align 4
  %309 = load i32, i32* %31, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %292
  %312 = load i32, i32* %31, align 4
  %313 = sub nsw i32 0, %312
  %314 = load i32, i32* %14, align 4
  %315 = srem i32 %313, %314
  store i32 %315, i32* %31, align 4
  br label %316

316:                                              ; preds = %311, %292
  %317 = load i32, i32* %32, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load i32, i32* %32, align 4
  %321 = sub nsw i32 0, %320
  %322 = load i32, i32* %15, align 4
  %323 = srem i32 %321, %322
  store i32 %323, i32* %32, align 4
  br label %324

324:                                              ; preds = %319, %316
  %325 = load i32, i32* %31, align 4
  %326 = load i32, i32* %14, align 4
  %327 = icmp sge i32 %325, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %324
  %329 = load i32, i32* %14, align 4
  %330 = load i32, i32* %31, align 4
  %331 = load i32, i32* %14, align 4
  %332 = srem i32 %330, %331
  %333 = sub nsw i32 %329, %332
  %334 = sub nsw i32 %333, 1
  store i32 %334, i32* %31, align 4
  br label %335

335:                                              ; preds = %328, %324
  %336 = load i32, i32* %32, align 4
  %337 = load i32, i32* %15, align 4
  %338 = icmp sge i32 %336, %337
  br i1 %338, label %339, label %346

339:                                              ; preds = %335
  %340 = load i32, i32* %15, align 4
  %341 = load i32, i32* %32, align 4
  %342 = load i32, i32* %15, align 4
  %343 = srem i32 %341, %342
  %344 = sub nsw i32 %340, %343
  %345 = sub nsw i32 %344, 1
  store i32 %345, i32* %32, align 4
  br label %346

346:                                              ; preds = %339, %335
  %347 = load i32*, i32** %20, align 8
  %348 = load i32, i32* %31, align 4
  %349 = load i32, i32* %17, align 4
  %350 = mul nsw i32 %348, %349
  %351 = load i32, i32* %32, align 4
  %352 = add nsw i32 %350, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %347, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %23, align 8
  %357 = load i32, i32* %12, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  store i32 %355, i32* %359, align 4
  br label %360

360:                                              ; preds = %346
  %361 = load i32, i32* %12, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %12, align 4
  br label %288

363:                                              ; preds = %288
  br label %364

364:                                              ; preds = %121, %363, %286, %229, %184
  %365 = load i32, i32* %19, align 4
  %366 = load i32*, i32** %21, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i32, i32* %366, i64 %367
  store i32* %368, i32** %21, align 8
  %369 = load i32, i32* %18, align 4
  %370 = load i32*, i32** %22, align 8
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i32, i32* %370, i64 %371
  store i32* %372, i32** %22, align 8
  %373 = load i32, i32* %16, align 4
  %374 = load i32*, i32** %23, align 8
  %375 = sext i32 %373 to i64
  %376 = getelementptr inbounds i32, i32* %374, i64 %375
  store i32* %376, i32** %23, align 8
  br label %377

377:                                              ; preds = %364
  %378 = load i32, i32* %13, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %13, align 4
  br label %117

380:                                              ; preds = %117
  br label %381

381:                                              ; preds = %380
  %382 = load i32, i32* %11, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %11, align 4
  br label %33

384:                                              ; preds = %33
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
