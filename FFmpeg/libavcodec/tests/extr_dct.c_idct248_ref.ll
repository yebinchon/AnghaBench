; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_dct.c_idct248_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_dct.c_idct248_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idct248_ref.init = internal global i32 0, align 4
@idct248_ref.c8 = internal global [8 x [8 x double]] zeroinitializer, align 16
@idct248_ref.c4 = internal global [4 x [4 x double]] zeroinitializer, align 16
@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, double*)* @idct248_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct248_ref(i32* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca [64 x double], align 16
  %8 = alloca [64 x double], align 16
  %9 = alloca [64 x double], align 16
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %16 = load i32, i32* @idct248_ref.init, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %139, label %18

18:                                               ; preds = %3
  store i32 1, i32* @idct248_ref.init, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %75, %18
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %78

22:                                               ; preds = %19
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %71, %22
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %74

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call double @sqrt(double 1.250000e-01) #3
  br label %33

31:                                               ; preds = %26
  %32 = call double @sqrt(double 2.500000e-01) #3
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi double [ %30, %29 ], [ %32, %31 ]
  store double %34, double* %10, align 8
  %35 = load double, double* %10, align 8
  %36 = load i32, i32* @M_PI, align 4
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sitofp i32 %38 to double
  %40 = load i32, i32* %14, align 4
  %41 = sitofp i32 %40 to double
  %42 = fadd double %41, 5.000000e-01
  %43 = fmul double %39, %42
  %44 = fdiv double %43, 8.000000e+00
  %45 = fptosi double %44 to i32
  %46 = call double @cos(i32 %45)
  %47 = fmul double %35, %46
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @idct248_ref.c8, i64 0, i64 %49
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x double], [8 x double]* %50, i64 0, i64 %52
  store double %47, double* %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @idct248_ref.c8, i64 0, i64 %55
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x double], [8 x double]* %56, i64 0, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @idct248_ref.c8, i64 0, i64 %62
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x double], [8 x double]* %63, i64 0, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fmul double %60, %67
  %69 = load double, double* %11, align 8
  %70 = fadd double %69, %68
  store double %70, double* %11, align 8
  br label %71

71:                                               ; preds = %33
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %23

74:                                               ; preds = %23
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %19

78:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %135, %78
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %138

82:                                               ; preds = %79
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %131, %82
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %134

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call double @sqrt(double 2.500000e-01) #3
  br label %93

91:                                               ; preds = %86
  %92 = call double @sqrt(double 5.000000e-01) #3
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi double [ %90, %89 ], [ %92, %91 ]
  store double %94, double* %10, align 8
  %95 = load double, double* %10, align 8
  %96 = load i32, i32* @M_PI, align 4
  %97 = load i32, i32* %13, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sitofp i32 %98 to double
  %100 = load i32, i32* %14, align 4
  %101 = sitofp i32 %100 to double
  %102 = fadd double %101, 5.000000e-01
  %103 = fmul double %99, %102
  %104 = fdiv double %103, 4.000000e+00
  %105 = fptosi double %104 to i32
  %106 = call double @cos(i32 %105)
  %107 = fmul double %95, %106
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @idct248_ref.c4, i64 0, i64 %109
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x double], [4 x double]* %110, i64 0, i64 %112
  store double %107, double* %113, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @idct248_ref.c4, i64 0, i64 %115
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x double], [4 x double]* %116, i64 0, i64 %118
  %120 = load double, double* %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @idct248_ref.c4, i64 0, i64 %122
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x double], [4 x double]* %123, i64 0, i64 %125
  %127 = load double, double* %126, align 8
  %128 = fmul double %120, %127
  %129 = load double, double* %11, align 8
  %130 = fadd double %129, %128
  store double %130, double* %11, align 8
  br label %131

131:                                              ; preds = %93
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %83

134:                                              ; preds = %83
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %79

138:                                              ; preds = %79
  br label %139

139:                                              ; preds = %138, %3
  %140 = call double @sqrt(double 2.000000e+00) #3
  %141 = fmul double 5.000000e-01, %140
  store double %141, double* %10, align 8
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %213, %139
  %143 = load i32, i32* %13, align 4
  %144 = icmp slt i32 %143, 4
  br i1 %144, label %145, label %216

145:                                              ; preds = %142
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %209, %145
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %147, 8
  br i1 %148, label %149, label %212

149:                                              ; preds = %146
  %150 = load double*, double** %6, align 8
  %151 = load i32, i32* %13, align 4
  %152 = mul nsw i32 2, %151
  %153 = mul nsw i32 8, %152
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %150, i64 %156
  %158 = load double, double* %157, align 8
  %159 = load double*, double** %6, align 8
  %160 = load i32, i32* %13, align 4
  %161 = mul nsw i32 2, %160
  %162 = add nsw i32 %161, 1
  %163 = mul nsw i32 8, %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, double* %159, i64 %166
  %168 = load double, double* %167, align 8
  %169 = fadd double %158, %168
  %170 = load double, double* %10, align 8
  %171 = fmul double %169, %170
  %172 = load i32, i32* %13, align 4
  %173 = mul nsw i32 2, %172
  %174 = mul nsw i32 8, %173
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [64 x double], [64 x double]* %7, i64 0, i64 %177
  store double %171, double* %178, align 8
  %179 = load double*, double** %6, align 8
  %180 = load i32, i32* %13, align 4
  %181 = mul nsw i32 2, %180
  %182 = mul nsw i32 8, %181
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %179, i64 %185
  %187 = load double, double* %186, align 8
  %188 = load double*, double** %6, align 8
  %189 = load i32, i32* %13, align 4
  %190 = mul nsw i32 2, %189
  %191 = add nsw i32 %190, 1
  %192 = mul nsw i32 8, %191
  %193 = load i32, i32* %14, align 4
  %194 = add nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds double, double* %188, i64 %195
  %197 = load double, double* %196, align 8
  %198 = fsub double %187, %197
  %199 = load double, double* %10, align 8
  %200 = fmul double %198, %199
  %201 = load i32, i32* %13, align 4
  %202 = mul nsw i32 2, %201
  %203 = add nsw i32 %202, 1
  %204 = mul nsw i32 8, %203
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [64 x double], [64 x double]* %7, i64 0, i64 %207
  store double %200, double* %208, align 8
  br label %209

209:                                              ; preds = %149
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %14, align 4
  br label %146

212:                                              ; preds = %146
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  br label %142

216:                                              ; preds = %142
  store i32 0, i32* %13, align 4
  br label %217

217:                                              ; preds = %261, %216
  %218 = load i32, i32* %13, align 4
  %219 = icmp slt i32 %218, 8
  br i1 %219, label %220, label %264

220:                                              ; preds = %217
  store i32 0, i32* %14, align 4
  br label %221

221:                                              ; preds = %257, %220
  %222 = load i32, i32* %14, align 4
  %223 = icmp slt i32 %222, 8
  br i1 %223, label %224, label %260

224:                                              ; preds = %221
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %15, align 4
  br label %225

225:                                              ; preds = %246, %224
  %226 = load i32, i32* %15, align 4
  %227 = icmp slt i32 %226, 8
  br i1 %227, label %228, label %249

228:                                              ; preds = %225
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @idct248_ref.c8, i64 0, i64 %230
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x double], [8 x double]* %231, i64 0, i64 %233
  %235 = load double, double* %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = mul nsw i32 8, %236
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [64 x double], [64 x double]* %7, i64 0, i64 %240
  %242 = load double, double* %241, align 8
  %243 = fmul double %235, %242
  %244 = load double, double* %11, align 8
  %245 = fadd double %244, %243
  store double %245, double* %11, align 8
  br label %246

246:                                              ; preds = %228
  %247 = load i32, i32* %15, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %15, align 4
  br label %225

249:                                              ; preds = %225
  %250 = load double, double* %11, align 8
  %251 = load i32, i32* %13, align 4
  %252 = mul nsw i32 8, %251
  %253 = load i32, i32* %14, align 4
  %254 = add nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [64 x double], [64 x double]* %8, i64 0, i64 %255
  store double %250, double* %256, align 8
  br label %257

257:                                              ; preds = %249
  %258 = load i32, i32* %14, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %14, align 4
  br label %221

260:                                              ; preds = %221
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %13, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %13, align 4
  br label %217

264:                                              ; preds = %217
  store i32 0, i32* %13, align 4
  br label %265

265:                                              ; preds = %347, %264
  %266 = load i32, i32* %13, align 4
  %267 = icmp slt i32 %266, 8
  br i1 %267, label %268, label %350

268:                                              ; preds = %265
  store i32 0, i32* %14, align 4
  br label %269

269:                                              ; preds = %343, %268
  %270 = load i32, i32* %14, align 4
  %271 = icmp slt i32 %270, 4
  br i1 %271, label %272, label %346

272:                                              ; preds = %269
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %15, align 4
  br label %273

273:                                              ; preds = %295, %272
  %274 = load i32, i32* %15, align 4
  %275 = icmp slt i32 %274, 4
  br i1 %275, label %276, label %298

276:                                              ; preds = %273
  %277 = load i32, i32* %15, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @idct248_ref.c4, i64 0, i64 %278
  %280 = load i32, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x double], [4 x double]* %279, i64 0, i64 %281
  %283 = load double, double* %282, align 8
  %284 = load i32, i32* %15, align 4
  %285 = mul nsw i32 2, %284
  %286 = mul nsw i32 8, %285
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [64 x double], [64 x double]* %8, i64 0, i64 %289
  %291 = load double, double* %290, align 8
  %292 = fmul double %283, %291
  %293 = load double, double* %11, align 8
  %294 = fadd double %293, %292
  store double %294, double* %11, align 8
  br label %295

295:                                              ; preds = %276
  %296 = load i32, i32* %15, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %15, align 4
  br label %273

298:                                              ; preds = %273
  %299 = load double, double* %11, align 8
  %300 = load i32, i32* %14, align 4
  %301 = mul nsw i32 2, %300
  %302 = mul nsw i32 8, %301
  %303 = load i32, i32* %13, align 4
  %304 = add nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [64 x double], [64 x double]* %9, i64 0, i64 %305
  store double %299, double* %306, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %15, align 4
  br label %307

307:                                              ; preds = %330, %298
  %308 = load i32, i32* %15, align 4
  %309 = icmp slt i32 %308, 4
  br i1 %309, label %310, label %333

310:                                              ; preds = %307
  %311 = load i32, i32* %15, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @idct248_ref.c4, i64 0, i64 %312
  %314 = load i32, i32* %14, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [4 x double], [4 x double]* %313, i64 0, i64 %315
  %317 = load double, double* %316, align 8
  %318 = load i32, i32* %15, align 4
  %319 = mul nsw i32 2, %318
  %320 = add nsw i32 %319, 1
  %321 = mul nsw i32 8, %320
  %322 = load i32, i32* %13, align 4
  %323 = add nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [64 x double], [64 x double]* %8, i64 0, i64 %324
  %326 = load double, double* %325, align 8
  %327 = fmul double %317, %326
  %328 = load double, double* %11, align 8
  %329 = fadd double %328, %327
  store double %329, double* %11, align 8
  br label %330

330:                                              ; preds = %310
  %331 = load i32, i32* %15, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %15, align 4
  br label %307

333:                                              ; preds = %307
  %334 = load double, double* %11, align 8
  %335 = load i32, i32* %14, align 4
  %336 = mul nsw i32 2, %335
  %337 = add nsw i32 %336, 1
  %338 = mul nsw i32 8, %337
  %339 = load i32, i32* %13, align 4
  %340 = add nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [64 x double], [64 x double]* %9, i64 0, i64 %341
  store double %334, double* %342, align 8
  br label %343

343:                                              ; preds = %333
  %344 = load i32, i32* %14, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %14, align 4
  br label %269

346:                                              ; preds = %269
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %13, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %13, align 4
  br label %265

350:                                              ; preds = %265
  store i32 0, i32* %13, align 4
  br label %351

351:                                              ; preds = %390, %350
  %352 = load i32, i32* %13, align 4
  %353 = icmp slt i32 %352, 8
  br i1 %353, label %354, label %393

354:                                              ; preds = %351
  store i32 0, i32* %14, align 4
  br label %355

355:                                              ; preds = %386, %354
  %356 = load i32, i32* %14, align 4
  %357 = icmp slt i32 %356, 8
  br i1 %357, label %358, label %389

358:                                              ; preds = %355
  %359 = load i32, i32* %13, align 4
  %360 = mul nsw i32 8, %359
  %361 = load i32, i32* %14, align 4
  %362 = add nsw i32 %360, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [64 x double], [64 x double]* %9, i64 0, i64 %363
  %365 = load double, double* %364, align 8
  store double %365, double* %12, align 8
  %366 = load double, double* %12, align 8
  %367 = fcmp olt double %366, 0.000000e+00
  br i1 %367, label %368, label %369

368:                                              ; preds = %358
  store double 0.000000e+00, double* %12, align 8
  br label %374

369:                                              ; preds = %358
  %370 = load double, double* %12, align 8
  %371 = fcmp ogt double %370, 2.550000e+02
  br i1 %371, label %372, label %373

372:                                              ; preds = %369
  store double 2.550000e+02, double* %12, align 8
  br label %373

373:                                              ; preds = %372, %369
  br label %374

374:                                              ; preds = %373, %368
  %375 = load double, double* %12, align 8
  %376 = call i64 @rint(double %375)
  %377 = trunc i64 %376 to i32
  %378 = load i32*, i32** %4, align 8
  %379 = load i32, i32* %13, align 4
  %380 = load i32, i32* %5, align 4
  %381 = mul nsw i32 %379, %380
  %382 = load i32, i32* %14, align 4
  %383 = add nsw i32 %381, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %378, i64 %384
  store i32 %377, i32* %385, align 4
  br label %386

386:                                              ; preds = %374
  %387 = load i32, i32* %14, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %14, align 4
  br label %355

389:                                              ; preds = %355
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %13, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %13, align 4
  br label %351

393:                                              ; preds = %351
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local double @cos(i32) #2

declare dso_local i64 @rint(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
