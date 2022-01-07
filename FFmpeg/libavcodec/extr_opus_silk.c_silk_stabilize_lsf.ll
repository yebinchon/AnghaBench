; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_silk_stabilize_lsf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_silk.c_silk_stabilize_lsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @silk_stabilize_lsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @silk_stabilize_lsf(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %208, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 20
  br i1 %21, label %22, label %211

22:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %73, %22
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %76

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  br label %39

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %31
  %40 = phi i32 [ %37, %31 ], [ 0, %38 ]
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  br label %51

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi i32 [ %49, %44 ], [ 32768, %50 ]
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %55, %60
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %51
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 20
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %76

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %23

76:                                               ; preds = %70, %23
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %382

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %86, i32* %88, align 4
  br label %207

89:                                               ; preds = %80
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 32768, %98
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  br label %206

105:                                              ; preds = %89
  store i32 0, i32* %14, align 4
  store i32 32768, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %118, %105
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %106

121:                                              ; preds = %106
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 1
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %143, %121
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %15, align 4
  %142 = sub nsw i32 %141, %140
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %8, align 4
  br label %131

146:                                              ; preds = %131
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 1
  %153 = load i32, i32* %15, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %15, align 4
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %160, %165
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = ashr i32 %167, 1
  %169 = load i32, i32* %16, align 4
  %170 = and i32 %169, 1
  %171 = add nsw i32 %168, %170
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %16, align 4
  %175 = call i32 @FFMAX(i32 %173, i32 %174)
  %176 = call i32 @FFMIN(i32 %172, i32 %175)
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = ashr i32 %182, 1
  %184 = sub nsw i32 %177, %183
  %185 = load i32*, i32** %4, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  store i32 %184, i32* %189, align 4
  %190 = load i32*, i32** %4, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %195, %200
  %202 = load i32*, i32** %4, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  store i32 %201, i32* %205, align 4
  br label %206

206:                                              ; preds = %146, %93
  br label %207

207:                                              ; preds = %206, %83
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %19

211:                                              ; preds = %19
  store i32 1, i32* %8, align 4
  br label %212

212:                                              ; preds = %258, %211
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %5, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %261

216:                                              ; preds = %212
  %217 = load i32*, i32** %4, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %18, align 4
  %222 = load i32, i32* %8, align 4
  %223 = sub nsw i32 %222, 1
  store i32 %223, i32* %17, align 4
  br label %224

224:                                              ; preds = %248, %216
  %225 = load i32, i32* %17, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %224
  %228 = load i32*, i32** %4, align 8
  %229 = load i32, i32* %17, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %18, align 4
  %234 = icmp sgt i32 %232, %233
  br label %235

235:                                              ; preds = %227, %224
  %236 = phi i1 [ false, %224 ], [ %234, %227 ]
  br i1 %236, label %237, label %251

237:                                              ; preds = %235
  %238 = load i32*, i32** %4, align 8
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %4, align 8
  %244 = load i32, i32* %17, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  store i32 %242, i32* %247, align 4
  br label %248

248:                                              ; preds = %237
  %249 = load i32, i32* %17, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %17, align 4
  br label %224

251:                                              ; preds = %235
  %252 = load i32, i32* %18, align 4
  %253 = load i32*, i32** %4, align 8
  %254 = load i32, i32* %17, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  store i32 %252, i32* %257, align 4
  br label %258

258:                                              ; preds = %251
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %8, align 4
  br label %212

261:                                              ; preds = %212
  %262 = load i32*, i32** %4, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %6, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %261
  %270 = load i32*, i32** %6, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %4, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %269, %261
  store i32 1, i32* %8, align 4
  br label %276

276:                                              ; preds = %304, %275
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* %5, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %307

280:                                              ; preds = %276
  %281 = load i32*, i32** %4, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %4, align 8
  %287 = load i32, i32* %8, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32*, i32** %6, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %291, %296
  %298 = call i32 @FFMIN(i32 %297, i32 32767)
  %299 = call i32 @FFMAX(i32 %285, i32 %298)
  %300 = load i32*, i32** %4, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  store i32 %299, i32* %303, align 4
  br label %304

304:                                              ; preds = %280
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %8, align 4
  br label %276

307:                                              ; preds = %276
  %308 = load i32*, i32** %4, align 8
  %309 = load i32, i32* %5, align 4
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** %6, align 8
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = sub nsw i32 32768, %318
  %320 = icmp sgt i32 %313, %319
  br i1 %320, label %321, label %333

321:                                              ; preds = %307
  %322 = load i32*, i32** %6, align 8
  %323 = load i32, i32* %5, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = sub nsw i32 32768, %326
  %328 = load i32*, i32** %4, align 8
  %329 = load i32, i32* %5, align 4
  %330 = sub nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %328, i64 %331
  store i32 %327, i32* %332, align 4
  br label %333

333:                                              ; preds = %321, %307
  %334 = load i32, i32* %5, align 4
  %335 = sub nsw i32 %334, 2
  store i32 %335, i32* %8, align 4
  br label %336

336:                                              ; preds = %378, %333
  %337 = load i32, i32* %8, align 4
  %338 = icmp sge i32 %337, 0
  br i1 %338, label %339, label %381

339:                                              ; preds = %336
  %340 = load i32*, i32** %4, align 8
  %341 = load i32, i32* %8, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = load i32*, i32** %4, align 8
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %345, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load i32*, i32** %6, align 8
  %352 = load i32, i32* %8, align 4
  %353 = add nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = sub nsw i32 %350, %356
  %358 = icmp sgt i32 %344, %357
  br i1 %358, label %359, label %377

359:                                              ; preds = %339
  %360 = load i32*, i32** %4, align 8
  %361 = load i32, i32* %8, align 4
  %362 = add nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %360, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load i32*, i32** %6, align 8
  %367 = load i32, i32* %8, align 4
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %366, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = sub nsw i32 %365, %371
  %373 = load i32*, i32** %4, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  store i32 %372, i32* %376, align 4
  br label %377

377:                                              ; preds = %359, %339
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %8, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %8, align 4
  br label %336

381:                                              ; preds = %336
  br label %382

382:                                              ; preds = %381, %79
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
