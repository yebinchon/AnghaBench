; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_guLightOrtho.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_guLightOrtho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @guLightOrtho(float** %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8) #0 {
  %10 = alloca float**, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store float** %0, float*** %10, align 8
  store float %1, float* %11, align 4
  store float %2, float* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store float %8, float* %18, align 4
  %20 = load float, float* %14, align 4
  %21 = load float, float* %13, align 4
  %22 = fsub float %20, %21
  %23 = fdiv float 1.000000e+00, %22
  store float %23, float* %19, align 4
  %24 = load float, float* %19, align 4
  %25 = fmul float 2.000000e+00, %24
  %26 = load float, float* %15, align 4
  %27 = fmul float %25, %26
  %28 = load float**, float*** %10, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 0
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 0
  store float %27, float* %31, align 4
  %32 = load float**, float*** %10, align 8
  %33 = getelementptr inbounds float*, float** %32, i64 0
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  store float 0.000000e+00, float* %35, align 4
  %36 = load float**, float*** %10, align 8
  %37 = getelementptr inbounds float*, float** %36, i64 0
  %38 = load float*, float** %37, align 8
  %39 = getelementptr inbounds float, float* %38, i64 2
  store float 0.000000e+00, float* %39, align 4
  %40 = load float, float* %14, align 4
  %41 = load float, float* %13, align 4
  %42 = fadd float %40, %41
  %43 = fneg float %42
  %44 = load float, float* %19, align 4
  %45 = fmul float %43, %44
  %46 = load float, float* %15, align 4
  %47 = fmul float %45, %46
  %48 = load float, float* %17, align 4
  %49 = fadd float %47, %48
  %50 = load float**, float*** %10, align 8
  %51 = getelementptr inbounds float*, float** %50, i64 0
  %52 = load float*, float** %51, align 8
  %53 = getelementptr inbounds float, float* %52, i64 3
  store float %49, float* %53, align 4
  %54 = load float, float* %11, align 4
  %55 = load float, float* %12, align 4
  %56 = fsub float %54, %55
  %57 = fdiv float 1.000000e+00, %56
  store float %57, float* %19, align 4
  %58 = load float**, float*** %10, align 8
  %59 = getelementptr inbounds float*, float** %58, i64 1
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 0
  store float 0.000000e+00, float* %61, align 4
  %62 = load float, float* %19, align 4
  %63 = fmul float 2.000000e+00, %62
  %64 = load float, float* %16, align 4
  %65 = fmul float %63, %64
  %66 = load float**, float*** %10, align 8
  %67 = getelementptr inbounds float*, float** %66, i64 1
  %68 = load float*, float** %67, align 8
  %69 = getelementptr inbounds float, float* %68, i64 1
  store float %65, float* %69, align 4
  %70 = load float**, float*** %10, align 8
  %71 = getelementptr inbounds float*, float** %70, i64 1
  %72 = load float*, float** %71, align 8
  %73 = getelementptr inbounds float, float* %72, i64 2
  store float 0.000000e+00, float* %73, align 4
  %74 = load float, float* %11, align 4
  %75 = load float, float* %12, align 4
  %76 = fadd float %74, %75
  %77 = fneg float %76
  %78 = load float, float* %19, align 4
  %79 = fmul float %77, %78
  %80 = load float, float* %16, align 4
  %81 = fmul float %79, %80
  %82 = load float, float* %18, align 4
  %83 = fadd float %81, %82
  %84 = load float**, float*** %10, align 8
  %85 = getelementptr inbounds float*, float** %84, i64 1
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds float, float* %86, i64 3
  store float %83, float* %87, align 4
  %88 = load float**, float*** %10, align 8
  %89 = getelementptr inbounds float*, float** %88, i64 2
  %90 = load float*, float** %89, align 8
  %91 = getelementptr inbounds float, float* %90, i64 0
  store float 0.000000e+00, float* %91, align 4
  %92 = load float**, float*** %10, align 8
  %93 = getelementptr inbounds float*, float** %92, i64 2
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 1
  store float 0.000000e+00, float* %95, align 4
  %96 = load float**, float*** %10, align 8
  %97 = getelementptr inbounds float*, float** %96, i64 2
  %98 = load float*, float** %97, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  store float 0.000000e+00, float* %99, align 4
  %100 = load float**, float*** %10, align 8
  %101 = getelementptr inbounds float*, float** %100, i64 2
  %102 = load float*, float** %101, align 8
  %103 = getelementptr inbounds float, float* %102, i64 3
  store float 1.000000e+00, float* %103, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
