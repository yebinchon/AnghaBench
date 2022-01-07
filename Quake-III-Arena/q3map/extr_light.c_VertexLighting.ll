; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_VertexLighting.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_VertexLighting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float*, float*, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i32* }

@drawVerts = common dso_local global %struct.TYPE_6__* null, align 8
@MST_TRIANGLE_SOUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VertexLighting(%struct.TYPE_5__* %0, i32 %1, i32 %2, float %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load float*, float** %15, align 8
  %23 = call i32 @VectorCopy(i32 %21, float* %22)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %158, %5
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %161

30:                                               ; preds = %24
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drawVerts, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %37
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %13, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %30
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load float*, float** %48, align 8
  %50 = load float*, float** %14, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @LightingAtSample(i32 %46, float* %49, float* %50, i32 %51, i32 %52, i32* %53)
  br label %84

55:                                               ; preds = %30
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MST_TRIANGLE_SOUP, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load float*, float** %66, align 8
  %68 = load float*, float** %14, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @LightingAtSample(i32 %64, float* %67, float* %68, i32 %69, i32 %70, i32* %71)
  br label %83

73:                                               ; preds = %55
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load float*, float** %15, align 8
  %78 = load float*, float** %14, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @LightingAtSample(i32 %76, float* %77, float* %78, i32 %79, i32 %80, i32* %81)
  br label %83

83:                                               ; preds = %73, %61
  br label %84

84:                                               ; preds = %83, %43
  %85 = load float, float* %9, align 4
  %86 = fcmp oge float %85, 0.000000e+00
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load float*, float** %14, align 8
  %89 = load float, float* %9, align 4
  %90 = fptosi float %89 to i32
  %91 = load float*, float** %14, align 8
  %92 = call i32 @VectorScale(float* %88, i32 %90, float* %91)
  br label %93

93:                                               ; preds = %87, %84
  %94 = load float*, float** %14, align 8
  %95 = getelementptr inbounds float, float* %94, i64 0
  %96 = load float, float* %95, align 4
  store float %96, float* %16, align 4
  %97 = load float*, float** %14, align 8
  %98 = getelementptr inbounds float, float* %97, i64 1
  %99 = load float, float* %98, align 4
  %100 = load float, float* %16, align 4
  %101 = fcmp ogt float %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %93
  %103 = load float*, float** %14, align 8
  %104 = getelementptr inbounds float, float* %103, i64 1
  %105 = load float, float* %104, align 4
  store float %105, float* %16, align 4
  br label %106

106:                                              ; preds = %102, %93
  %107 = load float*, float** %14, align 8
  %108 = getelementptr inbounds float, float* %107, i64 2
  %109 = load float, float* %108, align 4
  %110 = load float, float* %16, align 4
  %111 = fcmp ogt float %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load float*, float** %14, align 8
  %114 = getelementptr inbounds float, float* %113, i64 2
  %115 = load float, float* %114, align 4
  store float %115, float* %16, align 4
  br label %116

116:                                              ; preds = %112, %106
  %117 = load float, float* %16, align 4
  %118 = fcmp ogt float %117, 2.550000e+02
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load float*, float** %14, align 8
  %121 = load float, float* %16, align 4
  %122 = fdiv float 2.550000e+02, %121
  %123 = fptosi float %122 to i32
  %124 = load float*, float** %14, align 8
  %125 = call i32 @VectorScale(float* %120, i32 %123, float* %124)
  br label %126

126:                                              ; preds = %119, %116
  store i32 0, i32* %12, align 4
  br label %127

127:                                              ; preds = %154, %126
  %128 = load i32, i32* %12, align 4
  %129 = icmp slt i32 %128, 3
  br i1 %129, label %130, label %157

130:                                              ; preds = %127
  %131 = load float*, float** %14, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fcmp ogt float %135, 2.550000e+02
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load float*, float** %14, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  store float 2.550000e+02, float* %141, align 4
  br label %142

142:                                              ; preds = %137, %130
  %143 = load float*, float** %14, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %143, i64 %145
  %147 = load float, float* %146, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load float*, float** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %150, i64 %152
  store float %147, float* %153, align 4
  br label %154

154:                                              ; preds = %142
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %127

157:                                              ; preds = %127
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %24

161:                                              ; preds = %24
  ret void
}

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local i32 @LightingAtSample(i32, float*, float*, i32, i32, i32*) #1

declare dso_local i32 @VectorScale(float*, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
