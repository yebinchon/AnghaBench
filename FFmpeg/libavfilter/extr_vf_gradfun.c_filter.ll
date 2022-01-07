; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gradfun.c_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_gradfun.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 (i32*, i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)* }

@dither = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32*, i32, i32, i32, i32, i32)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @FFALIGN(i32 %28, i32 16)
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sdiv i32 2097152, %33
  store i32 %34, i32* %19, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 16
  store i32* %38, i32** %20, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 32
  store i32* %45, i32** %21, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %22, align 4
  %49 = load i32*, i32** %20, align 8
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %50, 16
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memset(i32* %49, i32 0, i32 %54)
  store i32 0, i32* %18, align 4
  br label %56

56:                                               ; preds = %89, %8
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %56
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32 (i32*, i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)** %62, align 8
  %64 = load i32*, i32** %20, align 8
  %65 = load i32*, i32** %21, align 8
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %17, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32*, i32** %21, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* %17, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %18, align 4
  %80 = mul nsw i32 2, %79
  %81 = load i32, i32* %15, align 4
  %82 = mul nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sdiv i32 %86, 2
  %88 = call i32 %63(i32* %64, i32* %70, i32* %77, i32* %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %60
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %18, align 4
  br label %56

92:                                               ; preds = %56
  br label %93

93:                                               ; preds = %353, %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %16, align 4
  %97 = sub nsw i32 %95, %96
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %237

99:                                               ; preds = %93
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %100, %101
  %103 = sdiv i32 %102, 2
  %104 = load i32, i32* %16, align 4
  %105 = srem i32 %103, %104
  store i32 %105, i32* %23, align 4
  %106 = load i32*, i32** %21, align 8
  %107 = load i32, i32* %23, align 4
  %108 = load i32, i32* %17, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32* %111, i32** %24, align 8
  %112 = load i32*, i32** %21, align 8
  %113 = load i32, i32* %23, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %99
  %116 = load i32, i32* %23, align 4
  %117 = sub nsw i32 %116, 1
  br label %121

118:                                              ; preds = %99
  %119 = load i32, i32* %16, align 4
  %120 = sub nsw i32 %119, 1
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i32 [ %117, %115 ], [ %120, %118 ]
  %123 = load i32, i32* %17, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %112, i64 %125
  store i32* %126, i32** %25, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 3
  %129 = load i32 (i32*, i32*, i32*, i32*, i32, i32)*, i32 (i32*, i32*, i32*, i32*, i32, i32)** %128, align 8
  %130 = load i32*, i32** %20, align 8
  %131 = load i32*, i32** %24, align 8
  %132 = load i32*, i32** %25, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %15, align 4
  %138 = mul nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %133, i64 %139
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sdiv i32 %142, 2
  %144 = call i32 %129(i32* %130, i32* %131, i32* %132, i32* %140, i32 %141, i32 %143)
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %145

145:                                              ; preds = %157, %121
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %145
  %150 = load i32*, i32** %20, align 8
  %151 = load i32, i32* %26, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %27, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %27, align 4
  br label %157

157:                                              ; preds = %149
  %158 = load i32, i32* %26, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %26, align 4
  br label %145

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %192, %160
  %162 = load i32, i32* %26, align 4
  %163 = load i32, i32* %12, align 4
  %164 = sdiv i32 %163, 2
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %195

166:                                              ; preds = %161
  %167 = load i32*, i32** %20, align 8
  %168 = load i32, i32* %26, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %20, align 8
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* %16, align 4
  %175 = sub nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %172, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %171, %178
  %180 = load i32, i32* %27, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %27, align 4
  %182 = load i32, i32* %27, align 4
  %183 = load i32, i32* %19, align 4
  %184 = mul nsw i32 %182, %183
  %185 = ashr i32 %184, 16
  %186 = load i32*, i32** %20, align 8
  %187 = load i32, i32* %26, align 4
  %188 = load i32, i32* %16, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  store i32 %185, i32* %191, align 4
  br label %192

192:                                              ; preds = %166
  %193 = load i32, i32* %26, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %26, align 4
  br label %161

195:                                              ; preds = %161
  br label %196

196:                                              ; preds = %215, %195
  %197 = load i32, i32* %26, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %198, %199
  %201 = add nsw i32 %200, 1
  %202 = sdiv i32 %201, 2
  %203 = icmp slt i32 %197, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %196
  %205 = load i32, i32* %27, align 4
  %206 = load i32, i32* %19, align 4
  %207 = mul nsw i32 %205, %206
  %208 = ashr i32 %207, 16
  %209 = load i32*, i32** %20, align 8
  %210 = load i32, i32* %26, align 4
  %211 = load i32, i32* %16, align 4
  %212 = sub nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  store i32 %208, i32* %214, align 4
  br label %215

215:                                              ; preds = %204
  %216 = load i32, i32* %26, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %26, align 4
  br label %196

218:                                              ; preds = %196
  %219 = load i32, i32* %16, align 4
  %220 = sub nsw i32 0, %219
  %221 = sdiv i32 %220, 2
  store i32 %221, i32* %26, align 4
  br label %222

222:                                              ; preds = %233, %218
  %223 = load i32, i32* %26, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = load i32*, i32** %20, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %20, align 8
  %230 = load i32, i32* %26, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %228, i32* %232, align 4
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %26, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %26, align 4
  br label %222

236:                                              ; preds = %222
  br label %237

237:                                              ; preds = %236, %93
  %238 = load i32, i32* %18, align 4
  %239 = load i32, i32* %16, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %281

241:                                              ; preds = %237
  store i32 0, i32* %18, align 4
  br label %242

242:                                              ; preds = %277, %241
  %243 = load i32, i32* %18, align 4
  %244 = load i32, i32* %16, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %280

246:                                              ; preds = %242
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 2
  %249 = load i32 (i32*, i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32)** %248, align 8
  %250 = load i32*, i32** %10, align 8
  %251 = load i32, i32* %18, align 4
  %252 = load i32, i32* %14, align 4
  %253 = mul nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %250, i64 %254
  %256 = load i32*, i32** %11, align 8
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %15, align 4
  %259 = mul nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %256, i64 %260
  %262 = load i32*, i32** %20, align 8
  %263 = load i32, i32* %16, align 4
  %264 = sdiv i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = sub i64 0, %265
  %267 = getelementptr inbounds i32, i32* %262, i64 %266
  %268 = load i32, i32* %12, align 4
  %269 = load i32, i32* %22, align 4
  %270 = load i32*, i32** @dither, align 8
  %271 = load i32, i32* %18, align 4
  %272 = and i32 %271, 7
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = call i32 %249(i32* %255, i32* %261, i32* %267, i32 %268, i32 %269, i32 %275)
  br label %277

277:                                              ; preds = %246
  %278 = load i32, i32* %18, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %18, align 4
  br label %242

280:                                              ; preds = %242
  br label %281

281:                                              ; preds = %280, %237
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 2
  %284 = load i32 (i32*, i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32)** %283, align 8
  %285 = load i32*, i32** %10, align 8
  %286 = load i32, i32* %18, align 4
  %287 = load i32, i32* %14, align 4
  %288 = mul nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %285, i64 %289
  %291 = load i32*, i32** %11, align 8
  %292 = load i32, i32* %18, align 4
  %293 = load i32, i32* %15, align 4
  %294 = mul nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %291, i64 %295
  %297 = load i32*, i32** %20, align 8
  %298 = load i32, i32* %16, align 4
  %299 = sdiv i32 %298, 2
  %300 = sext i32 %299 to i64
  %301 = sub i64 0, %300
  %302 = getelementptr inbounds i32, i32* %297, i64 %301
  %303 = load i32, i32* %12, align 4
  %304 = load i32, i32* %22, align 4
  %305 = load i32*, i32** @dither, align 8
  %306 = load i32, i32* %18, align 4
  %307 = and i32 %306, 7
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = call i32 %284(i32* %290, i32* %296, i32* %302, i32 %303, i32 %304, i32 %310)
  %312 = load i32, i32* %18, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %18, align 4
  %314 = load i32, i32* %13, align 4
  %315 = icmp sge i32 %313, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %281
  br label %354

317:                                              ; preds = %281
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 2
  %320 = load i32 (i32*, i32*, i32*, i32, i32, i32)*, i32 (i32*, i32*, i32*, i32, i32, i32)** %319, align 8
  %321 = load i32*, i32** %10, align 8
  %322 = load i32, i32* %18, align 4
  %323 = load i32, i32* %14, align 4
  %324 = mul nsw i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %321, i64 %325
  %327 = load i32*, i32** %11, align 8
  %328 = load i32, i32* %18, align 4
  %329 = load i32, i32* %15, align 4
  %330 = mul nsw i32 %328, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %327, i64 %331
  %333 = load i32*, i32** %20, align 8
  %334 = load i32, i32* %16, align 4
  %335 = sdiv i32 %334, 2
  %336 = sext i32 %335 to i64
  %337 = sub i64 0, %336
  %338 = getelementptr inbounds i32, i32* %333, i64 %337
  %339 = load i32, i32* %12, align 4
  %340 = load i32, i32* %22, align 4
  %341 = load i32*, i32** @dither, align 8
  %342 = load i32, i32* %18, align 4
  %343 = and i32 %342, 7
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = call i32 %320(i32* %326, i32* %332, i32* %338, i32 %339, i32 %340, i32 %346)
  %348 = load i32, i32* %18, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %18, align 4
  %350 = load i32, i32* %13, align 4
  %351 = icmp sge i32 %349, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %317
  br label %354

353:                                              ; preds = %317
  br label %93

354:                                              ; preds = %352, %316
  %355 = call i32 (...) @emms_c()
  ret void
}

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @emms_c(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
