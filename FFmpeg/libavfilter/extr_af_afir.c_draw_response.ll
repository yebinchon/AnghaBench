; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_draw_response.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_draw_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i64* }
%struct.TYPE_11__ = type { i32*, i32* }

@FLT_MAX = common dso_local global float 0.000000e+00, align 4
@FLT_MIN = common dso_local global float 0.000000e+00, align 4
@M_PI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Max Magnitude:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Min Magnitude:\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Max Delay:\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Min Delay:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*)* @draw_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_response(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [32 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %5, align 8
  %33 = load float, float* @FLT_MAX, align 4
  store float %33, float* %9, align 4
  %34 = load float, float* @FLT_MIN, align 4
  store float %34, float* %10, align 4
  %35 = load float, float* @FLT_MAX, align 4
  store float %35, float* %11, align 4
  %36 = load float, float* @FLT_MIN, align 4
  store float %36, float* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %44, %49
  %51 = call i32 @memset(i32 %41, i32 0, i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call float* @av_malloc_array(i32 %54, i32 4)
  store float* %55, float** %7, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call float* @av_malloc_array(i32 %58, i32 4)
  store float* %59, float** %6, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call float* @av_malloc_array(i32 %62, i32 4)
  store float* %63, float** %8, align 8
  %64 = load float*, float** %6, align 8
  %65 = icmp ne float* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %2
  %67 = load float*, float** %7, align 8
  %68 = icmp ne float* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load float*, float** %8, align 8
  %71 = icmp ne float* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69, %66, %2
  br label %441

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %79, i64 1
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = call i32 @av_clip(i32 %76, i32 0, i32 %84)
  store i32 %85, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %86

86:                                               ; preds = %258, %73
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %261

92:                                               ; preds = %86
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %95, i64 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to float*
  store float* %104, float** %20, align 8
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* @M_PI, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sdiv i32 %107, %111
  %113 = sitofp i32 %112 to double
  store double %113, double* %21, align 8
  store double 0.000000e+00, double* %23, align 8
  store double 0.000000e+00, double* %24, align 8
  store double 0.000000e+00, double* %25, align 8
  store double 0.000000e+00, double* %26, align 8
  store i32 0, i32* %19, align 4
  br label %114

114:                                              ; preds = %191, %92
  %115 = load i32, i32* %19, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %194

120:                                              ; preds = %114
  %121 = load i32, i32* %19, align 4
  %122 = sub nsw i32 0, %121
  %123 = sitofp i32 %122 to double
  %124 = load double, double* %21, align 8
  %125 = fmul double %123, %124
  %126 = fptosi double %125 to i32
  %127 = call float @cos(i32 %126)
  %128 = load float*, float** %20, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  %132 = load float, float* %131, align 4
  %133 = fmul float %127, %132
  %134 = fpext float %133 to double
  %135 = load double, double* %25, align 8
  %136 = fadd double %135, %134
  store double %136, double* %25, align 8
  %137 = load i32, i32* %19, align 4
  %138 = sub nsw i32 0, %137
  %139 = sitofp i32 %138 to double
  %140 = load double, double* %21, align 8
  %141 = fmul double %139, %140
  %142 = fptosi double %141 to i32
  %143 = call float @sin(i32 %142)
  %144 = load float*, float** %20, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %144, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fmul float %143, %148
  %150 = fpext float %149 to double
  %151 = load double, double* %26, align 8
  %152 = fadd double %151, %150
  store double %152, double* %26, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sub nsw i32 0, %153
  %155 = sitofp i32 %154 to double
  %156 = load double, double* %21, align 8
  %157 = fmul double %155, %156
  %158 = fptosi double %157 to i32
  %159 = call float @cos(i32 %158)
  %160 = load float*, float** %20, align 8
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %160, i64 %162
  %164 = load float, float* %163, align 4
  %165 = fmul float %159, %164
  %166 = load i32, i32* %19, align 4
  %167 = sitofp i32 %166 to float
  %168 = fmul float %165, %167
  %169 = fpext float %168 to double
  %170 = load double, double* %23, align 8
  %171 = fadd double %170, %169
  store double %171, double* %23, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sub nsw i32 0, %172
  %174 = sitofp i32 %173 to double
  %175 = load double, double* %21, align 8
  %176 = fmul double %174, %175
  %177 = fptosi double %176 to i32
  %178 = call float @sin(i32 %177)
  %179 = load float*, float** %20, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds float, float* %179, i64 %181
  %183 = load float, float* %182, align 4
  %184 = fmul float %178, %183
  %185 = load i32, i32* %19, align 4
  %186 = sitofp i32 %185 to float
  %187 = fmul float %184, %186
  %188 = fpext float %187 to double
  %189 = load double, double* %24, align 8
  %190 = fadd double %189, %188
  store double %190, double* %24, align 8
  br label %191

191:                                              ; preds = %120
  %192 = load i32, i32* %19, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %19, align 4
  br label %114

194:                                              ; preds = %114
  %195 = load double, double* %25, align 8
  %196 = load double, double* %26, align 8
  %197 = call float @hypot(double %195, double %196)
  %198 = load float*, float** %6, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  store float %197, float* %201, align 4
  %202 = load double, double* %26, align 8
  %203 = load double, double* %25, align 8
  %204 = call float @atan2(double %202, double %203)
  %205 = load float*, float** %7, align 8
  %206 = load i32, i32* %18, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  store float %204, float* %208, align 4
  %209 = load double, double* %25, align 8
  %210 = load double, double* %25, align 8
  %211 = fmul double %209, %210
  %212 = load double, double* %26, align 8
  %213 = load double, double* %26, align 8
  %214 = fmul double %212, %213
  %215 = fadd double %211, %214
  store double %215, double* %22, align 8
  %216 = load double, double* %23, align 8
  %217 = load double, double* %25, align 8
  %218 = fmul double %216, %217
  %219 = load double, double* %24, align 8
  %220 = load double, double* %26, align 8
  %221 = fmul double %219, %220
  %222 = fadd double %218, %221
  %223 = load double, double* %22, align 8
  %224 = fdiv double %222, %223
  %225 = fptrunc double %224 to float
  %226 = load float*, float** %8, align 8
  %227 = load i32, i32* %18, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  store float %225, float* %229, align 4
  %230 = load float, float* %9, align 4
  %231 = load float*, float** %6, align 8
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %231, i64 %233
  %235 = load float, float* %234, align 4
  %236 = call float @llvm.minnum.f32(float %230, float %235)
  store float %236, float* %9, align 4
  %237 = load float, float* %10, align 4
  %238 = load float*, float** %6, align 8
  %239 = load i32, i32* %18, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %238, i64 %240
  %242 = load float, float* %241, align 4
  %243 = call float @llvm.maxnum.f32(float %237, float %242)
  store float %243, float* %10, align 4
  %244 = load float, float* %11, align 4
  %245 = load float*, float** %8, align 8
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load float, float* %248, align 4
  %250 = call float @llvm.minnum.f32(float %244, float %249)
  store float %250, float* %11, align 4
  %251 = load float, float* %12, align 4
  %252 = load float*, float** %8, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %252, i64 %254
  %256 = load float, float* %255, align 4
  %257 = call float @llvm.maxnum.f32(float %251, float %256)
  store float %257, float* %12, align 4
  br label %258

258:                                              ; preds = %194
  %259 = load i32, i32* %18, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %18, align 4
  br label %86

261:                                              ; preds = %86
  store i32 0, i32* %18, align 4
  br label %262

262:                                              ; preds = %394, %261
  %263 = load i32, i32* %18, align 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %397

268:                                              ; preds = %262
  %269 = load float*, float** %6, align 8
  %270 = load i32, i32* %18, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds float, float* %269, i64 %271
  %273 = load float, float* %272, align 4
  %274 = load float, float* %10, align 4
  %275 = fdiv float %273, %274
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = sub nsw i32 %278, 1
  %280 = sitofp i32 %279 to float
  %281 = fmul float %275, %280
  %282 = fptosi float %281 to i32
  store i32 %282, i32* %27, align 4
  %283 = load float*, float** %8, align 8
  %284 = load i32, i32* %18, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds float, float* %283, i64 %285
  %287 = load float, float* %286, align 4
  %288 = load float, float* %11, align 4
  %289 = fsub float %287, %288
  %290 = load float, float* %12, align 4
  %291 = load float, float* %11, align 4
  %292 = fsub float %290, %291
  %293 = fdiv float %289, %292
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %296, 1
  %298 = sitofp i32 %297 to float
  %299 = fmul float %293, %298
  %300 = fptosi float %299 to i32
  store i32 %300, i32* %28, align 4
  %301 = load float*, float** %7, align 8
  %302 = load i32, i32* %18, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %301, i64 %303
  %305 = load float, float* %304, align 4
  %306 = load i32, i32* @M_PI, align 4
  %307 = sitofp i32 %306 to float
  %308 = fdiv float %305, %307
  %309 = fpext float %308 to double
  %310 = fadd double 1.000000e+00, %309
  %311 = fmul double 5.000000e-01, %310
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sub nsw i32 %314, 1
  %316 = sitofp i32 %315 to double
  %317 = fmul double %311, %316
  %318 = fptosi double %317 to i32
  store i32 %318, i32* %29, align 4
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sub nsw i32 %321, 1
  %323 = load i32, i32* %27, align 4
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = sub nsw i32 %326, 1
  %328 = call i32 @av_clip(i32 %323, i32 0, i32 %327)
  %329 = sub nsw i32 %322, %328
  store i32 %329, i32* %27, align 4
  %330 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = sub nsw i32 %332, 1
  %334 = load i32, i32* %29, align 4
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = sub nsw i32 %337, 1
  %339 = call i32 @av_clip(i32 %334, i32 0, i32 %338)
  %340 = sub nsw i32 %333, %339
  store i32 %340, i32* %29, align 4
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = sub nsw i32 %343, 1
  %345 = load i32, i32* %28, align 4
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = sub nsw i32 %348, 1
  %350 = call i32 @av_clip(i32 %345, i32 0, i32 %349)
  %351 = sub nsw i32 %344, %350
  store i32 %351, i32* %28, align 4
  %352 = load i32, i32* %13, align 4
  %353 = icmp slt i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %268
  %355 = load i32, i32* %27, align 4
  store i32 %355, i32* %13, align 4
  br label %356

356:                                              ; preds = %354, %268
  %357 = load i32, i32* %14, align 4
  %358 = icmp slt i32 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %356
  %360 = load i32, i32* %29, align 4
  store i32 %360, i32* %14, align 4
  br label %361

361:                                              ; preds = %359, %356
  %362 = load i32, i32* %15, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %361
  %365 = load i32, i32* %28, align 4
  store i32 %365, i32* %15, align 4
  br label %366

366:                                              ; preds = %364, %361
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %368 = load i32, i32* %18, align 4
  %369 = load i32, i32* %27, align 4
  %370 = load i32, i32* %18, align 4
  %371 = sub nsw i32 %370, 1
  %372 = call i32 @FFMAX(i32 %371, i32 0)
  %373 = load i32, i32* %13, align 4
  %374 = call i32 @draw_line(%struct.TYPE_11__* %367, i32 %368, i32 %369, i32 %372, i32 %373, i32 -65281)
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %376 = load i32, i32* %18, align 4
  %377 = load i32, i32* %29, align 4
  %378 = load i32, i32* %18, align 4
  %379 = sub nsw i32 %378, 1
  %380 = call i32 @FFMAX(i32 %379, i32 0)
  %381 = load i32, i32* %14, align 4
  %382 = call i32 @draw_line(%struct.TYPE_11__* %375, i32 %376, i32 %377, i32 %380, i32 %381, i32 -16711936)
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %384 = load i32, i32* %18, align 4
  %385 = load i32, i32* %28, align 4
  %386 = load i32, i32* %18, align 4
  %387 = sub nsw i32 %386, 1
  %388 = call i32 @FFMAX(i32 %387, i32 0)
  %389 = load i32, i32* %15, align 4
  %390 = call i32 @draw_line(%struct.TYPE_11__* %383, i32 %384, i32 %385, i32 %388, i32 %389, i32 -16711681)
  %391 = load i32, i32* %27, align 4
  store i32 %391, i32* %13, align 4
  %392 = load i32, i32* %29, align 4
  store i32 %392, i32* %14, align 4
  %393 = load i32, i32* %28, align 4
  store i32 %393, i32* %15, align 4
  br label %394

394:                                              ; preds = %366
  %395 = load i32, i32* %18, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %18, align 4
  br label %262

397:                                              ; preds = %262
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = icmp sgt i32 %400, 400
  br i1 %401, label %402, label %440

402:                                              ; preds = %397
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = icmp sgt i32 %405, 100
  br i1 %406, label %407, label %440

407:                                              ; preds = %402
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %409 = call i32 @drawtext(%struct.TYPE_11__* %408, i32 2, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 -572662307)
  %410 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %411 = load float, float* %10, align 4
  %412 = call i32 @snprintf(i8* %410, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %411)
  %413 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %414 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %415 = call i32 @drawtext(%struct.TYPE_11__* %413, i32 122, i32 2, i8* %414, i32 -572662307)
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %417 = call i32 @drawtext(%struct.TYPE_11__* %416, i32 2, i32 12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 -572662307)
  %418 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %419 = load float, float* %9, align 4
  %420 = call i32 @snprintf(i8* %418, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %419)
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %422 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %423 = call i32 @drawtext(%struct.TYPE_11__* %421, i32 122, i32 12, i8* %422, i32 -572662307)
  %424 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %425 = call i32 @drawtext(%struct.TYPE_11__* %424, i32 2, i32 22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 -572662307)
  %426 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %427 = load float, float* %12, align 4
  %428 = call i32 @snprintf(i8* %426, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %427)
  %429 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %430 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %431 = call i32 @drawtext(%struct.TYPE_11__* %429, i32 90, i32 22, i8* %430, i32 -572662307)
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %433 = call i32 @drawtext(%struct.TYPE_11__* %432, i32 2, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 -572662307)
  %434 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %435 = load float, float* %11, align 4
  %436 = call i32 @snprintf(i8* %434, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %435)
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %438 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %439 = call i32 @drawtext(%struct.TYPE_11__* %437, i32 90, i32 32, i8* %438, i32 -572662307)
  br label %440

440:                                              ; preds = %407, %402, %397
  br label %441

441:                                              ; preds = %440, %72
  %442 = load float*, float** %8, align 8
  %443 = call i32 @av_free(float* %442)
  %444 = load float*, float** %7, align 8
  %445 = call i32 @av_free(float* %444)
  %446 = load float*, float** %6, align 8
  %447 = call i32 @av_free(float* %446)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local float* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local float @cos(i32) #1

declare dso_local float @sin(i32) #1

declare dso_local float @hypot(double, double) #1

declare dso_local float @atan2(double, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #2

declare dso_local i32 @draw_line(%struct.TYPE_11__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @drawtext(%struct.TYPE_11__*, i32, i32, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, float) #1

declare dso_local i32 @av_free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
