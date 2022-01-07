; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_perspective.c_resample_linear.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_perspective.c_resample_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32** }
%struct.TYPE_5__ = type { i32*, i32, i32*, i32, i32, i32, i32, i32 }

@SUB_PIXELS = common dso_local global i32 0, align 4
@SUB_PIXEL_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @resample_linear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resample_linear(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %9, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %10, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %11, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %13, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %16, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %17, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = sdiv i32 %65, %66
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  %71 = mul nsw i32 %68, %70
  %72 = load i32, i32* %8, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %20, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* %23, align 4
  br label %80

80:                                               ; preds = %325, %4
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* %20, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %328

84:                                               ; preds = %80
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %18, align 4
  %87 = shl i32 %85, %86
  store i32 %87, i32* %24, align 4
  store i32 0, i32* %22, align 4
  br label %88

88:                                               ; preds = %321, %84
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %324

92:                                               ; preds = %88
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %17, align 4
  %95 = shl i32 %93, %94
  store i32 %95, i32* %30, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %30, align 4
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %21, align 4
  %102 = mul nsw i32 %100, %101
  %103 = add nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %98, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %17, align 4
  %110 = ashr i32 %108, %109
  store i32 %110, i32* %25, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %30, align 4
  %115 = load i32, i32* %24, align 4
  %116 = load i32, i32* %21, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %113, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %18, align 4
  %125 = ashr i32 %123, %124
  store i32 %125, i32* %26, align 4
  %126 = load i32, i32* %25, align 4
  %127 = load i32, i32* @SUB_PIXELS, align 4
  %128 = sub nsw i32 %127, 1
  %129 = and i32 %126, %128
  store i32 %129, i32* %27, align 4
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* @SUB_PIXELS, align 4
  %132 = sub nsw i32 %131, 1
  %133 = and i32 %130, %132
  store i32 %133, i32* %28, align 4
  %134 = load i32, i32* @SUB_PIXEL_BITS, align 4
  %135 = load i32, i32* %25, align 4
  %136 = ashr i32 %135, %134
  store i32 %136, i32* %25, align 4
  %137 = load i32, i32* @SUB_PIXEL_BITS, align 4
  %138 = load i32, i32* %26, align 4
  %139 = ashr i32 %138, %137
  store i32 %139, i32* %26, align 4
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %140, %143
  store i32 %144, i32* %31, align 4
  %145 = load i32, i32* @SUB_PIXELS, align 4
  %146 = load i32, i32* %27, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %32, align 4
  %148 = load i32, i32* @SUB_PIXELS, align 4
  %149 = load i32, i32* %28, align 4
  %150 = sub nsw i32 %148, %149
  store i32 %150, i32* %33, align 4
  %151 = load i32, i32* %25, align 4
  %152 = load i32, i32* %15, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp ult i32 %151, %153
  br i1 %154, label %155, label %248

155:                                              ; preds = %92
  %156 = load i32, i32* %26, align 4
  %157 = load i32, i32* %16, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp ult i32 %156, %158
  br i1 %159, label %160, label %211

160:                                              ; preds = %155
  %161 = load i32, i32* %33, align 4
  %162 = load i32, i32* %32, align 4
  %163 = load i32*, i32** %13, align 8
  %164 = load i32, i32* %31, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %162, %167
  %169 = load i32, i32* %27, align 4
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* %31, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %169, %175
  %177 = add nsw i32 %168, %176
  %178 = mul nsw i32 %161, %177
  %179 = load i32, i32* %28, align 4
  %180 = load i32, i32* %32, align 4
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %31, align 4
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %180, %187
  %189 = load i32, i32* %27, align 4
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* %31, align 4
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %191, %192
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %190, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %189, %197
  %199 = add nsw i32 %188, %198
  %200 = mul nsw i32 %179, %199
  %201 = add nsw i32 %178, %200
  store i32 %201, i32* %29, align 4
  %202 = load i32, i32* %29, align 4
  %203 = load i32, i32* @SUB_PIXEL_BITS, align 4
  %204 = mul nsw i32 %203, 2
  %205 = sub nsw i32 %204, 1
  %206 = shl i32 1, %205
  %207 = add nsw i32 %202, %206
  %208 = load i32, i32* @SUB_PIXEL_BITS, align 4
  %209 = mul nsw i32 %208, 2
  %210 = ashr i32 %207, %209
  store i32 %210, i32* %29, align 4
  br label %247

211:                                              ; preds = %155
  %212 = load i32, i32* %26, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 0, i32* %26, align 4
  br label %218

215:                                              ; preds = %211
  %216 = load i32, i32* %16, align 4
  %217 = sub nsw i32 %216, 1
  store i32 %217, i32* %26, align 4
  br label %218

218:                                              ; preds = %215, %214
  %219 = load i32, i32* %25, align 4
  %220 = load i32, i32* %26, align 4
  %221 = load i32, i32* %14, align 4
  %222 = mul nsw i32 %220, %221
  %223 = add nsw i32 %219, %222
  store i32 %223, i32* %31, align 4
  %224 = load i32, i32* %32, align 4
  %225 = load i32*, i32** %13, align 8
  %226 = load i32, i32* %31, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = mul nsw i32 %224, %229
  %231 = load i32, i32* %27, align 4
  %232 = load i32*, i32** %13, align 8
  %233 = load i32, i32* %31, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = mul nsw i32 %231, %237
  %239 = add nsw i32 %230, %238
  store i32 %239, i32* %29, align 4
  %240 = load i32, i32* %29, align 4
  %241 = load i32, i32* @SUB_PIXEL_BITS, align 4
  %242 = sub nsw i32 %241, 1
  %243 = shl i32 1, %242
  %244 = add nsw i32 %240, %243
  %245 = load i32, i32* @SUB_PIXEL_BITS, align 4
  %246 = ashr i32 %244, %245
  store i32 %246, i32* %29, align 4
  br label %247

247:                                              ; preds = %218, %160
  br label %309

248:                                              ; preds = %92
  %249 = load i32, i32* %25, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  store i32 0, i32* %25, align 4
  br label %255

252:                                              ; preds = %248
  %253 = load i32, i32* %15, align 4
  %254 = sub nsw i32 %253, 1
  store i32 %254, i32* %25, align 4
  br label %255

255:                                              ; preds = %252, %251
  %256 = load i32, i32* %26, align 4
  %257 = load i32, i32* %16, align 4
  %258 = sub nsw i32 %257, 1
  %259 = icmp ult i32 %256, %258
  br i1 %259, label %260, label %290

260:                                              ; preds = %255
  %261 = load i32, i32* %25, align 4
  %262 = load i32, i32* %26, align 4
  %263 = load i32, i32* %14, align 4
  %264 = mul nsw i32 %262, %263
  %265 = add nsw i32 %261, %264
  store i32 %265, i32* %31, align 4
  %266 = load i32, i32* %33, align 4
  %267 = load i32*, i32** %13, align 8
  %268 = load i32, i32* %31, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = mul nsw i32 %266, %271
  %273 = load i32, i32* %28, align 4
  %274 = load i32*, i32** %13, align 8
  %275 = load i32, i32* %31, align 4
  %276 = load i32, i32* %14, align 4
  %277 = add nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %274, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = mul nsw i32 %273, %280
  %282 = add nsw i32 %272, %281
  store i32 %282, i32* %29, align 4
  %283 = load i32, i32* %29, align 4
  %284 = load i32, i32* @SUB_PIXEL_BITS, align 4
  %285 = sub nsw i32 %284, 1
  %286 = shl i32 1, %285
  %287 = add nsw i32 %283, %286
  %288 = load i32, i32* @SUB_PIXEL_BITS, align 4
  %289 = ashr i32 %287, %288
  store i32 %289, i32* %29, align 4
  br label %308

290:                                              ; preds = %255
  %291 = load i32, i32* %26, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  store i32 0, i32* %26, align 4
  br label %297

294:                                              ; preds = %290
  %295 = load i32, i32* %16, align 4
  %296 = sub nsw i32 %295, 1
  store i32 %296, i32* %26, align 4
  br label %297

297:                                              ; preds = %294, %293
  %298 = load i32, i32* %25, align 4
  %299 = load i32, i32* %26, align 4
  %300 = load i32, i32* %14, align 4
  %301 = mul nsw i32 %299, %300
  %302 = add nsw i32 %298, %301
  store i32 %302, i32* %31, align 4
  %303 = load i32*, i32** %13, align 8
  %304 = load i32, i32* %31, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %29, align 4
  br label %308

308:                                              ; preds = %297, %260
  br label %309

309:                                              ; preds = %308, %247
  %310 = load i32, i32* %29, align 4
  %311 = call i32 @av_clip_uint8(i32 %310)
  store i32 %311, i32* %29, align 4
  %312 = load i32, i32* %29, align 4
  %313 = load i32*, i32** %11, align 8
  %314 = load i32, i32* %22, align 4
  %315 = load i32, i32* %23, align 4
  %316 = load i32, i32* %12, align 4
  %317 = mul nsw i32 %315, %316
  %318 = add nsw i32 %314, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %313, i64 %319
  store i32 %312, i32* %320, align 4
  br label %321

321:                                              ; preds = %309
  %322 = load i32, i32* %22, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %22, align 4
  br label %88

324:                                              ; preds = %88
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %23, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %23, align 4
  br label %80

328:                                              ; preds = %80
  ret i32 0
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
