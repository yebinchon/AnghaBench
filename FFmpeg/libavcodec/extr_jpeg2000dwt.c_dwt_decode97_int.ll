; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_dwt_decode97_int.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_dwt_decode97_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32, i64*, i32** }

@I_PRESHIFT = common dso_local global i64 0, align 8
@I_LFTG_K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i64*)* @dwt_decode97_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwt_decode97_int(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64* %1, i64** %4, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %23, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %35, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  store i64* %47, i64** %9, align 8
  %48 = load i64*, i64** %4, align 8
  store i64* %48, i64** %10, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 5
  store i64* %50, i64** %9, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %66, %2
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %53, %54
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load i64, i64* @I_PRESHIFT, align 8
  %59 = shl i64 1, %58
  %60 = load i64*, i64** %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = mul nsw i64 %64, %59
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %51

69:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %305, %69
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %308

76:                                               ; preds = %70
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %11, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %12, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %13, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %14, align 4
  %113 = load i64*, i64** %9, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64* %116, i64** %16, align 8
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %205, %76
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %208

121:                                              ; preds = %117
  store i32 0, i32* %18, align 4
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %145, %121
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = load i64*, i64** %10, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %15, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %128, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @I_LFTG_K, align 8
  %138 = mul nsw i64 %136, %137
  %139 = add nsw i64 %138, 32768
  %140 = ashr i64 %139, 16
  %141 = load i64*, i64** %16, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 %140, i64* %144, align 8
  br label %145

145:                                              ; preds = %127
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 2
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %18, align 4
  br label %123

150:                                              ; preds = %123
  %151 = load i32, i32* %13, align 4
  %152 = sub nsw i32 1, %151
  store i32 %152, i32* %17, align 4
  br label %153

153:                                              ; preds = %171, %150
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %153
  %158 = load i64*, i64** %10, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %15, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %158, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %16, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  store i64 %166, i64* %170, align 8
  br label %171

171:                                              ; preds = %157
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %153

176:                                              ; preds = %153
  %177 = load i64*, i64** %9, align 8
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %179, %180
  %182 = call i32 @sr_1d97_int(i64* %177, i32 %178, i32 %181)
  store i32 0, i32* %17, align 4
  br label %183

183:                                              ; preds = %201, %176
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %204

187:                                              ; preds = %183
  %188 = load i64*, i64** %16, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %10, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %15, align 4
  %196 = mul nsw i32 %194, %195
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %193, i64 %199
  store i64 %192, i64* %200, align 8
  br label %201

201:                                              ; preds = %187
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %17, align 4
  br label %183

204:                                              ; preds = %183
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %117

208:                                              ; preds = %117
  %209 = load i64*, i64** %9, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  store i64* %212, i64** %16, align 8
  store i32 0, i32* %15, align 4
  br label %213

213:                                              ; preds = %301, %208
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %304

217:                                              ; preds = %213
  store i32 0, i32* %20, align 4
  %218 = load i32, i32* %14, align 4
  store i32 %218, i32* %19, align 4
  br label %219

219:                                              ; preds = %241, %217
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %246

223:                                              ; preds = %219
  %224 = load i64*, i64** %10, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* %20, align 4
  %227 = mul nsw i32 %225, %226
  %228 = load i32, i32* %15, align 4
  %229 = add nsw i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %224, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @I_LFTG_K, align 8
  %234 = mul nsw i64 %232, %233
  %235 = add nsw i64 %234, 32768
  %236 = ashr i64 %235, 16
  %237 = load i64*, i64** %16, align 8
  %238 = load i32, i32* %19, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  store i64 %236, i64* %240, align 8
  br label %241

241:                                              ; preds = %223
  %242 = load i32, i32* %19, align 4
  %243 = add nsw i32 %242, 2
  store i32 %243, i32* %19, align 4
  %244 = load i32, i32* %20, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %20, align 4
  br label %219

246:                                              ; preds = %219
  %247 = load i32, i32* %14, align 4
  %248 = sub nsw i32 1, %247
  store i32 %248, i32* %19, align 4
  br label %249

249:                                              ; preds = %267, %246
  %250 = load i32, i32* %19, align 4
  %251 = load i32, i32* %12, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %272

253:                                              ; preds = %249
  %254 = load i64*, i64** %10, align 8
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %20, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load i32, i32* %15, align 4
  %259 = add nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %254, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = load i64*, i64** %16, align 8
  %264 = load i32, i32* %19, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  store i64 %262, i64* %266, align 8
  br label %267

267:                                              ; preds = %253
  %268 = load i32, i32* %19, align 4
  %269 = add nsw i32 %268, 2
  store i32 %269, i32* %19, align 4
  %270 = load i32, i32* %20, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %20, align 4
  br label %249

272:                                              ; preds = %249
  %273 = load i64*, i64** %9, align 8
  %274 = load i32, i32* %14, align 4
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %12, align 4
  %277 = add nsw i32 %275, %276
  %278 = call i32 @sr_1d97_int(i64* %273, i32 %274, i32 %277)
  store i32 0, i32* %19, align 4
  br label %279

279:                                              ; preds = %297, %272
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* %12, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %300

283:                                              ; preds = %279
  %284 = load i64*, i64** %16, align 8
  %285 = load i32, i32* %19, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %284, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = load i64*, i64** %10, align 8
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %19, align 4
  %292 = mul nsw i32 %290, %291
  %293 = load i32, i32* %15, align 4
  %294 = add nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %289, i64 %295
  store i64 %288, i64* %296, align 8
  br label %297

297:                                              ; preds = %283
  %298 = load i32, i32* %19, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %19, align 4
  br label %279

300:                                              ; preds = %279
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %15, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %15, align 4
  br label %213

304:                                              ; preds = %213
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %5, align 4
  br label %70

308:                                              ; preds = %70
  store i32 0, i32* %8, align 4
  br label %309

309:                                              ; preds = %331, %308
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* %6, align 4
  %312 = load i32, i32* %7, align 4
  %313 = mul nsw i32 %311, %312
  %314 = icmp slt i32 %310, %313
  br i1 %314, label %315, label %334

315:                                              ; preds = %309
  %316 = load i64*, i64** %10, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i64, i64* %316, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @I_PRESHIFT, align 8
  %322 = shl i64 1, %321
  %323 = ashr i64 %322, 1
  %324 = add nsw i64 %320, %323
  %325 = load i64, i64* @I_PRESHIFT, align 8
  %326 = ashr i64 %324, %325
  %327 = load i64*, i64** %10, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  store i64 %326, i64* %330, align 8
  br label %331

331:                                              ; preds = %315
  %332 = load i32, i32* %8, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %8, align 4
  br label %309

334:                                              ; preds = %309
  ret void
}

declare dso_local i32 @sr_1d97_int(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
