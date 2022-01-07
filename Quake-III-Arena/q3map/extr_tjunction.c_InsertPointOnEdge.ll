; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_tjunction.c_InsertPointOnEdge.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_tjunction.c_InsertPointOnEdge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { float, %struct.TYPE_6__*, %struct.TYPE_6__*, i32 }

@LINE_POSITION_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InsertPointOnEdge(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @VectorSubtract(i32 %9, i32 %12, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call float @DotProduct(i32 %15, i32 %18)
  store float %19, float* %6, align 4
  %20 = call %struct.TYPE_6__* @malloc(i32 32)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  %21 = load float, float* %6, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store float %21, float* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @VectorCopy(i32 %24, i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = icmp eq %struct.TYPE_6__* %32, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %40, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %47, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %49, align 8
  br label %126

50:                                               ; preds = %2
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %8, align 8
  br label %55

55:                                               ; preds = %105, %50
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = icmp ne %struct.TYPE_6__* %56, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %55
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load float, float* %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load float, float* %65, align 8
  %67 = fsub float %63, %66
  store float %67, float* %6, align 4
  %68 = load float, float* %6, align 4
  %69 = load float, float* @LINE_POSITION_EPSILON, align 4
  %70 = fneg float %69
  %71 = fcmp ogt float %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %60
  %73 = load float, float* %6, align 4
  %74 = load float, float* @LINE_POSITION_EPSILON, align 4
  %75 = fcmp olt float %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = call i32 @free(%struct.TYPE_6__* %77)
  br label %126

79:                                               ; preds = %72, %60
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load float, float* %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load float, float* %84, align 8
  %86 = fcmp olt float %82, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %79
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %95, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %103, align 8
  br label %126

104:                                              ; preds = %79
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %8, align 8
  br label %55

109:                                              ; preds = %55
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store %struct.TYPE_6__* %115, %struct.TYPE_6__** %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store %struct.TYPE_6__* %118, %struct.TYPE_6__** %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %125, align 8
  br label %126

126:                                              ; preds = %109, %87, %76, %36
  ret void
}

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
