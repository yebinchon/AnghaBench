; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_mercator_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_mercator_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, float*)* @mercator_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mercator_to_xyz(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sitofp i32 %20 to float
  %22 = fmul float 2.000000e+00, %21
  %23 = load i32, i32* %10, align 4
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %22, %24
  %26 = fsub float %25, 1.000000e+00
  %27 = load float, float* @M_PI, align 4
  %28 = fmul float %26, %27
  %29 = load float, float* @M_PI_2, align 4
  %30 = fadd float %28, %29
  store float %30, float* %13, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sitofp i32 %31 to float
  %33 = fmul float 2.000000e+00, %32
  %34 = load i32, i32* %11, align 4
  %35 = sitofp i32 %34 to float
  %36 = fdiv float %33, %35
  %37 = fsub float %36, 1.000000e+00
  %38 = load float, float* @M_PI, align 4
  %39 = fmul float %37, %38
  store float %39, float* %14, align 4
  %40 = load float, float* %14, align 4
  %41 = fmul float 2.000000e+00, %40
  %42 = call float @expf(float %41) #2
  %43 = fadd float %42, 1.000000e+00
  store float %43, float* %15, align 4
  %44 = load float, float* %13, align 4
  %45 = call float @sinf(float %44) #2
  store float %45, float* %16, align 4
  %46 = load float, float* %13, align 4
  %47 = call float @cosf(float %46) #2
  store float %47, float* %17, align 4
  %48 = load float, float* %14, align 4
  %49 = call float @expf(float %48) #2
  %50 = fmul float -2.000000e+00, %49
  %51 = load float, float* %15, align 4
  %52 = fdiv float %50, %51
  store float %52, float* %18, align 4
  %53 = load float, float* %14, align 4
  %54 = fmul float 2.000000e+00, %53
  %55 = call float @expf(float %54) #2
  %56 = fsub float %55, 1.000000e+00
  %57 = fneg float %56
  %58 = load float, float* %15, align 4
  %59 = fdiv float %57, %58
  store float %59, float* %19, align 4
  %60 = load float, float* %18, align 4
  %61 = load float, float* %17, align 4
  %62 = fmul float %60, %61
  %63 = load float*, float** %12, align 8
  %64 = getelementptr inbounds float, float* %63, i64 0
  store float %62, float* %64, align 4
  %65 = load float, float* %19, align 4
  %66 = load float*, float** %12, align 8
  %67 = getelementptr inbounds float, float* %66, i64 1
  store float %65, float* %67, align 4
  %68 = load float, float* %18, align 4
  %69 = load float, float* %16, align 4
  %70 = fmul float %68, %69
  %71 = load float*, float** %12, align 8
  %72 = getelementptr inbounds float, float* %71, i64 2
  store float %70, float* %72, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local float @expf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
