; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_decode_lspf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_decode_lspf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, float*, float*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@RATE_OCTAVE = common dso_local global i64 0, align 8
@I_F_Q = common dso_local global i64 0, align 8
@QCELP_LSP_SPREAD_FACTOR = common dso_local global float 0.000000e+00, align 4
@QCELP_LSP_OCTAVE_PREDICTOR = common dso_local global float 0.000000e+00, align 4
@qcelp_lspvq = common dso_local global double*** null, align 8
@RATE_QUARTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, float*)* @decode_lspf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_lspf(%struct.TYPE_5__* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float* %1, float** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RATE_OCTAVE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @I_F_Q, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %250

22:                                               ; preds = %16, %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RATE_OCTAVE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @I_F_Q, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load float*, float** %36, align 8
  br label %42

38:                                               ; preds = %28, %22
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load float*, float** %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi float* [ %37, %34 ], [ %41, %38 ]
  store float* %43, float** %10, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RATE_OCTAVE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %111

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %100, %49
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 10
  br i1 %56, label %57, label %103

57:                                               ; preds = %54
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load float, float* @QCELP_LSP_SPREAD_FACTOR, align 4
  br label %72

69:                                               ; preds = %57
  %70 = load float, float* @QCELP_LSP_SPREAD_FACTOR, align 4
  %71 = fneg float %70
  br label %72

72:                                               ; preds = %69, %67
  %73 = phi float [ %68, %67 ], [ %71, %69 ]
  %74 = load float*, float** %10, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load float, float* @QCELP_LSP_OCTAVE_PREDICTOR, align 4
  %80 = fmul float %78, %79
  %81 = fadd float %73, %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  %84 = sitofp i32 %83 to float
  %85 = load float, float* @QCELP_LSP_OCTAVE_PREDICTOR, align 4
  %86 = fsub float 1.000000e+00, %85
  %87 = fdiv float %86, 1.100000e+01
  %88 = fmul float %84, %87
  %89 = fadd float %81, %88
  %90 = load float*, float** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  store float %89, float* %93, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load float*, float** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %96, i64 %98
  store float %89, float* %99, align 4
  br label %100

100:                                              ; preds = %72
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %54

103:                                              ; preds = %54
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %106, 10
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, double 8.750000e-01, double 1.000000e-01
  %110 = fptrunc double %109 to float
  store float %110, float* %8, align 4
  br label %169

111:                                              ; preds = %42
  %112 = load float, float* @QCELP_LSP_OCTAVE_PREDICTOR, align 4
  store float %112, float* %9, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @I_F_Q, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @av_assert2(i32 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %135

124:                                              ; preds = %111
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 4
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, double 9.000000e-01, double 0x3FE6666666666666
  %131 = load float, float* %9, align 4
  %132 = fpext float %131 to double
  %133 = fmul double %132, %130
  %134 = fptrunc double %133 to float
  store float %134, float* %9, align 4
  br label %135

135:                                              ; preds = %124, %111
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %165, %135
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %137, 10
  br i1 %138, label %139, label %168

139:                                              ; preds = %136
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  %142 = sitofp i32 %141 to float
  %143 = load float, float* %9, align 4
  %144 = fsub float 1.000000e+00, %143
  %145 = fmul float %142, %144
  %146 = fdiv float %145, 1.100000e+01
  %147 = load float, float* %9, align 4
  %148 = load float*, float** %10, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  %152 = load float, float* %151, align 4
  %153 = fmul float %147, %152
  %154 = fadd float %146, %153
  %155 = load float*, float** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %155, i64 %157
  store float %154, float* %158, align 4
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load float*, float** %160, align 8
  %162 = load i32, i32* %6, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %161, i64 %163
  store float %154, float* %164, align 4
  br label %165

165:                                              ; preds = %139
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %136

168:                                              ; preds = %136
  store float 1.250000e-01, float* %8, align 4
  br label %169

169:                                              ; preds = %168, %103
  %170 = load float*, float** %5, align 8
  %171 = getelementptr inbounds float, float* %170, i64 0
  %172 = load float, float* %171, align 4
  %173 = load float, float* @QCELP_LSP_SPREAD_FACTOR, align 4
  %174 = call float @FFMAX(float %172, float %173)
  %175 = load float*, float** %5, align 8
  %176 = getelementptr inbounds float, float* %175, i64 0
  store float %174, float* %176, align 4
  store i32 1, i32* %6, align 4
  br label %177

177:                                              ; preds = %199, %169
  %178 = load i32, i32* %6, align 4
  %179 = icmp slt i32 %178, 10
  br i1 %179, label %180, label %202

180:                                              ; preds = %177
  %181 = load float*, float** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %181, i64 %183
  %185 = load float, float* %184, align 4
  %186 = load float*, float** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %186, i64 %189
  %191 = load float, float* %190, align 4
  %192 = load float, float* @QCELP_LSP_SPREAD_FACTOR, align 4
  %193 = fadd float %191, %192
  %194 = call float @FFMAX(float %185, float %193)
  %195 = load float*, float** %5, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  store float %194, float* %198, align 4
  br label %199

199:                                              ; preds = %180
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %177

202:                                              ; preds = %177
  %203 = load float*, float** %5, align 8
  %204 = getelementptr inbounds float, float* %203, i64 9
  %205 = load float, float* %204, align 4
  %206 = load float, float* @QCELP_LSP_SPREAD_FACTOR, align 4
  %207 = fpext float %206 to double
  %208 = fsub double 1.000000e+00, %207
  %209 = fptrunc double %208 to float
  %210 = call float @FFMIN(float %205, float %209)
  %211 = load float*, float** %5, align 8
  %212 = getelementptr inbounds float, float* %211, i64 9
  store float %210, float* %212, align 4
  store i32 9, i32* %6, align 4
  br label %213

213:                                              ; preds = %236, %202
  %214 = load i32, i32* %6, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %239

216:                                              ; preds = %213
  %217 = load float*, float** %5, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %217, i64 %220
  %222 = load float, float* %221, align 4
  %223 = load float*, float** %5, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  %227 = load float, float* %226, align 4
  %228 = load float, float* @QCELP_LSP_SPREAD_FACTOR, align 4
  %229 = fsub float %227, %228
  %230 = call float @FFMIN(float %222, float %229)
  %231 = load float*, float** %5, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %231, i64 %234
  store float %230, float* %235, align 4
  br label %236

236:                                              ; preds = %216
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %6, align 4
  br label %213

239:                                              ; preds = %213
  %240 = load float*, float** %5, align 8
  %241 = load float*, float** %5, align 8
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 2
  %244 = load float*, float** %243, align 8
  %245 = load float, float* %8, align 4
  %246 = load float, float* %8, align 4
  %247 = fpext float %246 to double
  %248 = fsub double 1.000000e+00, %247
  %249 = call i32 @ff_weighted_vector_sumf(float* %240, float* %241, float* %244, float %245, double %248, i32 10)
  br label %401

250:                                              ; preds = %16
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 4
  store i32 0, i32* %252, align 8
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %6, align 4
  br label %253

253:                                              ; preds = %315, %250
  %254 = load i32, i32* %6, align 4
  %255 = icmp slt i32 %254, 5
  br i1 %255, label %256, label %318

256:                                              ; preds = %253
  %257 = load double***, double**** @qcelp_lspvq, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds double**, double*** %257, i64 %259
  %261 = load double**, double*** %260, align 8
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds double*, double** %261, i64 %270
  %272 = load double*, double** %271, align 8
  %273 = getelementptr inbounds double, double* %272, i64 0
  %274 = load double, double* %273, align 8
  %275 = fmul double %274, 1.000000e-04
  %276 = load float, float* %7, align 4
  %277 = fpext float %276 to double
  %278 = fadd double %277, %275
  %279 = fptrunc double %278 to float
  store float %279, float* %7, align 4
  %280 = load float*, float** %5, align 8
  %281 = load i32, i32* %6, align 4
  %282 = mul nsw i32 2, %281
  %283 = add nsw i32 %282, 0
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %280, i64 %284
  store float %279, float* %285, align 4
  %286 = load double***, double**** @qcelp_lspvq, align 8
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds double**, double*** %286, i64 %288
  %290 = load double**, double*** %289, align 8
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds double*, double** %290, i64 %299
  %301 = load double*, double** %300, align 8
  %302 = getelementptr inbounds double, double* %301, i64 1
  %303 = load double, double* %302, align 8
  %304 = fmul double %303, 1.000000e-04
  %305 = load float, float* %7, align 4
  %306 = fpext float %305 to double
  %307 = fadd double %306, %304
  %308 = fptrunc double %307 to float
  store float %308, float* %7, align 4
  %309 = load float*, float** %5, align 8
  %310 = load i32, i32* %6, align 4
  %311 = mul nsw i32 2, %310
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds float, float* %309, i64 %313
  store float %308, float* %314, align 4
  br label %315

315:                                              ; preds = %256
  %316 = load i32, i32* %6, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %6, align 4
  br label %253

318:                                              ; preds = %253
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @RATE_QUARTER, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %362

324:                                              ; preds = %318
  %325 = load float*, float** %5, align 8
  %326 = getelementptr inbounds float, float* %325, i64 9
  %327 = load float, float* %326, align 4
  %328 = fpext float %327 to double
  %329 = fcmp ole double %328, 0x3FE6666666666666
  br i1 %329, label %336, label %330

330:                                              ; preds = %324
  %331 = load float*, float** %5, align 8
  %332 = getelementptr inbounds float, float* %331, i64 9
  %333 = load float, float* %332, align 4
  %334 = fpext float %333 to double
  %335 = fcmp oge double %334, 0x3FEF0A3D70A3D70A
  br i1 %335, label %336, label %337

336:                                              ; preds = %330, %324
  store i32 -1, i32* %3, align 4
  br label %402

337:                                              ; preds = %330
  store i32 3, i32* %6, align 4
  br label %338

338:                                              ; preds = %358, %337
  %339 = load i32, i32* %6, align 4
  %340 = icmp slt i32 %339, 10
  br i1 %340, label %341, label %361

341:                                              ; preds = %338
  %342 = load float*, float** %5, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %342, i64 %344
  %346 = load float, float* %345, align 4
  %347 = load float*, float** %5, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sub nsw i32 %348, 2
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %347, i64 %350
  %352 = load float, float* %351, align 4
  %353 = fsub float %346, %352
  %354 = call double @fabs(float %353)
  %355 = fcmp olt double %354, 8.000000e-02
  br i1 %355, label %356, label %357

356:                                              ; preds = %341
  store i32 -1, i32* %3, align 4
  br label %402

357:                                              ; preds = %341
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %6, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %6, align 4
  br label %338

361:                                              ; preds = %338
  br label %400

362:                                              ; preds = %318
  %363 = load float*, float** %5, align 8
  %364 = getelementptr inbounds float, float* %363, i64 9
  %365 = load float, float* %364, align 4
  %366 = fpext float %365 to double
  %367 = fcmp ole double %366, 6.600000e-01
  br i1 %367, label %374, label %368

368:                                              ; preds = %362
  %369 = load float*, float** %5, align 8
  %370 = getelementptr inbounds float, float* %369, i64 9
  %371 = load float, float* %370, align 4
  %372 = fpext float %371 to double
  %373 = fcmp oge double %372, 0x3FEF851EB851EB85
  br i1 %373, label %374, label %375

374:                                              ; preds = %368, %362
  store i32 -1, i32* %3, align 4
  br label %402

375:                                              ; preds = %368
  store i32 4, i32* %6, align 4
  br label %376

376:                                              ; preds = %396, %375
  %377 = load i32, i32* %6, align 4
  %378 = icmp slt i32 %377, 10
  br i1 %378, label %379, label %399

379:                                              ; preds = %376
  %380 = load float*, float** %5, align 8
  %381 = load i32, i32* %6, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds float, float* %380, i64 %382
  %384 = load float, float* %383, align 4
  %385 = load float*, float** %5, align 8
  %386 = load i32, i32* %6, align 4
  %387 = sub nsw i32 %386, 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds float, float* %385, i64 %388
  %390 = load float, float* %389, align 4
  %391 = fsub float %384, %390
  %392 = call double @fabs(float %391)
  %393 = fcmp olt double %392, 9.310000e-02
  br i1 %393, label %394, label %395

394:                                              ; preds = %379
  store i32 -1, i32* %3, align 4
  br label %402

395:                                              ; preds = %379
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %6, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %6, align 4
  br label %376

399:                                              ; preds = %376
  br label %400

400:                                              ; preds = %399, %361
  br label %401

401:                                              ; preds = %400, %239
  store i32 0, i32* %3, align 4
  br label %402

402:                                              ; preds = %401, %394, %374, %356, %336
  %403 = load i32, i32* %3, align 4
  ret i32 %403
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local float @FFMAX(float, float) #1

declare dso_local float @FFMIN(float, float) #1

declare dso_local i32 @ff_weighted_vector_sumf(float*, float*, float*, float, double, i32) #1

declare dso_local double @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
