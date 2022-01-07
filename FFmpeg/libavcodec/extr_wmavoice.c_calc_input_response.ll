; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_calc_input_response.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_calc_input_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, float*, float*, i64, %struct.TYPE_8__, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, float*)* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, float*)* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, float*)* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, float*)* }

@FCB_TYPE_HARDCODED = common dso_local global i32 0, align 4
@M_LN10 = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global double 0.000000e+00, align 8
@wmavoice_denoise_power_table = common dso_local global float** null, align 8
@wmavoice_energy_table = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, float*, i32, float*, i32)* @calc_input_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_input_response(%struct.TYPE_7__* %0, float* %1, i32 %2, float* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  store float 1.500000e+01, float* %12, align 4
  store float -1.500000e+01, float* %13, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_11__*, float*)*, i32 (%struct.TYPE_11__*, float*)** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 7
  %32 = load float*, float** %7, align 8
  %33 = call i32 %29(%struct.TYPE_11__* %31, float* %32)
  br label %34

34:                                               ; preds = %5
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  %37 = load float, float* %36, align 4
  %38 = load float*, float** %7, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  %40 = load float, float* %39, align 4
  %41 = fmul float %37, %40
  %42 = call float @log10f(float %41) #3
  store float %42, float* %21, align 4
  %43 = load float, float* %21, align 4
  store float %43, float* %11, align 4
  %44 = load float, float* %13, align 4
  %45 = fptosi float %44 to i32
  %46 = load float, float* %21, align 4
  %47 = fptosi float %46 to i32
  %48 = call i64 @FFMAX(i32 %45, i32 %47)
  %49 = uitofp i64 %48 to float
  store float %49, float* %13, align 4
  %50 = load float, float* %12, align 4
  %51 = fpext float %50 to double
  %52 = load float, float* %21, align 4
  %53 = fpext float %52 to double
  %54 = call i32 (double, double, ...) bitcast (i32 (...)* @FFMIN to i32 (double, double, ...)*)(double %51, double %53)
  %55 = sitofp i32 %54 to float
  store float %55, float* %12, align 4
  br label %56

56:                                               ; preds = %34
  store i32 1, i32* %19, align 4
  br label %57

57:                                               ; preds = %110, %56
  %58 = load i32, i32* %19, align 4
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %60, label %113

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60
  %62 = load float*, float** %7, align 8
  %63 = load i32, i32* %19, align 4
  %64 = mul nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %62, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %7, align 8
  %69 = load i32, i32* %19, align 4
  %70 = mul nsw i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %68, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fmul float %67, %73
  %75 = load float*, float** %7, align 8
  %76 = load i32, i32* %19, align 4
  %77 = mul nsw i32 %76, 2
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %75, i64 %79
  %81 = load float, float* %80, align 4
  %82 = load float*, float** %7, align 8
  %83 = load i32, i32* %19, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %82, i64 %86
  %88 = load float, float* %87, align 4
  %89 = fmul float %81, %88
  %90 = fadd float %74, %89
  %91 = call float @log10f(float %90) #3
  store float %91, float* %22, align 4
  %92 = load float, float* %22, align 4
  %93 = load float*, float** %7, align 8
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  store float %92, float* %96, align 4
  %97 = load float, float* %13, align 4
  %98 = fptosi float %97 to i32
  %99 = load float, float* %22, align 4
  %100 = fptosi float %99 to i32
  %101 = call i64 @FFMAX(i32 %98, i32 %100)
  %102 = uitofp i64 %101 to float
  store float %102, float* %13, align 4
  %103 = load float, float* %12, align 4
  %104 = fpext float %103 to double
  %105 = load float, float* %22, align 4
  %106 = fpext float %105 to double
  %107 = call i32 (double, double, ...) bitcast (i32 (...)* @FFMIN to i32 (double, double, ...)*)(double %104, double %106)
  %108 = sitofp i32 %107 to float
  store float %108, float* %12, align 4
  br label %109

109:                                              ; preds = %61
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %19, align 4
  br label %57

113:                                              ; preds = %57
  br label %114

114:                                              ; preds = %113
  %115 = load float*, float** %7, align 8
  %116 = getelementptr inbounds float, float* %115, i64 0
  %117 = load float, float* %116, align 4
  %118 = load float*, float** %7, align 8
  %119 = getelementptr inbounds float, float* %118, i64 0
  %120 = load float, float* %119, align 4
  %121 = fmul float %117, %120
  %122 = call float @log10f(float %121) #3
  store float %122, float* %23, align 4
  %123 = load float, float* %23, align 4
  %124 = load float*, float** %7, align 8
  %125 = getelementptr inbounds float, float* %124, i64 0
  store float %123, float* %125, align 4
  %126 = load float, float* %13, align 4
  %127 = fptosi float %126 to i32
  %128 = load float, float* %23, align 4
  %129 = fptosi float %128 to i32
  %130 = call i64 @FFMAX(i32 %127, i32 %129)
  %131 = uitofp i64 %130 to float
  store float %131, float* %13, align 4
  %132 = load float, float* %12, align 4
  %133 = fpext float %132 to double
  %134 = load float, float* %23, align 4
  %135 = fpext float %134 to double
  %136 = call i32 (double, double, ...) bitcast (i32 (...)* @FFMIN to i32 (double, double, ...)*)(double %133, double %135)
  %137 = sitofp i32 %136 to float
  store float %137, float* %12, align 4
  br label %138

138:                                              ; preds = %114
  %139 = load float, float* %13, align 4
  %140 = load float, float* %12, align 4
  %141 = fsub float %139, %140
  store float %141, float* %17, align 4
  %142 = load float, float* %11, align 4
  %143 = load float*, float** %7, align 8
  %144 = getelementptr inbounds float, float* %143, i64 64
  store float %142, float* %144, align 4
  %145 = load float, float* %17, align 4
  %146 = fpext float %145 to double
  %147 = fdiv double 6.400000e+01, %146
  %148 = fptrunc double %147 to float
  store float %148, float* %14, align 4
  %149 = load float, float* %17, align 4
  %150 = fpext float %149 to double
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @FCB_TYPE_HARDCODED, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, double 0x3FD89D89D89D89D9, double 0x3FD5C4CA037BA571
  %156 = fmul double %150, %155
  %157 = fptrunc double %156 to float
  store float %157, float* %16, align 4
  %158 = load float, float* %16, align 4
  %159 = fpext float %158 to double
  %160 = load double, double* @M_LN10, align 8
  %161 = fmul double 8.000000e+00, %160
  %162 = load double, double* @M_PI, align 8
  %163 = fdiv double %161, %162
  %164 = fmul double %159, %163
  %165 = fptrunc double %164 to float
  store float %165, float* %15, align 4
  store i32 0, i32* %19, align 4
  br label %166

166:                                              ; preds = %232, %138
  %167 = load i32, i32* %19, align 4
  %168 = icmp sle i32 %167, 64
  br i1 %168, label %169, label %235

169:                                              ; preds = %166
  %170 = load float, float* %13, align 4
  %171 = load float*, float** %7, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  %175 = load float, float* %174, align 4
  %176 = fsub float %170, %175
  %177 = load float, float* %14, align 4
  %178 = fmul float %176, %177
  %179 = call i32 @lrint(float %178)
  %180 = sub nsw i32 %179, 1
  %181 = call i64 @FFMAX(i32 0, i32 %180)
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %20, align 4
  %183 = load float**, float*** @wmavoice_denoise_power_table, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds float*, float** %183, i64 %186
  %188 = load float*, float** %187, align 8
  %189 = load i32, i32* %20, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  %192 = load float, float* %191, align 4
  store float %192, float* %24, align 4
  %193 = load float, float* %15, align 4
  %194 = load float, float* %24, align 4
  %195 = fmul float %193, %194
  %196 = load float*, float** %7, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  store float %195, float* %199, align 4
  %200 = load float, float* %24, align 4
  %201 = load float, float* %16, align 4
  %202 = fmul float %200, %201
  %203 = fpext float %202 to double
  %204 = fsub double %203, 2.950000e-02
  %205 = fmul double %204, 0x4051A4837FFFF31D
  %206 = fptosi double %205 to i32
  store i32 %206, i32* %20, align 4
  %207 = load i32, i32* %20, align 4
  %208 = icmp sgt i32 %207, 127
  br i1 %208, label %209, label %221

209:                                              ; preds = %169
  %210 = load float*, float** @wmavoice_energy_table, align 8
  %211 = getelementptr inbounds float, float* %210, i64 127
  %212 = load float, float* %211, align 4
  %213 = load i32, i32* %20, align 4
  %214 = sub nsw i32 %213, 127
  %215 = call float @powf(double 0x3FF087D962DD44EA, i32 %214)
  %216 = fmul float %212, %215
  %217 = load float*, float** %9, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  store float %216, float* %220, align 4
  br label %231

221:                                              ; preds = %169
  %222 = load float*, float** @wmavoice_energy_table, align 8
  %223 = load i32, i32* %20, align 4
  %224 = call i64 @FFMAX(i32 0, i32 %223)
  %225 = getelementptr inbounds float, float* %222, i64 %224
  %226 = load float, float* %225, align 4
  %227 = load float*, float** %9, align 8
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  store float %226, float* %230, align 4
  br label %231

231:                                              ; preds = %221, %209
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %19, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %19, align 4
  br label %166

235:                                              ; preds = %166
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  %239 = load i32 (%struct.TYPE_10__*, float*)*, i32 (%struct.TYPE_10__*, float*)** %238, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 6
  %242 = load float*, float** %7, align 8
  %243 = call i32 %239(%struct.TYPE_10__* %241, float* %242)
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32 (%struct.TYPE_9__*, float*)*, i32 (%struct.TYPE_9__*, float*)** %246, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 5
  %250 = load float*, float** %7, align 8
  %251 = call i32 %247(%struct.TYPE_9__* %249, float* %250)
  %252 = load float*, float** %7, align 8
  %253 = getelementptr inbounds float, float* %252, i64 64
  %254 = load float, float* %253, align 4
  %255 = call i32 @av_clip(float %254, i32 -255, i32 255)
  %256 = add nsw i32 255, %255
  store i32 %256, i32* %20, align 4
  %257 = load float*, float** %9, align 8
  %258 = getelementptr inbounds float, float* %257, i64 0
  %259 = load float, float* %258, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load float*, float** %261, align 8
  %263 = load i32, i32* %20, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %262, i64 %264
  %266 = load float, float* %265, align 4
  %267 = fmul float %259, %266
  %268 = load float*, float** %9, align 8
  %269 = getelementptr inbounds float, float* %268, i64 0
  store float %267, float* %269, align 4
  %270 = load float*, float** %7, align 8
  %271 = getelementptr inbounds float, float* %270, i64 64
  %272 = load float, float* %271, align 4
  %273 = load float*, float** %7, align 8
  %274 = getelementptr inbounds float, float* %273, i64 63
  %275 = load float, float* %274, align 4
  %276 = fmul float 2.000000e+00, %275
  %277 = fsub float %272, %276
  %278 = call i32 @av_clip(float %277, i32 -255, i32 255)
  %279 = add nsw i32 255, %278
  store i32 %279, i32* %20, align 4
  %280 = load float*, float** %9, align 8
  %281 = getelementptr inbounds float, float* %280, i64 64
  %282 = load float, float* %281, align 4
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 1
  %285 = load float*, float** %284, align 8
  %286 = load i32, i32* %20, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %285, i64 %287
  %289 = load float, float* %288, align 4
  %290 = fmul float %282, %289
  store float %290, float* %11, align 4
  store i32 63, i32* %19, align 4
  br label %291

291:                                              ; preds = %398, %235
  %292 = load float*, float** %7, align 8
  %293 = getelementptr inbounds float, float* %292, i64 64
  %294 = load float, float* %293, align 4
  %295 = fneg float %294
  %296 = load float*, float** %7, align 8
  %297 = load i32, i32* %19, align 4
  %298 = sub nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %296, i64 %299
  %301 = load float, float* %300, align 4
  %302 = fmul float 2.000000e+00, %301
  %303 = fsub float %295, %302
  %304 = call i32 @av_clip(float %303, i32 -255, i32 255)
  %305 = add nsw i32 255, %304
  store i32 %305, i32* %20, align 4
  %306 = load float*, float** %9, align 8
  %307 = load i32, i32* %19, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %306, i64 %308
  %310 = load float, float* %309, align 4
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 2
  %313 = load float*, float** %312, align 8
  %314 = load i32, i32* %20, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds float, float* %313, i64 %315
  %317 = load float, float* %316, align 4
  %318 = fmul float %310, %317
  %319 = load float*, float** %9, align 8
  %320 = load i32, i32* %19, align 4
  %321 = mul nsw i32 %320, 2
  %322 = add nsw i32 %321, 1
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds float, float* %319, i64 %323
  store float %318, float* %324, align 4
  %325 = load float*, float** %9, align 8
  %326 = load i32, i32* %19, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %325, i64 %327
  %329 = load float, float* %328, align 4
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 1
  %332 = load float*, float** %331, align 8
  %333 = load i32, i32* %20, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float* %332, i64 %334
  %336 = load float, float* %335, align 4
  %337 = fmul float %329, %336
  %338 = load float*, float** %9, align 8
  %339 = load i32, i32* %19, align 4
  %340 = mul nsw i32 %339, 2
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds float, float* %338, i64 %341
  store float %337, float* %342, align 4
  %343 = load i32, i32* %19, align 4
  %344 = add nsw i32 %343, -1
  store i32 %344, i32* %19, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %291
  br label %401

347:                                              ; preds = %291
  %348 = load float*, float** %7, align 8
  %349 = getelementptr inbounds float, float* %348, i64 64
  %350 = load float, float* %349, align 4
  %351 = load float*, float** %7, align 8
  %352 = load i32, i32* %19, align 4
  %353 = sub nsw i32 %352, 1
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %351, i64 %354
  %356 = load float, float* %355, align 4
  %357 = fmul float 2.000000e+00, %356
  %358 = fsub float %350, %357
  %359 = call i32 @av_clip(float %358, i32 -255, i32 255)
  %360 = add nsw i32 255, %359
  store i32 %360, i32* %20, align 4
  %361 = load float*, float** %9, align 8
  %362 = load i32, i32* %19, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds float, float* %361, i64 %363
  %365 = load float, float* %364, align 4
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 2
  %368 = load float*, float** %367, align 8
  %369 = load i32, i32* %20, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %368, i64 %370
  %372 = load float, float* %371, align 4
  %373 = fmul float %365, %372
  %374 = load float*, float** %9, align 8
  %375 = load i32, i32* %19, align 4
  %376 = mul nsw i32 %375, 2
  %377 = add nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds float, float* %374, i64 %378
  store float %373, float* %379, align 4
  %380 = load float*, float** %9, align 8
  %381 = load i32, i32* %19, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds float, float* %380, i64 %382
  %384 = load float, float* %383, align 4
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 1
  %387 = load float*, float** %386, align 8
  %388 = load i32, i32* %20, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %387, i64 %389
  %391 = load float, float* %390, align 4
  %392 = fmul float %384, %391
  %393 = load float*, float** %9, align 8
  %394 = load i32, i32* %19, align 4
  %395 = mul nsw i32 %394, 2
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float, float* %393, i64 %396
  store float %392, float* %397, align 4
  br label %398

398:                                              ; preds = %347
  %399 = load i32, i32* %19, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %19, align 4
  br label %291

401:                                              ; preds = %346
  %402 = load float, float* %11, align 4
  %403 = load float*, float** %9, align 8
  %404 = getelementptr inbounds float, float* %403, i64 1
  store float %402, float* %404, align 4
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 4
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  %408 = load i32 (%struct.TYPE_8__*, float*)*, i32 (%struct.TYPE_8__*, float*)** %407, align 8
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 4
  %411 = load float*, float** %9, align 8
  %412 = call i32 %408(%struct.TYPE_8__* %410, float* %411)
  %413 = load float*, float** %9, align 8
  %414 = load i32, i32* %10, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %413, i64 %415
  %417 = load i32, i32* %10, align 4
  %418 = sub nsw i32 128, %417
  %419 = sext i32 %418 to i64
  %420 = mul i64 4, %419
  %421 = trunc i64 %420 to i32
  %422 = call i32 @memset(float* %416, i32 0, i32 %421)
  %423 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %423, i32 0, i32 3
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %441

427:                                              ; preds = %401
  store float 0.000000e+00, float* %25, align 4
  %428 = load float*, float** %9, align 8
  %429 = load i32, i32* %10, align 4
  %430 = sub nsw i32 %429, 1
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds float, float* %428, i64 %431
  store float 0.000000e+00, float* %432, align 4
  %433 = load float*, float** %9, align 8
  %434 = load i32, i32* %10, align 4
  %435 = sub nsw i32 %434, 1
  %436 = call double @tilt_factor(float* %433, i32 %435)
  %437 = fmul double -1.800000e+00, %436
  %438 = load float*, float** %9, align 8
  %439 = load i32, i32* %10, align 4
  %440 = call i32 @ff_tilt_compensation(float* %25, double %437, float* %438, i32 %439)
  br label %441

441:                                              ; preds = %427, %401
  %442 = load float*, float** %9, align 8
  %443 = load float*, float** %9, align 8
  %444 = load i32, i32* %10, align 4
  %445 = call i32 @avpriv_scalarproduct_float_c(float* %442, float* %443, i32 %444)
  %446 = sdiv i32 1, %445
  %447 = call double @sqrtf(i32 %446)
  %448 = fmul double 1.562500e-02, %447
  %449 = fptrunc double %448 to float
  store float %449, float* %18, align 4
  store i32 0, i32* %19, align 4
  br label %450

450:                                              ; preds = %462, %441
  %451 = load i32, i32* %19, align 4
  %452 = load i32, i32* %10, align 4
  %453 = icmp slt i32 %451, %452
  br i1 %453, label %454, label %465

454:                                              ; preds = %450
  %455 = load float, float* %18, align 4
  %456 = load float*, float** %9, align 8
  %457 = load i32, i32* %19, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds float, float* %456, i64 %458
  %460 = load float, float* %459, align 4
  %461 = fmul float %460, %455
  store float %461, float* %459, align 4
  br label %462

462:                                              ; preds = %454
  %463 = load i32, i32* %19, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %19, align 4
  br label %450

465:                                              ; preds = %450
  ret void
}

; Function Attrs: nounwind
declare dso_local float @log10f(float) #1

declare dso_local i64 @FFMAX(i32, i32) #2

declare dso_local i32 @FFMIN(...) #2

declare dso_local i32 @lrint(float) #2

declare dso_local float @powf(double, i32) #2

declare dso_local i32 @av_clip(float, i32, i32) #2

declare dso_local i32 @memset(float*, i32, i32) #2

declare dso_local i32 @ff_tilt_compensation(float*, double, float*, i32) #2

declare dso_local double @tilt_factor(float*, i32) #2

declare dso_local double @sqrtf(i32) #2

declare dso_local i32 @avpriv_scalarproduct_float_c(float*, float*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
