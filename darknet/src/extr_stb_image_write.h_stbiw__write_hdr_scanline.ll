; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__write_hdr_scanline.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__write_hdr_scanline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i32, i8*, i32)* }

@__const.stbiw__write_hdr_scanline.scanlineheader = private unnamed_addr constant [4 x i8] c"\02\02\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbiw__write_hdr_scanline(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca float*, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca [4 x i8], align 1
  %13 = alloca [3 x float], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store float* %4, float** %10, align 8
  %20 = bitcast [4 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.stbiw__write_hdr_scanline.scanlineheader, i32 0, i32 0), i64 4, i1 false)
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 65280
  %23 = ashr i32 %22, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  store i8 %24, i8* %25, align 1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %7, align 4
  %34 = icmp sge i32 %33, 32768
  br i1 %34, label %35, label %98

35:                                               ; preds = %32, %5
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %94, %35
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %97

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %70 [
    i32 4, label %42
    i32 3, label %42
  ]

42:                                               ; preds = %40, %40
  %43 = load float*, float** %10, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %43, i64 %48
  %50 = load float, float* %49, align 4
  %51 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  store float %50, float* %51, align 4
  %52 = load float*, float** %10, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %52, i64 %57
  %59 = load float, float* %58, align 4
  %60 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  store float %59, float* %60, align 4
  %61 = load float*, float** %10, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %61, i64 %66
  %68 = load float, float* %67, align 4
  %69 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  store float %68, float* %69, align 4
  br label %82

70:                                               ; preds = %40
  %71 = load float*, float** %10, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %74, 0
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %71, i64 %76
  %78 = load float, float* %77, align 4
  %79 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  store float %78, float* %79, align 4
  %80 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  store float %78, float* %80, align 4
  %81 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  store float %78, float* %81, align 4
  br label %82

82:                                               ; preds = %70, %42
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %84 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %85 = call i32 @stbiw__linear_to_rgbe(i8* %83, float* %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %87, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %93 = call i32 %88(i32 %91, i8* %92, i32 4)
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %36

97:                                               ; preds = %36
  br label %342

98:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %185, %98
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %188

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  switch i32 %104, label %133 [
    i32 4, label %105
    i32 3, label %105
  ]

105:                                              ; preds = %103, %103
  %106 = load float*, float** %10, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %106, i64 %111
  %113 = load float, float* %112, align 4
  %114 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  store float %113, float* %114, align 4
  %115 = load float*, float** %10, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 %116, %117
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %115, i64 %120
  %122 = load float, float* %121, align 4
  %123 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  store float %122, float* %123, align 4
  %124 = load float*, float** %10, align 8
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %125, %126
  %128 = add nsw i32 %127, 0
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %124, i64 %129
  %131 = load float, float* %130, align 4
  %132 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  store float %131, float* %132, align 4
  br label %145

133:                                              ; preds = %103
  %134 = load float*, float** %10, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %8, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %137, 0
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %134, i64 %139
  %141 = load float, float* %140, align 4
  %142 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  store float %141, float* %142, align 4
  %143 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  store float %141, float* %143, align 4
  %144 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  store float %141, float* %144, align 4
  br label %145

145:                                              ; preds = %133, %105
  %146 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %147 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %148 = call i32 @stbiw__linear_to_rgbe(i8* %146, float* %147)
  %149 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %7, align 4
  %154 = mul nsw i32 %153, 0
  %155 = add nsw i32 %152, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %151, i64 %156
  store i8 %150, i8* %157, align 1
  %158 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = load i8*, i8** %9, align 8
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %7, align 4
  %163 = mul nsw i32 %162, 1
  %164 = add nsw i32 %161, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %160, i64 %165
  store i8 %159, i8* %166, align 1
  %167 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 2
  %168 = load i8, i8* %167, align 1
  %169 = load i8*, i8** %9, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %7, align 4
  %172 = mul nsw i32 %171, 2
  %173 = add nsw i32 %170, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %169, i64 %174
  store i8 %168, i8* %175, align 1
  %176 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 3
  %177 = load i8, i8* %176, align 1
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %7, align 4
  %181 = mul nsw i32 %180, 3
  %182 = add nsw i32 %179, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %178, i64 %183
  store i8 %177, i8* %184, align 1
  br label %185

185:                                              ; preds = %145
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %14, align 4
  br label %99

188:                                              ; preds = %99
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %190, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %196 = call i32 %191(i32 %194, i8* %195, i32 4)
  store i32 0, i32* %15, align 4
  br label %197

197:                                              ; preds = %338, %188
  %198 = load i32, i32* %15, align 4
  %199 = icmp slt i32 %198, 4
  br i1 %199, label %200, label %341

200:                                              ; preds = %197
  %201 = load i8*, i8** %9, align 8
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %15, align 4
  %204 = mul nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %201, i64 %205
  store i8* %206, i8** %17, align 8
  store i32 0, i32* %14, align 4
  br label %207

207:                                              ; preds = %336, %200
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %337

211:                                              ; preds = %207
  %212 = load i32, i32* %14, align 4
  store i32 %212, i32* %16, align 4
  br label %213

213:                                              ; preds = %249, %211
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 2
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %252

218:                                              ; preds = %213
  %219 = load i8*, i8** %17, align 8
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = zext i8 %223 to i32
  %225 = load i8*, i8** %17, align 8
  %226 = load i32, i32* %16, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp eq i32 %224, %231
  br i1 %232, label %233, label %249

233:                                              ; preds = %218
  %234 = load i8*, i8** %17, align 8
  %235 = load i32, i32* %16, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = load i8*, i8** %17, align 8
  %241 = load i32, i32* %16, align 4
  %242 = add nsw i32 %241, 2
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp eq i32 %239, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %233
  br label %252

249:                                              ; preds = %233, %218
  %250 = load i32, i32* %16, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %16, align 4
  br label %213

252:                                              ; preds = %248, %213
  %253 = load i32, i32* %16, align 4
  %254 = add nsw i32 %253, 2
  %255 = load i32, i32* %7, align 4
  %256 = icmp sge i32 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = load i32, i32* %7, align 4
  store i32 %258, i32* %16, align 4
  br label %259

259:                                              ; preds = %257, %252
  br label %260

260:                                              ; preds = %271, %259
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* %16, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %282

264:                                              ; preds = %260
  %265 = load i32, i32* %16, align 4
  %266 = load i32, i32* %14, align 4
  %267 = sub nsw i32 %265, %266
  store i32 %267, i32* %18, align 4
  %268 = load i32, i32* %18, align 4
  %269 = icmp sgt i32 %268, 128
  br i1 %269, label %270, label %271

270:                                              ; preds = %264
  store i32 128, i32* %18, align 4
  br label %271

271:                                              ; preds = %270, %264
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %273 = load i32, i32* %18, align 4
  %274 = load i8*, i8** %17, align 8
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %274, i64 %276
  %278 = call i32 @stbiw__write_dump_data(%struct.TYPE_5__* %272, i32 %273, i8* %277)
  %279 = load i32, i32* %18, align 4
  %280 = load i32, i32* %14, align 4
  %281 = add nsw i32 %280, %279
  store i32 %281, i32* %14, align 4
  br label %260

282:                                              ; preds = %260
  %283 = load i32, i32* %16, align 4
  %284 = add nsw i32 %283, 2
  %285 = load i32, i32* %7, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %336

287:                                              ; preds = %282
  br label %288

288:                                              ; preds = %308, %287
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* %7, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %306

292:                                              ; preds = %288
  %293 = load i8*, i8** %17, align 8
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = load i8*, i8** %17, align 8
  %300 = load i32, i32* %14, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp eq i32 %298, %304
  br label %306

306:                                              ; preds = %292, %288
  %307 = phi i1 [ false, %288 ], [ %305, %292 ]
  br i1 %307, label %308, label %311

308:                                              ; preds = %306
  %309 = load i32, i32* %16, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %16, align 4
  br label %288

311:                                              ; preds = %306
  br label %312

312:                                              ; preds = %323, %311
  %313 = load i32, i32* %14, align 4
  %314 = load i32, i32* %16, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %335

316:                                              ; preds = %312
  %317 = load i32, i32* %16, align 4
  %318 = load i32, i32* %14, align 4
  %319 = sub nsw i32 %317, %318
  store i32 %319, i32* %19, align 4
  %320 = load i32, i32* %19, align 4
  %321 = icmp sgt i32 %320, 127
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  store i32 127, i32* %19, align 4
  br label %323

323:                                              ; preds = %322, %316
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %325 = load i32, i32* %19, align 4
  %326 = load i8*, i8** %17, align 8
  %327 = load i32, i32* %14, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %326, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = call i32 @stbiw__write_run_data(%struct.TYPE_5__* %324, i32 %325, i8 zeroext %330)
  %332 = load i32, i32* %19, align 4
  %333 = load i32, i32* %14, align 4
  %334 = add nsw i32 %333, %332
  store i32 %334, i32* %14, align 4
  br label %312

335:                                              ; preds = %312
  br label %336

336:                                              ; preds = %335, %282
  br label %207

337:                                              ; preds = %207
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %15, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %15, align 4
  br label %197

341:                                              ; preds = %197
  br label %342

342:                                              ; preds = %341, %97
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @stbiw__linear_to_rgbe(i8*, float*) #2

declare dso_local i32 @stbiw__write_dump_data(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @stbiw__write_run_data(%struct.TYPE_5__*, i32, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
