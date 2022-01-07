; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_superequalizer.c_hn_lpf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_superequalizer.c_hn_lpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, float, float)* @hn_lpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @hn_lpf(i32 %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %10 = load float, float* %7, align 4
  %11 = fdiv float 1.000000e+00, %10
  store float %11, float* %8, align 4
  %12 = load i32, i32* @M_PI, align 4
  %13 = mul nsw i32 2, %12
  %14 = sitofp i32 %13 to float
  %15 = load float, float* %6, align 4
  %16 = fmul float %14, %15
  store float %16, float* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sitofp i32 %17 to float
  %19 = load float, float* %9, align 4
  %20 = fmul float %18, %19
  %21 = load float, float* %8, align 4
  %22 = fmul float %20, %21
  %23 = fcmp oeq float %22, 0.000000e+00
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load float, float* %6, align 4
  %26 = fmul float 2.000000e+00, %25
  %27 = load float, float* %8, align 4
  %28 = fmul float %26, %27
  store float %28, float* %4, align 4
  br label %51

29:                                               ; preds = %3
  %30 = load float, float* %6, align 4
  %31 = fmul float 2.000000e+00, %30
  %32 = load float, float* %8, align 4
  %33 = fmul float %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = sitofp i32 %34 to float
  %36 = load float, float* %9, align 4
  %37 = fmul float %35, %36
  %38 = load float, float* %8, align 4
  %39 = fmul float %37, %38
  %40 = fptosi float %39 to i32
  %41 = call i32 @sinf(i32 %40)
  %42 = sitofp i32 %41 to float
  %43 = fmul float %33, %42
  %44 = load i32, i32* %5, align 4
  %45 = sitofp i32 %44 to float
  %46 = load float, float* %9, align 4
  %47 = fmul float %45, %46
  %48 = load float, float* %8, align 4
  %49 = fmul float %47, %48
  %50 = fdiv float %43, %49
  store float %50, float* %4, align 4
  br label %51

51:                                               ; preds = %29, %24
  %52 = load float, float* %4, align 4
  ret float %52
}

declare dso_local i32 @sinf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
