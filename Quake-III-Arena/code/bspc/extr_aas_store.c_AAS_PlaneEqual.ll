; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_PlaneEqual.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_PlaneEqual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { float, float* }

@aasworld = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DIST_EPSILON = common dso_local global float 0.000000e+00, align 4
@NORMAL_EPSILON = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_PlaneEqual(float* %0, float %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load float, float* %6, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 0), align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load float, float* %14, align 8
  %16 = fsub float %9, %15
  store float %16, float* %8, align 4
  %17 = load float, float* %8, align 4
  %18 = load float, float* @DIST_EPSILON, align 4
  %19 = fneg float %18
  %20 = fcmp ogt float %17, %19
  br i1 %20, label %21, label %92

21:                                               ; preds = %3
  %22 = load float, float* %8, align 4
  %23 = load float, float* @DIST_EPSILON, align 4
  %24 = fcmp olt float %22, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %21
  %26 = load float*, float** %5, align 8
  %27 = getelementptr inbounds float, float* %26, i64 0
  %28 = load float, float* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 0), align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = fsub float %28, %36
  store float %37, float* %8, align 4
  %38 = load float, float* %8, align 4
  %39 = load float, float* @NORMAL_EPSILON, align 4
  %40 = fneg float %39
  %41 = fcmp ogt float %38, %40
  br i1 %41, label %42, label %91

42:                                               ; preds = %25
  %43 = load float, float* %8, align 4
  %44 = load float, float* @NORMAL_EPSILON, align 4
  %45 = fcmp olt float %43, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %42
  %47 = load float*, float** %5, align 8
  %48 = getelementptr inbounds float, float* %47, i64 1
  %49 = load float, float* %48, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 0), align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  %57 = load float, float* %56, align 4
  %58 = fsub float %49, %57
  store float %58, float* %8, align 4
  %59 = load float, float* %8, align 4
  %60 = load float, float* @NORMAL_EPSILON, align 4
  %61 = fneg float %60
  %62 = fcmp ogt float %59, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %46
  %64 = load float, float* %8, align 4
  %65 = load float, float* @NORMAL_EPSILON, align 4
  %66 = fcmp olt float %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load float*, float** %5, align 8
  %69 = getelementptr inbounds float, float* %68, i64 2
  %70 = load float, float* %69, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aasworld, i32 0, i32 0), align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  %78 = load float, float* %77, align 4
  %79 = fsub float %70, %78
  store float %79, float* %8, align 4
  %80 = load float, float* %8, align 4
  %81 = load float, float* @NORMAL_EPSILON, align 4
  %82 = fneg float %81
  %83 = fcmp ogt float %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %67
  %85 = load float, float* %8, align 4
  %86 = load float, float* @NORMAL_EPSILON, align 4
  %87 = fcmp olt float %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i32 1, i32* %4, align 4
  br label %93

89:                                               ; preds = %84, %67
  br label %90

90:                                               ; preds = %89, %63, %46
  br label %91

91:                                               ; preds = %90, %42, %25
  br label %92

92:                                               ; preds = %91, %21, %3
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %88
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
