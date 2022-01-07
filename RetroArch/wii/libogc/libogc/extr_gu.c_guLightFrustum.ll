; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_guLightFrustum.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_guLightFrustum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @guLightFrustum(float** %0, float %1, float %2, float %3, float %4, float %5, float %6, float %7, float %8, float %9) #0 {
  %11 = alloca float**, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store float** %0, float*** %11, align 8
  store float %1, float* %12, align 4
  store float %2, float* %13, align 4
  store float %3, float* %14, align 4
  store float %4, float* %15, align 4
  store float %5, float* %16, align 4
  store float %6, float* %17, align 4
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  %22 = load float, float* %15, align 4
  %23 = load float, float* %14, align 4
  %24 = fsub float %22, %23
  %25 = fdiv float 1.000000e+00, %24
  store float %25, float* %21, align 4
  %26 = load float, float* %16, align 4
  %27 = fmul float 2.000000e+00, %26
  %28 = load float, float* %21, align 4
  %29 = fmul float %27, %28
  %30 = load float, float* %17, align 4
  %31 = fmul float %29, %30
  %32 = load float**, float*** %11, align 8
  %33 = getelementptr inbounds float*, float** %32, i64 0
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  store float %31, float* %35, align 4
  %36 = load float**, float*** %11, align 8
  %37 = getelementptr inbounds float*, float** %36, i64 0
  %38 = load float*, float** %37, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  store float 0.000000e+00, float* %39, align 4
  %40 = load float, float* %15, align 4
  %41 = load float, float* %14, align 4
  %42 = fadd float %40, %41
  %43 = load float, float* %21, align 4
  %44 = fmul float %42, %43
  %45 = load float, float* %17, align 4
  %46 = fmul float %44, %45
  %47 = load float, float* %19, align 4
  %48 = fsub float %46, %47
  %49 = load float**, float*** %11, align 8
  %50 = getelementptr inbounds float*, float** %49, i64 0
  %51 = load float*, float** %50, align 8
  %52 = getelementptr inbounds float, float* %51, i64 2
  store float %48, float* %52, align 4
  %53 = load float**, float*** %11, align 8
  %54 = getelementptr inbounds float*, float** %53, i64 0
  %55 = load float*, float** %54, align 8
  %56 = getelementptr inbounds float, float* %55, i64 3
  store float 0.000000e+00, float* %56, align 4
  %57 = load float, float* %12, align 4
  %58 = load float, float* %13, align 4
  %59 = fsub float %57, %58
  %60 = fdiv float 1.000000e+00, %59
  store float %60, float* %21, align 4
  %61 = load float**, float*** %11, align 8
  %62 = getelementptr inbounds float*, float** %61, i64 1
  %63 = load float*, float** %62, align 8
  %64 = getelementptr inbounds float, float* %63, i64 0
  store float 0.000000e+00, float* %64, align 4
  %65 = load float, float* %16, align 4
  %66 = fmul float 2.000000e+00, %65
  %67 = load float, float* %21, align 4
  %68 = fmul float %66, %67
  %69 = load float, float* %18, align 4
  %70 = fmul float %68, %69
  %71 = load float**, float*** %11, align 8
  %72 = getelementptr inbounds float*, float** %71, i64 1
  %73 = load float*, float** %72, align 8
  %74 = getelementptr inbounds float, float* %73, i64 1
  store float %70, float* %74, align 4
  %75 = load float, float* %12, align 4
  %76 = load float, float* %13, align 4
  %77 = fadd float %75, %76
  %78 = load float, float* %21, align 4
  %79 = fmul float %77, %78
  %80 = load float, float* %18, align 4
  %81 = fmul float %79, %80
  %82 = load float, float* %20, align 4
  %83 = fsub float %81, %82
  %84 = load float**, float*** %11, align 8
  %85 = getelementptr inbounds float*, float** %84, i64 1
  %86 = load float*, float** %85, align 8
  %87 = getelementptr inbounds float, float* %86, i64 2
  store float %83, float* %87, align 4
  %88 = load float**, float*** %11, align 8
  %89 = getelementptr inbounds float*, float** %88, i64 1
  %90 = load float*, float** %89, align 8
  %91 = getelementptr inbounds float, float* %90, i64 3
  store float 0.000000e+00, float* %91, align 4
  %92 = load float**, float*** %11, align 8
  %93 = getelementptr inbounds float*, float** %92, i64 2
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 0
  store float 0.000000e+00, float* %95, align 4
  %96 = load float**, float*** %11, align 8
  %97 = getelementptr inbounds float*, float** %96, i64 2
  %98 = load float*, float** %97, align 8
  %99 = getelementptr inbounds float, float* %98, i64 1
  store float 0.000000e+00, float* %99, align 4
  %100 = load float**, float*** %11, align 8
  %101 = getelementptr inbounds float*, float** %100, i64 2
  %102 = load float*, float** %101, align 8
  %103 = getelementptr inbounds float, float* %102, i64 2
  store float -1.000000e+00, float* %103, align 4
  %104 = load float**, float*** %11, align 8
  %105 = getelementptr inbounds float*, float** %104, i64 2
  %106 = load float*, float** %105, align 8
  %107 = getelementptr inbounds float, float* %106, i64 3
  store float 0.000000e+00, float* %107, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
