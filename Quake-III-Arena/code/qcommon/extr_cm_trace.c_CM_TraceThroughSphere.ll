; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TraceThroughSphere.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_cm_trace.c_CM_TraceThroughSphere.c"
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
define dso_local void @CM_TraceThroughSphere(%struct.TYPE_7__* %0, float* %1, float %2, float* %3, float* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store float* %1, float** %7, align 8
  store float %2, float* %8, align 4
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %24 = load float*, float** %9, align 8
  %25 = load float*, float** %7, align 8
  %26 = load float*, float** %22, align 8
  %27 = call i32 @VectorSubtract(float* %24, float* %25, float* %26)
  %28 = load float*, float** %22, align 8
  %29 = call float @VectorLengthSquared(float* %28)
  store float %29, float* %11, align 4
  %30 = load float, float* %11, align 4
  %31 = load float, float* %8, align 4
  %32 = call float @Square(float %31)
  %33 = fcmp olt float %30, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %5
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store float 0.000000e+00, float* %37, align 8
  %38 = load i8*, i8** @qtrue, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i8* %38, i8** %41, align 8
  %42 = load float*, float** %10, align 8
  %43 = load float*, float** %7, align 8
  %44 = load float*, float** %22, align 8
  %45 = call i32 @VectorSubtract(float* %42, float* %43, float* %44)
  %46 = load float*, float** %22, align 8
  %47 = call float @VectorLengthSquared(float* %46)
  store float %47, float* %11, align 4
  %48 = load float, float* %11, align 4
  %49 = load float, float* %8, align 4
  %50 = call float @Square(float %49)
  %51 = fcmp olt float %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %34
  %53 = load i8*, i8** @qtrue, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i8* %53, i8** %56, align 8
  br label %57

57:                                               ; preds = %52, %34
  br label %238

58:                                               ; preds = %5
  %59 = load float*, float** %10, align 8
  %60 = load float*, float** %9, align 8
  %61 = load float*, float** %22, align 8
  %62 = call i32 @VectorSubtract(float* %59, float* %60, float* %61)
  %63 = load float*, float** %22, align 8
  %64 = call float @VectorNormalize(float* %63)
  store float %64, float* %13, align 4
  %65 = load float*, float** %7, align 8
  %66 = load float*, float** %9, align 8
  %67 = load float*, float** %10, align 8
  %68 = load float*, float** %22, align 8
  %69 = call float @CM_DistanceFromLineSquared(float* %65, float* %66, float* %67, float* %68)
  store float %69, float* %11, align 4
  %70 = load float*, float** %10, align 8
  %71 = load float*, float** %7, align 8
  %72 = load float*, float** %21, align 8
  %73 = call i32 @VectorSubtract(float* %70, float* %71, float* %72)
  %74 = load float*, float** %21, align 8
  %75 = call float @VectorLengthSquared(float* %74)
  store float %75, float* %12, align 4
  %76 = load float, float* %11, align 4
  %77 = load float, float* %8, align 4
  %78 = call float @Square(float %77)
  %79 = fcmp oge float %76, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %58
  %81 = load float, float* %12, align 4
  %82 = load float, float* %8, align 4
  %83 = load float, float* @SURFACE_CLIP_EPSILON, align 4
  %84 = fadd float %82, %83
  %85 = call float @Square(float %84)
  %86 = fcmp ogt float %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %238

88:                                               ; preds = %80, %58
  %89 = load float*, float** %9, align 8
  %90 = load float*, float** %7, align 8
  %91 = load float*, float** %21, align 8
  %92 = call i32 @VectorSubtract(float* %89, float* %90, float* %91)
  store float 1.000000e+00, float* %16, align 4
  %93 = load float*, float** %22, align 8
  %94 = getelementptr inbounds float, float* %93, i64 0
  %95 = load float, float* %94, align 4
  %96 = load float*, float** %21, align 8
  %97 = getelementptr inbounds float, float* %96, i64 0
  %98 = load float, float* %97, align 4
  %99 = fmul float %95, %98
  %100 = load float*, float** %22, align 8
  %101 = getelementptr inbounds float, float* %100, i64 1
  %102 = load float, float* %101, align 4
  %103 = load float*, float** %21, align 8
  %104 = getelementptr inbounds float, float* %103, i64 1
  %105 = load float, float* %104, align 4
  %106 = fmul float %102, %105
  %107 = fadd float %99, %106
  %108 = load float*, float** %22, align 8
  %109 = getelementptr inbounds float, float* %108, i64 2
  %110 = load float, float* %109, align 4
  %111 = load float*, float** %21, align 8
  %112 = getelementptr inbounds float, float* %111, i64 2
  %113 = load float, float* %112, align 4
  %114 = fmul float %110, %113
  %115 = fadd float %107, %114
  %116 = fmul float 2.000000e+00, %115
  store float %116, float* %17, align 4
  %117 = load float*, float** %21, align 8
  %118 = getelementptr inbounds float, float* %117, i64 0
  %119 = load float, float* %118, align 4
  %120 = load float*, float** %21, align 8
  %121 = getelementptr inbounds float, float* %120, i64 0
  %122 = load float, float* %121, align 4
  %123 = fmul float %119, %122
  %124 = load float*, float** %21, align 8
  %125 = getelementptr inbounds float, float* %124, i64 1
  %126 = load float, float* %125, align 4
  %127 = load float*, float** %21, align 8
  %128 = getelementptr inbounds float, float* %127, i64 1
  %129 = load float, float* %128, align 4
  %130 = fmul float %126, %129
  %131 = fadd float %123, %130
  %132 = load float*, float** %21, align 8
  %133 = getelementptr inbounds float, float* %132, i64 2
  %134 = load float, float* %133, align 4
  %135 = load float*, float** %21, align 8
  %136 = getelementptr inbounds float, float* %135, i64 2
  %137 = load float, float* %136, align 4
  %138 = fmul float %134, %137
  %139 = fadd float %131, %138
  %140 = load float, float* %8, align 4
  %141 = load float, float* @RADIUS_EPSILON, align 4
  %142 = fadd float %140, %141
  %143 = load float, float* %8, align 4
  %144 = load float, float* @RADIUS_EPSILON, align 4
  %145 = fadd float %143, %144
  %146 = fmul float %142, %145
  %147 = fsub float %139, %146
  store float %147, float* %18, align 4
  %148 = load float, float* %17, align 4
  %149 = load float, float* %17, align 4
  %150 = fmul float %148, %149
  %151 = load float, float* %18, align 4
  %152 = fmul float 4.000000e+00, %151
  %153 = fsub float %150, %152
  store float %153, float* %19, align 4
  %154 = load float, float* %19, align 4
  %155 = fcmp ogt float %154, 0.000000e+00
  br i1 %155, label %156, label %233

156:                                              ; preds = %88
  %157 = load float, float* %19, align 4
  %158 = call float @SquareRootFloat(float %157)
  store float %158, float* %20, align 4
  %159 = load float, float* %17, align 4
  %160 = fneg float %159
  %161 = load float, float* %20, align 4
  %162 = fsub float %160, %161
  %163 = fmul float %162, 5.000000e-01
  store float %163, float* %15, align 4
  %164 = load float, float* %15, align 4
  %165 = fcmp olt float %164, 0.000000e+00
  br i1 %165, label %166, label %167

166:                                              ; preds = %156
  store float 0.000000e+00, float* %15, align 4
  br label %171

167:                                              ; preds = %156
  %168 = load float, float* %13, align 4
  %169 = load float, float* %15, align 4
  %170 = fdiv float %169, %168
  store float %170, float* %15, align 4
  br label %171

171:                                              ; preds = %167, %166
  %172 = load float, float* %15, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load float, float* %175, align 8
  %177 = fcmp olt float %172, %176
  br i1 %177, label %178, label %232

178:                                              ; preds = %171
  %179 = load float, float* %15, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store float %179, float* %182, align 8
  %183 = load float*, float** %10, align 8
  %184 = load float*, float** %9, align 8
  %185 = load float*, float** %22, align 8
  %186 = call i32 @VectorSubtract(float* %183, float* %184, float* %185)
  %187 = load float*, float** %9, align 8
  %188 = load float, float* %15, align 4
  %189 = load float*, float** %22, align 8
  %190 = load float*, float** %23, align 8
  %191 = call i32 @VectorMA(float* %187, float %188, float* %189, float* %190)
  %192 = load float*, float** %23, align 8
  %193 = load float*, float** %7, align 8
  %194 = load float*, float** %22, align 8
  %195 = call i32 @VectorSubtract(float* %192, float* %193, float* %194)
  %196 = load float, float* %8, align 4
  %197 = load float, float* @RADIUS_EPSILON, align 4
  %198 = fadd float %196, %197
  %199 = fdiv float 1.000000e+00, %198
  store float %199, float* %14, align 4
  %200 = load float*, float** %22, align 8
  %201 = load float, float* %14, align 4
  %202 = load float*, float** %22, align 8
  %203 = call i32 @VectorScale(float* %200, float %201, float* %202)
  %204 = load float*, float** %22, align 8
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @VectorCopy(float* %204, i32 %209)
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load float*, float** %23, align 8
  %215 = load float*, float** %23, align 8
  %216 = call i32 @VectorAdd(i32 %213, float* %214, float* %215)
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load float*, float** %23, align 8
  %223 = call i32 @DotProduct(i32 %221, float* %222)
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  store i32 %223, i32* %227, align 4
  %228 = load i32, i32* @CONTENTS_BODY, align 4
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  store i32 %228, i32* %231, align 4
  br label %232

232:                                              ; preds = %178, %171
  br label %238

233:                                              ; preds = %88
  %234 = load float, float* %19, align 4
  %235 = fcmp oeq float %234, 0.000000e+00
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %237

237:                                              ; preds = %236, %233
  br label %238

238:                                              ; preds = %57, %87, %237, %232
  ret void
}

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
