; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_TraceAgainstFacet.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_TraceAgainstFacet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { float*, float*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { float, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, float*, float** }

@ON_EPSILON = common dso_local global float 0.000000e+00, align 4
@SURF_ALPHASHADOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TraceAgainstFacet(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %181

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load float*, float** %21, align 8
  %23 = getelementptr inbounds float, float* %22, i64 3
  %24 = load float, float* %23, align 4
  store float %24, float* %13, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load float*, float** %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load float*, float** %29, align 8
  %31 = call float @DotProduct(float* %27, float* %30)
  %32 = load float, float* %13, align 4
  %33 = fsub float %31, %32
  store float %33, float* %8, align 4
  %34 = load float, float* %8, align 4
  %35 = fcmp ogt float %34, -1.000000e+00
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load float, float* %8, align 4
  %38 = fcmp olt float %37, 1.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %181

40:                                               ; preds = %36, %19
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load float*, float** %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load float*, float** %45, align 8
  %47 = call float @DotProduct(float* %43, float* %46)
  %48 = load float, float* %13, align 4
  %49 = fsub float %47, %48
  store float %49, float* %9, align 4
  %50 = load float, float* %9, align 4
  %51 = fcmp ogt float %50, -1.000000e+00
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load float, float* %9, align 4
  %54 = fcmp olt float %53, 1.000000e+00
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %181

56:                                               ; preds = %52, %40
  %57 = load float, float* %8, align 4
  %58 = load float, float* @ON_EPSILON, align 4
  %59 = fsub float %57, %58
  %60 = load float, float* %8, align 4
  %61 = load float, float* %9, align 4
  %62 = fsub float %60, %61
  %63 = fdiv float %59, %62
  store float %63, float* %11, align 4
  %64 = load float, float* %11, align 4
  %65 = fcmp ole float %64, 0.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %181

67:                                               ; preds = %56
  %68 = load float, float* %11, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load float, float* %72, align 4
  %74 = fcmp oge float %68, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %181

76:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %110, %76
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %113

80:                                               ; preds = %77
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = load float, float* %86, align 4
  %88 = load float, float* %11, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load float*, float** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  %95 = load float, float* %94, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load float*, float** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fsub float %95, %102
  %104 = fmul float %88, %103
  %105 = fadd float %87, %104
  %106 = load float*, float** %12, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  store float %105, float* %109, align 4
  br label %110

110:                                              ; preds = %80
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %77

113:                                              ; preds = %77
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %146, %113
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %114
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load float**, float*** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float*, float** %123, i64 %125
  %127 = load float*, float** %126, align 8
  %128 = getelementptr inbounds float, float* %127, i64 3
  %129 = load float, float* %128, align 4
  store float %129, float* %13, align 4
  %130 = load float*, float** %12, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load float**, float*** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float*, float** %133, i64 %135
  %137 = load float*, float** %136, align 8
  %138 = call float @DotProduct(float* %130, float* %137)
  store float %138, float* %10, align 4
  %139 = load float, float* %10, align 4
  %140 = load float, float* %13, align 4
  %141 = load float, float* @ON_EPSILON, align 4
  %142 = fadd float %140, %141
  %143 = fcmp ogt float %139, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %120
  br label %149

145:                                              ; preds = %120
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %114

149:                                              ; preds = %144, %114
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149
  br label %181

156:                                              ; preds = %149
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @SURF_ALPHASHADOW, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %156
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %167 = load float*, float** %12, align 8
  %168 = call i32 @SetFacetFilter(%struct.TYPE_12__* %164, %struct.TYPE_13__* %165, %struct.TYPE_14__* %166, float* %167)
  br label %181

169:                                              ; preds = %156
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @VectorClear(i32 %174)
  %176 = load float, float* %11, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  store float %176, float* %180, align 4
  br label %181

181:                                              ; preds = %18, %39, %55, %66, %75, %155, %169, %163
  ret void
}

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @SetFacetFilter(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_14__*, float*) #1

declare dso_local i32 @VectorClear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
