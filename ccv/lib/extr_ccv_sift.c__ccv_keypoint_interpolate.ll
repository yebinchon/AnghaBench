; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_sift.c__ccv_keypoint_interpolate.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_sift.c__ccv_keypoint_interpolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double ([9 x float]*, i32, i32, i32, %struct.TYPE_5__*)* @_ccv_keypoint_interpolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @_ccv_keypoint_interpolate([9 x float]* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca [9 x float]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca [3 x [3 x double]], align 16
  %22 = alloca [3 x double], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  store [9 x float]* %0, [9 x float]** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %35 = load [9 x float]*, [9 x float]** %6, align 8
  %36 = getelementptr inbounds [9 x float], [9 x float]* %35, i64 1
  %37 = getelementptr inbounds [9 x float], [9 x float]* %36, i64 0, i64 3
  %38 = load float, float* %37, align 4
  %39 = load [9 x float]*, [9 x float]** %6, align 8
  %40 = getelementptr inbounds [9 x float], [9 x float]* %39, i64 1
  %41 = getelementptr inbounds [9 x float], [9 x float]* %40, i64 0, i64 4
  %42 = load float, float* %41, align 4
  %43 = fmul float 2.000000e+00, %42
  %44 = fsub float %38, %43
  %45 = load [9 x float]*, [9 x float]** %6, align 8
  %46 = getelementptr inbounds [9 x float], [9 x float]* %45, i64 1
  %47 = getelementptr inbounds [9 x float], [9 x float]* %46, i64 0, i64 5
  %48 = load float, float* %47, align 4
  %49 = fadd float %44, %48
  %50 = fpext float %49 to double
  store double %50, double* %11, align 8
  %51 = load [9 x float]*, [9 x float]** %6, align 8
  %52 = getelementptr inbounds [9 x float], [9 x float]* %51, i64 1
  %53 = getelementptr inbounds [9 x float], [9 x float]* %52, i64 0, i64 1
  %54 = load float, float* %53, align 4
  %55 = load [9 x float]*, [9 x float]** %6, align 8
  %56 = getelementptr inbounds [9 x float], [9 x float]* %55, i64 1
  %57 = getelementptr inbounds [9 x float], [9 x float]* %56, i64 0, i64 4
  %58 = load float, float* %57, align 4
  %59 = fmul float 2.000000e+00, %58
  %60 = fsub float %54, %59
  %61 = load [9 x float]*, [9 x float]** %6, align 8
  %62 = getelementptr inbounds [9 x float], [9 x float]* %61, i64 1
  %63 = getelementptr inbounds [9 x float], [9 x float]* %62, i64 0, i64 7
  %64 = load float, float* %63, align 4
  %65 = fadd float %60, %64
  %66 = fpext float %65 to double
  store double %66, double* %12, align 8
  %67 = load [9 x float]*, [9 x float]** %6, align 8
  %68 = getelementptr inbounds [9 x float], [9 x float]* %67, i64 1
  %69 = getelementptr inbounds [9 x float], [9 x float]* %68, i64 0, i64 8
  %70 = load float, float* %69, align 4
  %71 = load [9 x float]*, [9 x float]** %6, align 8
  %72 = getelementptr inbounds [9 x float], [9 x float]* %71, i64 1
  %73 = getelementptr inbounds [9 x float], [9 x float]* %72, i64 0, i64 6
  %74 = load float, float* %73, align 4
  %75 = fsub float %70, %74
  %76 = load [9 x float]*, [9 x float]** %6, align 8
  %77 = getelementptr inbounds [9 x float], [9 x float]* %76, i64 1
  %78 = getelementptr inbounds [9 x float], [9 x float]* %77, i64 0, i64 2
  %79 = load float, float* %78, align 4
  %80 = fsub float %75, %79
  %81 = load [9 x float]*, [9 x float]** %6, align 8
  %82 = getelementptr inbounds [9 x float], [9 x float]* %81, i64 1
  %83 = getelementptr inbounds [9 x float], [9 x float]* %82, i64 0, i64 0
  %84 = load float, float* %83, align 4
  %85 = fadd float %80, %84
  %86 = fpext float %85 to double
  %87 = fmul double %86, 2.500000e-01
  store double %87, double* %13, align 8
  %88 = load double, double* %11, align 8
  %89 = load double, double* %12, align 8
  %90 = fadd double %88, %89
  %91 = load double, double* %11, align 8
  %92 = load double, double* %12, align 8
  %93 = fadd double %91, %92
  %94 = fmul double %90, %93
  %95 = load double, double* %11, align 8
  %96 = load double, double* %12, align 8
  %97 = fmul double %95, %96
  %98 = load double, double* %13, align 8
  %99 = load double, double* %13, align 8
  %100 = fmul double %98, %99
  %101 = fsub double %97, %100
  %102 = fdiv double %94, %101
  store double %102, double* %14, align 8
  %103 = load [9 x float]*, [9 x float]** %6, align 8
  %104 = getelementptr inbounds [9 x float], [9 x float]* %103, i64 1
  %105 = getelementptr inbounds [9 x float], [9 x float]* %104, i64 0, i64 5
  %106 = load float, float* %105, align 4
  %107 = load [9 x float]*, [9 x float]** %6, align 8
  %108 = getelementptr inbounds [9 x float], [9 x float]* %107, i64 1
  %109 = getelementptr inbounds [9 x float], [9 x float]* %108, i64 0, i64 3
  %110 = load float, float* %109, align 4
  %111 = fsub float %106, %110
  %112 = fpext float %111 to double
  %113 = fmul double %112, 5.000000e-01
  store double %113, double* %15, align 8
  %114 = load [9 x float]*, [9 x float]** %6, align 8
  %115 = getelementptr inbounds [9 x float], [9 x float]* %114, i64 1
  %116 = getelementptr inbounds [9 x float], [9 x float]* %115, i64 0, i64 7
  %117 = load float, float* %116, align 4
  %118 = load [9 x float]*, [9 x float]** %6, align 8
  %119 = getelementptr inbounds [9 x float], [9 x float]* %118, i64 1
  %120 = getelementptr inbounds [9 x float], [9 x float]* %119, i64 0, i64 1
  %121 = load float, float* %120, align 4
  %122 = fsub float %117, %121
  %123 = fpext float %122 to double
  %124 = fmul double %123, 5.000000e-01
  store double %124, double* %16, align 8
  %125 = load [9 x float]*, [9 x float]** %6, align 8
  %126 = getelementptr inbounds [9 x float], [9 x float]* %125, i64 2
  %127 = getelementptr inbounds [9 x float], [9 x float]* %126, i64 0, i64 4
  %128 = load float, float* %127, align 4
  %129 = load [9 x float]*, [9 x float]** %6, align 8
  %130 = getelementptr inbounds [9 x float], [9 x float]* %129, i64 0
  %131 = getelementptr inbounds [9 x float], [9 x float]* %130, i64 0, i64 4
  %132 = load float, float* %131, align 4
  %133 = fsub float %128, %132
  %134 = fpext float %133 to double
  %135 = fmul double %134, 5.000000e-01
  store double %135, double* %17, align 8
  %136 = load [9 x float]*, [9 x float]** %6, align 8
  %137 = getelementptr inbounds [9 x float], [9 x float]* %136, i64 2
  %138 = getelementptr inbounds [9 x float], [9 x float]* %137, i64 0, i64 5
  %139 = load float, float* %138, align 4
  %140 = load [9 x float]*, [9 x float]** %6, align 8
  %141 = getelementptr inbounds [9 x float], [9 x float]* %140, i64 0
  %142 = getelementptr inbounds [9 x float], [9 x float]* %141, i64 0, i64 3
  %143 = load float, float* %142, align 4
  %144 = fadd float %139, %143
  %145 = load [9 x float]*, [9 x float]** %6, align 8
  %146 = getelementptr inbounds [9 x float], [9 x float]* %145, i64 2
  %147 = getelementptr inbounds [9 x float], [9 x float]* %146, i64 0, i64 3
  %148 = load float, float* %147, align 4
  %149 = fsub float %144, %148
  %150 = load [9 x float]*, [9 x float]** %6, align 8
  %151 = getelementptr inbounds [9 x float], [9 x float]* %150, i64 0
  %152 = getelementptr inbounds [9 x float], [9 x float]* %151, i64 0, i64 5
  %153 = load float, float* %152, align 4
  %154 = fsub float %149, %153
  %155 = fpext float %154 to double
  %156 = fmul double %155, 2.500000e-01
  store double %156, double* %18, align 8
  %157 = load [9 x float]*, [9 x float]** %6, align 8
  %158 = getelementptr inbounds [9 x float], [9 x float]* %157, i64 2
  %159 = getelementptr inbounds [9 x float], [9 x float]* %158, i64 0, i64 7
  %160 = load float, float* %159, align 4
  %161 = load [9 x float]*, [9 x float]** %6, align 8
  %162 = getelementptr inbounds [9 x float], [9 x float]* %161, i64 0
  %163 = getelementptr inbounds [9 x float], [9 x float]* %162, i64 0, i64 1
  %164 = load float, float* %163, align 4
  %165 = fadd float %160, %164
  %166 = load [9 x float]*, [9 x float]** %6, align 8
  %167 = getelementptr inbounds [9 x float], [9 x float]* %166, i64 2
  %168 = getelementptr inbounds [9 x float], [9 x float]* %167, i64 0, i64 1
  %169 = load float, float* %168, align 4
  %170 = fsub float %165, %169
  %171 = load [9 x float]*, [9 x float]** %6, align 8
  %172 = getelementptr inbounds [9 x float], [9 x float]* %171, i64 0
  %173 = getelementptr inbounds [9 x float], [9 x float]* %172, i64 0, i64 7
  %174 = load float, float* %173, align 4
  %175 = fsub float %170, %174
  %176 = fpext float %175 to double
  %177 = fmul double %176, 2.500000e-01
  store double %177, double* %19, align 8
  %178 = load [9 x float]*, [9 x float]** %6, align 8
  %179 = getelementptr inbounds [9 x float], [9 x float]* %178, i64 0
  %180 = getelementptr inbounds [9 x float], [9 x float]* %179, i64 0, i64 4
  %181 = load float, float* %180, align 4
  %182 = load [9 x float]*, [9 x float]** %6, align 8
  %183 = getelementptr inbounds [9 x float], [9 x float]* %182, i64 1
  %184 = getelementptr inbounds [9 x float], [9 x float]* %183, i64 0, i64 4
  %185 = load float, float* %184, align 4
  %186 = fmul float 2.000000e+00, %185
  %187 = fsub float %181, %186
  %188 = load [9 x float]*, [9 x float]** %6, align 8
  %189 = getelementptr inbounds [9 x float], [9 x float]* %188, i64 2
  %190 = getelementptr inbounds [9 x float], [9 x float]* %189, i64 0, i64 4
  %191 = load float, float* %190, align 4
  %192 = fadd float %187, %191
  %193 = fpext float %192 to double
  store double %193, double* %20, align 8
  %194 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 0
  %195 = getelementptr inbounds [3 x double], [3 x double]* %194, i64 0, i64 0
  %196 = load double, double* %11, align 8
  store double %196, double* %195, align 8
  %197 = getelementptr inbounds double, double* %195, i64 1
  %198 = load double, double* %13, align 8
  store double %198, double* %197, align 8
  %199 = getelementptr inbounds double, double* %197, i64 1
  %200 = load double, double* %18, align 8
  store double %200, double* %199, align 8
  %201 = getelementptr inbounds [3 x double], [3 x double]* %194, i64 1
  %202 = getelementptr inbounds [3 x double], [3 x double]* %201, i64 0, i64 0
  %203 = load double, double* %13, align 8
  store double %203, double* %202, align 8
  %204 = getelementptr inbounds double, double* %202, i64 1
  %205 = load double, double* %12, align 8
  store double %205, double* %204, align 8
  %206 = getelementptr inbounds double, double* %204, i64 1
  %207 = load double, double* %19, align 8
  store double %207, double* %206, align 8
  %208 = getelementptr inbounds [3 x double], [3 x double]* %201, i64 1
  %209 = getelementptr inbounds [3 x double], [3 x double]* %208, i64 0, i64 0
  %210 = load double, double* %18, align 8
  store double %210, double* %209, align 8
  %211 = getelementptr inbounds double, double* %209, i64 1
  %212 = load double, double* %19, align 8
  store double %212, double* %211, align 8
  %213 = getelementptr inbounds double, double* %211, i64 1
  %214 = load double, double* %20, align 8
  store double %214, double* %213, align 8
  %215 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 0
  %216 = load double, double* %15, align 8
  %217 = fneg double %216
  store double %217, double* %215, align 8
  %218 = getelementptr inbounds double, double* %215, i64 1
  %219 = load double, double* %16, align 8
  %220 = fneg double %219
  store double %220, double* %218, align 8
  %221 = getelementptr inbounds double, double* %218, i64 1
  %222 = load double, double* %17, align 8
  %223 = fneg double %222
  store double %223, double* %221, align 8
  store i32 0, i32* %24, align 4
  br label %224

224:                                              ; preds = %383, %5
  %225 = load i32, i32* %24, align 4
  %226 = icmp slt i32 %225, 3
  br i1 %226, label %227, label %386

227:                                              ; preds = %224
  store double 0.000000e+00, double* %27, align 8
  store double 0.000000e+00, double* %28, align 8
  %228 = load i32, i32* %24, align 4
  store i32 %228, i32* %29, align 4
  %229 = load i32, i32* %24, align 4
  store i32 %229, i32* %23, align 4
  br label %230

230:                                              ; preds = %251, %227
  %231 = load i32, i32* %23, align 4
  %232 = icmp slt i32 %231, 3
  br i1 %232, label %233, label %254

233:                                              ; preds = %230
  %234 = load i32, i32* %23, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %235
  %237 = load i32, i32* %24, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [3 x double], [3 x double]* %236, i64 0, i64 %238
  %240 = load double, double* %239, align 8
  store double %240, double* %31, align 8
  %241 = load double, double* %31, align 8
  %242 = call double @llvm.fabs.f64(double %241)
  store double %242, double* %32, align 8
  %243 = load double, double* %32, align 8
  %244 = load double, double* %28, align 8
  %245 = fcmp ogt double %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %233
  %247 = load double, double* %31, align 8
  store double %247, double* %27, align 8
  %248 = load double, double* %32, align 8
  store double %248, double* %28, align 8
  %249 = load i32, i32* %23, align 4
  store i32 %249, i32* %29, align 4
  br label %250

250:                                              ; preds = %246, %233
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %23, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %23, align 4
  br label %230

254:                                              ; preds = %230
  %255 = load double, double* %28, align 8
  %256 = fcmp olt double %255, 0x3DDB7CDFE0000000
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  store double 0.000000e+00, double* %258, align 16
  %259 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  store double 0.000000e+00, double* %259, align 8
  %260 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 0
  store double 0.000000e+00, double* %260, align 16
  br label %386

261:                                              ; preds = %254
  %262 = load i32, i32* %29, align 4
  store i32 %262, i32* %23, align 4
  %263 = load i32, i32* %24, align 4
  store i32 %263, i32* %26, align 4
  br label %264

264:                                              ; preds = %304, %261
  %265 = load i32, i32* %26, align 4
  %266 = icmp slt i32 %265, 3
  br i1 %266, label %267, label %307

267:                                              ; preds = %264
  %268 = load i32, i32* %23, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %269
  %271 = load i32, i32* %26, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [3 x double], [3 x double]* %270, i64 0, i64 %272
  %274 = load double, double* %273, align 8
  store double %274, double* %30, align 8
  %275 = load i32, i32* %24, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %276
  %278 = load i32, i32* %26, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [3 x double], [3 x double]* %277, i64 0, i64 %279
  %281 = load double, double* %280, align 8
  %282 = load i32, i32* %23, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %283
  %285 = load i32, i32* %26, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [3 x double], [3 x double]* %284, i64 0, i64 %286
  store double %281, double* %287, align 8
  %288 = load double, double* %30, align 8
  %289 = load i32, i32* %24, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %290
  %292 = load i32, i32* %26, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [3 x double], [3 x double]* %291, i64 0, i64 %293
  store double %288, double* %294, align 8
  %295 = load double, double* %27, align 8
  %296 = load i32, i32* %24, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %297
  %299 = load i32, i32* %26, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [3 x double], [3 x double]* %298, i64 0, i64 %300
  %302 = load double, double* %301, align 8
  %303 = fdiv double %302, %295
  store double %303, double* %301, align 8
  br label %304

304:                                              ; preds = %267
  %305 = load i32, i32* %26, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %26, align 4
  br label %264

307:                                              ; preds = %264
  %308 = load i32, i32* %24, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %309
  %311 = load double, double* %310, align 8
  store double %311, double* %30, align 8
  %312 = load i32, i32* %23, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %313
  %315 = load double, double* %314, align 8
  %316 = load i32, i32* %24, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %317
  store double %315, double* %318, align 8
  %319 = load double, double* %30, align 8
  %320 = load i32, i32* %23, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %321
  store double %319, double* %322, align 8
  %323 = load double, double* %27, align 8
  %324 = load i32, i32* %24, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %325
  %327 = load double, double* %326, align 8
  %328 = fdiv double %327, %323
  store double %328, double* %326, align 8
  %329 = load i32, i32* %24, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %25, align 4
  br label %331

331:                                              ; preds = %379, %307
  %332 = load i32, i32* %25, align 4
  %333 = icmp slt i32 %332, 3
  br i1 %333, label %334, label %382

334:                                              ; preds = %331
  %335 = load i32, i32* %25, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %336
  %338 = load i32, i32* %24, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [3 x double], [3 x double]* %337, i64 0, i64 %339
  %341 = load double, double* %340, align 8
  store double %341, double* %33, align 8
  %342 = load i32, i32* %24, align 4
  store i32 %342, i32* %26, align 4
  br label %343

343:                                              ; preds = %364, %334
  %344 = load i32, i32* %26, align 4
  %345 = icmp slt i32 %344, 3
  br i1 %345, label %346, label %367

346:                                              ; preds = %343
  %347 = load double, double* %33, align 8
  %348 = load i32, i32* %24, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %349
  %351 = load i32, i32* %26, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [3 x double], [3 x double]* %350, i64 0, i64 %352
  %354 = load double, double* %353, align 8
  %355 = fmul double %347, %354
  %356 = load i32, i32* %25, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %357
  %359 = load i32, i32* %26, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [3 x double], [3 x double]* %358, i64 0, i64 %360
  %362 = load double, double* %361, align 8
  %363 = fsub double %362, %355
  store double %363, double* %361, align 8
  br label %364

364:                                              ; preds = %346
  %365 = load i32, i32* %26, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %26, align 4
  br label %343

367:                                              ; preds = %343
  %368 = load double, double* %33, align 8
  %369 = load i32, i32* %24, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %370
  %372 = load double, double* %371, align 8
  %373 = fmul double %368, %372
  %374 = load i32, i32* %25, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %375
  %377 = load double, double* %376, align 8
  %378 = fsub double %377, %373
  store double %378, double* %376, align 8
  br label %379

379:                                              ; preds = %367
  %380 = load i32, i32* %25, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %25, align 4
  br label %331

382:                                              ; preds = %331
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %24, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %24, align 4
  br label %224

386:                                              ; preds = %257, %224
  store i32 2, i32* %23, align 4
  br label %387

387:                                              ; preds = %419, %386
  %388 = load i32, i32* %23, align 4
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %422

390:                                              ; preds = %387
  %391 = load i32, i32* %23, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %392
  %394 = load double, double* %393, align 8
  store double %394, double* %34, align 8
  %395 = load i32, i32* %23, align 4
  %396 = sub nsw i32 %395, 1
  store i32 %396, i32* %25, align 4
  br label %397

397:                                              ; preds = %415, %390
  %398 = load i32, i32* %25, align 4
  %399 = icmp sge i32 %398, 0
  br i1 %399, label %400, label %418

400:                                              ; preds = %397
  %401 = load double, double* %34, align 8
  %402 = load i32, i32* %25, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %21, i64 0, i64 %403
  %405 = load i32, i32* %23, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [3 x double], [3 x double]* %404, i64 0, i64 %406
  %408 = load double, double* %407, align 8
  %409 = fmul double %401, %408
  %410 = load i32, i32* %25, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 %411
  %413 = load double, double* %412, align 8
  %414 = fsub double %413, %409
  store double %414, double* %412, align 8
  br label %415

415:                                              ; preds = %400
  %416 = load i32, i32* %25, align 4
  %417 = add nsw i32 %416, -1
  store i32 %417, i32* %25, align 4
  br label %397

418:                                              ; preds = %397
  br label %419

419:                                              ; preds = %418
  %420 = load i32, i32* %23, align 4
  %421 = add nsw i32 %420, -1
  store i32 %421, i32* %23, align 4
  br label %387

422:                                              ; preds = %387
  %423 = load i32, i32* %7, align 4
  %424 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 0
  %425 = load double, double* %424, align 16
  %426 = call i32 @ccv_max(double %425, i32 -1)
  %427 = call i8* @ccv_min(i32 %426, i32 1)
  %428 = sext i32 %423 to i64
  %429 = getelementptr i8, i8* %427, i64 %428
  %430 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %430, i32 0, i32 2
  store i8* %429, i8** %431, align 8
  %432 = load i32, i32* %8, align 4
  %433 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  %434 = load double, double* %433, align 8
  %435 = call i32 @ccv_max(double %434, i32 -1)
  %436 = call i8* @ccv_min(i32 %435, i32 1)
  %437 = sext i32 %432 to i64
  %438 = getelementptr i8, i8* %436, i64 %437
  %439 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 1
  store i8* %438, i8** %440, align 8
  %441 = load i32, i32* %9, align 4
  %442 = sitofp i32 %441 to double
  %443 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 2
  %444 = load double, double* %443, align 16
  %445 = fadd double %442, %444
  %446 = fptosi double %445 to i32
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %448, i32 0, i32 0
  store i32 %446, i32* %449, align 8
  %450 = load double, double* %14, align 8
  ret double %450
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local i8* @ccv_min(i32, i32) #2

declare dso_local i32 @ccv_max(double, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
