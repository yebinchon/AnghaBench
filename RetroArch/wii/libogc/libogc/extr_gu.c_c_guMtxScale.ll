; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxScale.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gu.c_c_guMtxScale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_guMtxScale(float** %0, float %1, float %2, float %3) #0 {
  %5 = alloca float**, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float** %0, float*** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load float, float* %6, align 4
  %10 = load float**, float*** %5, align 8
  %11 = getelementptr inbounds float*, float** %10, i64 0
  %12 = load float*, float** %11, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  store float %9, float* %13, align 4
  %14 = load float**, float*** %5, align 8
  %15 = getelementptr inbounds float*, float** %14, i64 0
  %16 = load float*, float** %15, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  store float 0.000000e+00, float* %17, align 4
  %18 = load float**, float*** %5, align 8
  %19 = getelementptr inbounds float*, float** %18, i64 0
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 2
  store float 0.000000e+00, float* %21, align 4
  %22 = load float**, float*** %5, align 8
  %23 = getelementptr inbounds float*, float** %22, i64 0
  %24 = load float*, float** %23, align 8
  %25 = getelementptr inbounds float, float* %24, i64 3
  store float 0.000000e+00, float* %25, align 4
  %26 = load float**, float*** %5, align 8
  %27 = getelementptr inbounds float*, float** %26, i64 1
  %28 = load float*, float** %27, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  store float 0.000000e+00, float* %29, align 4
  %30 = load float, float* %7, align 4
  %31 = load float**, float*** %5, align 8
  %32 = getelementptr inbounds float*, float** %31, i64 1
  %33 = load float*, float** %32, align 8
  %34 = getelementptr inbounds float, float* %33, i64 1
  store float %30, float* %34, align 4
  %35 = load float**, float*** %5, align 8
  %36 = getelementptr inbounds float*, float** %35, i64 1
  %37 = load float*, float** %36, align 8
  %38 = getelementptr inbounds float, float* %37, i64 2
  store float 0.000000e+00, float* %38, align 4
  %39 = load float**, float*** %5, align 8
  %40 = getelementptr inbounds float*, float** %39, i64 1
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 3
  store float 0.000000e+00, float* %42, align 4
  %43 = load float**, float*** %5, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 2
  %45 = load float*, float** %44, align 8
  %46 = getelementptr inbounds float, float* %45, i64 0
  store float 0.000000e+00, float* %46, align 4
  %47 = load float**, float*** %5, align 8
  %48 = getelementptr inbounds float*, float** %47, i64 2
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 1
  store float 0.000000e+00, float* %50, align 4
  %51 = load float, float* %8, align 4
  %52 = load float**, float*** %5, align 8
  %53 = getelementptr inbounds float*, float** %52, i64 2
  %54 = load float*, float** %53, align 8
  %55 = getelementptr inbounds float, float* %54, i64 2
  store float %51, float* %55, align 4
  %56 = load float**, float*** %5, align 8
  %57 = getelementptr inbounds float*, float** %56, i64 2
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 3
  store float 0.000000e+00, float* %59, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
