; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TraceCapsuleThroughCapsule.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TraceCapsuleThroughCapsule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64**, i64*, i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float, float, i32 }

@RADIUS_EPSILON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TraceCapsuleThroughCapsule(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca [2 x double*], align 16
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load double*, double** %6, align 8
  %23 = load double*, double** %7, align 8
  %24 = call i32 @CM_ModelBounds(i32 %21, double* %22, double* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64**, i64*** %26, align 8
  %28 = getelementptr inbounds i64*, i64** %27, i64 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = load double*, double** %7, align 8
  %34 = getelementptr inbounds double, double* %33, i64 0
  %35 = load double, double* %34, align 8
  %36 = load i64, i64* @RADIUS_EPSILON, align 8
  %37 = sitofp i64 %36 to double
  %38 = fadd double %35, %37
  %39 = fcmp ogt double %32, %38
  br i1 %39, label %120, label %40

40:                                               ; preds = %2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64**, i64*** %42, align 8
  %44 = getelementptr inbounds i64*, i64** %43, i64 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = sitofp i64 %47 to double
  %49 = load double*, double** %7, align 8
  %50 = getelementptr inbounds double, double* %49, i64 1
  %51 = load double, double* %50, align 8
  %52 = load i64, i64* @RADIUS_EPSILON, align 8
  %53 = sitofp i64 %52 to double
  %54 = fadd double %51, %53
  %55 = fcmp ogt double %48, %54
  br i1 %55, label %120, label %56

56:                                               ; preds = %40
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64**, i64*** %58, align 8
  %60 = getelementptr inbounds i64*, i64** %59, i64 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 2
  %63 = load i64, i64* %62, align 8
  %64 = sitofp i64 %63 to double
  %65 = load double*, double** %7, align 8
  %66 = getelementptr inbounds double, double* %65, i64 2
  %67 = load double, double* %66, align 8
  %68 = load i64, i64* @RADIUS_EPSILON, align 8
  %69 = sitofp i64 %68 to double
  %70 = fadd double %67, %69
  %71 = fcmp ogt double %64, %70
  br i1 %71, label %120, label %72

72:                                               ; preds = %56
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64**, i64*** %74, align 8
  %76 = getelementptr inbounds i64*, i64** %75, i64 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  %79 = load i64, i64* %78, align 8
  %80 = sitofp i64 %79 to double
  %81 = load double*, double** %6, align 8
  %82 = getelementptr inbounds double, double* %81, i64 0
  %83 = load double, double* %82, align 8
  %84 = load i64, i64* @RADIUS_EPSILON, align 8
  %85 = sitofp i64 %84 to double
  %86 = fsub double %83, %85
  %87 = fcmp olt double %80, %86
  br i1 %87, label %120, label %88

88:                                               ; preds = %72
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64**, i64*** %90, align 8
  %92 = getelementptr inbounds i64*, i64** %91, i64 1
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  %95 = load i64, i64* %94, align 8
  %96 = sitofp i64 %95 to double
  %97 = load double*, double** %6, align 8
  %98 = getelementptr inbounds double, double* %97, i64 1
  %99 = load double, double* %98, align 8
  %100 = load i64, i64* @RADIUS_EPSILON, align 8
  %101 = sitofp i64 %100 to double
  %102 = fsub double %99, %101
  %103 = fcmp olt double %96, %102
  br i1 %103, label %120, label %104

104:                                              ; preds = %88
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64**, i64*** %106, align 8
  %108 = getelementptr inbounds i64*, i64** %107, i64 1
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 2
  %111 = load i64, i64* %110, align 8
  %112 = sitofp i64 %111 to double
  %113 = load double*, double** %6, align 8
  %114 = getelementptr inbounds double, double* %113, i64 2
  %115 = load double, double* %114, align 8
  %116 = load i64, i64* @RADIUS_EPSILON, align 8
  %117 = sitofp i64 %116 to double
  %118 = fsub double %115, %117
  %119 = fcmp olt double %112, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %104, %88, %72, %56, %40, %2
  br label %320

121:                                              ; preds = %104
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load double*, double** %10, align 8
  %130 = call i32 @VectorAdd(i64* %124, i32 %128, double* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i64*, i64** %132, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load double*, double** %11, align 8
  %139 = call i32 @VectorSubtract(i64* %133, i32 %137, double* %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load double*, double** %12, align 8
  %148 = call i32 @VectorAdd(i64* %142, i32 %146, double* %147)
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load i64*, i64** %150, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load double*, double** %13, align 8
  %157 = call i32 @VectorSubtract(i64* %151, i32 %155, double* %156)
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %210, %121
  %159 = load i32, i32* %5, align 4
  %160 = icmp slt i32 %159, 3
  br i1 %160, label %161, label %213

161:                                              ; preds = %158
  %162 = load double*, double** %6, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %162, i64 %164
  %166 = load double, double* %165, align 8
  %167 = load double*, double** %7, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %167, i64 %169
  %171 = load double, double* %170, align 8
  %172 = fadd double %166, %171
  %173 = fmul double %172, 5.000000e-01
  %174 = load double*, double** %14, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double, double* %174, i64 %176
  store double %173, double* %177, align 8
  %178 = load double*, double** %6, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %178, i64 %180
  %182 = load double, double* %181, align 8
  %183 = load double*, double** %14, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds double, double* %183, i64 %185
  %187 = load double, double* %186, align 8
  %188 = fsub double %182, %187
  %189 = getelementptr inbounds [2 x double*], [2 x double*]* %15, i64 0, i64 0
  %190 = load double*, double** %189, align 16
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %190, i64 %192
  store double %188, double* %193, align 8
  %194 = load double*, double** %7, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, double* %194, i64 %196
  %198 = load double, double* %197, align 8
  %199 = load double*, double** %14, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %199, i64 %201
  %203 = load double, double* %202, align 8
  %204 = fsub double %198, %203
  %205 = getelementptr inbounds [2 x double*], [2 x double*]* %15, i64 0, i64 1
  %206 = load double*, double** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %206, i64 %208
  store double %204, double* %209, align 8
  br label %210

210:                                              ; preds = %161
  %211 = load i32, i32* %5, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %5, align 4
  br label %158

213:                                              ; preds = %158
  %214 = getelementptr inbounds [2 x double*], [2 x double*]* %15, i64 0, i64 1
  %215 = load double*, double** %214, align 8
  %216 = getelementptr inbounds double, double* %215, i64 0
  %217 = load double, double* %216, align 8
  %218 = fptrunc double %217 to float
  store float %218, float* %17, align 4
  %219 = getelementptr inbounds [2 x double*], [2 x double*]* %15, i64 0, i64 1
  %220 = load double*, double** %219, align 8
  %221 = getelementptr inbounds double, double* %220, i64 2
  %222 = load double, double* %221, align 8
  %223 = fptrunc double %222 to float
  store float %223, float* %18, align 4
  %224 = load float, float* %17, align 4
  %225 = load float, float* %18, align 4
  %226 = fcmp ogt float %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %213
  %228 = load float, float* %18, align 4
  br label %231

229:                                              ; preds = %213
  %230 = load float, float* %17, align 4
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi float [ %228, %227 ], [ %230, %229 ]
  store float %232, float* %16, align 4
  %233 = load float, float* %18, align 4
  %234 = load float, float* %16, align 4
  %235 = fsub float %233, %234
  store float %235, float* %19, align 4
  %236 = load double*, double** %14, align 8
  %237 = load double*, double** %8, align 8
  %238 = call i32 @VectorCopy(double* %236, double* %237)
  %239 = load float, float* %19, align 4
  %240 = fpext float %239 to double
  %241 = load double*, double** %8, align 8
  %242 = getelementptr inbounds double, double* %241, i64 2
  %243 = load double, double* %242, align 8
  %244 = fadd double %243, %240
  store double %244, double* %242, align 8
  %245 = load double*, double** %14, align 8
  %246 = load double*, double** %9, align 8
  %247 = call i32 @VectorCopy(double* %245, double* %246)
  %248 = load float, float* %19, align 4
  %249 = fpext float %248 to double
  %250 = load double*, double** %9, align 8
  %251 = getelementptr inbounds double, double* %250, i64 2
  %252 = load double, double* %251, align 8
  %253 = fsub double %252, %249
  store double %253, double* %251, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load float, float* %256, align 8
  %258 = load float, float* %16, align 4
  %259 = fadd float %258, %257
  store float %259, float* %16, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %264, %269
  br i1 %270, label %283, label %271

271:                                              ; preds = %231
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 1
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 1
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 2
  %279 = load i64*, i64** %278, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %276, %281
  br i1 %282, label %283, label %307

283:                                              ; preds = %271, %231
  %284 = load float, float* %18, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  %288 = load float, float* %287, align 4
  %289 = fadd float %284, %288
  %290 = load float, float* %16, align 4
  %291 = fsub float %289, %290
  store float %291, float* %20, align 4
  %292 = load float, float* %20, align 4
  %293 = fcmp ogt float %292, 0.000000e+00
  br i1 %293, label %294, label %306

294:                                              ; preds = %283
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %296 = load double*, double** %14, align 8
  %297 = load float, float* %16, align 4
  %298 = load float, float* %20, align 4
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 1
  %301 = load i64*, i64** %300, align 8
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 2
  %304 = load i64*, i64** %303, align 8
  %305 = call i32 @CM_TraceThroughVerticalCylinder(%struct.TYPE_7__* %295, double* %296, float %297, float %298, i64* %301, i64* %304)
  br label %306

306:                                              ; preds = %294, %283
  br label %307

307:                                              ; preds = %306, %271
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %309 = load double*, double** %8, align 8
  %310 = load float, float* %16, align 4
  %311 = load double*, double** %11, align 8
  %312 = load double*, double** %13, align 8
  %313 = call i32 @CM_TraceThroughSphere(%struct.TYPE_7__* %308, double* %309, float %310, double* %311, double* %312)
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %315 = load double*, double** %9, align 8
  %316 = load float, float* %16, align 4
  %317 = load double*, double** %10, align 8
  %318 = load double*, double** %12, align 8
  %319 = call i32 @CM_TraceThroughSphere(%struct.TYPE_7__* %314, double* %315, float %316, double* %317, double* %318)
  br label %320

320:                                              ; preds = %307, %120
  ret void
}

declare dso_local i32 @CM_ModelBounds(i32, double*, double*) #1

declare dso_local i32 @VectorAdd(i64*, i32, double*) #1

declare dso_local i32 @VectorSubtract(i64*, i32, double*) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

declare dso_local i32 @CM_TraceThroughVerticalCylinder(%struct.TYPE_7__*, double*, float, float, i64*, i64*) #1

declare dso_local i32 @CM_TraceThroughSphere(%struct.TYPE_7__*, double*, float, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
