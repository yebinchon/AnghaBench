; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_Plane_Equal.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_lightv.c_Plane_Equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { float*, float }

@NORMAL_EPSILON = common dso_local global i64 0, align 8
@DIST_EPSILON = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Plane_Equal(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load float*, float** %14, align 8
  %16 = getelementptr inbounds float, float* %15, i64 0
  %17 = load float, float* %16, align 4
  %18 = fneg float %17
  %19 = load float*, float** %8, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float %18, float* %20, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load float*, float** %22, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  %25 = load float, float* %24, align 4
  %26 = fneg float %25
  %27 = load float*, float** %8, align 8
  %28 = getelementptr inbounds float, float* %27, i64 1
  store float %26, float* %28, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 2
  %33 = load float, float* %32, align 4
  %34 = fneg float %33
  %35 = load float*, float** %8, align 8
  %36 = getelementptr inbounds float, float* %35, i64 2
  store float %34, float* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load float, float* %38, align 8
  %40 = fneg float %39
  store float %40, float* %9, align 4
  br label %66

41:                                               ; preds = %3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load float*, float** %43, align 8
  %45 = getelementptr inbounds float, float* %44, i64 0
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %8, align 8
  %48 = getelementptr inbounds float, float* %47, i64 0
  store float %46, float* %48, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 1
  %53 = load float, float* %52, align 4
  %54 = load float*, float** %8, align 8
  %55 = getelementptr inbounds float, float* %54, i64 1
  store float %53, float* %55, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 2
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %8, align 8
  %62 = getelementptr inbounds float, float* %61, i64 2
  store float %60, float* %62, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load float, float* %64, align 8
  store float %65, float* %9, align 4
  br label %66

66:                                               ; preds = %41, %12
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load float*, float** %68, align 8
  %70 = getelementptr inbounds float, float* %69, i64 0
  %71 = load float, float* %70, align 4
  %72 = load float*, float** %8, align 8
  %73 = getelementptr inbounds float, float* %72, i64 0
  %74 = load float, float* %73, align 4
  %75 = fsub float %71, %74
  %76 = call i64 @fabs(float %75)
  %77 = load i64, i64* @NORMAL_EPSILON, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %66
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load float*, float** %81, align 8
  %83 = getelementptr inbounds float, float* %82, i64 1
  %84 = load float, float* %83, align 4
  %85 = load float*, float** %8, align 8
  %86 = getelementptr inbounds float, float* %85, i64 1
  %87 = load float, float* %86, align 4
  %88 = fsub float %84, %87
  %89 = call i64 @fabs(float %88)
  %90 = load i64, i64* @NORMAL_EPSILON, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %79
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds float, float* %95, i64 2
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %8, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  %100 = load float, float* %99, align 4
  %101 = fsub float %97, %100
  %102 = call i64 @fabs(float %101)
  %103 = load i64, i64* @NORMAL_EPSILON, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %92
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load float, float* %107, align 8
  %109 = load float, float* %9, align 4
  %110 = fsub float %108, %109
  %111 = call i64 @fabs(float %110)
  %112 = load i64, i64* @DIST_EPSILON, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* @qtrue, align 4
  store i32 %115, i32* %4, align 4
  br label %118

116:                                              ; preds = %105, %92, %79, %66
  %117 = load i32, i32* @qfalse, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
