; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LightContributionToPoint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LightContributionToPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, float, float, float*, i32, i64, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@exactPointToPolygon = common dso_local global i64 0, align 8
@emit_area = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@emit_point = common dso_local global i64 0, align 8
@emit_spotlight = common dso_local global i64 0, align 8
@linearScale = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LightContributionToPoint(%struct.TYPE_6__* %0, float* %1, float* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32* %3, i32** %9, align 8
  store float 0.000000e+00, float* %11, align 4
  %17 = load float*, float** %8, align 8
  %18 = call i32 @VectorClear(float* %17)
  %19 = load i64, i64* @exactPointToPolygon, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @emit_area, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %101

27:                                               ; preds = %21
  %28 = load float*, float** %7, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = call float @DotProduct(float* %28, i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load float, float* %34, align 8
  %36 = fsub float %32, %35
  store float %36, float* %13, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %27
  %42 = load float, float* %13, align 4
  %43 = fcmp olt float %42, 1.000000e+00
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @qfalse, align 4
  store i32 %45, i32* %5, align 4
  br label %201

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %27
  %48 = load float*, float** %7, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @qfalse, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @TraceLine(float* %48, i32 %51, %struct.TYPE_5__* %10, i32 %52, i32* %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %5, align 4
  br label %201

60:                                               ; preds = %47
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load float*, float** %7, align 8
  %65 = load float*, float** %14, align 8
  %66 = call i32 @VectorSubtract(i32 %63, float* %64, float* %65)
  %67 = load float*, float** %14, align 8
  %68 = load float*, float** %14, align 8
  %69 = call i64 @VectorNormalize(float* %67, float* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @qfalse, align 4
  store i32 %72, i32* %5, align 4
  br label %201

73:                                               ; preds = %60
  %74 = load float*, float** %7, align 8
  %75 = load float*, float** %14, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = call float @PointToPolygonFormFactor(float* %74, float* %75, i32 %78)
  store float %79, float* %12, align 4
  %80 = load float, float* %12, align 4
  %81 = fcmp ole float %80, 0.000000e+00
  br i1 %81, label %82, label %93

82:                                               ; preds = %73
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load float, float* %12, align 4
  %89 = fneg float %88
  store float %89, float* %12, align 4
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @qfalse, align 4
  store i32 %91, i32* %5, align 4
  br label %201

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load float, float* %12, align 4
  %98 = load float*, float** %8, align 8
  %99 = call i32 @VectorScale(i32 %96, float %97, float* %98)
  %100 = load i32, i32* @qtrue, align 4
  store i32 %100, i32* %5, align 4
  br label %201

101:                                              ; preds = %21, %4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @emit_point, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @emit_spotlight, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %151

113:                                              ; preds = %107, %101
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load float*, float** %7, align 8
  %118 = load float*, float** %15, align 8
  %119 = call i32 @VectorSubtract(i32 %116, float* %117, float* %118)
  %120 = load float*, float** %15, align 8
  %121 = call float @VectorLength(float* %120)
  store float %121, float* %16, align 4
  %122 = load float, float* %16, align 4
  %123 = fcmp olt float %122, 1.600000e+01
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store float 1.600000e+01, float* %16, align 4
  br label %125

125:                                              ; preds = %124, %113
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %125
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load float, float* %132, align 4
  %134 = load float, float* @linearScale, align 4
  %135 = fmul float %133, %134
  %136 = load float, float* %16, align 4
  %137 = fsub float %135, %136
  store float %137, float* %11, align 4
  %138 = load float, float* %11, align 4
  %139 = fcmp olt float %138, 0.000000e+00
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  store float 0.000000e+00, float* %11, align 4
  br label %141

141:                                              ; preds = %140, %130
  br label %150

142:                                              ; preds = %125
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load float, float* %144, align 4
  %146 = load float, float* %16, align 4
  %147 = load float, float* %16, align 4
  %148 = fmul float %146, %147
  %149 = fdiv float %145, %148
  store float %149, float* %11, align 4
  br label %150

150:                                              ; preds = %142, %141
  br label %153

151:                                              ; preds = %107
  %152 = load i32, i32* @qfalse, align 4
  store i32 %152, i32* %5, align 4
  br label %201

153:                                              ; preds = %150
  %154 = load float, float* %11, align 4
  %155 = fpext float %154 to double
  %156 = fcmp ole double %155, 1.000000e+00
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* @qfalse, align 4
  store i32 %158, i32* %5, align 4
  br label %201

159:                                              ; preds = %153
  %160 = load float*, float** %7, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @qfalse, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @TraceLine(float* %160, i32 %163, %struct.TYPE_5__* %10, i32 %164, i32* %165)
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = load i32, i32* @qfalse, align 4
  store i32 %171, i32* %5, align 4
  br label %201

172:                                              ; preds = %159
  %173 = load float, float* %11, align 4
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 3
  %176 = load float*, float** %175, align 8
  %177 = getelementptr inbounds float, float* %176, i64 0
  %178 = load float, float* %177, align 4
  %179 = fmul float %173, %178
  %180 = load float*, float** %8, align 8
  %181 = getelementptr inbounds float, float* %180, i64 0
  store float %179, float* %181, align 4
  %182 = load float, float* %11, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load float*, float** %184, align 8
  %186 = getelementptr inbounds float, float* %185, i64 1
  %187 = load float, float* %186, align 4
  %188 = fmul float %182, %187
  %189 = load float*, float** %8, align 8
  %190 = getelementptr inbounds float, float* %189, i64 1
  store float %188, float* %190, align 4
  %191 = load float, float* %11, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 3
  %194 = load float*, float** %193, align 8
  %195 = getelementptr inbounds float, float* %194, i64 2
  %196 = load float, float* %195, align 4
  %197 = fmul float %191, %196
  %198 = load float*, float** %8, align 8
  %199 = getelementptr inbounds float, float* %198, i64 2
  store float %197, float* %199, align 4
  %200 = load i32, i32* @qtrue, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %172, %170, %157, %151, %93, %90, %71, %58, %44
  %202 = load i32, i32* %5, align 4
  ret i32 %202
}

declare dso_local i32 @VectorClear(float*) #1

declare dso_local float @DotProduct(float*, i32) #1

declare dso_local i32 @TraceLine(float*, i32, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @VectorSubtract(i32, float*, float*) #1

declare dso_local i64 @VectorNormalize(float*, float*) #1

declare dso_local float @PointToPolygonFormFactor(float*, float*, i32) #1

declare dso_local i32 @VectorScale(i32, float, float*) #1

declare dso_local float @VectorLength(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
