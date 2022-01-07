; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_unsharp_opencl.c_unsharp_opencl_make_filter_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_unsharp_opencl.c_unsharp_opencl_make_filter_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, float, float, float, float, float, float, %struct.TYPE_13__*, %struct.TYPE_12__, i64 }
%struct.TYPE_13__ = type { double*, double*, i32, i32, float, i8*, i8*, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CL_MEM_READ_ONLY = common dso_local global i32 0, align 4
@CL_MEM_COPY_HOST_PTR = common dso_local global i32 0, align 4
@CL_MEM_HOST_NO_ACCESS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to create matrix buffer: %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to create x-coef buffer: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to create y-coef buffer: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @unsharp_opencl_make_filter_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unsharp_opencl_make_filter_params(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %3, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_15__* @av_pix_fmt_desc_get(i32 %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %4, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %54, %1
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i32 @FFMAX(i32 %41, i64 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %32

57:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %58

58:                                               ; preds = %410, %57
  %59 = load i32, i32* %15, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %413

64:                                               ; preds = %58
  %65 = load i32, i32* %15, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67, %64
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load float, float* %76, align 4
  store float %77, float* %11, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 2
  %80 = load float, float* %79, align 8
  store float %80, float* %12, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = load float, float* %82, align 4
  store float %83, float* %13, align 4
  br label %94

84:                                               ; preds = %67
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 4
  %87 = load float, float* %86, align 8
  store float %87, float* %11, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 5
  %90 = load float, float* %89, align 4
  store float %90, float* %12, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 6
  %93 = load float, float* %92, align 8
  store float %93, float* %13, align 4
  br label %94

94:                                               ; preds = %84, %74
  %95 = load float, float* %11, align 4
  %96 = call i64 @ceil(float %95)
  %97 = trunc i64 %96 to i32
  %98 = or i32 %97, 1
  store i32 %98, i32* %18, align 4
  %99 = load float, float* %12, align 4
  %100 = call i64 @ceil(float %99)
  %101 = trunc i64 %100 to i32
  %102 = or i32 %101, 1
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %19, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  store i64 %107, i64* %10, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call float* @av_malloc(i64 %108)
  store float* %109, float** %5, align 8
  %110 = load float*, float** %5, align 8
  %111 = icmp ne float* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %94
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %14, align 4
  br label %414

115:                                              ; preds = %94
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %147, %115
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %150

120:                                              ; preds = %116
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %18, align 4
  %123 = sdiv i32 %122, 2
  %124 = sub nsw i32 %121, %123
  %125 = sitofp i32 %124 to double
  %126 = load float, float* %11, align 4
  %127 = fpext float %126 to double
  %128 = fdiv double %125, %127
  store double %128, double* %20, align 8
  %129 = load double, double* %20, align 8
  %130 = load double, double* %20, align 8
  %131 = fmul double %129, %130
  %132 = fmul double -1.600000e+01, %131
  %133 = call double @exp(double %132) #3
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 7
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load double*, double** %140, align 8
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  store double %133, double* %144, align 8
  %145 = load double, double* %7, align 8
  %146 = fadd double %145, %133
  store double %146, double* %7, align 8
  br label %147

147:                                              ; preds = %120
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %116

150:                                              ; preds = %116
  store i32 0, i32* %16, align 4
  br label %151

151:                                              ; preds = %170, %150
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %18, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %151
  %156 = load double, double* %7, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 7
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load double*, double** %163, align 8
  %165 = load i32, i32* %16, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, double* %164, i64 %166
  %168 = load double, double* %167, align 8
  %169 = fdiv double %168, %156
  store double %169, double* %167, align 8
  br label %170

170:                                              ; preds = %155
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  br label %151

173:                                              ; preds = %151
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %17, align 4
  br label %174

174:                                              ; preds = %205, %173
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %19, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %208

178:                                              ; preds = %174
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %19, align 4
  %181 = sdiv i32 %180, 2
  %182 = sub nsw i32 %179, %181
  %183 = sitofp i32 %182 to double
  %184 = load float, float* %12, align 4
  %185 = fpext float %184 to double
  %186 = fdiv double %183, %185
  store double %186, double* %21, align 8
  %187 = load double, double* %21, align 8
  %188 = load double, double* %21, align 8
  %189 = fmul double %187, %188
  %190 = fmul double -1.600000e+01, %189
  %191 = call double @exp(double %190) #3
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 7
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = load double*, double** %198, align 8
  %200 = load i32, i32* %17, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %199, i64 %201
  store double %191, double* %202, align 8
  %203 = load double, double* %7, align 8
  %204 = fadd double %203, %191
  store double %204, double* %7, align 8
  br label %205

205:                                              ; preds = %178
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  br label %174

208:                                              ; preds = %174
  store i32 0, i32* %17, align 4
  br label %209

209:                                              ; preds = %228, %208
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %19, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %231

213:                                              ; preds = %209
  %214 = load double, double* %7, align 8
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 7
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = load i32, i32* %15, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load double*, double** %221, align 8
  %223 = load i32, i32* %17, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds double, double* %222, i64 %224
  %226 = load double, double* %225, align 8
  %227 = fdiv double %226, %214
  store double %227, double* %225, align 8
  br label %228

228:                                              ; preds = %213
  %229 = load i32, i32* %17, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %17, align 4
  br label %209

231:                                              ; preds = %209
  store i32 0, i32* %17, align 4
  br label %232

232:                                              ; preds = %281, %231
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %19, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %284

236:                                              ; preds = %232
  store i32 0, i32* %16, align 4
  br label %237

237:                                              ; preds = %277, %236
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* %18, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %280

241:                                              ; preds = %237
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 7
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = load double*, double** %248, align 8
  %250 = load i32, i32* %16, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds double, double* %249, i64 %251
  %253 = load double, double* %252, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 7
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %255, align 8
  %257 = load i32, i32* %15, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 1
  %261 = load double*, double** %260, align 8
  %262 = load i32, i32* %17, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds double, double* %261, i64 %263
  %265 = load double, double* %264, align 8
  %266 = fmul double %253, %265
  store double %266, double* %6, align 8
  %267 = load double, double* %6, align 8
  %268 = fptrunc double %267 to float
  %269 = load float*, float** %5, align 8
  %270 = load i32, i32* %17, align 4
  %271 = load i32, i32* %18, align 4
  %272 = mul nsw i32 %270, %271
  %273 = load i32, i32* %16, align 4
  %274 = add nsw i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %269, i64 %275
  store float %268, float* %276, align 4
  br label %277

277:                                              ; preds = %241
  %278 = load i32, i32* %16, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %16, align 4
  br label %237

280:                                              ; preds = %237
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %17, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %17, align 4
  br label %232

284:                                              ; preds = %232
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 9
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %317

289:                                              ; preds = %284
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @CL_MEM_READ_ONLY, align 4
  %297 = load i32, i32* @CL_MEM_COPY_HOST_PTR, align 4
  %298 = or i32 %296, %297
  %299 = load i32, i32* @CL_MEM_HOST_NO_ACCESS, align 4
  %300 = or i32 %298, %299
  %301 = load i64, i64* %10, align 8
  %302 = trunc i64 %301 to i32
  %303 = load float*, float** %5, align 8
  %304 = call i8* @clCreateBuffer(i32 %295, i32 %300, i32 %302, float* %303, i32* %8)
  store i8* %304, i8** %9, align 8
  %305 = load i32, i32* @EIO, align 4
  %306 = call i32 @AVERROR(i32 %305)
  %307 = load i32, i32* %8, align 4
  %308 = call i32 @CL_FAIL_ON_ERROR(i32 %306, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %307)
  %309 = load i8*, i8** %9, align 8
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 7
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %311, align 8
  %313 = load i32, i32* %15, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 7
  store i8* %309, i8** %316, align 8
  br label %384

317:                                              ; preds = %284
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @CL_MEM_READ_ONLY, align 4
  %325 = load i32, i32* @CL_MEM_COPY_HOST_PTR, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* @CL_MEM_HOST_NO_ACCESS, align 4
  %328 = or i32 %326, %327
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 7
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %330, align 8
  %332 = load i32, i32* %15, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 0
  %336 = load double*, double** %335, align 8
  %337 = bitcast double* %336 to float*
  %338 = call i8* @clCreateBuffer(i32 %323, i32 %328, i32 8, float* %337, i32* %8)
  store i8* %338, i8** %9, align 8
  %339 = load i32, i32* @EIO, align 4
  %340 = call i32 @AVERROR(i32 %339)
  %341 = load i32, i32* %8, align 4
  %342 = call i32 @CL_FAIL_ON_ERROR(i32 %340, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %341)
  %343 = load i8*, i8** %9, align 8
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 7
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %345, align 8
  %347 = load i32, i32* %15, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 6
  store i8* %343, i8** %350, align 8
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @CL_MEM_READ_ONLY, align 4
  %358 = load i32, i32* @CL_MEM_COPY_HOST_PTR, align 4
  %359 = or i32 %357, %358
  %360 = load i32, i32* @CL_MEM_HOST_NO_ACCESS, align 4
  %361 = or i32 %359, %360
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 7
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %363, align 8
  %365 = load i32, i32* %15, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 1
  %369 = load double*, double** %368, align 8
  %370 = bitcast double* %369 to float*
  %371 = call i8* @clCreateBuffer(i32 %356, i32 %361, i32 8, float* %370, i32* %8)
  store i8* %371, i8** %9, align 8
  %372 = load i32, i32* @EIO, align 4
  %373 = call i32 @AVERROR(i32 %372)
  %374 = load i32, i32* %8, align 4
  %375 = call i32 @CL_FAIL_ON_ERROR(i32 %373, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %374)
  %376 = load i8*, i8** %9, align 8
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 7
  %379 = load %struct.TYPE_13__*, %struct.TYPE_13__** %378, align 8
  %380 = load i32, i32* %15, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 5
  store i8* %376, i8** %383, align 8
  br label %384

384:                                              ; preds = %317, %289
  %385 = call i32 @av_freep(float** %5)
  %386 = load i32, i32* %18, align 4
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 7
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %388, align 8
  %390 = load i32, i32* %15, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i64 %391
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 2
  store i32 %386, i32* %393, align 8
  %394 = load i32, i32* %19, align 4
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 7
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %396, align 8
  %398 = load i32, i32* %15, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %400, i32 0, i32 3
  store i32 %394, i32* %401, align 4
  %402 = load float, float* %13, align 4
  %403 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %403, i32 0, i32 7
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %404, align 8
  %406 = load i32, i32* %15, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %408, i32 0, i32 4
  store float %402, float* %409, align 8
  br label %410

410:                                              ; preds = %384
  %411 = load i32, i32* %15, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %15, align 4
  br label %58

413:                                              ; preds = %58
  store i32 0, i32* %14, align 4
  br label %414

414:                                              ; preds = %413, %112
  %415 = call i32 @av_freep(float** %5)
  %416 = load i32, i32* %14, align 4
  ret i32 %416
}

declare dso_local %struct.TYPE_15__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i64 @ceil(float) #1

declare dso_local float* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

declare dso_local i8* @clCreateBuffer(i32, i32, i32, float*, i32*) #1

declare dso_local i32 @CL_FAIL_ON_ERROR(i32, i8*, i32) #1

declare dso_local i32 @av_freep(float**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
