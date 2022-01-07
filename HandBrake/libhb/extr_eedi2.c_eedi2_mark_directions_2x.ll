; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_mark_directions_2x.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_eedi2.c_eedi2_mark_directions_2x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eedi2_limlut = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eedi2_mark_directions_2x(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %24 = alloca i32, align 4
  %25 = alloca [6 x i32], align 16
  %26 = alloca i32, align 4
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
  %33 = load i32, i32* %17, align 4
  %34 = mul nsw i32 %32, %33
  %35 = call i32 @memset(i32* %31, i32 255, i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = sub nsw i32 2, %37
  %39 = mul nsw i32 %36, %38
  %40 = load i32*, i32** %14, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %14, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sub nsw i32 1, %44
  %46 = mul nsw i32 %43, %45
  %47 = load i32*, i32** %12, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %16, align 4
  %52 = sub nsw i32 1, %51
  %53 = mul nsw i32 %50, %52
  %54 = load i32*, i32** %10, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = bitcast i32* %61 to i8*
  store i8* %62, i8** %22, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = mul nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = bitcast i32* %67 to i8*
  store i8* %68, i8** %23, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sub nsw i32 2, %69
  store i32 %70, i32* %20, align 4
  br label %71

71:                                               ; preds = %451, %9
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %17, align 4
  %74 = sub nsw i32 %73, 1
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %454

76:                                               ; preds = %71
  store i32 1, i32* %19, align 4
  br label %77

77:                                               ; preds = %422, %76
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %18, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %425

82:                                               ; preds = %77
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 255
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load i8*, i8** %23, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %95, 255
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %422

98:                                               ; preds = %89, %82
  store i32 0, i32* %24, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %19, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 255
  br i1 %105, label %106, label %117

106:                                              ; preds = %98
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %24, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %24, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %106, %98
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %19, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 255
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %24, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %24, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %132
  store i32 %129, i32* %133, align 4
  br label %134

134:                                              ; preds = %124, %117
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 255
  br i1 %141, label %142, label %153

142:                                              ; preds = %134
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %24, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %24, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %151
  store i32 %148, i32* %152, align 4
  br label %153

153:                                              ; preds = %142, %134
  %154 = load i8*, i8** %22, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp ne i32 %160, 255
  br i1 %161, label %162, label %174

162:                                              ; preds = %153
  %163 = load i8*, i8** %22, align 8
  %164 = load i32, i32* %19, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load i32, i32* %24, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %24, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %172
  store i32 %169, i32* %173, align 4
  br label %174

174:                                              ; preds = %162, %153
  %175 = load i8*, i8** %22, align 8
  %176 = load i32, i32* %19, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp ne i32 %180, 255
  br i1 %181, label %182, label %193

182:                                              ; preds = %174
  %183 = load i8*, i8** %22, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = load i32, i32* %24, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %24, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %191
  store i32 %188, i32* %192, align 4
  br label %193

193:                                              ; preds = %182, %174
  %194 = load i8*, i8** %22, align 8
  %195 = load i32, i32* %19, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp ne i32 %200, 255
  br i1 %201, label %202, label %214

202:                                              ; preds = %193
  %203 = load i8*, i8** %22, align 8
  %204 = load i32, i32* %19, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = load i32, i32* %24, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %24, align 4
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %212
  store i32 %209, i32* %213, align 4
  br label %214

214:                                              ; preds = %202, %193
  %215 = load i32, i32* %24, align 4
  %216 = icmp slt i32 %215, 3
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  br label %422

218:                                              ; preds = %214
  %219 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 0
  %220 = load i32, i32* %24, align 4
  %221 = call i32 @eedi2_sort_metrics(i32* %219, i32 %220)
  %222 = load i32, i32* %24, align 4
  %223 = and i32 %222, 1
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %218
  %226 = load i32, i32* %24, align 4
  %227 = ashr i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  br label %246

231:                                              ; preds = %218
  %232 = load i32, i32* %24, align 4
  %233 = sub nsw i32 %232, 1
  %234 = ashr i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %24, align 4
  %239 = ashr i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %237, %242
  %244 = add nsw i32 %243, 1
  %245 = ashr i32 %244, 1
  br label %246

246:                                              ; preds = %231, %225
  %247 = phi i32 [ %230, %225 ], [ %245, %231 ]
  store i32 %247, i32* %26, align 4
  %248 = load i32*, i32** @eedi2_limlut, align 8
  %249 = load i32, i32* %26, align 4
  %250 = sub nsw i32 %249, 128
  %251 = call i32 @abs(i32 %250)
  %252 = ashr i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %248, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %256 = load i32*, i32** %12, align 8
  %257 = load i32, i32* %19, align 4
  %258 = sub nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i8*, i8** %22, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = sub nsw i32 %261, %268
  %270 = call i32 @abs(i32 %269)
  %271 = load i32, i32* %27, align 4
  %272 = icmp sle i32 %270, %271
  br i1 %272, label %290, label %273

273:                                              ; preds = %246
  %274 = load i32*, i32** %12, align 8
  %275 = load i32, i32* %19, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 255
  br i1 %280, label %290, label %281

281:                                              ; preds = %273
  %282 = load i8*, i8** %22, align 8
  %283 = load i32, i32* %19, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %282, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp eq i32 %288, 255
  br i1 %289, label %290, label %293

290:                                              ; preds = %281, %273, %246
  %291 = load i32, i32* %28, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %28, align 4
  br label %293

293:                                              ; preds = %290, %281
  %294 = load i32*, i32** %12, align 8
  %295 = load i32, i32* %19, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load i8*, i8** %22, align 8
  %300 = load i32, i32* %19, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = sub nsw i32 %298, %304
  %306 = call i32 @abs(i32 %305)
  %307 = load i32, i32* %27, align 4
  %308 = icmp sle i32 %306, %307
  br i1 %308, label %324, label %309

309:                                              ; preds = %293
  %310 = load i32*, i32** %12, align 8
  %311 = load i32, i32* %19, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 255
  br i1 %315, label %324, label %316

316:                                              ; preds = %309
  %317 = load i8*, i8** %22, align 8
  %318 = load i32, i32* %19, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp eq i32 %322, 255
  br i1 %323, label %324, label %327

324:                                              ; preds = %316, %309, %293
  %325 = load i32, i32* %28, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %28, align 4
  br label %327

327:                                              ; preds = %324, %316
  %328 = load i32*, i32** %12, align 8
  %329 = load i32, i32* %19, align 4
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %328, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i8*, i8** %22, align 8
  %335 = load i32, i32* %19, align 4
  %336 = sub nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %334, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = sub nsw i32 %333, %340
  %342 = call i32 @abs(i32 %341)
  %343 = load i32, i32* %27, align 4
  %344 = icmp sle i32 %342, %343
  br i1 %344, label %362, label %345

345:                                              ; preds = %327
  %346 = load i32*, i32** %12, align 8
  %347 = load i32, i32* %19, align 4
  %348 = add nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %346, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 %351, 255
  br i1 %352, label %362, label %353

353:                                              ; preds = %345
  %354 = load i8*, i8** %22, align 8
  %355 = load i32, i32* %19, align 4
  %356 = add nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8, i8* %354, i64 %357
  %359 = load i8, i8* %358, align 1
  %360 = zext i8 %359 to i32
  %361 = icmp eq i32 %360, 255
  br i1 %361, label %362, label %365

362:                                              ; preds = %353, %345, %327
  %363 = load i32, i32* %28, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %28, align 4
  br label %365

365:                                              ; preds = %362, %353
  %366 = load i32, i32* %28, align 4
  %367 = icmp slt i32 %366, 2
  br i1 %367, label %368, label %369

368:                                              ; preds = %365
  br label %422

369:                                              ; preds = %365
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %21, align 4
  br label %370

370:                                              ; preds = %394, %369
  %371 = load i32, i32* %21, align 4
  %372 = load i32, i32* %24, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %397

374:                                              ; preds = %370
  %375 = load i32, i32* %21, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %26, align 4
  %380 = sub nsw i32 %378, %379
  %381 = call i32 @abs(i32 %380)
  %382 = load i32, i32* %27, align 4
  %383 = icmp sle i32 %381, %382
  br i1 %383, label %384, label %393

384:                                              ; preds = %374
  %385 = load i32, i32* %29, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %29, align 4
  %387 = load i32, i32* %21, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %30, align 4
  %392 = add nsw i32 %391, %390
  store i32 %392, i32* %30, align 4
  br label %393

393:                                              ; preds = %384, %374
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %21, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %21, align 4
  br label %370

397:                                              ; preds = %370
  %398 = load i32, i32* %29, align 4
  %399 = load i32, i32* %24, align 4
  %400 = sub nsw i32 %399, 2
  %401 = icmp slt i32 %398, %400
  br i1 %401, label %405, label %402

402:                                              ; preds = %397
  %403 = load i32, i32* %29, align 4
  %404 = icmp slt i32 %403, 2
  br i1 %404, label %405, label %406

405:                                              ; preds = %402, %397
  br label %422

406:                                              ; preds = %402
  %407 = load i32, i32* %30, align 4
  %408 = load i32, i32* %26, align 4
  %409 = add nsw i32 %407, %408
  %410 = sitofp i32 %409 to float
  %411 = load i32, i32* %29, align 4
  %412 = add nsw i32 %411, 1
  %413 = sitofp i32 %412 to float
  %414 = fdiv float %410, %413
  %415 = fadd float %414, 5.000000e-01
  %416 = fptosi float %415 to i32
  %417 = load i32*, i32** %14, align 8
  %418 = load i32, i32* %19, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  store i32 %416, i32* %420, align 4
  br label %421

421:                                              ; preds = %406
  br label %422

422:                                              ; preds = %421, %405, %368, %217, %97
  %423 = load i32, i32* %19, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %19, align 4
  br label %77

425:                                              ; preds = %77
  %426 = load i32, i32* %11, align 4
  %427 = mul nsw i32 %426, 2
  %428 = load i32*, i32** %10, align 8
  %429 = sext i32 %427 to i64
  %430 = getelementptr inbounds i32, i32* %428, i64 %429
  store i32* %430, i32** %10, align 8
  %431 = load i32, i32* %11, align 4
  %432 = mul nsw i32 %431, 2
  %433 = load i8*, i8** %23, align 8
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds i8, i8* %433, i64 %434
  store i8* %435, i8** %23, align 8
  %436 = load i32, i32* %15, align 4
  %437 = mul nsw i32 %436, 2
  %438 = load i32*, i32** %14, align 8
  %439 = sext i32 %437 to i64
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  store i32* %440, i32** %14, align 8
  %441 = load i32, i32* %13, align 4
  %442 = mul nsw i32 %441, 2
  %443 = load i32*, i32** %12, align 8
  %444 = sext i32 %442 to i64
  %445 = getelementptr inbounds i32, i32* %443, i64 %444
  store i32* %445, i32** %12, align 8
  %446 = load i32, i32* %13, align 4
  %447 = mul nsw i32 %446, 2
  %448 = load i8*, i8** %22, align 8
  %449 = sext i32 %447 to i64
  %450 = getelementptr inbounds i8, i8* %448, i64 %449
  store i8* %450, i8** %22, align 8
  br label %451

451:                                              ; preds = %425
  %452 = load i32, i32* %20, align 4
  %453 = add nsw i32 %452, 2
  store i32 %453, i32* %20, align 4
  br label %71

454:                                              ; preds = %71
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @eedi2_sort_metrics(i32*, i32) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
