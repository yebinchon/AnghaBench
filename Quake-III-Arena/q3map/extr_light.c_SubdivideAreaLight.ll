; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_SubdivideAreaLight.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_SubdivideAreaLight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float*, i32, i32, i32 }
%struct.TYPE_7__ = type { float, %struct.TYPE_6__*, i32, i32, i32, i8*, i32, i32, i32, i32, i32* }

@ON_EPSILON = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@numAreaLights = common dso_local global i32 0, align 4
@lights = common dso_local global i8* null, align 8
@emit_area = common dso_local global i32 0, align 4
@areaScale = common dso_local global float 0.000000e+00, align 4
@formFactorValueScale = common dso_local global float 0.000000e+00, align 4
@CONTENTS_FOG = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@emit_point = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SubdivideAreaLight(%struct.TYPE_6__* %0, i32* %1, float* %2, float %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store float* %2, float** %8, align 8
  store float %3, float* %9, align 4
  store i64 %4, i64* %10, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  br label %237

26:                                               ; preds = %5
  %27 = load i32*, i32** %7, align 8
  %28 = load float*, float** %16, align 8
  %29 = load float*, float** %17, align 8
  %30 = call i32 @WindingBounds(i32* %27, float* %28, float* %29)
  store i32 0, i32* %18, align 4
  br label %31

31:                                               ; preds = %87, %26
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %90

34:                                               ; preds = %31
  %35 = load float*, float** %17, align 8
  %36 = load i32, i32* %18, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = load float, float* %38, align 4
  %40 = load float*, float** %16, align 8
  %41 = load i32, i32* %18, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %40, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fsub float %39, %44
  %46 = load float, float* %9, align 4
  %47 = fcmp ogt float %45, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %34
  %49 = load float*, float** %21, align 8
  %50 = call i32 @VectorClear(float* %49)
  %51 = load float*, float** %21, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  store float 1.000000e+00, float* %54, align 4
  %55 = load float*, float** %17, align 8
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = load float*, float** %16, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fadd float %59, %64
  %66 = fpext float %65 to double
  %67 = fmul double %66, 5.000000e-01
  %68 = fptrunc double %67 to float
  store float %68, float* %22, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = load float*, float** %21, align 8
  %71 = load float, float* %22, align 4
  %72 = load i32, i32* @ON_EPSILON, align 4
  %73 = call i32 @ClipWindingEpsilon(i32* %69, float* %70, float %71, i32 %72, i32** %19, i32** %20)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = load i32*, i32** %19, align 8
  %76 = load float*, float** %8, align 8
  %77 = load float, float* %9, align 4
  %78 = load i64, i64* @qfalse, align 8
  call void @SubdivideAreaLight(%struct.TYPE_6__* %74, i32* %75, float* %76, float %77, i64 %78)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = load float*, float** %8, align 8
  %82 = load float, float* %9, align 4
  %83 = load i64, i64* @qfalse, align 8
  call void @SubdivideAreaLight(%struct.TYPE_6__* %79, i32* %80, float* %81, float %82, i64 %83)
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @FreeWinding(i32* %84)
  br label %237

86:                                               ; preds = %34
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %18, align 4
  br label %31

90:                                               ; preds = %31
  %91 = load i32*, i32** %7, align 8
  %92 = call float @WindingArea(i32* %91)
  store float %92, float* %11, align 4
  %93 = load float, float* %11, align 4
  %94 = fcmp ole float %93, 0.000000e+00
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load float, float* %11, align 4
  %97 = fcmp ogt float %96, 2.000000e+07
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %90
  br label %237

99:                                               ; preds = %95
  %100 = load i32, i32* @numAreaLights, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @numAreaLights, align 4
  %102 = call %struct.TYPE_7__* @malloc(i32 64)
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %14, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %104 = call i32 @memset(%struct.TYPE_7__* %103, i32 0, i32 64)
  %105 = load i8*, i8** @lights, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %109 = bitcast %struct.TYPE_7__* %108 to i8*
  store i8* %109, i8** @lights, align 8
  %110 = load i32, i32* @emit_area, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @WindingCenter(i32* %113, i32 %116)
  %118 = load i32*, i32** %7, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 10
  store i32* %118, i32** %120, align 8
  %121 = load float*, float** %8, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @VectorCopy(float* %121, i32 %124)
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load float*, float** %8, align 8
  %130 = call i32 @DotProduct(i32 %128, float* %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load float, float* %134, align 8
  store float %135, float* %12, align 4
  %136 = load float, float* %12, align 4
  %137 = load float, float* %11, align 4
  %138 = fmul float %136, %137
  %139 = load float, float* @areaScale, align 4
  %140 = fmul float %138, %139
  store float %140, float* %13, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @VectorAdd(i32 %143, i32 %146, i32 %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load float*, float** %152, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @VectorCopy(float* %153, i32 %156)
  %158 = load float, float* %13, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  store float %158, float* %160, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load float*, float** %162, align 8
  %164 = load float, float* %12, align 4
  %165 = load float, float* @formFactorValueScale, align 4
  %166 = fmul float %164, %165
  %167 = load float, float* @areaScale, align 4
  %168 = fmul float %166, %167
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @VectorScale(float* %163, float %168, i32 %171)
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  store %struct.TYPE_6__* %173, %struct.TYPE_6__** %175, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @CONTENTS_FOG, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %99
  %183 = load i32, i32* @qtrue, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %182, %99
  %187 = load i64, i64* %10, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %237

189:                                              ; preds = %186
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %237

194:                                              ; preds = %189
  %195 = call %struct.TYPE_7__* @malloc(i32 64)
  store %struct.TYPE_7__* %195, %struct.TYPE_7__** %15, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %197 = call i32 @memset(%struct.TYPE_7__* %196, i32 0, i32 64)
  %198 = load i8*, i8** @lights, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 5
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %202 = bitcast %struct.TYPE_7__* %201 to i8*
  store i8* %202, i8** @lights, align 8
  %203 = load i32, i32* @emit_point, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 8
  %212 = load float*, float** %8, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @VectorMA(i32 %208, i32 %211, float* %212, i32 %215)
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load float*, float** %218, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @VectorCopy(float* %219, i32 %222)
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load float, float* %225, align 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = sitofp i32 %229 to float
  %231 = fmul float %226, %230
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  store float %231, float* %233, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 1
  store %struct.TYPE_6__* %234, %struct.TYPE_6__** %236, align 8
  br label %237

237:                                              ; preds = %25, %48, %98, %194, %189, %186
  ret void
}

declare dso_local i32 @WindingBounds(i32*, float*, float*) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @ClipWindingEpsilon(i32*, float*, float, i32, i32**, i32**) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local float @WindingArea(i32*) #1

declare dso_local %struct.TYPE_7__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @WindingCenter(i32*, i32) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

declare dso_local i32 @DotProduct(i32, float*) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorScale(float*, float, i32) #1

declare dso_local i32 @VectorMA(i32, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
