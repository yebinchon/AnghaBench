; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_filter_dir_map_2x.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_filter_dir_map_2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eedi2_limlut = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eedi2_filter_dir_map_2x(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca [9 x i32], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @eedi2_bit_blit(i32* %31, i32 %32, i32* %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %16, align 4
  %40 = sub nsw i32 2, %39
  %41 = mul nsw i32 %38, %40
  %42 = load i32*, i32** %12, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = bitcast i32* %50 to i8*
  store i8* %51, i8** %22, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = mul nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %23, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %16, align 4
  %60 = sub nsw i32 1, %59
  %61 = mul nsw i32 %58, %60
  %62 = load i32*, i32** %10, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = bitcast i32* %69 to i8*
  store i8* %70, i8** %24, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = sub nsw i32 2, %72
  %74 = mul nsw i32 %71, %73
  %75 = load i32*, i32** %14, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %14, align 8
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 2, %78
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %434, %9
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %17, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %437

85:                                               ; preds = %80
  store i32 1, i32* %19, align 4
  br label %86

86:                                               ; preds = %400, %85
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %403

91:                                               ; preds = %86
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 255
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load i8*, i8** %24, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 255
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %400

107:                                              ; preds = %98, %91
  store i32 0, i32* %25, align 4
  %108 = load i32, i32* %20, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %172

110:                                              ; preds = %107
  %111 = load i8*, i8** %22, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp ne i32 %117, 255
  br i1 %118, label %119, label %131

119:                                              ; preds = %110
  %120 = load i8*, i8** %22, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = load i32, i32* %25, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %25, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %129
  store i32 %126, i32* %130, align 4
  br label %131

131:                                              ; preds = %119, %110
  %132 = load i8*, i8** %22, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = icmp ne i32 %137, 255
  br i1 %138, label %139, label %150

139:                                              ; preds = %131
  %140 = load i8*, i8** %22, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = load i32, i32* %25, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %25, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %148
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %139, %131
  %151 = load i8*, i8** %22, align 8
  %152 = load i32, i32* %19, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp ne i32 %157, 255
  br i1 %158, label %159, label %171

159:                                              ; preds = %150
  %160 = load i8*, i8** %22, align 8
  %161 = load i32, i32* %19, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i32, i32* %25, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %25, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %169
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %159, %150
  br label %172

172:                                              ; preds = %171, %107
  %173 = load i32*, i32** %12, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 255
  br i1 %179, label %180, label %191

180:                                              ; preds = %172
  %181 = load i32*, i32** %12, align 8
  %182 = load i32, i32* %19, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %25, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %25, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %189
  store i32 %186, i32* %190, align 4
  br label %191

191:                                              ; preds = %180, %172
  %192 = load i32*, i32** %12, align 8
  %193 = load i32, i32* %19, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 255
  br i1 %197, label %198, label %208

198:                                              ; preds = %191
  %199 = load i32*, i32** %12, align 8
  %200 = load i32, i32* %19, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %25, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %25, align 4
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %206
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %198, %191
  %209 = load i32*, i32** %12, align 8
  %210 = load i32, i32* %19, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 255
  br i1 %215, label %216, label %227

216:                                              ; preds = %208
  %217 = load i32*, i32** %12, align 8
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %25, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %25, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %225
  store i32 %222, i32* %226, align 4
  br label %227

227:                                              ; preds = %216, %208
  %228 = load i32, i32* %20, align 4
  %229 = load i32, i32* %17, align 4
  %230 = sub nsw i32 %229, 2
  %231 = icmp slt i32 %228, %230
  br i1 %231, label %232, label %294

232:                                              ; preds = %227
  %233 = load i8*, i8** %23, align 8
  %234 = load i32, i32* %19, align 4
  %235 = sub nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp ne i32 %239, 255
  br i1 %240, label %241, label %253

241:                                              ; preds = %232
  %242 = load i8*, i8** %23, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %242, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = load i32, i32* %25, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %25, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %251
  store i32 %248, i32* %252, align 4
  br label %253

253:                                              ; preds = %241, %232
  %254 = load i8*, i8** %23, align 8
  %255 = load i32, i32* %19, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = icmp ne i32 %259, 255
  br i1 %260, label %261, label %272

261:                                              ; preds = %253
  %262 = load i8*, i8** %23, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = load i32, i32* %25, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %25, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %270
  store i32 %267, i32* %271, align 4
  br label %272

272:                                              ; preds = %261, %253
  %273 = load i8*, i8** %23, align 8
  %274 = load i32, i32* %19, align 4
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %273, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = icmp ne i32 %279, 255
  br i1 %280, label %281, label %293

281:                                              ; preds = %272
  %282 = load i8*, i8** %23, align 8
  %283 = load i32, i32* %19, align 4
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = load i32, i32* %25, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %25, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %291
  store i32 %288, i32* %292, align 4
  br label %293

293:                                              ; preds = %281, %272
  br label %294

294:                                              ; preds = %293, %227
  %295 = load i32, i32* %25, align 4
  %296 = icmp slt i32 %295, 4
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load i32*, i32** %14, align 8
  %299 = load i32, i32* %19, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32 255, i32* %301, align 4
  br label %400

302:                                              ; preds = %294
  %303 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 0
  %304 = load i32, i32* %25, align 4
  %305 = call i32 @eedi2_sort_metrics(i32* %303, i32 %304)
  %306 = load i32, i32* %25, align 4
  %307 = and i32 %306, 1
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %302
  %310 = load i32, i32* %25, align 4
  %311 = ashr i32 %310, 1
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  br label %330

315:                                              ; preds = %302
  %316 = load i32, i32* %25, align 4
  %317 = sub nsw i32 %316, 1
  %318 = ashr i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %25, align 4
  %323 = ashr i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %321, %326
  %328 = add nsw i32 %327, 1
  %329 = ashr i32 %328, 1
  br label %330

330:                                              ; preds = %315, %309
  %331 = phi i32 [ %314, %309 ], [ %329, %315 ]
  store i32 %331, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %332 = load i32*, i32** @eedi2_limlut, align 8
  %333 = load i32, i32* %27, align 4
  %334 = sub nsw i32 %333, 128
  %335 = call i32 @abs(i32 %334)
  %336 = ashr i32 %335, 2
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %332, i64 %337
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %30, align 4
  store i32 0, i32* %21, align 4
  br label %340

340:                                              ; preds = %364, %330
  %341 = load i32, i32* %21, align 4
  %342 = load i32, i32* %25, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %367

344:                                              ; preds = %340
  %345 = load i32, i32* %21, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %27, align 4
  %350 = sub nsw i32 %348, %349
  %351 = call i32 @abs(i32 %350)
  %352 = load i32, i32* %30, align 4
  %353 = icmp sle i32 %351, %352
  br i1 %353, label %354, label %363

354:                                              ; preds = %344
  %355 = load i32, i32* %29, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %29, align 4
  %357 = load i32, i32* %21, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [9 x i32], [9 x i32]* %26, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %28, align 4
  %362 = add nsw i32 %361, %360
  store i32 %362, i32* %28, align 4
  br label %363

363:                                              ; preds = %354, %344
  br label %364

364:                                              ; preds = %363
  %365 = load i32, i32* %21, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %21, align 4
  br label %340

367:                                              ; preds = %340
  %368 = load i32, i32* %29, align 4
  %369 = icmp slt i32 %368, 4
  br i1 %369, label %380, label %370

370:                                              ; preds = %367
  %371 = load i32, i32* %29, align 4
  %372 = icmp slt i32 %371, 5
  br i1 %372, label %373, label %385

373:                                              ; preds = %370
  %374 = load i32*, i32** %12, align 8
  %375 = load i32, i32* %19, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, 255
  br i1 %379, label %380, label %385

380:                                              ; preds = %373, %367
  %381 = load i32*, i32** %14, align 8
  %382 = load i32, i32* %19, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  store i32 255, i32* %384, align 4
  br label %400

385:                                              ; preds = %373, %370
  %386 = load i32, i32* %28, align 4
  %387 = load i32, i32* %27, align 4
  %388 = add nsw i32 %386, %387
  %389 = sitofp i32 %388 to float
  %390 = load i32, i32* %29, align 4
  %391 = add nsw i32 %390, 1
  %392 = sitofp i32 %391 to float
  %393 = fdiv float %389, %392
  %394 = fadd float %393, 5.000000e-01
  %395 = fptosi float %394 to i32
  %396 = load i32*, i32** %14, align 8
  %397 = load i32, i32* %19, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %396, i64 %398
  store i32 %395, i32* %399, align 4
  br label %400

400:                                              ; preds = %385, %380, %297, %106
  %401 = load i32, i32* %19, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %19, align 4
  br label %86

403:                                              ; preds = %86
  %404 = load i32, i32* %11, align 4
  %405 = mul nsw i32 %404, 2
  %406 = load i32*, i32** %10, align 8
  %407 = sext i32 %405 to i64
  %408 = getelementptr inbounds i32, i32* %406, i64 %407
  store i32* %408, i32** %10, align 8
  %409 = load i32, i32* %11, align 4
  %410 = mul nsw i32 %409, 2
  %411 = load i8*, i8** %24, align 8
  %412 = sext i32 %410 to i64
  %413 = getelementptr inbounds i8, i8* %411, i64 %412
  store i8* %413, i8** %24, align 8
  %414 = load i32, i32* %13, align 4
  %415 = mul nsw i32 %414, 2
  %416 = load i8*, i8** %22, align 8
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i8, i8* %416, i64 %417
  store i8* %418, i8** %22, align 8
  %419 = load i32, i32* %13, align 4
  %420 = mul nsw i32 %419, 2
  %421 = load i32*, i32** %12, align 8
  %422 = sext i32 %420 to i64
  %423 = getelementptr inbounds i32, i32* %421, i64 %422
  store i32* %423, i32** %12, align 8
  %424 = load i32, i32* %13, align 4
  %425 = mul nsw i32 %424, 2
  %426 = load i8*, i8** %23, align 8
  %427 = sext i32 %425 to i64
  %428 = getelementptr inbounds i8, i8* %426, i64 %427
  store i8* %428, i8** %23, align 8
  %429 = load i32, i32* %15, align 4
  %430 = mul nsw i32 %429, 2
  %431 = load i32*, i32** %14, align 8
  %432 = sext i32 %430 to i64
  %433 = getelementptr inbounds i32, i32* %431, i64 %432
  store i32* %433, i32** %14, align 8
  br label %434

434:                                              ; preds = %403
  %435 = load i32, i32* %20, align 4
  %436 = add nsw i32 %435, 2
  store i32 %436, i32* %20, align 4
  br label %80

437:                                              ; preds = %80
  ret void
}

declare dso_local i32 @eedi2_bit_blit(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @eedi2_sort_metrics(i32*, i32) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
