; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_make_gauss_kernel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_make_gauss_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float, float)* @make_gauss_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_gauss_kernel(float* %0, float %1, float %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  %12 = load float, float* %5, align 4
  %13 = fdiv float %12, 2.000000e+00
  %14 = fptosi float %13 to i32
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i32, i32* %9, align 4
  %17 = sitofp i32 %16 to float
  %18 = load float, float* %5, align 4
  %19 = fcmp olt float %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load float, float* %6, align 4
  %25 = call float @gaussian_for(i32 %23, float %24)
  store float %25, float* %10, align 4
  %26 = load float, float* %10, align 4
  %27 = load float, float* %7, align 4
  %28 = fadd float %27, %26
  store float %28, float* %7, align 4
  %29 = load float, float* %10, align 4
  %30 = load float*, float** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  store float %29, float* %33, align 4
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %15

37:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %11, align 4
  %40 = sitofp i32 %39 to float
  %41 = load float, float* %5, align 4
  %42 = fcmp olt float %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load float, float* %7, align 4
  %45 = load float*, float** %4, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = fdiv float %49, %44
  store float %50, float* %48, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %38

54:                                               ; preds = %38
  ret void
}

declare dso_local float @gaussian_for(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
