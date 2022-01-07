; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_dwt_encode97_int.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dwt.c_dwt_encode97_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32, i32*, i32** }

@I_PRESHIFT = common dso_local global i32 0, align 4
@I_LFTG_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @dwt_encode97_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwt_encode97_int(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %22, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %34, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  store i32* %48, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %64, %2
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i32, i32* @I_PRESHIFT, align 4
  %57 = shl i32 1, %56
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, %57
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %49

67:                                               ; preds = %49
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %304, %67
  %73 = load i32, i32* %5, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %307

75:                                               ; preds = %72
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i32**, i32*** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %12, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %13, align 4
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32* %115, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %116

116:                                              ; preds = %204, %75
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %207

120:                                              ; preds = %116
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %16, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %15, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %134, i32* %138, align 4
  br label %139

139:                                              ; preds = %125
  %140 = load i32, i32* %16, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %16, align 4
  br label %121

142:                                              ; preds = %121
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %145, %146
  %148 = call i32 @sd_1d97_int(i32* %143, i32 %144, i32 %147)
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %172, %142
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %177

154:                                              ; preds = %150
  %155 = load i32*, i32** %15, align 8
  %156 = load i32, i32* %16, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @I_LFTG_X, align 4
  %161 = mul nsw i32 %159, %160
  %162 = add nsw i32 %161, 32768
  %163 = ashr i32 %162, 16
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %17, align 4
  %167 = mul nsw i32 %165, %166
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %164, i64 %170
  store i32 %163, i32* %171, align 4
  br label %172

172:                                              ; preds = %154
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, 2
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %17, align 4
  br label %150

177:                                              ; preds = %150
  %178 = load i32, i32* %13, align 4
  %179 = sub nsw i32 1, %178
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %198, %177
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %180
  %185 = load i32*, i32** %15, align 8
  %186 = load i32, i32* %16, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32*, i32** %4, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %17, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %190, i64 %196
  store i32 %189, i32* %197, align 4
  br label %198

198:                                              ; preds = %184
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, 2
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %17, align 4
  br label %180

203:                                              ; preds = %180
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %116

207:                                              ; preds = %116
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32* %211, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %212

212:                                              ; preds = %300, %207
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %11, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %303

216:                                              ; preds = %212
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %217

217:                                              ; preds = %235, %216
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %238

221:                                              ; preds = %217
  %222 = load i32*, i32** %4, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %14, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %18, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %222, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %15, align 8
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %230, i32* %234, align 4
  br label %235

235:                                              ; preds = %221
  %236 = load i32, i32* %18, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %18, align 4
  br label %217

238:                                              ; preds = %217
  %239 = load i32*, i32** %9, align 8
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %12, align 4
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %241, %242
  %244 = call i32 @sd_1d97_int(i32* %239, i32 %240, i32 %243)
  %245 = load i32, i32* %12, align 4
  store i32 %245, i32* %18, align 4
  br label %246

246:                                              ; preds = %268, %238
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %273

250:                                              ; preds = %246
  %251 = load i32*, i32** %15, align 8
  %252 = load i32, i32* %18, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @I_LFTG_X, align 4
  %257 = mul nsw i32 %255, %256
  %258 = add nsw i32 %257, 32768
  %259 = ashr i32 %258, 16
  %260 = load i32*, i32** %4, align 8
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* %14, align 4
  %263 = mul nsw i32 %261, %262
  %264 = load i32, i32* %19, align 4
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %260, i64 %266
  store i32 %259, i32* %267, align 4
  br label %268

268:                                              ; preds = %250
  %269 = load i32, i32* %18, align 4
  %270 = add nsw i32 %269, 2
  store i32 %270, i32* %18, align 4
  %271 = load i32, i32* %19, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %19, align 4
  br label %246

273:                                              ; preds = %246
  %274 = load i32, i32* %12, align 4
  %275 = sub nsw i32 1, %274
  store i32 %275, i32* %18, align 4
  br label %276

276:                                              ; preds = %294, %273
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %299

280:                                              ; preds = %276
  %281 = load i32*, i32** %15, align 8
  %282 = load i32, i32* %18, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %4, align 8
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* %14, align 4
  %289 = mul nsw i32 %287, %288
  %290 = load i32, i32* %19, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %286, i64 %292
  store i32 %285, i32* %293, align 4
  br label %294

294:                                              ; preds = %280
  %295 = load i32, i32* %18, align 4
  %296 = add nsw i32 %295, 2
  store i32 %296, i32* %18, align 4
  %297 = load i32, i32* %19, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %19, align 4
  br label %276

299:                                              ; preds = %276
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %14, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %14, align 4
  br label %212

303:                                              ; preds = %212
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %5, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %5, align 4
  br label %72

307:                                              ; preds = %72
  store i32 0, i32* %8, align 4
  br label %308

308:                                              ; preds = %330, %307
  %309 = load i32, i32* %8, align 4
  %310 = load i32, i32* %6, align 4
  %311 = load i32, i32* %7, align 4
  %312 = mul nsw i32 %310, %311
  %313 = icmp slt i32 %309, %312
  br i1 %313, label %314, label %333

314:                                              ; preds = %308
  %315 = load i32*, i32** %4, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @I_PRESHIFT, align 4
  %321 = shl i32 1, %320
  %322 = ashr i32 %321, 1
  %323 = add nsw i32 %319, %322
  %324 = load i32, i32* @I_PRESHIFT, align 4
  %325 = ashr i32 %323, %324
  %326 = load i32*, i32** %4, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 %325, i32* %329, align 4
  br label %330

330:                                              ; preds = %314
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %8, align 4
  br label %308

333:                                              ; preds = %308
  ret void
}

declare dso_local i32 @sd_1d97_int(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
