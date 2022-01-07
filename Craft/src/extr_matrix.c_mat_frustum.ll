; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_frustum.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_matrix.c_mat_frustum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mat_frustum(float* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store float* %0, float** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %19 = load float, float* %13, align 4
  %20 = fpext float %19 to double
  %21 = fmul double 2.000000e+00, %20
  %22 = fptrunc double %21 to float
  store float %22, float* %15, align 4
  %23 = load float, float* %10, align 4
  %24 = load float, float* %9, align 4
  %25 = fsub float %23, %24
  store float %25, float* %16, align 4
  %26 = load float, float* %12, align 4
  %27 = load float, float* %11, align 4
  %28 = fsub float %26, %27
  store float %28, float* %17, align 4
  %29 = load float, float* %14, align 4
  %30 = load float, float* %13, align 4
  %31 = fsub float %29, %30
  store float %31, float* %18, align 4
  %32 = load float, float* %15, align 4
  %33 = load float, float* %16, align 4
  %34 = fdiv float %32, %33
  %35 = load float*, float** %8, align 8
  %36 = getelementptr inbounds float, float* %35, i64 0
  store float %34, float* %36, align 4
  %37 = load float*, float** %8, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  store float 0.000000e+00, float* %38, align 4
  %39 = load float*, float** %8, align 8
  %40 = getelementptr inbounds float, float* %39, i64 2
  store float 0.000000e+00, float* %40, align 4
  %41 = load float*, float** %8, align 8
  %42 = getelementptr inbounds float, float* %41, i64 3
  store float 0.000000e+00, float* %42, align 4
  %43 = load float*, float** %8, align 8
  %44 = getelementptr inbounds float, float* %43, i64 4
  store float 0.000000e+00, float* %44, align 4
  %45 = load float, float* %15, align 4
  %46 = load float, float* %17, align 4
  %47 = fdiv float %45, %46
  %48 = load float*, float** %8, align 8
  %49 = getelementptr inbounds float, float* %48, i64 5
  store float %47, float* %49, align 4
  %50 = load float*, float** %8, align 8
  %51 = getelementptr inbounds float, float* %50, i64 6
  store float 0.000000e+00, float* %51, align 4
  %52 = load float*, float** %8, align 8
  %53 = getelementptr inbounds float, float* %52, i64 7
  store float 0.000000e+00, float* %53, align 4
  %54 = load float, float* %10, align 4
  %55 = load float, float* %9, align 4
  %56 = fadd float %54, %55
  %57 = load float, float* %16, align 4
  %58 = fdiv float %56, %57
  %59 = load float*, float** %8, align 8
  %60 = getelementptr inbounds float, float* %59, i64 8
  store float %58, float* %60, align 4
  %61 = load float, float* %12, align 4
  %62 = load float, float* %11, align 4
  %63 = fadd float %61, %62
  %64 = load float, float* %17, align 4
  %65 = fdiv float %63, %64
  %66 = load float*, float** %8, align 8
  %67 = getelementptr inbounds float, float* %66, i64 9
  store float %65, float* %67, align 4
  %68 = load float, float* %14, align 4
  %69 = fneg float %68
  %70 = load float, float* %13, align 4
  %71 = fsub float %69, %70
  %72 = load float, float* %18, align 4
  %73 = fdiv float %71, %72
  %74 = load float*, float** %8, align 8
  %75 = getelementptr inbounds float, float* %74, i64 10
  store float %73, float* %75, align 4
  %76 = load float*, float** %8, align 8
  %77 = getelementptr inbounds float, float* %76, i64 11
  store float -1.000000e+00, float* %77, align 4
  %78 = load float*, float** %8, align 8
  %79 = getelementptr inbounds float, float* %78, i64 12
  store float 0.000000e+00, float* %79, align 4
  %80 = load float*, float** %8, align 8
  %81 = getelementptr inbounds float, float* %80, i64 13
  store float 0.000000e+00, float* %81, align 4
  %82 = load float, float* %15, align 4
  %83 = fneg float %82
  %84 = load float, float* %14, align 4
  %85 = fmul float %83, %84
  %86 = load float, float* %18, align 4
  %87 = fdiv float %85, %86
  %88 = load float*, float** %8, align 8
  %89 = getelementptr inbounds float, float* %88, i64 14
  store float %87, float* %89, align 4
  %90 = load float*, float** %8, align 8
  %91 = getelementptr inbounds float, float* %90, i64 15
  store float 0.000000e+00, float* %91, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
