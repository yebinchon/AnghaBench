; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_ortho.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_ortho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mat_ortho(float* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float* %0, float** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %15 = load float, float* %10, align 4
  %16 = load float, float* %9, align 4
  %17 = fsub float %15, %16
  %18 = fdiv float 2.000000e+00, %17
  %19 = load float*, float** %8, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float %18, float* %20, align 4
  %21 = load float*, float** %8, align 8
  %22 = getelementptr inbounds float, float* %21, i64 1
  store float 0.000000e+00, float* %22, align 4
  %23 = load float*, float** %8, align 8
  %24 = getelementptr inbounds float, float* %23, i64 2
  store float 0.000000e+00, float* %24, align 4
  %25 = load float*, float** %8, align 8
  %26 = getelementptr inbounds float, float* %25, i64 3
  store float 0.000000e+00, float* %26, align 4
  %27 = load float*, float** %8, align 8
  %28 = getelementptr inbounds float, float* %27, i64 4
  store float 0.000000e+00, float* %28, align 4
  %29 = load float, float* %12, align 4
  %30 = load float, float* %11, align 4
  %31 = fsub float %29, %30
  %32 = fdiv float 2.000000e+00, %31
  %33 = load float*, float** %8, align 8
  %34 = getelementptr inbounds float, float* %33, i64 5
  store float %32, float* %34, align 4
  %35 = load float*, float** %8, align 8
  %36 = getelementptr inbounds float, float* %35, i64 6
  store float 0.000000e+00, float* %36, align 4
  %37 = load float*, float** %8, align 8
  %38 = getelementptr inbounds float, float* %37, i64 7
  store float 0.000000e+00, float* %38, align 4
  %39 = load float*, float** %8, align 8
  %40 = getelementptr inbounds float, float* %39, i64 8
  store float 0.000000e+00, float* %40, align 4
  %41 = load float*, float** %8, align 8
  %42 = getelementptr inbounds float, float* %41, i64 9
  store float 0.000000e+00, float* %42, align 4
  %43 = load float, float* %14, align 4
  %44 = load float, float* %13, align 4
  %45 = fsub float %43, %44
  %46 = fdiv float -2.000000e+00, %45
  %47 = load float*, float** %8, align 8
  %48 = getelementptr inbounds float, float* %47, i64 10
  store float %46, float* %48, align 4
  %49 = load float*, float** %8, align 8
  %50 = getelementptr inbounds float, float* %49, i64 11
  store float 0.000000e+00, float* %50, align 4
  %51 = load float, float* %10, align 4
  %52 = load float, float* %9, align 4
  %53 = fadd float %51, %52
  %54 = fneg float %53
  %55 = load float, float* %10, align 4
  %56 = load float, float* %9, align 4
  %57 = fsub float %55, %56
  %58 = fdiv float %54, %57
  %59 = load float*, float** %8, align 8
  %60 = getelementptr inbounds float, float* %59, i64 12
  store float %58, float* %60, align 4
  %61 = load float, float* %12, align 4
  %62 = load float, float* %11, align 4
  %63 = fadd float %61, %62
  %64 = fneg float %63
  %65 = load float, float* %12, align 4
  %66 = load float, float* %11, align 4
  %67 = fsub float %65, %66
  %68 = fdiv float %64, %67
  %69 = load float*, float** %8, align 8
  %70 = getelementptr inbounds float, float* %69, i64 13
  store float %68, float* %70, align 4
  %71 = load float, float* %14, align 4
  %72 = load float, float* %13, align 4
  %73 = fadd float %71, %72
  %74 = fneg float %73
  %75 = load float, float* %14, align 4
  %76 = load float, float* %13, align 4
  %77 = fsub float %75, %76
  %78 = fdiv float %74, %77
  %79 = load float*, float** %8, align 8
  %80 = getelementptr inbounds float, float* %79, i64 14
  store float %78, float* %80, align 4
  %81 = load float*, float** %8, align 8
  %82 = getelementptr inbounds float, float* %81, i64 15
  store float 1.000000e+00, float* %82, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
