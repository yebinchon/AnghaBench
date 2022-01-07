; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_expand_dir_map.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_expand_dir_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eedi2_limlut = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eedi2_expand_dir_map(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
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

58:                                               ; preds = %356, %8
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %359

63:                                               ; preds = %58
  store i32 1, i32* %17, align 4
  br label %64

64:                                               ; preds = %332, %63
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %335

69:                                               ; preds = %64
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 255
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 255
  br i1 %82, label %83, label %84

83:                                               ; preds = %76, %69
  br label %332

84:                                               ; preds = %76
  store i32 0, i32* %22, align 4
  %85 = load i8*, i8** %20, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 255
  br i1 %92, label %93, label %105

93:                                               ; preds = %84
  %94 = load i8*, i8** %20, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* %22, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %22, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %93, %84
  %106 = load i8*, i8** %20, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %111, 255
  br i1 %112, label %113, label %124

113:                                              ; preds = %105
  %114 = load i8*, i8** %20, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i32, i32* %22, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %22, align 4
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %122
  store i32 %119, i32* %123, align 4
  br label %124

124:                                              ; preds = %113, %105
  %125 = load i8*, i8** %20, align 8
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 255
  br i1 %132, label %133, label %145

133:                                              ; preds = %124
  %134 = load i8*, i8** %20, align 8
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = load i32, i32* %22, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %22, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %143
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %133, %124
  %146 = load i32*, i32** %11, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sub nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 255
  br i1 %152, label %153, label %164

153:                                              ; preds = %145
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %22, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %22, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %162
  store i32 %159, i32* %163, align 4
  br label %164

164:                                              ; preds = %153, %145
  %165 = load i32*, i32** %11, align 8
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 255
  br i1 %171, label %172, label %183

172:                                              ; preds = %164
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %17, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %22, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %22, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %181
  store i32 %178, i32* %182, align 4
  br label %183

183:                                              ; preds = %172, %164
  %184 = load i8*, i8** %21, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp ne i32 %190, 255
  br i1 %191, label %192, label %204

192:                                              ; preds = %183
  %193 = load i8*, i8** %21, align 8
  %194 = load i32, i32* %17, align 4
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = load i32, i32* %22, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %22, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %202
  store i32 %199, i32* %203, align 4
  br label %204

204:                                              ; preds = %192, %183
  %205 = load i8*, i8** %21, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp ne i32 %210, 255
  br i1 %211, label %212, label %223

212:                                              ; preds = %204
  %213 = load i8*, i8** %21, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = load i32, i32* %22, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %22, align 4
  %221 = sext i32 %219 to i64
  %222 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %221
  store i32 %218, i32* %222, align 4
  br label %223

223:                                              ; preds = %212, %204
  %224 = load i8*, i8** %21, align 8
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %224, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 255
  br i1 %231, label %232, label %244

232:                                              ; preds = %223
  %233 = load i8*, i8** %21, align 8
  %234 = load i32, i32* %17, align 4
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = load i32, i32* %22, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %22, align 4
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %242
  store i32 %239, i32* %243, align 4
  br label %244

244:                                              ; preds = %232, %223
  %245 = load i32, i32* %22, align 4
  %246 = icmp slt i32 %245, 5
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  br label %332

248:                                              ; preds = %244
  %249 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 0
  %250 = load i32, i32* %22, align 4
  %251 = call i32 @eedi2_sort_metrics(i32* %249, i32 %250)
  %252 = load i32, i32* %22, align 4
  %253 = and i32 %252, 1
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load i32, i32* %22, align 4
  %257 = ashr i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  br label %276

261:                                              ; preds = %248
  %262 = load i32, i32* %22, align 4
  %263 = sub nsw i32 %262, 1
  %264 = ashr i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %22, align 4
  %269 = ashr i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %267, %272
  %274 = add nsw i32 %273, 1
  %275 = ashr i32 %274, 1
  br label %276

276:                                              ; preds = %261, %255
  %277 = phi i32 [ %260, %255 ], [ %275, %261 ]
  store i32 %277, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %278 = load i32*, i32** @eedi2_limlut, align 8
  %279 = load i32, i32* %24, align 4
  %280 = sub nsw i32 %279, 128
  %281 = call i32 @abs(i32 %280)
  %282 = ashr i32 %281, 2
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %278, i64 %283
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %27, align 4
  store i32 0, i32* %19, align 4
  br label %286

286:                                              ; preds = %310, %276
  %287 = load i32, i32* %19, align 4
  %288 = load i32, i32* %22, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %313

290:                                              ; preds = %286
  %291 = load i32, i32* %19, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %24, align 4
  %296 = sub nsw i32 %294, %295
  %297 = call i32 @abs(i32 %296)
  %298 = load i32, i32* %27, align 4
  %299 = icmp sle i32 %297, %298
  br i1 %299, label %300, label %309

300:                                              ; preds = %290
  %301 = load i32, i32* %26, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %26, align 4
  %303 = load i32, i32* %19, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [9 x i32], [9 x i32]* %23, i64 0, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %25, align 4
  %308 = add nsw i32 %307, %306
  store i32 %308, i32* %25, align 4
  br label %309

309:                                              ; preds = %300, %290
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %19, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %19, align 4
  br label %286

313:                                              ; preds = %286
  %314 = load i32, i32* %26, align 4
  %315 = icmp slt i32 %314, 5
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  br label %332

317:                                              ; preds = %313
  %318 = load i32, i32* %25, align 4
  %319 = load i32, i32* %24, align 4
  %320 = add nsw i32 %318, %319
  %321 = sitofp i32 %320 to float
  %322 = load i32, i32* %26, align 4
  %323 = add nsw i32 %322, 1
  %324 = sitofp i32 %323 to float
  %325 = fdiv float %321, %324
  %326 = fadd float %325, 5.000000e-01
  %327 = fptosi float %326 to i32
  %328 = load i32*, i32** %13, align 8
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32 %327, i32* %331, align 4
  br label %332

332:                                              ; preds = %317, %316, %247, %83
  %333 = load i32, i32* %17, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %17, align 4
  br label %64

335:                                              ; preds = %64
  %336 = load i32, i32* %12, align 4
  %337 = load i8*, i8** %20, align 8
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds i8, i8* %337, i64 %338
  store i8* %339, i8** %20, align 8
  %340 = load i32, i32* %12, align 4
  %341 = load i32*, i32** %11, align 8
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  store i32* %343, i32** %11, align 8
  %344 = load i32, i32* %12, align 4
  %345 = load i8*, i8** %21, align 8
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds i8, i8* %345, i64 %346
  store i8* %347, i8** %21, align 8
  %348 = load i32, i32* %14, align 4
  %349 = load i32*, i32** %13, align 8
  %350 = sext i32 %348 to i64
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  store i32* %351, i32** %13, align 8
  %352 = load i32, i32* %10, align 4
  %353 = load i32*, i32** %9, align 8
  %354 = sext i32 %352 to i64
  %355 = getelementptr inbounds i32, i32* %353, i64 %354
  store i32* %355, i32** %9, align 8
  br label %356

356:                                              ; preds = %335
  %357 = load i32, i32* %18, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %18, align 4
  br label %58

359:                                              ; preds = %58
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
