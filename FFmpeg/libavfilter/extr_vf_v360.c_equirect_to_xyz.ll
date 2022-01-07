; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_equirect_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_equirect_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, float*)* @equirect_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @equirect_to_xyz(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sitofp i32 %19 to float
  %21 = fmul float 2.000000e+00, %20
  %22 = load i32, i32* %10, align 4
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %21, %23
  %25 = fsub float %24, 1.000000e+00
  %26 = load float, float* @M_PI, align 4
  %27 = fmul float %25, %26
  store float %27, float* %13, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sitofp i32 %28 to float
  %30 = fmul float 2.000000e+00, %29
  %31 = load i32, i32* %11, align 4
  %32 = sitofp i32 %31 to float
  %33 = fdiv float %30, %32
  %34 = fsub float %33, 1.000000e+00
  %35 = load float, float* @M_PI_2, align 4
  %36 = fmul float %34, %35
  store float %36, float* %14, align 4
  %37 = load float, float* %13, align 4
  %38 = call float @sinf(float %37) #2
  store float %38, float* %15, align 4
  %39 = load float, float* %13, align 4
  %40 = call float @cosf(float %39) #2
  store float %40, float* %16, align 4
  %41 = load float, float* %14, align 4
  %42 = call float @sinf(float %41) #2
  store float %42, float* %17, align 4
  %43 = load float, float* %14, align 4
  %44 = call float @cosf(float %43) #2
  store float %44, float* %18, align 4
  %45 = load float, float* %18, align 4
  %46 = load float, float* %15, align 4
  %47 = fmul float %45, %46
  %48 = load float*, float** %12, align 8
  %49 = getelementptr inbounds float, float* %48, i64 0
  store float %47, float* %49, align 4
  %50 = load float, float* %17, align 4
  %51 = fneg float %50
  %52 = load float*, float** %12, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  store float %51, float* %53, align 4
  %54 = load float, float* %18, align 4
  %55 = fneg float %54
  %56 = load float, float* %16, align 4
  %57 = fmul float %55, %56
  %58 = load float*, float** %12, align 8
  %59 = getelementptr inbounds float, float* %58, i64 2
  store float %57, float* %59, align 4
  ret void
}

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
