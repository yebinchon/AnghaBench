; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_lls.c_avpriv_solve_lls.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_lls.c_avpriv_solve_lls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double**, i32, double**, double* }

@MAX_VARS_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avpriv_solve_lls(%struct.TYPE_3__* %0, double %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store double %1, double* %5, align 8
  store i16 %2, i16* %6, align 2
  %18 = load i32, i32* @MAX_VARS_ALIGN, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load double**, double*** %21, align 8
  %23 = getelementptr inbounds double*, double** %22, i64 1
  %24 = load double*, double** %23, align 8
  %25 = getelementptr inbounds double, double* %24, i64 0
  %26 = bitcast double* %25 to i8*
  %27 = bitcast i8* %26 to double*
  store double* %27, double** %10, align 8
  %28 = load i32, i32* @MAX_VARS_ALIGN, align 4
  %29 = zext i32 %28 to i64
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load double**, double*** %31, align 8
  %33 = getelementptr inbounds double*, double** %32, i64 1
  %34 = load double*, double** %33, align 8
  %35 = getelementptr inbounds double, double* %34, i64 1
  %36 = bitcast double* %35 to i8*
  %37 = bitcast i8* %36 to double*
  store double* %37, double** %11, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load double**, double*** %39, align 8
  %41 = getelementptr inbounds double*, double** %40, i64 0
  %42 = load double*, double** %41, align 8
  store double* %42, double** %12, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %141, %3
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %144

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %137, %50
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %140

56:                                               ; preds = %52
  %57 = load double*, double** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %29
  %61 = getelementptr inbounds double, double* %57, i64 %60
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  %65 = load double, double* %64, align 8
  store double %65, double* %14, align 8
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %93, %56
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = icmp sle i32 %67, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %66
  %72 = load double*, double** %10, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = mul nsw i64 %74, %19
  %76 = getelementptr inbounds double, double* %72, i64 %75
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  %80 = load double, double* %79, align 8
  %81 = load double*, double** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, %19
  %85 = getelementptr inbounds double, double* %81, i64 %84
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fmul double %80, %89
  %91 = load double, double* %14, align 8
  %92 = fsub double %91, %90
  store double %92, double* %14, align 8
  br label %93

93:                                               ; preds = %71
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %66

96:                                               ; preds = %66
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load double, double* %14, align 8
  %102 = load double, double* %5, align 8
  %103 = fcmp olt double %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store double 1.000000e+00, double* %14, align 8
  br label %105

105:                                              ; preds = %104, %100
  %106 = load double, double* %14, align 8
  %107 = call double @sqrt(double %106) #2
  %108 = load double*, double** %10, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %110, %19
  %112 = getelementptr inbounds double, double* %108, i64 %111
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds double, double* %112, i64 %114
  store double %107, double* %115, align 8
  br label %136

116:                                              ; preds = %96
  %117 = load double, double* %14, align 8
  %118 = load double*, double** %10, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = mul nsw i64 %120, %19
  %122 = getelementptr inbounds double, double* %118, i64 %121
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %122, i64 %124
  %126 = load double, double* %125, align 8
  %127 = fdiv double %117, %126
  %128 = load double*, double** %10, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %130, %19
  %132 = getelementptr inbounds double, double* %128, i64 %131
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds double, double* %132, i64 %134
  store double %127, double* %135, align 8
  br label %136

136:                                              ; preds = %116, %105
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %52

140:                                              ; preds = %52
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %46

144:                                              ; preds = %46
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %206, %144
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %209

149:                                              ; preds = %145
  %150 = load double*, double** %12, align 8
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %150, i64 %153
  %155 = load double, double* %154, align 8
  store double %155, double* %15, align 8
  store i32 0, i32* %9, align 4
  br label %156

156:                                              ; preds = %183, %149
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %7, align 4
  %159 = sub nsw i32 %158, 1
  %160 = icmp sle i32 %157, %159
  br i1 %160, label %161, label %186

161:                                              ; preds = %156
  %162 = load double*, double** %10, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = mul nsw i64 %164, %19
  %166 = getelementptr inbounds double, double* %162, i64 %165
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds double, double* %166, i64 %168
  %170 = load double, double* %169, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load double**, double*** %172, align 8
  %174 = getelementptr inbounds double*, double** %173, i64 0
  %175 = load double*, double** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds double, double* %175, i64 %177
  %179 = load double, double* %178, align 8
  %180 = fmul double %170, %179
  %181 = load double, double* %15, align 8
  %182 = fsub double %181, %180
  store double %182, double* %15, align 8
  br label %183

183:                                              ; preds = %161
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %156

186:                                              ; preds = %156
  %187 = load double, double* %15, align 8
  %188 = load double*, double** %10, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = mul nsw i64 %190, %19
  %192 = getelementptr inbounds double, double* %188, i64 %191
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds double, double* %192, i64 %194
  %196 = load double, double* %195, align 8
  %197 = fdiv double %187, %196
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = load double**, double*** %199, align 8
  %201 = getelementptr inbounds double*, double** %200, i64 0
  %202 = load double*, double** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, double* %202, i64 %204
  store double %197, double* %205, align 8
  br label %206

206:                                              ; preds = %186
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %145

209:                                              ; preds = %145
  %210 = load i32, i32* %13, align 4
  %211 = sub nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %212

212:                                              ; preds = %392, %209
  %213 = load i32, i32* %8, align 4
  %214 = load i16, i16* %6, align 2
  %215 = zext i16 %214 to i32
  %216 = icmp sge i32 %213, %215
  br i1 %216, label %217, label %395

217:                                              ; preds = %212
  %218 = load i32, i32* %8, align 4
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %287, %217
  %220 = load i32, i32* %7, align 4
  %221 = icmp sge i32 %220, 0
  br i1 %221, label %222, label %290

222:                                              ; preds = %219
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 2
  %225 = load double**, double*** %224, align 8
  %226 = getelementptr inbounds double*, double** %225, i64 0
  %227 = load double*, double** %226, align 8
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, double* %227, i64 %229
  %231 = load double, double* %230, align 8
  store double %231, double* %16, align 8
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %262, %222
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp sle i32 %235, %236
  br i1 %237, label %238, label %265

238:                                              ; preds = %234
  %239 = load double*, double** %10, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = mul nsw i64 %241, %19
  %243 = getelementptr inbounds double, double* %239, i64 %242
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %243, i64 %245
  %247 = load double, double* %246, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 2
  %250 = load double**, double*** %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds double*, double** %250, i64 %252
  %254 = load double*, double** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds double, double* %254, i64 %256
  %258 = load double, double* %257, align 8
  %259 = fmul double %247, %258
  %260 = load double, double* %16, align 8
  %261 = fsub double %260, %259
  store double %261, double* %16, align 8
  br label %262

262:                                              ; preds = %238
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %9, align 4
  br label %234

265:                                              ; preds = %234
  %266 = load double, double* %16, align 8
  %267 = load double*, double** %10, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = mul nsw i64 %269, %19
  %271 = getelementptr inbounds double, double* %267, i64 %270
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds double, double* %271, i64 %273
  %275 = load double, double* %274, align 8
  %276 = fdiv double %266, %275
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 2
  %279 = load double**, double*** %278, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds double*, double** %279, i64 %281
  %283 = load double*, double** %282, align 8
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, double* %283, i64 %285
  store double %276, double* %286, align 8
  br label %287

287:                                              ; preds = %265
  %288 = load i32, i32* %7, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %7, align 4
  br label %219

290:                                              ; preds = %219
  %291 = load double*, double** %12, align 8
  %292 = getelementptr inbounds double, double* %291, i64 0
  %293 = load double, double* %292, align 8
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 3
  %296 = load double*, double** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds double, double* %296, i64 %298
  store double %293, double* %299, align 8
  store i32 0, i32* %7, align 4
  br label %300

300:                                              ; preds = %388, %290
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp sle i32 %301, %302
  br i1 %303, label %304, label %391

304:                                              ; preds = %300
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 2
  %307 = load double**, double*** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds double*, double** %307, i64 %309
  %311 = load double*, double** %310, align 8
  %312 = load i32, i32* %7, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %311, i64 %313
  %315 = load double, double* %314, align 8
  %316 = load double*, double** %11, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = mul nsw i64 %318, %29
  %320 = getelementptr inbounds double, double* %316, i64 %319
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds double, double* %320, i64 %322
  %324 = load double, double* %323, align 8
  %325 = fmul double %315, %324
  %326 = load double*, double** %12, align 8
  %327 = load i32, i32* %7, align 4
  %328 = add nsw i32 %327, 1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds double, double* %326, i64 %329
  %331 = load double, double* %330, align 8
  %332 = fmul double 2.000000e+00, %331
  %333 = fsub double %325, %332
  store double %333, double* %17, align 8
  store i32 0, i32* %9, align 4
  br label %334

334:                                              ; preds = %363, %304
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* %7, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %366

338:                                              ; preds = %334
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 2
  %341 = load double**, double*** %340, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds double*, double** %341, i64 %343
  %345 = load double*, double** %344, align 8
  %346 = load i32, i32* %9, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds double, double* %345, i64 %347
  %349 = load double, double* %348, align 8
  %350 = fmul double 2.000000e+00, %349
  %351 = load double*, double** %11, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = mul nsw i64 %353, %29
  %355 = getelementptr inbounds double, double* %351, i64 %354
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds double, double* %355, i64 %357
  %359 = load double, double* %358, align 8
  %360 = fmul double %350, %359
  %361 = load double, double* %17, align 8
  %362 = fadd double %361, %360
  store double %362, double* %17, align 8
  br label %363

363:                                              ; preds = %338
  %364 = load i32, i32* %9, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %9, align 4
  br label %334

366:                                              ; preds = %334
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 2
  %369 = load double**, double*** %368, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds double*, double** %369, i64 %371
  %373 = load double*, double** %372, align 8
  %374 = load i32, i32* %7, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds double, double* %373, i64 %375
  %377 = load double, double* %376, align 8
  %378 = load double, double* %17, align 8
  %379 = fmul double %377, %378
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 3
  %382 = load double*, double** %381, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds double, double* %382, i64 %384
  %386 = load double, double* %385, align 8
  %387 = fadd double %386, %379
  store double %387, double* %385, align 8
  br label %388

388:                                              ; preds = %366
  %389 = load i32, i32* %7, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %7, align 4
  br label %300

391:                                              ; preds = %300
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %8, align 4
  %394 = add nsw i32 %393, -1
  store i32 %394, i32* %8, align 4
  br label %212

395:                                              ; preds = %212
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
