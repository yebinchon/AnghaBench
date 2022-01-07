; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_sample_noise_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_sample_noise_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, float*, i32, i32*, i32, i32 }
%struct.TYPE_10__ = type { i32*, double*, double*, double*, double*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { float, double }
%struct.TYPE_12__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_12__*, i32)* @sample_noise_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sample_noise_block(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, %struct.TYPE_12__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to float*
  store float* %29, float** %9, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %19, align 4
  br label %30

30:                                               ; preds = %65, %4
  %31 = load i32, i32* %19, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load float*, float** %38, align 8
  %40 = load i32, i32* %19, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = load float, float* %42, align 4
  %44 = load float*, float** %9, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fmul float %43, %48
  %50 = fmul float %49, 0x4170000000000000
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load i32, i32* %19, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store float %50, float* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 5
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  store double 0.000000e+00, double* %64, align 8
  br label %65

65:                                               ; preds = %36
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %19, align 4
  br label %30

68:                                               ; preds = %30
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %20, align 4
  br label %72

72:                                               ; preds = %93, %68
  %73 = load i32, i32* %20, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = load i32, i32* %20, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store float 0.000000e+00, float* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  store double 0.000000e+00, double* %92, align 8
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %20, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %20, align 4
  br label %72

96:                                               ; preds = %72
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %101, align 8
  %103 = call i32 @av_fft_permute(i32 %99, %struct.TYPE_13__* %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = call i32 @av_fft_calc(i32 %106, %struct.TYPE_13__* %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @preprocess(%struct.TYPE_13__* %113, i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %17, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 15
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @fmin(i32 %127, i32 %132)
  store i32 %133, i32* %18, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = load double, double* %138, align 8
  %140 = fptrunc double %139 to float
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store float %140, float* %149, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  store double 0.000000e+00, double* %154, align 8
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  store double 0.000000e+00, double* %163, align 8
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %21, align 4
  br label %165

165:                                              ; preds = %316, %96
  %166 = load i32, i32* %21, align 4
  %167 = load i32, i32* %18, align 4
  %168 = icmp sle i32 %166, %167
  br i1 %168, label %169, label %319

169:                                              ; preds = %165
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %241

173:                                              ; preds = %169
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* %18, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %241

177:                                              ; preds = %173
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp sgt i32 %178, %179
  br i1 %180, label %181, label %224

181:                                              ; preds = %177
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %14, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %184
  store i32 %193, i32* %191, align 4
  %194 = load double, double* %12, align 8
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load double*, double** %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %197, i64 %200
  %202 = load double, double* %201, align 8
  %203 = fadd double %202, %194
  store double %203, double* %201, align 8
  %204 = load double, double* %13, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load double*, double** %206, align 8
  %208 = load i32, i32* %16, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, double* %207, i64 %210
  %212 = load double, double* %211, align 8
  %213 = fadd double %212, %204
  store double %213, double* %211, align 8
  %214 = load double, double* %11, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 3
  %217 = load double*, double** %216, align 8
  %218 = load i32, i32* %16, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds double, double* %217, i64 %220
  %222 = load double, double* %221, align 8
  %223 = fadd double %222, %214
  store double %223, double* %221, align 8
  br label %224

224:                                              ; preds = %181, %177
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %16, align 4
  %227 = load i32, i32* %15, align 4
  store i32 %227, i32* %14, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %15, align 4
  %235 = load i32, i32* %16, align 4
  %236 = icmp eq i32 %235, 15
  br i1 %236, label %237, label %240

237:                                              ; preds = %224
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %15, align 4
  br label %240

240:                                              ; preds = %237, %224
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  br label %241

241:                                              ; preds = %240, %173, %169
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 5
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = load i32, i32* %17, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load float, float* %248, align 8
  %250 = fpext float %249 to double
  %251 = load double, double* %12, align 8
  %252 = fadd double %251, %250
  store double %252, double* %12, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 5
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %254, align 8
  %256 = load i32, i32* %17, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = load double, double* %259, align 8
  %261 = load double, double* %13, align 8
  %262 = fadd double %261, %260
  store double %262, double* %13, align 8
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 5
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  %270 = load float, float* %269, align 8
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 5
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %272, align 8
  %274 = load i32, i32* %17, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = load float, float* %277, align 8
  %279 = fmul float %270, %278
  %280 = fpext float %279 to double
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 5
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 1
  %288 = load double, double* %287, align 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 5
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %290, align 8
  %292 = load i32, i32* %17, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 1
  %296 = load double, double* %295, align 8
  %297 = fmul double %288, %296
  %298 = fadd double %280, %297
  store double %298, double* %10, align 8
  %299 = load double, double* %10, align 8
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = call double @fmax(double %299, i32 %302)
  store double %303, double* %10, align 8
  %304 = load double, double* %10, align 8
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 4
  %307 = load double*, double** %306, align 8
  %308 = load i32, i32* %21, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds double, double* %307, i64 %309
  store double %304, double* %310, align 8
  %311 = load double, double* %10, align 8
  %312 = load double, double* %11, align 8
  %313 = fadd double %312, %311
  store double %313, double* %11, align 8
  %314 = load i32, i32* %17, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %17, align 4
  br label %316

316:                                              ; preds = %241
  %317 = load i32, i32* %21, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %21, align 4
  br label %165

319:                                              ; preds = %165
  %320 = load i32, i32* %15, align 4
  %321 = load i32, i32* %14, align 4
  %322 = sub nsw i32 %320, %321
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %16, align 4
  %327 = sub nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %325, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %330, %322
  store i32 %331, i32* %329, align 4
  %332 = load double, double* %12, align 8
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 1
  %335 = load double*, double** %334, align 8
  %336 = load i32, i32* %16, align 4
  %337 = sub nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds double, double* %335, i64 %338
  %340 = load double, double* %339, align 8
  %341 = fadd double %340, %332
  store double %341, double* %339, align 8
  %342 = load double, double* %13, align 8
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 2
  %345 = load double*, double** %344, align 8
  %346 = load i32, i32* %16, align 4
  %347 = sub nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds double, double* %345, i64 %348
  %350 = load double, double* %349, align 8
  %351 = fadd double %350, %342
  store double %351, double* %349, align 8
  %352 = load double, double* %11, align 8
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 3
  %355 = load double*, double** %354, align 8
  %356 = load i32, i32* %16, align 4
  %357 = sub nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds double, double* %355, i64 %358
  %360 = load double, double* %359, align 8
  %361 = fadd double %360, %352
  store double %361, double* %359, align 8
  ret void
}

declare dso_local i32 @av_fft_permute(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @av_fft_calc(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @preprocess(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fmin(i32, i32) #1

declare dso_local double @fmax(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
