; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_draw_response.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_draw_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { double**, i32*, float }
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
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  %38 = alloca float, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %5, align 8
  %45 = load float, float* @FLT_MAX, align 4
  store float %45, float* %9, align 4
  %46 = load float, float* @FLT_MIN, align 4
  store float %46, float* %10, align 4
  %47 = load float, float* @FLT_MAX, align 4
  store float %47, float* %11, align 4
  %48 = load float, float* @FLT_MIN, align 4
  store float %48, float* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %56, %61
  %63 = call i32 @memset(i32 %53, i32 0, i32 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call float* @av_malloc_array(i32 %66, i32 4)
  store float* %67, float** %7, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call float* @av_malloc_array(i32 %70, i32 4)
  store float* %71, float** %6, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call float* @av_malloc_array(i32 %74, i32 4)
  store float* %75, float** %8, align 8
  %76 = load float*, float** %6, align 8
  %77 = icmp ne float* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %2
  %79 = load float*, float** %7, align 8
  %80 = icmp ne float* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load float*, float** %8, align 8
  %83 = icmp ne float* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %81, %78, %2
  br label %653

85:                                               ; preds = %81
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call i32 @av_clip(i32 %88, i32 0, i32 %92)
  store i32 %93, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %408, %85
  %95 = load i32, i32* %18, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %411

100:                                              ; preds = %94
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load double**, double*** %107, align 8
  %109 = getelementptr inbounds double*, double** %108, i64 0
  %110 = load double*, double** %109, align 8
  store double* %110, double** %20, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = load double**, double*** %117, align 8
  %119 = getelementptr inbounds double*, double** %118, i64 1
  %120 = load double*, double** %119, align 8
  store double* %120, double** %21, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* @M_PI, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sdiv i32 %123, %127
  %129 = sitofp i32 %128 to double
  store double %129, double* %22, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %252

134:                                              ; preds = %100
  store double 0.000000e+00, double* %23, align 8
  store double 0.000000e+00, double* %24, align 8
  store double 0.000000e+00, double* %25, align 8
  store double 0.000000e+00, double* %26, align 8
  store i32 0, i32* %19, align 4
  br label %135

135:                                              ; preds = %177, %134
  %136 = load i32, i32* %19, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %136, %146
  br i1 %147, label %148, label %180

148:                                              ; preds = %135
  %149 = load i32, i32* %19, align 4
  %150 = sub nsw i32 0, %149
  %151 = sitofp i32 %150 to double
  %152 = load double, double* %22, align 8
  %153 = fmul double %151, %152
  %154 = call double @cos(double %153)
  %155 = load double*, double** %21, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %155, i64 %157
  %159 = load double, double* %158, align 8
  %160 = fmul double %154, %159
  %161 = load double, double* %23, align 8
  %162 = fadd double %161, %160
  store double %162, double* %23, align 8
  %163 = load i32, i32* %19, align 4
  %164 = sub nsw i32 0, %163
  %165 = sitofp i32 %164 to double
  %166 = load double, double* %22, align 8
  %167 = fmul double %165, %166
  %168 = call double @sin(double %167)
  %169 = load double*, double** %21, align 8
  %170 = load i32, i32* %19, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds double, double* %169, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fmul double %168, %173
  %175 = load double, double* %25, align 8
  %176 = fadd double %175, %174
  store double %176, double* %25, align 8
  br label %177

177:                                              ; preds = %148
  %178 = load i32, i32* %19, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %19, align 4
  br label %135

180:                                              ; preds = %135
  store i32 0, i32* %19, align 4
  br label %181

181:                                              ; preds = %223, %180
  %182 = load i32, i32* %19, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %182, %192
  br i1 %193, label %194, label %226

194:                                              ; preds = %181
  %195 = load i32, i32* %19, align 4
  %196 = sub nsw i32 0, %195
  %197 = sitofp i32 %196 to double
  %198 = load double, double* %22, align 8
  %199 = fmul double %197, %198
  %200 = call double @cos(double %199)
  %201 = load double*, double** %20, align 8
  %202 = load i32, i32* %19, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double, double* %201, i64 %203
  %205 = load double, double* %204, align 8
  %206 = fmul double %200, %205
  %207 = load double, double* %24, align 8
  %208 = fadd double %207, %206
  store double %208, double* %24, align 8
  %209 = load i32, i32* %19, align 4
  %210 = sub nsw i32 0, %209
  %211 = sitofp i32 %210 to double
  %212 = load double, double* %22, align 8
  %213 = fmul double %211, %212
  %214 = call double @sin(double %213)
  %215 = load double*, double** %20, align 8
  %216 = load i32, i32* %19, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds double, double* %215, i64 %217
  %219 = load double, double* %218, align 8
  %220 = fmul double %214, %219
  %221 = load double, double* %26, align 8
  %222 = fadd double %221, %220
  store double %222, double* %26, align 8
  br label %223

223:                                              ; preds = %194
  %224 = load i32, i32* %19, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %19, align 4
  br label %181

226:                                              ; preds = %181
  %227 = load double, double* %24, align 8
  %228 = load double, double* %24, align 8
  %229 = fmul double %227, %228
  %230 = load double, double* %26, align 8
  %231 = load double, double* %26, align 8
  %232 = fmul double %230, %231
  %233 = fadd double %229, %232
  store double %233, double* %29, align 8
  %234 = load double, double* %23, align 8
  %235 = load double, double* %24, align 8
  %236 = fmul double %234, %235
  %237 = load double, double* %25, align 8
  %238 = load double, double* %26, align 8
  %239 = fmul double %237, %238
  %240 = fadd double %236, %239
  %241 = load double, double* %29, align 8
  %242 = fdiv double %240, %241
  store double %242, double* %27, align 8
  %243 = load double, double* %25, align 8
  %244 = load double, double* %24, align 8
  %245 = fmul double %243, %244
  %246 = load double, double* %26, align 8
  %247 = load double, double* %23, align 8
  %248 = fmul double %246, %247
  %249 = fsub double %245, %248
  %250 = load double, double* %29, align 8
  %251 = fdiv double %249, %250
  store double %251, double* %28, align 8
  br label %370

252:                                              ; preds = %100
  store double 1.000000e+00, double* %27, align 8
  store double 0.000000e+00, double* %28, align 8
  store i32 0, i32* %19, align 4
  br label %253

253:                                              ; preds = %302, %252
  %254 = load i32, i32* %19, align 4
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 5
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = icmp slt i32 %254, %264
  br i1 %265, label %266, label %305

266:                                              ; preds = %253
  %267 = load double, double* %22, align 8
  %268 = call double @cos(double %267)
  %269 = load double*, double** %21, align 8
  %270 = load i32, i32* %19, align 4
  %271 = mul nsw i32 2, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds double, double* %269, i64 %272
  %274 = load double, double* %273, align 8
  %275 = fsub double %268, %274
  store double %275, double* %32, align 8
  %276 = load double, double* %22, align 8
  %277 = call double @sin(double %276)
  %278 = load double*, double** %21, align 8
  %279 = load i32, i32* %19, align 4
  %280 = mul nsw i32 2, %279
  %281 = add nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %278, i64 %282
  %284 = load double, double* %283, align 8
  %285 = fsub double %277, %284
  store double %285, double* %33, align 8
  %286 = load double, double* %27, align 8
  store double %286, double* %30, align 8
  %287 = load double, double* %28, align 8
  store double %287, double* %31, align 8
  %288 = load double, double* %30, align 8
  %289 = load double, double* %32, align 8
  %290 = fmul double %288, %289
  %291 = load double, double* %31, align 8
  %292 = load double, double* %33, align 8
  %293 = fmul double %291, %292
  %294 = fsub double %290, %293
  store double %294, double* %27, align 8
  %295 = load double, double* %30, align 8
  %296 = load double, double* %33, align 8
  %297 = fmul double %295, %296
  %298 = load double, double* %31, align 8
  %299 = load double, double* %32, align 8
  %300 = fmul double %298, %299
  %301 = fadd double %297, %300
  store double %301, double* %28, align 8
  br label %302

302:                                              ; preds = %266
  %303 = load i32, i32* %19, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %19, align 4
  br label %253

305:                                              ; preds = %253
  store i32 0, i32* %19, align 4
  br label %306

306:                                              ; preds = %366, %305
  %307 = load i32, i32* %19, align 4
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 5
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %309, align 8
  %311 = load i32, i32* %17, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = icmp slt i32 %307, %317
  br i1 %318, label %319, label %369

319:                                              ; preds = %306
  %320 = load double, double* %22, align 8
  %321 = call double @cos(double %320)
  %322 = load double*, double** %20, align 8
  %323 = load i32, i32* %19, align 4
  %324 = mul nsw i32 2, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds double, double* %322, i64 %325
  %327 = load double, double* %326, align 8
  %328 = fsub double %321, %327
  store double %328, double* %36, align 8
  %329 = load double, double* %22, align 8
  %330 = call double @sin(double %329)
  %331 = load double*, double** %20, align 8
  %332 = load i32, i32* %19, align 4
  %333 = mul nsw i32 2, %332
  %334 = add nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds double, double* %331, i64 %335
  %337 = load double, double* %336, align 8
  %338 = fsub double %330, %337
  store double %338, double* %37, align 8
  %339 = load double, double* %27, align 8
  store double %339, double* %34, align 8
  %340 = load double, double* %28, align 8
  store double %340, double* %35, align 8
  %341 = load double, double* %36, align 8
  %342 = load double, double* %36, align 8
  %343 = fmul double %341, %342
  %344 = load double, double* %37, align 8
  %345 = load double, double* %37, align 8
  %346 = fmul double %344, %345
  %347 = fadd double %343, %346
  store double %347, double* %29, align 8
  %348 = load double, double* %34, align 8
  %349 = load double, double* %36, align 8
  %350 = fmul double %348, %349
  %351 = load double, double* %35, align 8
  %352 = load double, double* %37, align 8
  %353 = fmul double %351, %352
  %354 = fadd double %350, %353
  %355 = load double, double* %29, align 8
  %356 = fdiv double %354, %355
  store double %356, double* %27, align 8
  %357 = load double, double* %35, align 8
  %358 = load double, double* %36, align 8
  %359 = fmul double %357, %358
  %360 = load double, double* %34, align 8
  %361 = load double, double* %37, align 8
  %362 = fmul double %360, %361
  %363 = fsub double %359, %362
  %364 = load double, double* %29, align 8
  %365 = fdiv double %363, %364
  store double %365, double* %28, align 8
  br label %366

366:                                              ; preds = %319
  %367 = load i32, i32* %19, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %19, align 4
  br label %306

369:                                              ; preds = %306
  br label %370

370:                                              ; preds = %369, %226
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 5
  %373 = load %struct.TYPE_9__*, %struct.TYPE_9__** %372, align 8
  %374 = load i32, i32* %17, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 2
  %378 = load float, float* %377, align 8
  %379 = load double, double* %27, align 8
  %380 = load double, double* %28, align 8
  %381 = call float @hypot(double %379, double %380)
  %382 = fmul float %378, %381
  %383 = load float*, float** %6, align 8
  %384 = load i32, i32* %18, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %383, i64 %385
  store float %382, float* %386, align 4
  %387 = load double, double* %28, align 8
  %388 = load double, double* %27, align 8
  %389 = call float @atan2(double %387, double %388)
  %390 = load float*, float** %7, align 8
  %391 = load i32, i32* %18, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %390, i64 %392
  store float %389, float* %393, align 4
  %394 = load float, float* %9, align 4
  %395 = load float*, float** %6, align 8
  %396 = load i32, i32* %18, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds float, float* %395, i64 %397
  %399 = load float, float* %398, align 4
  %400 = call float @llvm.minnum.f32(float %394, float %399)
  store float %400, float* %9, align 4
  %401 = load float, float* %10, align 4
  %402 = load float*, float** %6, align 8
  %403 = load i32, i32* %18, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds float, float* %402, i64 %404
  %406 = load float, float* %405, align 4
  %407 = call float @llvm.maxnum.f32(float %401, float %406)
  store float %407, float* %10, align 4
  br label %408

408:                                              ; preds = %370
  %409 = load i32, i32* %18, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %18, align 4
  br label %94

411:                                              ; preds = %94
  store i32 0, i32* %18, align 4
  br label %412

412:                                              ; preds = %460, %411
  %413 = load i32, i32* %18, align 4
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = sub nsw i32 %416, 1
  %418 = icmp slt i32 %413, %417
  br i1 %418, label %419, label %463

419:                                              ; preds = %412
  %420 = load i32, i32* @M_PI, align 4
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = sub nsw i32 %423, 1
  %425 = sdiv i32 %420, %424
  %426 = sitofp i32 %425 to float
  store float %426, float* %38, align 4
  %427 = load float*, float** %7, align 8
  %428 = load i32, i32* %18, align 4
  %429 = add nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds float, float* %427, i64 %430
  %432 = load float, float* %431, align 4
  %433 = load float*, float** %7, align 8
  %434 = load i32, i32* %18, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds float, float* %433, i64 %435
  %437 = load float, float* %436, align 4
  %438 = fsub float %432, %437
  %439 = fneg float %438
  %440 = load float, float* %38, align 4
  %441 = fdiv float %439, %440
  %442 = load float*, float** %8, align 8
  %443 = load i32, i32* %18, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, float* %442, i64 %444
  store float %441, float* %445, align 4
  %446 = load float, float* %11, align 4
  %447 = load float*, float** %8, align 8
  %448 = load i32, i32* %18, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds float, float* %447, i64 %449
  %451 = load float, float* %450, align 4
  %452 = call float @llvm.minnum.f32(float %446, float %451)
  store float %452, float* %11, align 4
  %453 = load float, float* %12, align 4
  %454 = load float*, float** %8, align 8
  %455 = load i32, i32* %18, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float* %454, i64 %456
  %458 = load float, float* %457, align 4
  %459 = call float @llvm.maxnum.f32(float %453, float %458)
  store float %459, float* %12, align 4
  br label %460

460:                                              ; preds = %419
  %461 = load i32, i32* %18, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %18, align 4
  br label %412

463:                                              ; preds = %412
  %464 = load float*, float** %8, align 8
  %465 = load i32, i32* %18, align 4
  %466 = sub nsw i32 %465, 1
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds float, float* %464, i64 %467
  %469 = load float, float* %468, align 4
  %470 = load float*, float** %8, align 8
  %471 = load i32, i32* %18, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds float, float* %470, i64 %472
  store float %469, float* %473, align 4
  store i32 0, i32* %18, align 4
  br label %474

474:                                              ; preds = %606, %463
  %475 = load i32, i32* %18, align 4
  %476 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %477 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = icmp slt i32 %475, %478
  br i1 %479, label %480, label %609

480:                                              ; preds = %474
  %481 = load float*, float** %6, align 8
  %482 = load i32, i32* %18, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds float, float* %481, i64 %483
  %485 = load float, float* %484, align 4
  %486 = load float, float* %10, align 4
  %487 = fdiv float %485, %486
  %488 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = sub nsw i32 %490, 1
  %492 = sitofp i32 %491 to float
  %493 = fmul float %487, %492
  %494 = fptosi float %493 to i32
  store i32 %494, i32* %39, align 4
  %495 = load float*, float** %8, align 8
  %496 = load i32, i32* %18, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds float, float* %495, i64 %497
  %499 = load float, float* %498, align 4
  %500 = load float, float* %11, align 4
  %501 = fsub float %499, %500
  %502 = load float, float* %12, align 4
  %503 = load float, float* %11, align 4
  %504 = fsub float %502, %503
  %505 = fdiv float %501, %504
  %506 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %507 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = sub nsw i32 %508, 1
  %510 = sitofp i32 %509 to float
  %511 = fmul float %505, %510
  %512 = fptosi float %511 to i32
  store i32 %512, i32* %40, align 4
  %513 = load float*, float** %7, align 8
  %514 = load i32, i32* %18, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds float, float* %513, i64 %515
  %517 = load float, float* %516, align 4
  %518 = load i32, i32* @M_PI, align 4
  %519 = sitofp i32 %518 to float
  %520 = fdiv float %517, %519
  %521 = fpext float %520 to double
  %522 = fadd double 1.000000e+00, %521
  %523 = fmul double 5.000000e-01, %522
  %524 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = sub nsw i32 %526, 1
  %528 = sitofp i32 %527 to double
  %529 = fmul double %523, %528
  %530 = fptosi double %529 to i32
  store i32 %530, i32* %41, align 4
  %531 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %532 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = sub nsw i32 %533, 1
  %535 = load i32, i32* %39, align 4
  %536 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = sub nsw i32 %538, 1
  %540 = call i32 @av_clip(i32 %535, i32 0, i32 %539)
  %541 = sub nsw i32 %534, %540
  store i32 %541, i32* %39, align 4
  %542 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %543 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = sub nsw i32 %544, 1
  %546 = load i32, i32* %41, align 4
  %547 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %548 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = sub nsw i32 %549, 1
  %551 = call i32 @av_clip(i32 %546, i32 0, i32 %550)
  %552 = sub nsw i32 %545, %551
  store i32 %552, i32* %41, align 4
  %553 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %554 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = sub nsw i32 %555, 1
  %557 = load i32, i32* %40, align 4
  %558 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %559 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = sub nsw i32 %560, 1
  %562 = call i32 @av_clip(i32 %557, i32 0, i32 %561)
  %563 = sub nsw i32 %556, %562
  store i32 %563, i32* %40, align 4
  %564 = load i32, i32* %13, align 4
  %565 = icmp slt i32 %564, 0
  br i1 %565, label %566, label %568

566:                                              ; preds = %480
  %567 = load i32, i32* %39, align 4
  store i32 %567, i32* %13, align 4
  br label %568

568:                                              ; preds = %566, %480
  %569 = load i32, i32* %14, align 4
  %570 = icmp slt i32 %569, 0
  br i1 %570, label %571, label %573

571:                                              ; preds = %568
  %572 = load i32, i32* %41, align 4
  store i32 %572, i32* %14, align 4
  br label %573

573:                                              ; preds = %571, %568
  %574 = load i32, i32* %15, align 4
  %575 = icmp slt i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %573
  %577 = load i32, i32* %40, align 4
  store i32 %577, i32* %15, align 4
  br label %578

578:                                              ; preds = %576, %573
  %579 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %580 = load i32, i32* %18, align 4
  %581 = load i32, i32* %39, align 4
  %582 = load i32, i32* %18, align 4
  %583 = sub nsw i32 %582, 1
  %584 = call i32 @FFMAX(i32 %583, i32 0)
  %585 = load i32, i32* %13, align 4
  %586 = call i32 @draw_line(%struct.TYPE_11__* %579, i32 %580, i32 %581, i32 %584, i32 %585, i32 -65281)
  %587 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %588 = load i32, i32* %18, align 4
  %589 = load i32, i32* %41, align 4
  %590 = load i32, i32* %18, align 4
  %591 = sub nsw i32 %590, 1
  %592 = call i32 @FFMAX(i32 %591, i32 0)
  %593 = load i32, i32* %14, align 4
  %594 = call i32 @draw_line(%struct.TYPE_11__* %587, i32 %588, i32 %589, i32 %592, i32 %593, i32 -16711936)
  %595 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %596 = load i32, i32* %18, align 4
  %597 = load i32, i32* %40, align 4
  %598 = load i32, i32* %18, align 4
  %599 = sub nsw i32 %598, 1
  %600 = call i32 @FFMAX(i32 %599, i32 0)
  %601 = load i32, i32* %15, align 4
  %602 = call i32 @draw_line(%struct.TYPE_11__* %595, i32 %596, i32 %597, i32 %600, i32 %601, i32 -16711681)
  %603 = load i32, i32* %39, align 4
  store i32 %603, i32* %13, align 4
  %604 = load i32, i32* %41, align 4
  store i32 %604, i32* %14, align 4
  %605 = load i32, i32* %40, align 4
  store i32 %605, i32* %15, align 4
  br label %606

606:                                              ; preds = %578
  %607 = load i32, i32* %18, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %18, align 4
  br label %474

609:                                              ; preds = %474
  %610 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %611 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %610, i32 0, i32 1
  %612 = load i32, i32* %611, align 4
  %613 = icmp sgt i32 %612, 400
  br i1 %613, label %614, label %652

614:                                              ; preds = %609
  %615 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %616 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = icmp sgt i32 %617, 100
  br i1 %618, label %619, label %652

619:                                              ; preds = %614
  %620 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %621 = call i32 @drawtext(%struct.TYPE_11__* %620, i32 2, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 -572662307)
  %622 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %623 = load float, float* %10, align 4
  %624 = call i32 @snprintf(i8* %622, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %623)
  %625 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %626 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %627 = call i32 @drawtext(%struct.TYPE_11__* %625, i32 122, i32 2, i8* %626, i32 -572662307)
  %628 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %629 = call i32 @drawtext(%struct.TYPE_11__* %628, i32 2, i32 12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 -572662307)
  %630 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %631 = load float, float* %9, align 4
  %632 = call i32 @snprintf(i8* %630, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %631)
  %633 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %634 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %635 = call i32 @drawtext(%struct.TYPE_11__* %633, i32 122, i32 12, i8* %634, i32 -572662307)
  %636 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %637 = call i32 @drawtext(%struct.TYPE_11__* %636, i32 2, i32 22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 -572662307)
  %638 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %639 = load float, float* %12, align 4
  %640 = call i32 @snprintf(i8* %638, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %639)
  %641 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %642 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %643 = call i32 @drawtext(%struct.TYPE_11__* %641, i32 90, i32 22, i8* %642, i32 -572662307)
  %644 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %645 = call i32 @drawtext(%struct.TYPE_11__* %644, i32 2, i32 32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 -572662307)
  %646 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %647 = load float, float* %11, align 4
  %648 = call i32 @snprintf(i8* %646, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %647)
  %649 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %650 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %651 = call i32 @drawtext(%struct.TYPE_11__* %649, i32 90, i32 32, i8* %650, i32 -572662307)
  br label %652

652:                                              ; preds = %619, %614, %609
  br label %653

653:                                              ; preds = %652, %84
  %654 = load float*, float** %8, align 8
  %655 = call i32 @av_free(float* %654)
  %656 = load float*, float** %7, align 8
  %657 = call i32 @av_free(float* %656)
  %658 = load float*, float** %6, align 8
  %659 = call i32 @av_free(float* %658)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local float* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local double @cos(double) #1

declare dso_local double @sin(double) #1

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
