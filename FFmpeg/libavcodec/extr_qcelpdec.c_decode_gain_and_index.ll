; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_decode_gain_and_index.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_decode_gain_and_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, double, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32*, i64* }

@RATE_QUARTER = common dso_local global i32 0, align 4
@qcelp_g12ga = common dso_local global double* null, align 8
@SILENCE = common dso_local global i32 0, align 4
@RATE_OCTAVE = common dso_local global i32 0, align 4
@I_F_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*)* @decode_gain_and_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_gain_and_index(%struct.TYPE_5__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i32], align 16
  %8 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store float* %1, float** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RATE_QUARTER, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %237

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %20 [
    i32 129, label %18
    i32 128, label %19
  ]

18:                                               ; preds = %14
  store i32 16, i32* %6, align 4
  br label %21

19:                                               ; preds = %14
  store i32 4, i32* %6, align 4
  br label %21

20:                                               ; preds = %14
  store i32 5, i32* %6, align 4
  br label %21

21:                                               ; preds = %20, %19, %18
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %126, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %129

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 4, %34
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %74

43:                                               ; preds = %26
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  %46 = and i32 %45, 3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %53, %58
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %60, 3
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %59, %64
  %66 = sdiv i32 %65, 3
  %67 = sub nsw i32 %66, 6
  %68 = call i32 @av_clip(i32 %67, i32 0, i32 32)
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %48, %43, %26
  %75 = load double*, double** @qcelp_g12ga, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %75, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fptrunc double %82 to float
  %84 = load float*, float** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  store float %83, float* %87, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %74
  %98 = load float*, float** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fneg float %102
  %104 = load float*, float** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  store float %103, float* %107, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 89
  %117 = and i32 %116, 127
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %117, i32* %124, align 4
  br label %125

125:                                              ; preds = %97, %74
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %22

129:                                              ; preds = %22
  %130 = load i32, i32* %5, align 4
  %131 = sub nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %5, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  store i32 %143, i32* %147, align 4
  %148 = load double*, double** @qcelp_g12ga, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds double, double* %148, i64 %154
  %156 = load double, double* %155, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  store double %156, double* %158, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @RATE_QUARTER, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %236

164:                                              ; preds = %129
  %165 = load float*, float** %4, align 8
  %166 = getelementptr inbounds float, float* %165, i64 4
  %167 = load float, float* %166, align 4
  %168 = load float*, float** %4, align 8
  %169 = getelementptr inbounds float, float* %168, i64 7
  store float %167, float* %169, align 4
  %170 = load float*, float** %4, align 8
  %171 = getelementptr inbounds float, float* %170, i64 3
  %172 = load float, float* %171, align 4
  %173 = fpext float %172 to double
  %174 = fmul double 4.000000e-01, %173
  %175 = load float*, float** %4, align 8
  %176 = getelementptr inbounds float, float* %175, i64 4
  %177 = load float, float* %176, align 4
  %178 = fpext float %177 to double
  %179 = fmul double 6.000000e-01, %178
  %180 = fadd double %174, %179
  %181 = fptrunc double %180 to float
  %182 = load float*, float** %4, align 8
  %183 = getelementptr inbounds float, float* %182, i64 6
  store float %181, float* %183, align 4
  %184 = load float*, float** %4, align 8
  %185 = getelementptr inbounds float, float* %184, i64 3
  %186 = load float, float* %185, align 4
  %187 = load float*, float** %4, align 8
  %188 = getelementptr inbounds float, float* %187, i64 5
  store float %186, float* %188, align 4
  %189 = load float*, float** %4, align 8
  %190 = getelementptr inbounds float, float* %189, i64 2
  %191 = load float, float* %190, align 4
  %192 = fpext float %191 to double
  %193 = fmul double 8.000000e-01, %192
  %194 = load float*, float** %4, align 8
  %195 = getelementptr inbounds float, float* %194, i64 3
  %196 = load float, float* %195, align 4
  %197 = fpext float %196 to double
  %198 = fmul double 2.000000e-01, %197
  %199 = fadd double %193, %198
  %200 = fptrunc double %199 to float
  %201 = load float*, float** %4, align 8
  %202 = getelementptr inbounds float, float* %201, i64 4
  store float %200, float* %202, align 4
  %203 = load float*, float** %4, align 8
  %204 = getelementptr inbounds float, float* %203, i64 1
  %205 = load float, float* %204, align 4
  %206 = fpext float %205 to double
  %207 = fmul double 2.000000e-01, %206
  %208 = load float*, float** %4, align 8
  %209 = getelementptr inbounds float, float* %208, i64 2
  %210 = load float, float* %209, align 4
  %211 = fpext float %210 to double
  %212 = fmul double 8.000000e-01, %211
  %213 = fadd double %207, %212
  %214 = fptrunc double %213 to float
  %215 = load float*, float** %4, align 8
  %216 = getelementptr inbounds float, float* %215, i64 3
  store float %214, float* %216, align 4
  %217 = load float*, float** %4, align 8
  %218 = getelementptr inbounds float, float* %217, i64 1
  %219 = load float, float* %218, align 4
  %220 = load float*, float** %4, align 8
  %221 = getelementptr inbounds float, float* %220, i64 2
  store float %219, float* %221, align 4
  %222 = load float*, float** %4, align 8
  %223 = getelementptr inbounds float, float* %222, i64 0
  %224 = load float, float* %223, align 4
  %225 = fpext float %224 to double
  %226 = fmul double 6.000000e-01, %225
  %227 = load float*, float** %4, align 8
  %228 = getelementptr inbounds float, float* %227, i64 1
  %229 = load float, float* %228, align 4
  %230 = fpext float %229 to double
  %231 = fmul double 4.000000e-01, %230
  %232 = fadd double %226, %231
  %233 = fptrunc double %232 to float
  %234 = load float*, float** %4, align 8
  %235 = getelementptr inbounds float, float* %234, i64 1
  store float %233, float* %235, align 4
  br label %236

236:                                              ; preds = %164, %129
  br label %375

237:                                              ; preds = %2
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @SILENCE, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %374

243:                                              ; preds = %237
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @RATE_OCTAVE, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %273

249:                                              ; preds = %243
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 2, %255
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %261, %266
  %268 = sdiv i32 %267, 2
  %269 = sub nsw i32 %268, 5
  %270 = call i32 @av_clip(i32 %269, i32 0, i32 54)
  %271 = add nsw i32 %256, %270
  %272 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  store i32 %271, i32* %272, align 16
  store i32 8, i32* %6, align 4
  br label %310

273:                                              ; preds = %243
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @I_F_Q, align 4
  %278 = icmp eq i32 %276, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @av_assert2(i32 %279)
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  store i32 %285, i32* %286, align 16
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  switch i32 %289, label %299 [
    i32 1, label %290
    i32 2, label %291
    i32 3, label %295
  ]

290:                                              ; preds = %273
  br label %303

291:                                              ; preds = %273
  %292 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %293 = load i32, i32* %292, align 16
  %294 = sub nsw i32 %293, 1
  store i32 %294, i32* %292, align 16
  br label %303

295:                                              ; preds = %273
  %296 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %297 = load i32, i32* %296, align 16
  %298 = sub nsw i32 %297, 2
  store i32 %298, i32* %296, align 16
  br label %303

299:                                              ; preds = %273
  %300 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %301 = load i32, i32* %300, align 16
  %302 = sub nsw i32 %301, 6
  store i32 %302, i32* %300, align 16
  br label %303

303:                                              ; preds = %299, %295, %291, %290
  %304 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %305 = load i32, i32* %304, align 16
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %308, align 16
  br label %309

309:                                              ; preds = %307, %303
  store i32 4, i32* %6, align 4
  br label %310

310:                                              ; preds = %309, %249
  %311 = load double*, double** @qcelp_g12ga, align 8
  %312 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %313 = load i32, i32* %312, align 16
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds double, double* %311, i64 %314
  %316 = load double, double* %315, align 8
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 2
  %319 = load double, double* %318, align 8
  %320 = fsub double %316, %319
  %321 = fmul double 5.000000e-01, %320
  %322 = load i32, i32* %6, align 4
  %323 = sitofp i32 %322 to double
  %324 = fdiv double %321, %323
  %325 = fptrunc double %324 to float
  store float %325, float* %8, align 4
  store i32 1, i32* %5, align 4
  br label %326

326:                                              ; preds = %346, %310
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* %6, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %349

330:                                              ; preds = %326
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 2
  %333 = load double, double* %332, align 8
  %334 = load float, float* %8, align 4
  %335 = load i32, i32* %5, align 4
  %336 = sitofp i32 %335 to float
  %337 = fmul float %334, %336
  %338 = fpext float %337 to double
  %339 = fadd double %333, %338
  %340 = fptrunc double %339 to float
  %341 = load float*, float** %4, align 8
  %342 = load i32, i32* %5, align 4
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %341, i64 %344
  store float %340, float* %345, align 4
  br label %346

346:                                              ; preds = %330
  %347 = load i32, i32* %5, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %5, align 4
  br label %326

349:                                              ; preds = %326
  %350 = load float*, float** %4, align 8
  %351 = load i32, i32* %5, align 4
  %352 = sub nsw i32 %351, 2
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds float, float* %350, i64 %353
  %355 = load float, float* %354, align 4
  %356 = fpext float %355 to double
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 2
  store double %356, double* %358, align 8
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 1
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 1
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 0
  store i32 %363, i32* %367, align 4
  %368 = getelementptr inbounds [16 x i32], [16 x i32]* %7, i64 0, i64 0
  %369 = load i32, i32* %368, align 16
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  store i32 %369, i32* %373, align 4
  br label %374

374:                                              ; preds = %349, %237
  br label %375

375:                                              ; preds = %374, %236
  ret void
}

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @av_assert2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
