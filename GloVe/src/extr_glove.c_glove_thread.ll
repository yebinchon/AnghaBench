; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_glove.c_glove_thread.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_glove.c_glove_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@input_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@num_lines = common dso_local global i64 0, align 8
@num_threads = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@cost = common dso_local global i64* null, align 8
@vector_size = common dso_local global i32 0, align 4
@lines_per_thread = common dso_local global i64* null, align 8
@vocab_size = common dso_local global i64 0, align 8
@W = common dso_local global double* null, align 8
@x_max = common dso_local global i32 0, align 4
@alpha = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Caught NaN in diff for kdiff for thread. Skipping update\00", align 1
@eta = common dso_local global double 0.000000e+00, align 8
@gradsq = common dso_local global double* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @glove_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i32, i32* @input_file, align 4
  %23 = call i32* @fopen(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i64, i64* @num_lines, align 8
  %26 = load i64, i64* @num_threads, align 8
  %27 = sdiv i64 %25, %26
  %28 = load i64, i64* %8, align 8
  %29 = mul nsw i64 %27, %28
  %30 = mul i64 %29, 12
  %31 = load i32, i32* @SEEK_SET, align 4
  %32 = call i32 @fseeko(i32* %24, i64 %30, i32 %31)
  %33 = load i64*, i64** @cost, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @vector_size, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @malloc(i32 %39)
  %41 = inttoptr i64 %40 to double*
  store double* %41, double** %15, align 8
  %42 = load i32, i32* @vector_size, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = call i64 @malloc(i32 %45)
  %47 = inttoptr i64 %46 to double*
  store double* %47, double** %16, align 8
  store i64 0, i64* %4, align 8
  br label %48

48:                                               ; preds = %378, %1
  %49 = load i64, i64* %4, align 8
  %50 = load i64*, i64** @lines_per_thread, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %381

55:                                               ; preds = %48
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @fread(%struct.TYPE_3__* %9, i32 12, i32 1, i32* %56)
  %58 = load i32*, i32** %14, align 8
  %59 = call i64 @feof(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %381

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62
  br label %378

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %74, 1
  %76 = load i32, i32* @vector_size, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %75, %78
  store i64 %79, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %82, 1
  %84 = load i64, i64* @vocab_size, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* @vector_size, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %85, %88
  store i64 %89, i64* %7, align 8
  store double 0.000000e+00, double* %10, align 8
  store i64 0, i64* %5, align 8
  br label %90

90:                                               ; preds = %111, %71
  %91 = load i64, i64* %5, align 8
  %92 = load i32, i32* @vector_size, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load double*, double** @W, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load i64, i64* %6, align 8
  %99 = add nsw i64 %97, %98
  %100 = getelementptr inbounds double, double* %96, i64 %99
  %101 = load double, double* %100, align 8
  %102 = load double*, double** @W, align 8
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* %7, align 8
  %105 = add nsw i64 %103, %104
  %106 = getelementptr inbounds double, double* %102, i64 %105
  %107 = load double, double* %106, align 8
  %108 = fmul double %101, %107
  %109 = load double, double* %10, align 8
  %110 = fadd double %109, %108
  store double %110, double* %10, align 8
  br label %111

111:                                              ; preds = %95
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %5, align 8
  br label %90

114:                                              ; preds = %90
  %115 = load double*, double** @W, align 8
  %116 = load i32, i32* @vector_size, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %6, align 8
  %119 = add nsw i64 %117, %118
  %120 = getelementptr inbounds double, double* %115, i64 %119
  %121 = load double, double* %120, align 8
  %122 = load double*, double** @W, align 8
  %123 = load i32, i32* @vector_size, align 4
  %124 = sext i32 %123 to i64
  %125 = load i64, i64* %7, align 8
  %126 = add nsw i64 %124, %125
  %127 = getelementptr inbounds double, double* %122, i64 %126
  %128 = load double, double* %127, align 8
  %129 = fadd double %121, %128
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call double @log(i32 %131)
  %133 = fsub double %129, %132
  %134 = load double, double* %10, align 8
  %135 = fadd double %134, %133
  store double %135, double* %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @x_max, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %114
  %141 = load double, double* %10, align 8
  br label %151

142:                                              ; preds = %114
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @x_max, align 4
  %146 = sdiv i32 %144, %145
  %147 = load i32, i32* @alpha, align 4
  %148 = call double @pow(i32 %146, i32 %147)
  %149 = load double, double* %10, align 8
  %150 = fmul double %148, %149
  br label %151

151:                                              ; preds = %142, %140
  %152 = phi double [ %141, %140 ], [ %150, %142 ]
  store double %152, double* %11, align 8
  %153 = load double, double* %10, align 8
  %154 = call i64 @isnan(double %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %168, label %156

156:                                              ; preds = %151
  %157 = load double, double* %11, align 8
  %158 = call i64 @isnan(double %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = load double, double* %10, align 8
  %162 = call i64 @isinf(double %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load double, double* %11, align 8
  %166 = call i64 @isinf(double %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %164, %160, %156, %151
  %169 = load i32, i32* @stderr, align 4
  %170 = call i32 @fprintf(i32 %169, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %378

171:                                              ; preds = %164
  %172 = load double, double* %11, align 8
  %173 = fmul double 5.000000e-01, %172
  %174 = load double, double* %10, align 8
  %175 = fmul double %173, %174
  %176 = load i64*, i64** @cost, align 8
  %177 = load i64, i64* %8, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = sitofp i64 %179 to double
  %181 = fadd double %180, %175
  %182 = fptosi double %181 to i64
  store i64 %182, i64* %178, align 8
  %183 = load double, double* @eta, align 8
  %184 = load double, double* %11, align 8
  %185 = fmul double %184, %183
  store double %185, double* %11, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  store i64 0, i64* %5, align 8
  br label %186

186:                                              ; preds = %264, %171
  %187 = load i64, i64* %5, align 8
  %188 = load i32, i32* @vector_size, align 4
  %189 = sext i32 %188 to i64
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %191, label %267

191:                                              ; preds = %186
  %192 = load double, double* %11, align 8
  %193 = load double*, double** @W, align 8
  %194 = load i64, i64* %5, align 8
  %195 = load i64, i64* %7, align 8
  %196 = add nsw i64 %194, %195
  %197 = getelementptr inbounds double, double* %193, i64 %196
  %198 = load double, double* %197, align 8
  %199 = fmul double %192, %198
  store double %199, double* %12, align 8
  %200 = load double, double* %11, align 8
  %201 = load double*, double** @W, align 8
  %202 = load i64, i64* %5, align 8
  %203 = load i64, i64* %6, align 8
  %204 = add nsw i64 %202, %203
  %205 = getelementptr inbounds double, double* %201, i64 %204
  %206 = load double, double* %205, align 8
  %207 = fmul double %200, %206
  store double %207, double* %13, align 8
  %208 = load double, double* %12, align 8
  %209 = load double*, double** @gradsq, align 8
  %210 = load i64, i64* %5, align 8
  %211 = load i64, i64* %6, align 8
  %212 = add nsw i64 %210, %211
  %213 = getelementptr inbounds double, double* %209, i64 %212
  %214 = load double, double* %213, align 8
  %215 = call double @sqrt(double %214) #3
  %216 = fdiv double %208, %215
  %217 = load double*, double** %15, align 8
  %218 = load i64, i64* %5, align 8
  %219 = getelementptr inbounds double, double* %217, i64 %218
  store double %216, double* %219, align 8
  %220 = load double, double* %13, align 8
  %221 = load double*, double** @gradsq, align 8
  %222 = load i64, i64* %5, align 8
  %223 = load i64, i64* %7, align 8
  %224 = add nsw i64 %222, %223
  %225 = getelementptr inbounds double, double* %221, i64 %224
  %226 = load double, double* %225, align 8
  %227 = call double @sqrt(double %226) #3
  %228 = fdiv double %220, %227
  %229 = load double*, double** %16, align 8
  %230 = load i64, i64* %5, align 8
  %231 = getelementptr inbounds double, double* %229, i64 %230
  store double %228, double* %231, align 8
  %232 = load double*, double** %15, align 8
  %233 = load i64, i64* %5, align 8
  %234 = getelementptr inbounds double, double* %232, i64 %233
  %235 = load double, double* %234, align 8
  %236 = load double, double* %17, align 8
  %237 = fadd double %236, %235
  store double %237, double* %17, align 8
  %238 = load double*, double** %16, align 8
  %239 = load i64, i64* %5, align 8
  %240 = getelementptr inbounds double, double* %238, i64 %239
  %241 = load double, double* %240, align 8
  %242 = load double, double* %18, align 8
  %243 = fadd double %242, %241
  store double %243, double* %18, align 8
  %244 = load double, double* %12, align 8
  %245 = load double, double* %12, align 8
  %246 = fmul double %244, %245
  %247 = load double*, double** @gradsq, align 8
  %248 = load i64, i64* %5, align 8
  %249 = load i64, i64* %6, align 8
  %250 = add nsw i64 %248, %249
  %251 = getelementptr inbounds double, double* %247, i64 %250
  %252 = load double, double* %251, align 8
  %253 = fadd double %252, %246
  store double %253, double* %251, align 8
  %254 = load double, double* %13, align 8
  %255 = load double, double* %13, align 8
  %256 = fmul double %254, %255
  %257 = load double*, double** @gradsq, align 8
  %258 = load i64, i64* %5, align 8
  %259 = load i64, i64* %7, align 8
  %260 = add nsw i64 %258, %259
  %261 = getelementptr inbounds double, double* %257, i64 %260
  %262 = load double, double* %261, align 8
  %263 = fadd double %262, %256
  store double %263, double* %261, align 8
  br label %264

264:                                              ; preds = %191
  %265 = load i64, i64* %5, align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* %5, align 8
  br label %186

267:                                              ; preds = %186
  %268 = load double, double* %17, align 8
  %269 = call i64 @isnan(double %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %316, label %271

271:                                              ; preds = %267
  %272 = load double, double* %17, align 8
  %273 = call i64 @isinf(double %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %316, label %275

275:                                              ; preds = %271
  %276 = load double, double* %18, align 8
  %277 = call i64 @isnan(double %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %316, label %279

279:                                              ; preds = %275
  %280 = load double, double* %18, align 8
  %281 = call i64 @isinf(double %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %316, label %283

283:                                              ; preds = %279
  store i64 0, i64* %5, align 8
  br label %284

284:                                              ; preds = %312, %283
  %285 = load i64, i64* %5, align 8
  %286 = load i32, i32* @vector_size, align 4
  %287 = sext i32 %286 to i64
  %288 = icmp slt i64 %285, %287
  br i1 %288, label %289, label %315

289:                                              ; preds = %284
  %290 = load double*, double** %15, align 8
  %291 = load i64, i64* %5, align 8
  %292 = getelementptr inbounds double, double* %290, i64 %291
  %293 = load double, double* %292, align 8
  %294 = load double*, double** @W, align 8
  %295 = load i64, i64* %5, align 8
  %296 = load i64, i64* %6, align 8
  %297 = add nsw i64 %295, %296
  %298 = getelementptr inbounds double, double* %294, i64 %297
  %299 = load double, double* %298, align 8
  %300 = fsub double %299, %293
  store double %300, double* %298, align 8
  %301 = load double*, double** %16, align 8
  %302 = load i64, i64* %5, align 8
  %303 = getelementptr inbounds double, double* %301, i64 %302
  %304 = load double, double* %303, align 8
  %305 = load double*, double** @W, align 8
  %306 = load i64, i64* %5, align 8
  %307 = load i64, i64* %7, align 8
  %308 = add nsw i64 %306, %307
  %309 = getelementptr inbounds double, double* %305, i64 %308
  %310 = load double, double* %309, align 8
  %311 = fsub double %310, %304
  store double %311, double* %309, align 8
  br label %312

312:                                              ; preds = %289
  %313 = load i64, i64* %5, align 8
  %314 = add nsw i64 %313, 1
  store i64 %314, i64* %5, align 8
  br label %284

315:                                              ; preds = %284
  br label %316

316:                                              ; preds = %315, %279, %275, %271, %267
  %317 = load double, double* %11, align 8
  %318 = load double*, double** @gradsq, align 8
  %319 = load i32, i32* @vector_size, align 4
  %320 = sext i32 %319 to i64
  %321 = load i64, i64* %6, align 8
  %322 = add nsw i64 %320, %321
  %323 = getelementptr inbounds double, double* %318, i64 %322
  %324 = load double, double* %323, align 8
  %325 = call double @sqrt(double %324) #3
  %326 = fdiv double %317, %325
  %327 = call i64 @check_nan(double %326)
  %328 = sitofp i64 %327 to double
  %329 = load double*, double** @W, align 8
  %330 = load i32, i32* @vector_size, align 4
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* %6, align 8
  %333 = add nsw i64 %331, %332
  %334 = getelementptr inbounds double, double* %329, i64 %333
  %335 = load double, double* %334, align 8
  %336 = fsub double %335, %328
  store double %336, double* %334, align 8
  %337 = load double, double* %11, align 8
  %338 = load double*, double** @gradsq, align 8
  %339 = load i32, i32* @vector_size, align 4
  %340 = sext i32 %339 to i64
  %341 = load i64, i64* %7, align 8
  %342 = add nsw i64 %340, %341
  %343 = getelementptr inbounds double, double* %338, i64 %342
  %344 = load double, double* %343, align 8
  %345 = call double @sqrt(double %344) #3
  %346 = fdiv double %337, %345
  %347 = call i64 @check_nan(double %346)
  %348 = sitofp i64 %347 to double
  %349 = load double*, double** @W, align 8
  %350 = load i32, i32* @vector_size, align 4
  %351 = sext i32 %350 to i64
  %352 = load i64, i64* %7, align 8
  %353 = add nsw i64 %351, %352
  %354 = getelementptr inbounds double, double* %349, i64 %353
  %355 = load double, double* %354, align 8
  %356 = fsub double %355, %348
  store double %356, double* %354, align 8
  %357 = load double, double* %11, align 8
  %358 = load double, double* %11, align 8
  %359 = fmul double %358, %357
  store double %359, double* %11, align 8
  %360 = load double, double* %11, align 8
  %361 = load double*, double** @gradsq, align 8
  %362 = load i32, i32* @vector_size, align 4
  %363 = sext i32 %362 to i64
  %364 = load i64, i64* %6, align 8
  %365 = add nsw i64 %363, %364
  %366 = getelementptr inbounds double, double* %361, i64 %365
  %367 = load double, double* %366, align 8
  %368 = fadd double %367, %360
  store double %368, double* %366, align 8
  %369 = load double, double* %11, align 8
  %370 = load double*, double** @gradsq, align 8
  %371 = load i32, i32* @vector_size, align 4
  %372 = sext i32 %371 to i64
  %373 = load i64, i64* %7, align 8
  %374 = add nsw i64 %372, %373
  %375 = getelementptr inbounds double, double* %370, i64 %374
  %376 = load double, double* %375, align 8
  %377 = fadd double %376, %369
  store double %377, double* %375, align 8
  br label %378

378:                                              ; preds = %316, %168, %70
  %379 = load i64, i64* %4, align 8
  %380 = add nsw i64 %379, 1
  store i64 %380, i64* %4, align 8
  br label %48

381:                                              ; preds = %61, %48
  %382 = load double*, double** %15, align 8
  %383 = call i32 @free(double* %382)
  %384 = load double*, double** %16, align 8
  %385 = call i32 @free(double* %384)
  %386 = load i32*, i32** %14, align 8
  %387 = call i32 @fclose(i32* %386)
  %388 = call i32 @pthread_exit(i32* null)
  %389 = load i8*, i8** %2, align 8
  ret i8* %389
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fseeko(i32*, i64, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fread(%struct.TYPE_3__*, i32, i32, i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local double @log(i32) #1

declare dso_local double @pow(i32, i32) #1

declare dso_local i64 @isnan(double) #1

declare dso_local i64 @isinf(double) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i64 @check_nan(double) #1

declare dso_local i32 @free(double*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @pthread_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
