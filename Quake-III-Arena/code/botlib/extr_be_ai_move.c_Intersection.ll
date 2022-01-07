; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_Intersection.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_Intersection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Intersection(float* %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  %19 = load float*, float** %8, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %7, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = fsub float %21, %24
  store float %25, float* %13, align 4
  %26 = load float*, float** %8, align 8
  %27 = getelementptr inbounds float, float* %26, i64 1
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %7, align 8
  %30 = getelementptr inbounds float, float* %29, i64 1
  %31 = load float, float* %30, align 4
  %32 = fsub float %28, %31
  store float %32, float* %14, align 4
  %33 = load float*, float** %10, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %9, align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  %38 = load float, float* %37, align 4
  %39 = fsub float %35, %38
  store float %39, float* %16, align 4
  %40 = load float*, float** %10, align 8
  %41 = getelementptr inbounds float, float* %40, i64 1
  %42 = load float, float* %41, align 4
  %43 = load float*, float** %9, align 8
  %44 = getelementptr inbounds float, float* %43, i64 1
  %45 = load float, float* %44, align 4
  %46 = fsub float %42, %45
  store float %46, float* %17, align 4
  %47 = load float, float* %14, align 4
  %48 = load float, float* %16, align 4
  %49 = fmul float %47, %48
  %50 = load float, float* %13, align 4
  %51 = load float, float* %17, align 4
  %52 = fmul float %50, %51
  %53 = fsub float %49, %52
  store float %53, float* %18, align 4
  %54 = load float, float* %18, align 4
  %55 = fcmp une float %54, 0.000000e+00
  br i1 %55, label %56, label %106

56:                                               ; preds = %5
  %57 = load float*, float** %7, align 8
  %58 = getelementptr inbounds float, float* %57, i64 1
  %59 = load float, float* %58, align 4
  %60 = load float, float* %13, align 4
  %61 = fmul float %59, %60
  %62 = load float*, float** %7, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  %64 = load float, float* %63, align 4
  %65 = load float, float* %14, align 4
  %66 = fmul float %64, %65
  %67 = fsub float %61, %66
  store float %67, float* %12, align 4
  %68 = load float*, float** %9, align 8
  %69 = getelementptr inbounds float, float* %68, i64 1
  %70 = load float, float* %69, align 4
  %71 = load float, float* %16, align 4
  %72 = fmul float %70, %71
  %73 = load float*, float** %9, align 8
  %74 = getelementptr inbounds float, float* %73, i64 0
  %75 = load float, float* %74, align 4
  %76 = load float, float* %17, align 4
  %77 = fmul float %75, %76
  %78 = fsub float %72, %77
  store float %78, float* %15, align 4
  %79 = load float, float* %13, align 4
  %80 = load float, float* %15, align 4
  %81 = fmul float %79, %80
  %82 = load float, float* %16, align 4
  %83 = load float, float* %12, align 4
  %84 = fmul float %82, %83
  %85 = fsub float %81, %84
  %86 = load float, float* %18, align 4
  %87 = fdiv float %85, %86
  %88 = fptosi float %87 to i32
  %89 = sitofp i32 %88 to float
  %90 = load float*, float** %11, align 8
  %91 = getelementptr inbounds float, float* %90, i64 0
  store float %89, float* %91, align 4
  %92 = load float, float* %14, align 4
  %93 = load float, float* %15, align 4
  %94 = fmul float %92, %93
  %95 = load float, float* %17, align 4
  %96 = load float, float* %12, align 4
  %97 = fmul float %95, %96
  %98 = fsub float %94, %97
  %99 = load float, float* %18, align 4
  %100 = fdiv float %98, %99
  %101 = fptosi float %100 to i32
  %102 = sitofp i32 %101 to float
  %103 = load float*, float** %11, align 8
  %104 = getelementptr inbounds float, float* %103, i64 1
  store float %102, float* %104, align 4
  %105 = load i32, i32* @qtrue, align 4
  store i32 %105, i32* %6, align 4
  br label %108

106:                                              ; preds = %5
  %107 = load i32, i32* @qfalse, align 4
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %106, %56
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
