; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_Search.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_Search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, double*)* @Search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Search(i32 %0, i32* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 2, %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i64 @Util_malloc(i32 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %16, align 8
  store i32 0, i32* %11, align 4
  %24 = load double*, double** %8, align 8
  %25 = getelementptr inbounds double, double* %24, i64 0
  %26 = load double, double* %25, align 8
  %27 = fcmp ogt double %26, 0.000000e+00
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load double*, double** %8, align 8
  %30 = getelementptr inbounds double, double* %29, i64 0
  %31 = load double, double* %30, align 8
  %32 = load double*, double** %8, align 8
  %33 = getelementptr inbounds double, double* %32, i64 1
  %34 = load double, double* %33, align 8
  %35 = fcmp ogt double %31, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %28, %4
  %37 = load double*, double** %8, align 8
  %38 = getelementptr inbounds double, double* %37, i64 0
  %39 = load double, double* %38, align 8
  %40 = fcmp olt double %39, 0.000000e+00
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load double*, double** %8, align 8
  %43 = getelementptr inbounds double, double* %42, i64 0
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %8, align 8
  %46 = getelementptr inbounds double, double* %45, i64 1
  %47 = load double, double* %46, align 8
  %48 = fcmp olt double %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41, %28
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %41, %36
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %135, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %138

61:                                               ; preds = %56
  %62 = load double*, double** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load double*, double** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %67, i64 %70
  %72 = load double, double* %71, align 8
  %73 = fcmp oge double %66, %72
  br i1 %73, label %74, label %94

74:                                               ; preds = %61
  %75 = load double*, double** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = load double*, double** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %80, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fcmp ogt double %79, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %74
  %88 = load double*, double** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds double, double* %88, i64 %90
  %92 = load double, double* %91, align 8
  %93 = fcmp ogt double %92, 0.000000e+00
  br i1 %93, label %127, label %94

94:                                               ; preds = %87, %74, %61
  %95 = load double*, double** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds double, double* %95, i64 %97
  %99 = load double, double* %98, align 8
  %100 = load double*, double** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %100, i64 %103
  %105 = load double, double* %104, align 8
  %106 = fcmp ole double %99, %105
  br i1 %106, label %107, label %134

107:                                              ; preds = %94
  %108 = load double*, double** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double, double* %108, i64 %110
  %112 = load double, double* %111, align 8
  %113 = load double*, double** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %113, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fcmp olt double %112, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %107
  %121 = load double*, double** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  %125 = load double, double* %124, align 8
  %126 = fcmp olt double %125, 0.000000e+00
  br i1 %126, label %127, label %134

127:                                              ; preds = %120, %87
  %128 = load i32, i32* %9, align 4
  %129 = load i32*, i32** %16, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  br label %134

134:                                              ; preds = %127, %120, %107, %94
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %56

138:                                              ; preds = %56
  %139 = load i32, i32* %7, align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  %141 = load double*, double** %8, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  %145 = load double, double* %144, align 8
  %146 = fcmp ogt double %145, 0.000000e+00
  br i1 %146, label %147, label %160

147:                                              ; preds = %138
  %148 = load double*, double** %8, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds double, double* %148, i64 %150
  %152 = load double, double* %151, align 8
  %153 = load double*, double** %8, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %153, i64 %156
  %158 = load double, double* %157, align 8
  %159 = fcmp ogt double %152, %158
  br i1 %159, label %180, label %160

160:                                              ; preds = %147, %138
  %161 = load double*, double** %8, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %161, i64 %163
  %165 = load double, double* %164, align 8
  %166 = fcmp olt double %165, 0.000000e+00
  br i1 %166, label %167, label %187

167:                                              ; preds = %160
  %168 = load double*, double** %8, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %168, i64 %170
  %172 = load double, double* %171, align 8
  %173 = load double*, double** %8, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double, double* %173, i64 %176
  %178 = load double, double* %177, align 8
  %179 = fcmp olt double %172, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %167, %147
  %181 = load i32, i32* %10, align 4
  %182 = load i32*, i32** %16, align 8
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  store i32 %181, i32* %186, align 4
  br label %187

187:                                              ; preds = %180, %167, %160
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 1
  %191 = sub nsw i32 %188, %190
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %330, %187
  %193 = load i32, i32* %13, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %335

195:                                              ; preds = %192
  %196 = load double*, double** %8, align 8
  %197 = load i32*, i32** %16, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %196, i64 %200
  %202 = load double, double* %201, align 8
  %203 = fcmp ogt double %202, 0.000000e+00
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  store i32 1, i32* %14, align 4
  br label %206

205:                                              ; preds = %195
  store i32 0, i32* %14, align 4
  br label %206

206:                                              ; preds = %205, %204
  store i32 0, i32* %12, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %10, align 4
  br label %207

207:                                              ; preds = %268, %206
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %271

211:                                              ; preds = %207
  %212 = load double*, double** %8, align 8
  %213 = load i32*, i32** %16, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds double, double* %212, i64 %218
  %220 = load double, double* %219, align 8
  %221 = call i64 @fabs(double %220)
  %222 = load double*, double** %8, align 8
  %223 = load i32*, i32** %16, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, double* %222, i64 %228
  %230 = load double, double* %229, align 8
  %231 = call i64 @fabs(double %230)
  %232 = icmp slt i64 %221, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %211
  %234 = load i32, i32* %10, align 4
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %233, %211
  %236 = load i32, i32* %14, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %235
  %239 = load double*, double** %8, align 8
  %240 = load i32*, i32** %16, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %239, i64 %245
  %247 = load double, double* %246, align 8
  %248 = fcmp olt double %247, 0.000000e+00
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  store i32 0, i32* %14, align 4
  br label %267

250:                                              ; preds = %238, %235
  %251 = load i32, i32* %14, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %265, label %253

253:                                              ; preds = %250
  %254 = load double*, double** %8, align 8
  %255 = load i32*, i32** %16, align 8
  %256 = load i32, i32* %10, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds double, double* %254, i64 %260
  %262 = load double, double* %261, align 8
  %263 = fcmp ogt double %262, 0.000000e+00
  br i1 %263, label %264, label %265

264:                                              ; preds = %253
  store i32 1, i32* %14, align 4
  br label %266

265:                                              ; preds = %253, %250
  store i32 0, i32* %15, align 4
  br label %271

266:                                              ; preds = %264
  br label %267

267:                                              ; preds = %266, %249
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %207

271:                                              ; preds = %265, %207
  %272 = load i32, i32* %15, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %310

274:                                              ; preds = %271
  %275 = load i32, i32* %13, align 4
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %277, label %310

277:                                              ; preds = %274
  %278 = load double*, double** %8, align 8
  %279 = load i32*, i32** %16, align 8
  %280 = load i32, i32* %11, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, double* %278, i64 %285
  %287 = load double, double* %286, align 8
  %288 = call i64 @fabs(double %287)
  %289 = load double*, double** %8, align 8
  %290 = load i32*, i32** %16, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds double, double* %289, i64 %293
  %295 = load double, double* %294, align 8
  %296 = call i64 @fabs(double %295)
  %297 = icmp slt i64 %288, %296
  br i1 %297, label %298, label %305

298:                                              ; preds = %277
  %299 = load i32*, i32** %16, align 8
  %300 = load i32, i32* %11, align 4
  %301 = sub nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %12, align 4
  br label %309

305:                                              ; preds = %277
  %306 = load i32*, i32** %16, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %12, align 4
  br label %309

309:                                              ; preds = %305, %298
  br label %310

310:                                              ; preds = %309, %274, %271
  %311 = load i32, i32* %12, align 4
  store i32 %311, i32* %10, align 4
  br label %312

312:                                              ; preds = %327, %310
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* %11, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %330

316:                                              ; preds = %312
  %317 = load i32*, i32** %16, align 8
  %318 = load i32, i32* %10, align 4
  %319 = add nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %317, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %16, align 8
  %324 = load i32, i32* %10, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %322, i32* %326, align 4
  br label %327

327:                                              ; preds = %316
  %328 = load i32, i32* %10, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %10, align 4
  br label %312

330:                                              ; preds = %312
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %331, -1
  store i32 %332, i32* %11, align 4
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* %13, align 4
  br label %192

335:                                              ; preds = %192
  store i32 0, i32* %9, align 4
  br label %336

336:                                              ; preds = %350, %335
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* %5, align 4
  %339 = icmp sle i32 %337, %338
  br i1 %339, label %340, label %353

340:                                              ; preds = %336
  %341 = load i32*, i32** %16, align 8
  %342 = load i32, i32* %9, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load i32*, i32** %6, align 8
  %347 = load i32, i32* %9, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  store i32 %345, i32* %349, align 4
  br label %350

350:                                              ; preds = %340
  %351 = load i32, i32* %9, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %9, align 4
  br label %336

353:                                              ; preds = %336
  %354 = load i32*, i32** %16, align 8
  %355 = call i32 @free(i32* %354)
  ret void
}

declare dso_local i64 @Util_malloc(i32) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
