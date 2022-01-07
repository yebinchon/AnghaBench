; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TraceThroughVerticalCylinder.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TraceThroughVerticalCylinder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { float, i32, %struct.TYPE_5__, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@qtrue = common dso_local global i8* null, align 8
@SURFACE_CLIP_EPSILON = common dso_local global float 0.000000e+00, align 4
@RADIUS_EPSILON = common dso_local global float 0.000000e+00, align 4
@CONTENTS_BODY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CM_TraceThroughVerticalCylinder(%struct.TYPE_7__* %0, float* %1, float %2, float %3, float* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store float* %1, float** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %29 = load float*, float** %25, align 8
  %30 = load float*, float** %11, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  %32 = load float, float* %31, align 4
  %33 = load float*, float** %11, align 8
  %34 = getelementptr inbounds float, float* %33, i64 1
  %35 = load float, float* %34, align 4
  %36 = call i32 @VectorSet(float* %29, float %32, float %35, i32 0)
  %37 = load float*, float** %26, align 8
  %38 = load float*, float** %12, align 8
  %39 = getelementptr inbounds float, float* %38, i64 0
  %40 = load float, float* %39, align 4
  %41 = load float*, float** %12, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  %43 = load float, float* %42, align 4
  %44 = call i32 @VectorSet(float* %37, float %40, float %43, i32 0)
  %45 = load float*, float** %27, align 8
  %46 = load float*, float** %8, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = load float*, float** %8, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  %51 = load float, float* %50, align 4
  %52 = call i32 @VectorSet(float* %45, float %48, float %51, i32 0)
  %53 = load float*, float** %11, align 8
  %54 = getelementptr inbounds float, float* %53, i64 2
  %55 = load float, float* %54, align 4
  %56 = load float*, float** %8, align 8
  %57 = getelementptr inbounds float, float* %56, i64 2
  %58 = load float, float* %57, align 4
  %59 = load float, float* %10, align 4
  %60 = fadd float %58, %59
  %61 = fcmp ole float %55, %60
  br i1 %61, label %62, label %108

62:                                               ; preds = %6
  %63 = load float*, float** %11, align 8
  %64 = getelementptr inbounds float, float* %63, i64 2
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %8, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = load float, float* %10, align 4
  %70 = fsub float %68, %69
  %71 = fcmp oge float %65, %70
  br i1 %71, label %72, label %108

72:                                               ; preds = %62
  %73 = load float*, float** %25, align 8
  %74 = load float*, float** %27, align 8
  %75 = load float*, float** %24, align 8
  %76 = call i32 @VectorSubtract(float* %73, float* %74, float* %75)
  %77 = load float*, float** %24, align 8
  %78 = call float @VectorLengthSquared(float* %77)
  store float %78, float* %16, align 4
  %79 = load float, float* %16, align 4
  %80 = load float, float* %9, align 4
  %81 = call float @Square(float %80)
  %82 = fcmp olt float %79, %81
  br i1 %82, label %83, label %107

83:                                               ; preds = %72
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store float 0.000000e+00, float* %86, align 8
  %87 = load i8*, i8** @qtrue, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  store i8* %87, i8** %90, align 8
  %91 = load float*, float** %26, align 8
  %92 = load float*, float** %27, align 8
  %93 = load float*, float** %24, align 8
  %94 = call i32 @VectorSubtract(float* %91, float* %92, float* %93)
  %95 = load float*, float** %24, align 8
  %96 = call float @VectorLengthSquared(float* %95)
  store float %96, float* %16, align 4
  %97 = load float, float* %16, align 4
  %98 = load float, float* %9, align 4
  %99 = call float @Square(float %98)
  %100 = fcmp olt float %97, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %83
  %102 = load i8*, i8** @qtrue, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  store i8* %102, i8** %105, align 8
  br label %106

106:                                              ; preds = %101, %83
  br label %295

107:                                              ; preds = %72
  br label %108

108:                                              ; preds = %107, %62, %6
  %109 = load float*, float** %26, align 8
  %110 = load float*, float** %25, align 8
  %111 = load float*, float** %24, align 8
  %112 = call i32 @VectorSubtract(float* %109, float* %110, float* %111)
  %113 = load float*, float** %24, align 8
  %114 = call float @VectorNormalize(float* %113)
  store float %114, float* %13, align 4
  %115 = load float*, float** %27, align 8
  %116 = load float*, float** %25, align 8
  %117 = load float*, float** %26, align 8
  %118 = load float*, float** %24, align 8
  %119 = call float @CM_DistanceFromLineSquared(float* %115, float* %116, float* %117, float* %118)
  store float %119, float* %16, align 4
  %120 = load float*, float** %26, align 8
  %121 = load float*, float** %27, align 8
  %122 = load float*, float** %23, align 8
  %123 = call i32 @VectorSubtract(float* %120, float* %121, float* %122)
  %124 = load float*, float** %23, align 8
  %125 = call float @VectorLengthSquared(float* %124)
  store float %125, float* %17, align 4
  %126 = load float, float* %16, align 4
  %127 = load float, float* %9, align 4
  %128 = call float @Square(float %127)
  %129 = fcmp oge float %126, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %108
  %131 = load float, float* %17, align 4
  %132 = load float, float* %9, align 4
  %133 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %134 = fadd float %132, %133
  %135 = call float @Square(float %134)
  %136 = fcmp ogt float %131, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %295

138:                                              ; preds = %130, %108
  %139 = load float*, float** %11, align 8
  %140 = load float*, float** %8, align 8
  %141 = load float*, float** %23, align 8
  %142 = call i32 @VectorSubtract(float* %139, float* %140, float* %141)
  store float 1.000000e+00, float* %18, align 4
  %143 = load float*, float** %23, align 8
  %144 = getelementptr inbounds float, float* %143, i64 0
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %24, align 8
  %147 = getelementptr inbounds float, float* %146, i64 0
  %148 = load float, float* %147, align 4
  %149 = fmul float %145, %148
  %150 = load float*, float** %23, align 8
  %151 = getelementptr inbounds float, float* %150, i64 1
  %152 = load float, float* %151, align 4
  %153 = load float*, float** %24, align 8
  %154 = getelementptr inbounds float, float* %153, i64 1
  %155 = load float, float* %154, align 4
  %156 = fmul float %152, %155
  %157 = fadd float %149, %156
  %158 = fmul float 2.000000e+00, %157
  store float %158, float* %19, align 4
  %159 = load float*, float** %23, align 8
  %160 = getelementptr inbounds float, float* %159, i64 0
  %161 = load float, float* %160, align 4
  %162 = load float*, float** %23, align 8
  %163 = getelementptr inbounds float, float* %162, i64 0
  %164 = load float, float* %163, align 4
  %165 = fmul float %161, %164
  %166 = load float*, float** %23, align 8
  %167 = getelementptr inbounds float, float* %166, i64 1
  %168 = load float, float* %167, align 4
  %169 = load float*, float** %23, align 8
  %170 = getelementptr inbounds float, float* %169, i64 1
  %171 = load float, float* %170, align 4
  %172 = fmul float %168, %171
  %173 = fadd float %165, %172
  %174 = load float, float* %9, align 4
  %175 = load float, float* @RADIUS_EPSILON, align 4
  %176 = fadd float %174, %175
  %177 = load float, float* %9, align 4
  %178 = load float, float* @RADIUS_EPSILON, align 4
  %179 = fadd float %177, %178
  %180 = fmul float %176, %179
  %181 = fsub float %173, %180
  store float %181, float* %20, align 4
  %182 = load float, float* %19, align 4
  %183 = load float, float* %19, align 4
  %184 = fmul float %182, %183
  %185 = load float, float* %20, align 4
  %186 = fmul float 4.000000e+00, %185
  %187 = fsub float %184, %186
  store float %187, float* %21, align 4
  %188 = load float, float* %21, align 4
  %189 = fcmp ogt float %188, 0.000000e+00
  br i1 %189, label %190, label %290

190:                                              ; preds = %138
  %191 = load float, float* %21, align 4
  %192 = call float @SquareRootFloat(float %191)
  store float %192, float* %22, align 4
  %193 = load float, float* %19, align 4
  %194 = fneg float %193
  %195 = load float, float* %22, align 4
  %196 = fsub float %194, %195
  %197 = fmul float %196, 5.000000e-01
  store float %197, float* %15, align 4
  %198 = load float, float* %15, align 4
  %199 = fcmp olt float %198, 0.000000e+00
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  store float 0.000000e+00, float* %15, align 4
  br label %205

201:                                              ; preds = %190
  %202 = load float, float* %13, align 4
  %203 = load float, float* %15, align 4
  %204 = fdiv float %203, %202
  store float %204, float* %15, align 4
  br label %205

205:                                              ; preds = %201, %200
  %206 = load float, float* %15, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load float, float* %209, align 8
  %211 = fcmp olt float %206, %210
  br i1 %211, label %212, label %289

212:                                              ; preds = %205
  %213 = load float*, float** %12, align 8
  %214 = load float*, float** %11, align 8
  %215 = load float*, float** %24, align 8
  %216 = call i32 @VectorSubtract(float* %213, float* %214, float* %215)
  %217 = load float*, float** %11, align 8
  %218 = load float, float* %15, align 4
  %219 = load float*, float** %24, align 8
  %220 = load float*, float** %28, align 8
  %221 = call i32 @VectorMA(float* %217, float %218, float* %219, float* %220)
  %222 = load float*, float** %28, align 8
  %223 = getelementptr inbounds float, float* %222, i64 2
  %224 = load float, float* %223, align 4
  %225 = load float*, float** %8, align 8
  %226 = getelementptr inbounds float, float* %225, i64 2
  %227 = load float, float* %226, align 4
  %228 = load float, float* %10, align 4
  %229 = fadd float %227, %228
  %230 = fcmp ole float %224, %229
  br i1 %230, label %231, label %288

231:                                              ; preds = %212
  %232 = load float*, float** %28, align 8
  %233 = getelementptr inbounds float, float* %232, i64 2
  %234 = load float, float* %233, align 4
  %235 = load float*, float** %8, align 8
  %236 = getelementptr inbounds float, float* %235, i64 2
  %237 = load float, float* %236, align 4
  %238 = load float, float* %10, align 4
  %239 = fsub float %237, %238
  %240 = fcmp oge float %234, %239
  br i1 %240, label %241, label %288

241:                                              ; preds = %231
  %242 = load float, float* %15, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  store float %242, float* %245, align 8
  %246 = load float*, float** %28, align 8
  %247 = load float*, float** %8, align 8
  %248 = load float*, float** %24, align 8
  %249 = call i32 @VectorSubtract(float* %246, float* %247, float* %248)
  %250 = load float*, float** %24, align 8
  %251 = getelementptr inbounds float, float* %250, i64 2
  store float 0.000000e+00, float* %251, align 4
  %252 = load float, float* %9, align 4
  %253 = load float, float* @RADIUS_EPSILON, align 4
  %254 = fadd float %252, %253
  %255 = fdiv float 1.000000e+00, %254
  store float %255, float* %14, align 4
  %256 = load float*, float** %24, align 8
  %257 = load float, float* %14, align 4
  %258 = load float*, float** %24, align 8
  %259 = call i32 @VectorScale(float* %256, float %257, float* %258)
  %260 = load float*, float** %24, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @VectorCopy(float* %260, i32 %265)
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load float*, float** %28, align 8
  %271 = load float*, float** %28, align 8
  %272 = call i32 @VectorAdd(i32 %269, float* %270, float* %271)
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load float*, float** %28, align 8
  %279 = call i32 @DotProduct(i32 %277, float* %278)
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  store i32 %279, i32* %283, align 4
  %284 = load i32, i32* @CONTENTS_BODY, align 4
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  store i32 %284, i32* %287, align 4
  br label %288

288:                                              ; preds = %241, %231, %212
  br label %289

289:                                              ; preds = %288, %205
  br label %295

290:                                              ; preds = %138
  %291 = load float, float* %21, align 4
  %292 = fcmp oeq float %291, 0.000000e+00
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %293, %290
  br label %295

295:                                              ; preds = %106, %137, %294, %289
  ret void
}

declare dso_local i32 @VectorSet(float*, float, float, i32) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local float @VectorLengthSquared(float*) #1

declare dso_local float @Square(float) #1

declare dso_local float @VectorNormalize(float*) #1

declare dso_local float @CM_DistanceFromLineSquared(float*, float*, float*, float*) #1

declare dso_local float @SquareRootFloat(float) #1

declare dso_local i32 @VectorMA(float*, float, float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

declare dso_local i32 @VectorAdd(i32, float*, float*) #1

declare dso_local i32 @DotProduct(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
