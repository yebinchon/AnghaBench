; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_wahwah.c_wahwah_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_wahwah.c_wahwah_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dspfilter_output = type { float*, i32 }
%struct.dspfilter_input = type { float*, i32 }
%struct.wahwah_data = type { i32, i32, float, float, double, double, double, double, double, double, double, double, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { float, float, float, float }
%struct.TYPE_3__ = type { float, float, float, float }

@WAHWAH_LFO_SKIP_SAMPLES = common dso_local global i32 0, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dspfilter_output*, %struct.dspfilter_input*)* @wahwah_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wahwah_process(i8* %0, %struct.dspfilter_output* %1, %struct.dspfilter_input* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dspfilter_output*, align 8
  %6 = alloca %struct.dspfilter_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wahwah_data*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dspfilter_output* %1, %struct.dspfilter_output** %5, align 8
  store %struct.dspfilter_input* %2, %struct.dspfilter_input** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.wahwah_data*
  store %struct.wahwah_data* %19, %struct.wahwah_data** %8, align 8
  %20 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %21 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %20, i32 0, i32 0
  %22 = load float*, float** %21, align 8
  store float* %22, float** %9, align 8
  %23 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %24 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  %26 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %27 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %26, i32 0, i32 0
  store float* %25, float** %27, align 8
  %28 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %29 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %32 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %299, %3
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %36 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %304

39:                                               ; preds = %33
  %40 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %41 = load float*, float** %9, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  %43 = load float, float* %42, align 4
  store float %43, float* %40, align 4
  %44 = getelementptr inbounds float, float* %40, i64 1
  %45 = load float*, float** %9, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  %47 = load float, float* %46, align 4
  store float %47, float* %44, align 4
  %48 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %49 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @WAHWAH_LFO_SKIP_SAMPLES, align 4
  %53 = srem i32 %50, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %142

55:                                               ; preds = %39
  %56 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %57 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %60 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = sitofp i32 %62 to float
  %64 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %65 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %64, i32 0, i32 2
  %66 = load float, float* %65, align 8
  %67 = fadd float %63, %66
  %68 = call double @cos(float %67)
  %69 = fadd double 1.000000e+00, %68
  %70 = fdiv double %69, 2.000000e+00
  %71 = fptrunc double %70 to float
  store float %71, float* %17, align 4
  %72 = load float, float* %17, align 4
  %73 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %74 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %73, i32 0, i32 3
  %75 = load float, float* %74, align 4
  %76 = fmul float %72, %75
  %77 = fpext float %76 to double
  %78 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %79 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %78, i32 0, i32 4
  %80 = load double, double* %79, align 8
  %81 = fsub double 1.000000e+00, %80
  %82 = fmul double %77, %81
  %83 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %84 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %83, i32 0, i32 4
  %85 = load double, double* %84, align 8
  %86 = fadd double %82, %85
  %87 = fptrunc double %86 to float
  store float %87, float* %17, align 4
  %88 = load float, float* %17, align 4
  %89 = fpext float %88 to double
  %90 = fsub double %89, 1.000000e+00
  %91 = fmul double %90, 6.000000e+00
  %92 = fptrunc double %91 to float
  %93 = call float @exp(float %92)
  store float %93, float* %17, align 4
  %94 = load float, float* @M_PI, align 4
  %95 = load float, float* %17, align 4
  %96 = fmul float %94, %95
  store float %96, float* %13, align 4
  %97 = load float, float* %13, align 4
  %98 = call float @sin(float %97)
  store float %98, float* %14, align 4
  %99 = load float, float* %13, align 4
  %100 = call double @cos(float %99)
  %101 = fptrunc double %100 to float
  store float %101, float* %15, align 4
  %102 = load float, float* %14, align 4
  %103 = fpext float %102 to double
  %104 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %105 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %104, i32 0, i32 5
  %106 = load double, double* %105, align 8
  %107 = fmul double 2.000000e+00, %106
  %108 = fdiv double %103, %107
  %109 = fptrunc double %108 to float
  store float %109, float* %16, align 4
  %110 = load float, float* %15, align 4
  %111 = fpext float %110 to double
  %112 = fsub double 1.000000e+00, %111
  %113 = fdiv double %112, 2.000000e+00
  %114 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %115 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %114, i32 0, i32 6
  store double %113, double* %115, align 8
  %116 = load float, float* %15, align 4
  %117 = fpext float %116 to double
  %118 = fsub double 1.000000e+00, %117
  %119 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %120 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %119, i32 0, i32 7
  store double %118, double* %120, align 8
  %121 = load float, float* %15, align 4
  %122 = fpext float %121 to double
  %123 = fsub double 1.000000e+00, %122
  %124 = fdiv double %123, 2.000000e+00
  %125 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %126 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %125, i32 0, i32 8
  store double %124, double* %126, align 8
  %127 = load float, float* %16, align 4
  %128 = fpext float %127 to double
  %129 = fadd double 1.000000e+00, %128
  %130 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %131 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %130, i32 0, i32 9
  store double %129, double* %131, align 8
  %132 = load float, float* %15, align 4
  %133 = fpext float %132 to double
  %134 = fmul double -2.000000e+00, %133
  %135 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %136 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %135, i32 0, i32 10
  store double %134, double* %136, align 8
  %137 = load float, float* %16, align 4
  %138 = fpext float %137 to double
  %139 = fsub double 1.000000e+00, %138
  %140 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %141 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %140, i32 0, i32 11
  store double %139, double* %141, align 8
  br label %142

142:                                              ; preds = %55, %39
  %143 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %144 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %143, i32 0, i32 6
  %145 = load double, double* %144, align 8
  %146 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %147 = load float, float* %146, align 4
  %148 = fpext float %147 to double
  %149 = fmul double %145, %148
  %150 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %151 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %150, i32 0, i32 7
  %152 = load double, double* %151, align 8
  %153 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %154 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %153, i32 0, i32 13
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load float, float* %155, align 8
  %157 = fpext float %156 to double
  %158 = fmul double %152, %157
  %159 = fadd double %149, %158
  %160 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %161 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %160, i32 0, i32 8
  %162 = load double, double* %161, align 8
  %163 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %164 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %163, i32 0, i32 13
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load float, float* %165, align 4
  %167 = fpext float %166 to double
  %168 = fmul double %162, %167
  %169 = fadd double %159, %168
  %170 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %171 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %170, i32 0, i32 10
  %172 = load double, double* %171, align 8
  %173 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %174 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %173, i32 0, i32 13
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load float, float* %175, align 8
  %177 = fpext float %176 to double
  %178 = fmul double %172, %177
  %179 = fsub double %169, %178
  %180 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %181 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %180, i32 0, i32 11
  %182 = load double, double* %181, align 8
  %183 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %184 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %183, i32 0, i32 13
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  %186 = load float, float* %185, align 4
  %187 = fpext float %186 to double
  %188 = fmul double %182, %187
  %189 = fsub double %179, %188
  %190 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %191 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %190, i32 0, i32 9
  %192 = load double, double* %191, align 8
  %193 = fdiv double %189, %192
  %194 = fptrunc double %193 to float
  store float %194, float* %10, align 4
  %195 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %196 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %195, i32 0, i32 6
  %197 = load double, double* %196, align 8
  %198 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %199 = load float, float* %198, align 4
  %200 = fpext float %199 to double
  %201 = fmul double %197, %200
  %202 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %203 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %202, i32 0, i32 7
  %204 = load double, double* %203, align 8
  %205 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %206 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %205, i32 0, i32 12
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load float, float* %207, align 8
  %209 = fpext float %208 to double
  %210 = fmul double %204, %209
  %211 = fadd double %201, %210
  %212 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %213 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %212, i32 0, i32 8
  %214 = load double, double* %213, align 8
  %215 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %216 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %215, i32 0, i32 12
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = load float, float* %217, align 4
  %219 = fpext float %218 to double
  %220 = fmul double %214, %219
  %221 = fadd double %211, %220
  %222 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %223 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %222, i32 0, i32 10
  %224 = load double, double* %223, align 8
  %225 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %226 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %225, i32 0, i32 12
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 2
  %228 = load float, float* %227, align 8
  %229 = fpext float %228 to double
  %230 = fmul double %224, %229
  %231 = fsub double %221, %230
  %232 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %233 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %232, i32 0, i32 11
  %234 = load double, double* %233, align 8
  %235 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %236 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %235, i32 0, i32 12
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 3
  %238 = load float, float* %237, align 4
  %239 = fpext float %238 to double
  %240 = fmul double %234, %239
  %241 = fsub double %231, %240
  %242 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %243 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %242, i32 0, i32 9
  %244 = load double, double* %243, align 8
  %245 = fdiv double %241, %244
  %246 = fptrunc double %245 to float
  store float %246, float* %11, align 4
  %247 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %248 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %247, i32 0, i32 13
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load float, float* %249, align 8
  %251 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %252 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %251, i32 0, i32 13
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  store float %250, float* %253, align 4
  %254 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %255 = load float, float* %254, align 4
  %256 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %257 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %256, i32 0, i32 13
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  store float %255, float* %258, align 8
  %259 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %260 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %259, i32 0, i32 13
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 2
  %262 = load float, float* %261, align 8
  %263 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %264 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %263, i32 0, i32 13
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 3
  store float %262, float* %265, align 4
  %266 = load float, float* %10, align 4
  %267 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %268 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %267, i32 0, i32 13
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 2
  store float %266, float* %269, align 8
  %270 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %271 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %270, i32 0, i32 12
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 0
  %273 = load float, float* %272, align 8
  %274 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %275 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %274, i32 0, i32 12
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 1
  store float %273, float* %276, align 4
  %277 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %278 = load float, float* %277, align 4
  %279 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %280 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %279, i32 0, i32 12
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  store float %278, float* %281, align 8
  %282 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %283 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %282, i32 0, i32 12
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 2
  %285 = load float, float* %284, align 8
  %286 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %287 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %286, i32 0, i32 12
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 3
  store float %285, float* %288, align 4
  %289 = load float, float* %11, align 4
  %290 = load %struct.wahwah_data*, %struct.wahwah_data** %8, align 8
  %291 = getelementptr inbounds %struct.wahwah_data, %struct.wahwah_data* %290, i32 0, i32 12
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 2
  store float %289, float* %292, align 8
  %293 = load float, float* %10, align 4
  %294 = load float*, float** %9, align 8
  %295 = getelementptr inbounds float, float* %294, i64 0
  store float %293, float* %295, align 4
  %296 = load float, float* %11, align 4
  %297 = load float*, float** %9, align 8
  %298 = getelementptr inbounds float, float* %297, i64 1
  store float %296, float* %298, align 4
  br label %299

299:                                              ; preds = %142
  %300 = load i32, i32* %7, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %7, align 4
  %302 = load float*, float** %9, align 8
  %303 = getelementptr inbounds float, float* %302, i64 2
  store float* %303, float** %9, align 8
  br label %33

304:                                              ; preds = %33
  ret void
}

declare dso_local double @cos(float) #1

declare dso_local float @exp(float) #1

declare dso_local float @sin(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
