; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_stereo_transform.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_stereo_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@M_PI_4 = common dso_local global float 0.000000e+00, align 4
@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float)* @stereo_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stereo_transform(float* %0, float* %1, float %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store float %2, float* %6, align 4
  %10 = load float, float* %6, align 4
  %11 = fcmp oeq float %10, 9.000000e+01
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %71

13:                                               ; preds = %3
  %14 = load float, float* %6, align 4
  %15 = load float, float* @M_PI, align 4
  %16 = fmul float %14, %15
  %17 = fdiv float %16, 1.800000e+02
  store float %17, float* %7, align 4
  %18 = load float*, float** %4, align 8
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %5, align 8
  %21 = load float, float* %20, align 4
  %22 = call float @hypotf(float %19, float %21) #4
  store float %22, float* %8, align 4
  %23 = load float*, float** %4, align 8
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %5, align 8
  %26 = load float, float* %25, align 4
  %27 = call float @atan2f(float %24, float %26) #4
  store float %27, float* %9, align 4
  %28 = load float, float* %9, align 4
  %29 = call float @llvm.fabs.f32(float %28)
  %30 = load float, float* @M_PI_4, align 4
  %31 = fcmp ole float %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %13
  %33 = load float, float* %7, align 4
  %34 = load float, float* @M_PI_2, align 4
  %35 = fdiv float %33, %34
  %36 = load float, float* %9, align 4
  %37 = fmul float %36, %35
  store float %37, float* %9, align 4
  br label %58

38:                                               ; preds = %13
  %39 = load float, float* @M_PI, align 4
  %40 = load float, float* @M_PI, align 4
  %41 = fmul float -2.000000e+00, %40
  %42 = load float, float* %7, align 4
  %43 = fadd float %41, %42
  %44 = fmul float 2.000000e+00, %43
  %45 = load float, float* @M_PI, align 4
  %46 = load float, float* %9, align 4
  %47 = call float @llvm.fabs.f32(float %46)
  %48 = fsub float %45, %47
  %49 = fmul float %44, %48
  %50 = load float, float* %9, align 4
  %51 = call i32 @FFDIFFSIGN(float %50, i32 0)
  %52 = sitofp i32 %51 to float
  %53 = fmul float %49, %52
  %54 = load float, float* @M_PI, align 4
  %55 = fmul float 3.000000e+00, %54
  %56 = fdiv float %53, %55
  %57 = fadd float %39, %56
  store float %57, float* %9, align 4
  br label %58

58:                                               ; preds = %38, %32
  %59 = load float, float* %9, align 4
  %60 = call float @sinf(float %59) #4
  %61 = load float, float* %8, align 4
  %62 = fmul float %60, %61
  %63 = call float @av_clipf(float %62, i32 -1, i32 1)
  %64 = load float*, float** %4, align 8
  store float %63, float* %64, align 4
  %65 = load float, float* %9, align 4
  %66 = call float @cosf(float %65) #4
  %67 = load float, float* %8, align 4
  %68 = fmul float %66, %67
  %69 = call float @av_clipf(float %68, i32 -1, i32 1)
  %70 = load float*, float** %5, align 8
  store float %69, float* %70, align 4
  br label %71

71:                                               ; preds = %58, %12
  ret void
}

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #1

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local i32 @FFDIFFSIGN(float, i32) #3

declare dso_local float @av_clipf(float, i32, i32) #3

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
