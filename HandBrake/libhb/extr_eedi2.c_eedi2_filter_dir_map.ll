; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_filter_dir_map.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_filter_dir_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eedi2_limlut = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eedi2_filter_dir_map(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [9 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @eedi2_bit_blit(i32* %28, i32 %29, i32* %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = bitcast i32* %43 to i8*
  store i8* %44, i8** %20, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = bitcast i32* %48 to i8*
  store i8* %49, i8** %21, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %9, align 8
  store i32 1, i32* %18, align 4
  br label %58

58:                                               ; preds = %384, %8
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %387

63:                                               ; preds = %58
  store i32 1, i32* %17, align 4
  br label %64

64:                                               ; preds = %360, %63
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %363

69:                                               ; preds = %64
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 255
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %360

77:                                               ; preds = %69
  store i32 0, i32* %22, align 4
  %78 = load i8*, i8** %20, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %84, 255
  br i1 %85, label %86, label %98

86:                                               ; preds = %77
  %87 = load i8*, i8** %20, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i32, i32* %22, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %22, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %86, %77
  %99 = load i8*, i8** %20, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 255
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load i8*, i8** %20, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %22, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %106, %98
  %118 = load i8*, i8** %20, align 8
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 255
  br i1 %125, label %126, label %138

126:                                              ; preds = %117
  %127 = load i8*, i8** %20, align 8
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32, i32* %22, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %22, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %126, %117
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 255
  br i1 %145, label %146, label %157

146:                                              ; preds = %138
  %147 = load i32*, i32** %11, align 8
  %148 = load i32, i32* %17, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %22, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %22, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %155
  store i32 %152, i32* %156, align 4
  br label %157

157:                                              ; preds = %146, %138
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 255
  br i1 %163, label %164, label %174

164:                                              ; preds = %157
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %17, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %22, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %22, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %172
  store i32 %169, i32* %173, align 4
  br label %174

174:                                              ; preds = %164, %157
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 255
  br i1 %181, label %182, label %193

182:                                              ; preds = %174
  %183 = load i32*, i32** %11, align 8
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %22, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %22, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %191
  store i32 %188, i32* %192, align 4
  br label %193

193:                                              ; preds = %182, %174
  %194 = load i8*, i8** %21, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp ne i32 %200, 255
  br i1 %201, label %202, label %214

202:                                              ; preds = %193
  %203 = load i8*, i8** %21, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = load i32, i32* %22, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %22, align 4
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %212
  store i32 %209, i32* %213, align 4
  br label %214

214:                                              ; preds = %202, %193
  %215 = load i8*, i8** %21, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8, i8* %215, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp ne i32 %220, 255
  br i1 %221, label %222, label %233

222:                                              ; preds = %214
  %223 = load i8*, i8** %21, align 8
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = load i32, i32* %22, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %22, align 4
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %231
  store i32 %228, i32* %232, align 4
  br label %233

233:                                              ; preds = %222, %214
  %234 = load i8*, i8** %21, align 8
  %235 = load i32, i32* %17, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %234, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp ne i32 %240, 255
  br i1 %241, label %242, label %254

242:                                              ; preds = %233
  %243 = load i8*, i8** %21, align 8
  %244 = load i32, i32* %17, align 4
  %245 = add nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %243, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = load i32, i32* %22, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %22, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %252
  store i32 %249, i32* %253, align 4
  br label %254

254:                                              ; preds = %242, %233
  %255 = load i32, i32* %22, align 4
  %256 = icmp slt i32 %255, 4
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load i32*, i32** %13, align 8
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  store i32 255, i32* %261, align 4
  br label %360

262:                                              ; preds = %254
  %263 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 0
  %264 = load i32, i32* %22, align 4
  %265 = call i32 @eedi2_sort_metrics(i32* %263, i32 %264)
  %266 = load i32, i32* %22, align 4
  %267 = and i32 %266, 1
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %262
  %270 = load i32, i32* %22, align 4
  %271 = ashr i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  br label %290

275:                                              ; preds = %262
  %276 = load i32, i32* %22, align 4
  %277 = sub nsw i32 %276, 1
  %278 = ashr i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %22, align 4
  %283 = ashr i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %281, %286
  %288 = add nsw i32 %287, 1
  %289 = ashr i32 %288, 1
  br label %290

290:                                              ; preds = %275, %269
  %291 = phi i32 [ %274, %269 ], [ %289, %275 ]
  store i32 %291, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %292 = load i32*, i32** @eedi2_limlut, align 8
  %293 = load i32, i32* %24, align 4
  %294 = sub nsw i32 %293, 128
  %295 = call i32 @abs(i32 %294)
  %296 = ashr i32 %295, 2
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %292, i64 %297
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %27, align 4
  store i32 0, i32* %19, align 4
  br label %300

300:                                              ; preds = %324, %290
  %301 = load i32, i32* %19, align 4
  %302 = load i32, i32* %22, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %327

304:                                              ; preds = %300
  %305 = load i32, i32* %19, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %24, align 4
  %310 = sub nsw i32 %308, %309
  %311 = call i32 @abs(i32 %310)
  %312 = load i32, i32* %27, align 4
  %313 = icmp sle i32 %311, %312
  br i1 %313, label %314, label %323

314:                                              ; preds = %304
  %315 = load i32, i32* %26, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %26, align 4
  %317 = load i32, i32* %19, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %25, align 4
  %322 = add nsw i32 %321, %320
  store i32 %322, i32* %25, align 4
  br label %323

323:                                              ; preds = %314, %304
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %19, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %19, align 4
  br label %300

327:                                              ; preds = %300
  %328 = load i32, i32* %26, align 4
  %329 = icmp slt i32 %328, 4
  br i1 %329, label %340, label %330

330:                                              ; preds = %327
  %331 = load i32, i32* %26, align 4
  %332 = icmp slt i32 %331, 5
  br i1 %332, label %333, label %345

333:                                              ; preds = %330
  %334 = load i32*, i32** %11, align 8
  %335 = load i32, i32* %17, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 255
  br i1 %339, label %340, label %345

340:                                              ; preds = %333, %327
  %341 = load i32*, i32** %13, align 8
  %342 = load i32, i32* %17, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  store i32 255, i32* %344, align 4
  br label %360

345:                                              ; preds = %333, %330
  %346 = load i32, i32* %25, align 4
  %347 = load i32, i32* %24, align 4
  %348 = add nsw i32 %346, %347
  %349 = sitofp i32 %348 to float
  %350 = load i32, i32* %26, align 4
  %351 = add nsw i32 %350, 1
  %352 = sitofp i32 %351 to float
  %353 = fdiv float %349, %352
  %354 = fadd float %353, 5.000000e-01
  %355 = fptosi float %354 to i32
  %356 = load i32*, i32** %13, align 8
  %357 = load i32, i32* %17, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  store i32 %355, i32* %359, align 4
  br label %360

360:                                              ; preds = %345, %340, %257, %76
  %361 = load i32, i32* %17, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %17, align 4
  br label %64

363:                                              ; preds = %64
  %364 = load i32, i32* %12, align 4
  %365 = load i8*, i8** %20, align 8
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i8, i8* %365, i64 %366
  store i8* %367, i8** %20, align 8
  %368 = load i32, i32* %12, align 4
  %369 = load i32*, i32** %11, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  store i32* %371, i32** %11, align 8
  %372 = load i32, i32* %12, align 4
  %373 = load i8*, i8** %21, align 8
  %374 = sext i32 %372 to i64
  %375 = getelementptr inbounds i8, i8* %373, i64 %374
  store i8* %375, i8** %21, align 8
  %376 = load i32, i32* %14, align 4
  %377 = load i32*, i32** %13, align 8
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  store i32* %379, i32** %13, align 8
  %380 = load i32, i32* %10, align 4
  %381 = load i32*, i32** %9, align 8
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds i32, i32* %381, i64 %382
  store i32* %383, i32** %9, align 8
  br label %384

384:                                              ; preds = %363
  %385 = load i32, i32* %18, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %18, align 4
  br label %58

387:                                              ; preds = %58
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
