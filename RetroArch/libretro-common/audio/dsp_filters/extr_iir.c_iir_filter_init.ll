; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_iir.c_iir_filter_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_iir.c_iir_filter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iir_data = type { float, float, float, float, float, float }

@M_PI = common dso_local global double 0.000000e+00, align 8
@iir_filter_init.zeros = internal constant [2 x double] [double 0xBFC9CA6AF2BD215E, double 9.233820e-01], align 16
@iir_filter_init.poles = internal constant [2 x double] [double 0x3FE6AA8402589FD4, double 0x3FEFC1D0BA9816E3], align 16
@iir_filter_init.zeros.1 = internal constant [2 x double] [double 0xBFC69B0E0DDFBC94, double 0x3FEDD43F1C75818C], align 16
@iir_filter_init.poles.2 = internal constant [2 x double] [double 0x3FE7AB11C6D1E109, double 9.931330e-01], align 16
@iir_filter_init.zeros.3 = internal constant [2 x double] [double 0xBFBDEB6BF444E0DB, double 0x3FEEDFE5AE452249], align 16
@iir_filter_init.poles.4 = internal constant [2 x double] [double 0x3FEB7D750B44D7A0, double 0x3FEFE282AC174A9F], align 16
@iir_filter_init.zeros.5 = internal constant [2 x double] [double 0xBFBD38D7B7E259FD, double 0x3FEEF73F9CCE0180], align 16
@iir_filter_init.poles.6 = internal constant [2 x double] [double 0x3FEBD655417AF493, double 0x3FEFE4EC12E33193], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iir_data*, float, float, float, float, i32)* @iir_filter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iir_filter_init(%struct.iir_data* %0, float %1, float %2, float %3, float %4, i32 %5) #0 {
  %7 = alloca %struct.iir_data*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  store %struct.iir_data* %0, %struct.iir_data** %7, align 8
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %33 = load double, double* @M_PI, align 8
  %34 = fmul double 2.000000e+00, %33
  %35 = load float, float* %9, align 4
  %36 = fpext float %35 to double
  %37 = fmul double %34, %36
  %38 = load float, float* %8, align 4
  %39 = fpext float %38 to double
  %40 = fdiv double %37, %39
  store double %40, double* %13, align 8
  %41 = load double, double* %13, align 8
  %42 = call float @cos(double %41)
  %43 = fpext float %42 to double
  store double %43, double* %14, align 8
  %44 = load double, double* %13, align 8
  %45 = call float @sin(double %44)
  %46 = fpext float %45 to double
  store double %46, double* %15, align 8
  %47 = load double, double* %15, align 8
  %48 = load float, float* %10, align 4
  %49 = fpext float %48 to double
  %50 = fmul double 2.000000e+00, %49
  %51 = fdiv double %47, %50
  store double %51, double* %16, align 8
  %52 = call double @log(double 1.000000e+01) #3
  %53 = load float, float* %11, align 4
  %54 = fpext float %53 to double
  %55 = fmul double %52, %54
  %56 = fdiv double %55, 4.000000e+01
  %57 = call double @exp(double %56) #3
  store double %57, double* %17, align 8
  %58 = load double, double* %17, align 8
  %59 = load double, double* %17, align 8
  %60 = fadd double %58, %59
  %61 = call double @sqrt(double %60) #3
  store double %61, double* %18, align 8
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  store float 0.000000e+00, float* %23, align 4
  store float 0.000000e+00, float* %24, align 4
  %62 = load i32, i32* %12, align 4
  switch i32 %62, label %589 [
    i32 133, label %63
    i32 135, label %84
    i32 139, label %106
    i32 136, label %125
    i32 137, label %140
    i32 131, label %157
    i32 128, label %170
    i32 130, label %308
    i32 138, label %335
    i32 132, label %419
    i32 129, label %492
    i32 134, label %516
  ]

63:                                               ; preds = %6
  %64 = load double, double* %14, align 8
  %65 = fsub double 1.000000e+00, %64
  %66 = fdiv double %65, 2.000000e+00
  %67 = fptrunc double %66 to float
  store float %67, float* %19, align 4
  %68 = load double, double* %14, align 8
  %69 = fsub double 1.000000e+00, %68
  %70 = fptrunc double %69 to float
  store float %70, float* %20, align 4
  %71 = load double, double* %14, align 8
  %72 = fsub double 1.000000e+00, %71
  %73 = fdiv double %72, 2.000000e+00
  %74 = fptrunc double %73 to float
  store float %74, float* %21, align 4
  %75 = load double, double* %16, align 8
  %76 = fadd double 1.000000e+00, %75
  %77 = fptrunc double %76 to float
  store float %77, float* %22, align 4
  %78 = load double, double* %14, align 8
  %79 = fmul double -2.000000e+00, %78
  %80 = fptrunc double %79 to float
  store float %80, float* %23, align 4
  %81 = load double, double* %16, align 8
  %82 = fsub double 1.000000e+00, %81
  %83 = fptrunc double %82 to float
  store float %83, float* %24, align 4
  br label %590

84:                                               ; preds = %6
  %85 = load double, double* %14, align 8
  %86 = fadd double 1.000000e+00, %85
  %87 = fdiv double %86, 2.000000e+00
  %88 = fptrunc double %87 to float
  store float %88, float* %19, align 4
  %89 = load double, double* %14, align 8
  %90 = fadd double 1.000000e+00, %89
  %91 = fneg double %90
  %92 = fptrunc double %91 to float
  store float %92, float* %20, align 4
  %93 = load double, double* %14, align 8
  %94 = fadd double 1.000000e+00, %93
  %95 = fdiv double %94, 2.000000e+00
  %96 = fptrunc double %95 to float
  store float %96, float* %21, align 4
  %97 = load double, double* %16, align 8
  %98 = fadd double 1.000000e+00, %97
  %99 = fptrunc double %98 to float
  store float %99, float* %22, align 4
  %100 = load double, double* %14, align 8
  %101 = fmul double -2.000000e+00, %100
  %102 = fptrunc double %101 to float
  store float %102, float* %23, align 4
  %103 = load double, double* %16, align 8
  %104 = fsub double 1.000000e+00, %103
  %105 = fptrunc double %104 to float
  store float %105, float* %24, align 4
  br label %590

106:                                              ; preds = %6
  %107 = load double, double* %16, align 8
  %108 = fsub double 1.000000e+00, %107
  %109 = fptrunc double %108 to float
  store float %109, float* %19, align 4
  %110 = load double, double* %14, align 8
  %111 = fmul double -2.000000e+00, %110
  %112 = fptrunc double %111 to float
  store float %112, float* %20, align 4
  %113 = load double, double* %16, align 8
  %114 = fadd double 1.000000e+00, %113
  %115 = fptrunc double %114 to float
  store float %115, float* %21, align 4
  %116 = load double, double* %16, align 8
  %117 = fadd double 1.000000e+00, %116
  %118 = fptrunc double %117 to float
  store float %118, float* %22, align 4
  %119 = load double, double* %14, align 8
  %120 = fmul double -2.000000e+00, %119
  %121 = fptrunc double %120 to float
  store float %121, float* %23, align 4
  %122 = load double, double* %16, align 8
  %123 = fsub double 1.000000e+00, %122
  %124 = fptrunc double %123 to float
  store float %124, float* %24, align 4
  br label %590

125:                                              ; preds = %6
  %126 = load double, double* %16, align 8
  %127 = fptrunc double %126 to float
  store float %127, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  %128 = load double, double* %16, align 8
  %129 = fneg double %128
  %130 = fptrunc double %129 to float
  store float %130, float* %21, align 4
  %131 = load double, double* %16, align 8
  %132 = fadd double 1.000000e+00, %131
  %133 = fptrunc double %132 to float
  store float %133, float* %22, align 4
  %134 = load double, double* %14, align 8
  %135 = fmul double -2.000000e+00, %134
  %136 = fptrunc double %135 to float
  store float %136, float* %23, align 4
  %137 = load double, double* %16, align 8
  %138 = fsub double 1.000000e+00, %137
  %139 = fptrunc double %138 to float
  store float %139, float* %24, align 4
  br label %590

140:                                              ; preds = %6
  %141 = load double, double* %15, align 8
  %142 = fdiv double %141, 2.000000e+00
  %143 = fptrunc double %142 to float
  store float %143, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  %144 = load double, double* %15, align 8
  %145 = fneg double %144
  %146 = fdiv double %145, 2.000000e+00
  %147 = fptrunc double %146 to float
  store float %147, float* %21, align 4
  %148 = load double, double* %16, align 8
  %149 = fadd double 1.000000e+00, %148
  %150 = fptrunc double %149 to float
  store float %150, float* %22, align 4
  %151 = load double, double* %14, align 8
  %152 = fmul double -2.000000e+00, %151
  %153 = fptrunc double %152 to float
  store float %153, float* %23, align 4
  %154 = load double, double* %16, align 8
  %155 = fsub double 1.000000e+00, %154
  %156 = fptrunc double %155 to float
  store float %156, float* %24, align 4
  br label %590

157:                                              ; preds = %6
  store float 1.000000e+00, float* %19, align 4
  %158 = load double, double* %14, align 8
  %159 = fmul double -2.000000e+00, %158
  %160 = fptrunc double %159 to float
  store float %160, float* %20, align 4
  store float 1.000000e+00, float* %21, align 4
  %161 = load double, double* %16, align 8
  %162 = fadd double 1.000000e+00, %161
  %163 = fptrunc double %162 to float
  store float %163, float* %22, align 4
  %164 = load double, double* %14, align 8
  %165 = fmul double -2.000000e+00, %164
  %166 = fptrunc double %165 to float
  store float %166, float* %23, align 4
  %167 = load double, double* %16, align 8
  %168 = fsub double 1.000000e+00, %167
  %169 = fptrunc double %168 to float
  store float %169, float* %24, align 4
  br label %590

170:                                              ; preds = %6
  %171 = load float, float* %8, align 4
  %172 = fptosi float %171 to i32
  %173 = icmp eq i32 %172, 44100
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 0
  %176 = call i32 @make_poly_from_roots(double* getelementptr inbounds ([2 x double], [2 x double]* @iir_filter_init.zeros, i64 0, i64 0), i32 2, float* %175)
  %177 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 0
  %178 = call i32 @make_poly_from_roots(double* getelementptr inbounds ([2 x double], [2 x double]* @iir_filter_init.poles, i64 0, i64 0), i32 2, float* %177)
  br label %209

179:                                              ; preds = %170
  %180 = load float, float* %8, align 4
  %181 = fptosi float %180 to i32
  %182 = icmp eq i32 %181, 48000
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 0
  %185 = call i32 @make_poly_from_roots(double* getelementptr inbounds ([2 x double], [2 x double]* @iir_filter_init.zeros.1, i64 0, i64 0), i32 2, float* %184)
  %186 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 0
  %187 = call i32 @make_poly_from_roots(double* getelementptr inbounds ([2 x double], [2 x double]* @iir_filter_init.poles.2, i64 0, i64 0), i32 2, float* %186)
  br label %208

188:                                              ; preds = %179
  %189 = load float, float* %8, align 4
  %190 = fptosi float %189 to i32
  %191 = icmp eq i32 %190, 88200
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 0
  %194 = call i32 @make_poly_from_roots(double* getelementptr inbounds ([2 x double], [2 x double]* @iir_filter_init.zeros.3, i64 0, i64 0), i32 2, float* %193)
  %195 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 0
  %196 = call i32 @make_poly_from_roots(double* getelementptr inbounds ([2 x double], [2 x double]* @iir_filter_init.poles.4, i64 0, i64 0), i32 2, float* %195)
  br label %207

197:                                              ; preds = %188
  %198 = load float, float* %8, align 4
  %199 = fptosi float %198 to i32
  %200 = icmp eq i32 %199, 96000
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 0
  %203 = call i32 @make_poly_from_roots(double* getelementptr inbounds ([2 x double], [2 x double]* @iir_filter_init.zeros.5, i64 0, i64 0), i32 2, float* %202)
  %204 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 0
  %205 = call i32 @make_poly_from_roots(double* getelementptr inbounds ([2 x double], [2 x double]* @iir_filter_init.poles.6, i64 0, i64 0), i32 2, float* %204)
  br label %206

206:                                              ; preds = %201, %197
  br label %207

207:                                              ; preds = %206, %192
  br label %208

208:                                              ; preds = %207, %183
  br label %209

209:                                              ; preds = %208, %174
  %210 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 0
  %211 = load float, float* %210, align 4
  store float %211, float* %19, align 4
  %212 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 1
  %213 = load float, float* %212, align 4
  store float %213, float* %20, align 4
  %214 = getelementptr inbounds [3 x float], [3 x float]* %31, i64 0, i64 2
  %215 = load float, float* %214, align 4
  store float %215, float* %21, align 4
  %216 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 0
  %217 = load float, float* %216, align 4
  store float %217, float* %22, align 4
  %218 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 1
  %219 = load float, float* %218, align 4
  store float %219, float* %23, align 4
  %220 = getelementptr inbounds [3 x float], [3 x float]* %32, i64 0, i64 2
  %221 = load float, float* %220, align 4
  store float %221, float* %24, align 4
  %222 = load double, double* @M_PI, align 8
  %223 = fmul double 2.000000e+00, %222
  %224 = fmul double %223, 1.000000e+03
  %225 = load float, float* %8, align 4
  %226 = fpext float %225 to double
  %227 = fdiv double %224, %226
  store double %227, double* %25, align 8
  %228 = load float, float* %19, align 4
  %229 = load float, float* %20, align 4
  %230 = load double, double* %25, align 8
  %231 = fneg double %230
  %232 = call float @cos(double %231)
  %233 = fmul float %229, %232
  %234 = fadd float %228, %233
  %235 = load float, float* %21, align 4
  %236 = load double, double* %25, align 8
  %237 = fmul double -2.000000e+00, %236
  %238 = call float @cos(double %237)
  %239 = fmul float %235, %238
  %240 = fadd float %234, %239
  %241 = fpext float %240 to double
  store double %241, double* %26, align 8
  %242 = load float, float* %22, align 4
  %243 = load float, float* %23, align 4
  %244 = load double, double* %25, align 8
  %245 = fneg double %244
  %246 = call float @cos(double %245)
  %247 = fmul float %243, %246
  %248 = fadd float %242, %247
  %249 = load float, float* %24, align 4
  %250 = load double, double* %25, align 8
  %251 = fmul double -2.000000e+00, %250
  %252 = call float @cos(double %251)
  %253 = fmul float %249, %252
  %254 = fadd float %248, %253
  %255 = fpext float %254 to double
  store double %255, double* %27, align 8
  %256 = load float, float* %20, align 4
  %257 = load double, double* %25, align 8
  %258 = fneg double %257
  %259 = call float @sin(double %258)
  %260 = fmul float %256, %259
  %261 = load float, float* %21, align 4
  %262 = load double, double* %25, align 8
  %263 = fmul double -2.000000e+00, %262
  %264 = call float @sin(double %263)
  %265 = fmul float %261, %264
  %266 = fadd float %260, %265
  %267 = fpext float %266 to double
  store double %267, double* %28, align 8
  %268 = load float, float* %23, align 4
  %269 = load double, double* %25, align 8
  %270 = fneg double %269
  %271 = call float @sin(double %270)
  %272 = fmul float %268, %271
  %273 = load float, float* %24, align 4
  %274 = load double, double* %25, align 8
  %275 = fmul double -2.000000e+00, %274
  %276 = call float @sin(double %275)
  %277 = fmul float %273, %276
  %278 = fadd float %272, %277
  %279 = fpext float %278 to double
  store double %279, double* %29, align 8
  %280 = load double, double* %26, align 8
  %281 = call double @sqr(double %280)
  %282 = load double, double* %28, align 8
  %283 = call double @sqr(double %282)
  %284 = fadd double %281, %283
  %285 = load double, double* %27, align 8
  %286 = call double @sqr(double %285)
  %287 = load double, double* %29, align 8
  %288 = call double @sqr(double %287)
  %289 = fadd double %286, %288
  %290 = fdiv double %284, %289
  %291 = call double @sqrt(double %290) #3
  %292 = fdiv double 1.000000e+00, %291
  store double %292, double* %30, align 8
  %293 = load double, double* %30, align 8
  %294 = load float, float* %19, align 4
  %295 = fpext float %294 to double
  %296 = fmul double %295, %293
  %297 = fptrunc double %296 to float
  store float %297, float* %19, align 4
  %298 = load double, double* %30, align 8
  %299 = load float, float* %20, align 4
  %300 = fpext float %299 to double
  %301 = fmul double %300, %298
  %302 = fptrunc double %301 to float
  store float %302, float* %20, align 4
  %303 = load double, double* %30, align 8
  %304 = load float, float* %21, align 4
  %305 = fpext float %304 to double
  %306 = fmul double %305, %303
  %307 = fptrunc double %306 to float
  store float %307, float* %21, align 4
  br label %590

308:                                              ; preds = %6
  %309 = load double, double* %16, align 8
  %310 = load double, double* %17, align 8
  %311 = fmul double %309, %310
  %312 = fadd double 1.000000e+00, %311
  %313 = fptrunc double %312 to float
  store float %313, float* %19, align 4
  %314 = load double, double* %14, align 8
  %315 = fmul double -2.000000e+00, %314
  %316 = fptrunc double %315 to float
  store float %316, float* %20, align 4
  %317 = load double, double* %16, align 8
  %318 = load double, double* %17, align 8
  %319 = fmul double %317, %318
  %320 = fsub double 1.000000e+00, %319
  %321 = fptrunc double %320 to float
  store float %321, float* %21, align 4
  %322 = load double, double* %16, align 8
  %323 = load double, double* %17, align 8
  %324 = fdiv double %322, %323
  %325 = fadd double 1.000000e+00, %324
  %326 = fptrunc double %325 to float
  store float %326, float* %22, align 4
  %327 = load double, double* %14, align 8
  %328 = fmul double -2.000000e+00, %327
  %329 = fptrunc double %328 to float
  store float %329, float* %23, align 4
  %330 = load double, double* %16, align 8
  %331 = load double, double* %17, align 8
  %332 = fdiv double %330, %331
  %333 = fsub double 1.000000e+00, %332
  %334 = fptrunc double %333 to float
  store float %334, float* %24, align 4
  br label %590

335:                                              ; preds = %6
  %336 = load double, double* %17, align 8
  %337 = load double, double* %17, align 8
  %338 = fmul double %336, %337
  %339 = fadd double %338, 1.000000e+00
  %340 = fdiv double %339, 1.000000e+00
  %341 = load double, double* %17, align 8
  %342 = fsub double %341, 1.000000e+00
  %343 = call i32 @pow(double %342, i32 2)
  %344 = sitofp i32 %343 to double
  %345 = fsub double %340, %344
  %346 = call double @sqrt(double %345) #3
  store double %346, double* %18, align 8
  %347 = load double, double* %17, align 8
  %348 = load double, double* %17, align 8
  %349 = fadd double %348, 1.000000e+00
  %350 = load double, double* %17, align 8
  %351 = fsub double %350, 1.000000e+00
  %352 = load double, double* %14, align 8
  %353 = fmul double %351, %352
  %354 = fsub double %349, %353
  %355 = load double, double* %18, align 8
  %356 = load double, double* %15, align 8
  %357 = fmul double %355, %356
  %358 = fadd double %354, %357
  %359 = fmul double %347, %358
  %360 = fptrunc double %359 to float
  store float %360, float* %19, align 4
  %361 = load double, double* %17, align 8
  %362 = fmul double 2.000000e+00, %361
  %363 = load double, double* %17, align 8
  %364 = fsub double %363, 1.000000e+00
  %365 = load double, double* %17, align 8
  %366 = fadd double %365, 1.000000e+00
  %367 = load double, double* %14, align 8
  %368 = fmul double %366, %367
  %369 = fsub double %364, %368
  %370 = fmul double %362, %369
  %371 = fptrunc double %370 to float
  store float %371, float* %20, align 4
  %372 = load double, double* %17, align 8
  %373 = load double, double* %17, align 8
  %374 = fadd double %373, 1.000000e+00
  %375 = load double, double* %17, align 8
  %376 = fsub double %375, 1.000000e+00
  %377 = load double, double* %14, align 8
  %378 = fmul double %376, %377
  %379 = fsub double %374, %378
  %380 = load double, double* %18, align 8
  %381 = load double, double* %15, align 8
  %382 = fmul double %380, %381
  %383 = fsub double %379, %382
  %384 = fmul double %372, %383
  %385 = fptrunc double %384 to float
  store float %385, float* %21, align 4
  %386 = load double, double* %17, align 8
  %387 = fadd double %386, 1.000000e+00
  %388 = load double, double* %17, align 8
  %389 = fsub double %388, 1.000000e+00
  %390 = load double, double* %14, align 8
  %391 = fmul double %389, %390
  %392 = fadd double %387, %391
  %393 = load double, double* %18, align 8
  %394 = load double, double* %15, align 8
  %395 = fmul double %393, %394
  %396 = fadd double %392, %395
  %397 = fptrunc double %396 to float
  store float %397, float* %22, align 4
  %398 = load double, double* %17, align 8
  %399 = fsub double %398, 1.000000e+00
  %400 = load double, double* %17, align 8
  %401 = fadd double %400, 1.000000e+00
  %402 = load double, double* %14, align 8
  %403 = fmul double %401, %402
  %404 = fadd double %399, %403
  %405 = fmul double -2.000000e+00, %404
  %406 = fptrunc double %405 to float
  store float %406, float* %23, align 4
  %407 = load double, double* %17, align 8
  %408 = fadd double %407, 1.000000e+00
  %409 = load double, double* %17, align 8
  %410 = fsub double %409, 1.000000e+00
  %411 = load double, double* %14, align 8
  %412 = fmul double %410, %411
  %413 = fadd double %408, %412
  %414 = load double, double* %18, align 8
  %415 = load double, double* %15, align 8
  %416 = fmul double %414, %415
  %417 = fsub double %413, %416
  %418 = fptrunc double %417 to float
  store float %418, float* %24, align 4
  br label %590

419:                                              ; preds = %6
  %420 = load double, double* %17, align 8
  %421 = load double, double* %17, align 8
  %422 = fadd double %421, 1.000000e+00
  %423 = load double, double* %17, align 8
  %424 = fsub double %423, 1.000000e+00
  %425 = load double, double* %14, align 8
  %426 = fmul double %424, %425
  %427 = fsub double %422, %426
  %428 = load double, double* %18, align 8
  %429 = load double, double* %15, align 8
  %430 = fmul double %428, %429
  %431 = fadd double %427, %430
  %432 = fmul double %420, %431
  %433 = fptrunc double %432 to float
  store float %433, float* %19, align 4
  %434 = load double, double* %17, align 8
  %435 = fmul double 2.000000e+00, %434
  %436 = load double, double* %17, align 8
  %437 = fsub double %436, 1.000000e+00
  %438 = load double, double* %17, align 8
  %439 = fadd double %438, 1.000000e+00
  %440 = load double, double* %14, align 8
  %441 = fmul double %439, %440
  %442 = fsub double %437, %441
  %443 = fmul double %435, %442
  %444 = fptrunc double %443 to float
  store float %444, float* %20, align 4
  %445 = load double, double* %17, align 8
  %446 = load double, double* %17, align 8
  %447 = fadd double %446, 1.000000e+00
  %448 = load double, double* %17, align 8
  %449 = fsub double %448, 1.000000e+00
  %450 = load double, double* %14, align 8
  %451 = fmul double %449, %450
  %452 = fsub double %447, %451
  %453 = load double, double* %18, align 8
  %454 = load double, double* %15, align 8
  %455 = fmul double %453, %454
  %456 = fsub double %452, %455
  %457 = fmul double %445, %456
  %458 = fptrunc double %457 to float
  store float %458, float* %21, align 4
  %459 = load double, double* %17, align 8
  %460 = fadd double %459, 1.000000e+00
  %461 = load double, double* %17, align 8
  %462 = fsub double %461, 1.000000e+00
  %463 = load double, double* %14, align 8
  %464 = fmul double %462, %463
  %465 = fadd double %460, %464
  %466 = load double, double* %18, align 8
  %467 = load double, double* %15, align 8
  %468 = fmul double %466, %467
  %469 = fadd double %465, %468
  %470 = fptrunc double %469 to float
  store float %470, float* %22, align 4
  %471 = load double, double* %17, align 8
  %472 = fsub double %471, 1.000000e+00
  %473 = load double, double* %17, align 8
  %474 = fadd double %473, 1.000000e+00
  %475 = load double, double* %14, align 8
  %476 = fmul double %474, %475
  %477 = fadd double %472, %476
  %478 = fmul double -2.000000e+00, %477
  %479 = fptrunc double %478 to float
  store float %479, float* %23, align 4
  %480 = load double, double* %17, align 8
  %481 = fadd double %480, 1.000000e+00
  %482 = load double, double* %17, align 8
  %483 = fsub double %482, 1.000000e+00
  %484 = load double, double* %14, align 8
  %485 = fmul double %483, %484
  %486 = fadd double %481, %485
  %487 = load double, double* %18, align 8
  %488 = load double, double* %15, align 8
  %489 = fmul double %487, %488
  %490 = fsub double %486, %489
  %491 = fptrunc double %490 to float
  store float %491, float* %24, align 4
  br label %590

492:                                              ; preds = %6
  %493 = load double, double* @M_PI, align 8
  %494 = fmul double 2.000000e+00, %493
  %495 = fmul double %494, 5.283000e+03
  %496 = load float, float* %8, align 4
  %497 = fpext float %496 to double
  %498 = fdiv double %495, %497
  store double %498, double* %13, align 8
  %499 = load double, double* %13, align 8
  %500 = call float @cos(double %499)
  %501 = fpext float %500 to double
  store double %501, double* %14, align 8
  %502 = load double, double* %13, align 8
  %503 = call float @sin(double %502)
  %504 = fpext float %503 to double
  store double %504, double* %15, align 8
  %505 = load double, double* %15, align 8
  %506 = fdiv double %505, 0x3FEF020C49BA5E35
  store double %506, double* %16, align 8
  %507 = call double @log(double 1.000000e+01) #3
  %508 = fmul double %507, -9.477000e+00
  %509 = fdiv double %508, 4.000000e+01
  %510 = call double @exp(double %509) #3
  store double %510, double* %17, align 8
  %511 = load double, double* %17, align 8
  %512 = load double, double* %17, align 8
  %513 = fadd double %511, %512
  %514 = call double @sqrt(double %513) #3
  store double %514, double* %18, align 8
  %515 = load double, double* %16, align 8
  br label %516

516:                                              ; preds = %6, %492
  %517 = load double, double* %17, align 8
  %518 = load double, double* %17, align 8
  %519 = fadd double %518, 1.000000e+00
  %520 = load double, double* %17, align 8
  %521 = fsub double %520, 1.000000e+00
  %522 = load double, double* %14, align 8
  %523 = fmul double %521, %522
  %524 = fadd double %519, %523
  %525 = load double, double* %18, align 8
  %526 = load double, double* %15, align 8
  %527 = fmul double %525, %526
  %528 = fadd double %524, %527
  %529 = fmul double %517, %528
  %530 = fptrunc double %529 to float
  store float %530, float* %19, align 4
  %531 = load double, double* %17, align 8
  %532 = fmul double -2.000000e+00, %531
  %533 = load double, double* %17, align 8
  %534 = fsub double %533, 1.000000e+00
  %535 = load double, double* %17, align 8
  %536 = fadd double %535, 1.000000e+00
  %537 = load double, double* %14, align 8
  %538 = fmul double %536, %537
  %539 = fadd double %534, %538
  %540 = fmul double %532, %539
  %541 = fptrunc double %540 to float
  store float %541, float* %20, align 4
  %542 = load double, double* %17, align 8
  %543 = load double, double* %17, align 8
  %544 = fadd double %543, 1.000000e+00
  %545 = load double, double* %17, align 8
  %546 = fsub double %545, 1.000000e+00
  %547 = load double, double* %14, align 8
  %548 = fmul double %546, %547
  %549 = fadd double %544, %548
  %550 = load double, double* %18, align 8
  %551 = load double, double* %15, align 8
  %552 = fmul double %550, %551
  %553 = fsub double %549, %552
  %554 = fmul double %542, %553
  %555 = fptrunc double %554 to float
  store float %555, float* %21, align 4
  %556 = load double, double* %17, align 8
  %557 = fadd double %556, 1.000000e+00
  %558 = load double, double* %17, align 8
  %559 = fsub double %558, 1.000000e+00
  %560 = load double, double* %14, align 8
  %561 = fmul double %559, %560
  %562 = fsub double %557, %561
  %563 = load double, double* %18, align 8
  %564 = load double, double* %15, align 8
  %565 = fmul double %563, %564
  %566 = fadd double %562, %565
  %567 = fptrunc double %566 to float
  store float %567, float* %22, align 4
  %568 = load double, double* %17, align 8
  %569 = fsub double %568, 1.000000e+00
  %570 = load double, double* %17, align 8
  %571 = fadd double %570, 1.000000e+00
  %572 = load double, double* %14, align 8
  %573 = fmul double %571, %572
  %574 = fsub double %569, %573
  %575 = fmul double 2.000000e+00, %574
  %576 = fptrunc double %575 to float
  store float %576, float* %23, align 4
  %577 = load double, double* %17, align 8
  %578 = fadd double %577, 1.000000e+00
  %579 = load double, double* %17, align 8
  %580 = fsub double %579, 1.000000e+00
  %581 = load double, double* %14, align 8
  %582 = fmul double %580, %581
  %583 = fsub double %578, %582
  %584 = load double, double* %18, align 8
  %585 = load double, double* %15, align 8
  %586 = fmul double %584, %585
  %587 = fsub double %583, %586
  %588 = fptrunc double %587 to float
  store float %588, float* %24, align 4
  br label %590

589:                                              ; preds = %6
  br label %590

590:                                              ; preds = %589, %516, %419, %335, %308, %209, %157, %140, %125, %106, %84, %63
  %591 = load float, float* %19, align 4
  %592 = load %struct.iir_data*, %struct.iir_data** %7, align 8
  %593 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %592, i32 0, i32 0
  store float %591, float* %593, align 4
  %594 = load float, float* %20, align 4
  %595 = load %struct.iir_data*, %struct.iir_data** %7, align 8
  %596 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %595, i32 0, i32 1
  store float %594, float* %596, align 4
  %597 = load float, float* %21, align 4
  %598 = load %struct.iir_data*, %struct.iir_data** %7, align 8
  %599 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %598, i32 0, i32 2
  store float %597, float* %599, align 4
  %600 = load float, float* %22, align 4
  %601 = load %struct.iir_data*, %struct.iir_data** %7, align 8
  %602 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %601, i32 0, i32 3
  store float %600, float* %602, align 4
  %603 = load float, float* %23, align 4
  %604 = load %struct.iir_data*, %struct.iir_data** %7, align 8
  %605 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %604, i32 0, i32 4
  store float %603, float* %605, align 4
  %606 = load float, float* %24, align 4
  %607 = load %struct.iir_data*, %struct.iir_data** %7, align 8
  %608 = getelementptr inbounds %struct.iir_data, %struct.iir_data* %607, i32 0, i32 5
  store float %606, float* %608, align 4
  ret void
}

declare dso_local float @cos(double) #1

declare dso_local float @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @make_poly_from_roots(double*, i32, float*) #1

declare dso_local double @sqr(double) #1

declare dso_local i32 @pow(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
