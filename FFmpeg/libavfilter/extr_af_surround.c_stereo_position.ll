; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_stereo_position.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_stereo_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@M_LN10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float*, float*)* @stereo_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stereo_position(float %0, float %1, float* %2, float* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %9 = load float, float* %5, align 4
  %10 = fcmp oge float %9, -1.000000e+00
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load float, float* %5, align 4
  %13 = fcmp ole float %12, 1.000000e+00
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i1 [ false, %4 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @av_assert2(i32 %16)
  %18 = load float, float* %6, align 4
  %19 = fcmp oge float %18, 0.000000e+00
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load float, float* %6, align 4
  %22 = load float, float* @M_PI, align 4
  %23 = fcmp ole float %21, %22
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi i1 [ false, %14 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @av_assert2(i32 %26)
  %28 = load float, float* %5, align 4
  %29 = load float, float* %5, align 4
  %30 = load float, float* %6, align 4
  %31 = load float, float* %6, align 4
  %32 = fmul float %30, %31
  %33 = load float, float* @M_PI_2, align 4
  %34 = fsub float %32, %33
  %35 = call float @FFMAX(i32 0, float %34)
  %36 = fmul float %29, %35
  %37 = fadd float %28, %36
  %38 = fptosi float %37 to i32
  %39 = call float @av_clipf(i32 %38, i32 -1, i32 1)
  %40 = load float*, float** %7, align 8
  store float %39, float* %40, align 4
  %41 = load float, float* %5, align 4
  %42 = load float, float* @M_PI_2, align 4
  %43 = fmul float %41, %42
  %44 = load float, float* @M_PI, align 4
  %45 = fadd float %43, %44
  %46 = call i32 @cosf(float %45)
  %47 = load float, float* @M_PI_2, align 4
  %48 = load float, float* %6, align 4
  %49 = load float, float* @M_PI, align 4
  %50 = fdiv float %48, %49
  %51 = fsub float %47, %50
  %52 = call i32 @cosf(float %51)
  %53 = mul nsw i32 %46, %52
  %54 = load i32, i32* @M_LN10, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %55, 1
  %57 = call float @av_clipf(i32 %56, i32 -1, i32 1)
  %58 = load float*, float** %8, align 8
  store float %57, float* %58, align 4
  ret void
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local float @av_clipf(i32, i32, i32) #1

declare dso_local float @FFMAX(i32, float) #1

declare dso_local i32 @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
