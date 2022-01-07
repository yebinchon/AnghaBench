; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_HueToRGB.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_HueToRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float)* @HueToRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @HueToRGB(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %8 = load float, float* %7, align 4
  %9 = fcmp olt float %8, 0.000000e+00
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load float, float* %7, align 4
  %12 = fadd float %11, 1.000000e+00
  store float %12, float* %7, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = load float, float* %7, align 4
  %15 = fcmp ogt float %14, 1.000000e+00
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load float, float* %7, align 4
  %18 = fsub float %17, 1.000000e+00
  store float %18, float* %7, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load float, float* %7, align 4
  %21 = fmul float 6.000000e+00, %20
  %22 = fcmp olt float %21, 1.000000e+00
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load float, float* %5, align 4
  %25 = load float, float* %6, align 4
  %26 = load float, float* %5, align 4
  %27 = fsub float %25, %26
  %28 = fmul float %27, 6.000000e+00
  %29 = load float, float* %7, align 4
  %30 = fmul float %28, %29
  %31 = fadd float %24, %30
  store float %31, float* %4, align 4
  br label %54

32:                                               ; preds = %19
  %33 = load float, float* %7, align 4
  %34 = fmul float 2.000000e+00, %33
  %35 = fcmp olt float %34, 1.000000e+00
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load float, float* %6, align 4
  store float %37, float* %4, align 4
  br label %54

38:                                               ; preds = %32
  %39 = load float, float* %7, align 4
  %40 = fmul float 3.000000e+00, %39
  %41 = fcmp olt float %40, 2.000000e+00
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load float, float* %5, align 4
  %44 = load float, float* %6, align 4
  %45 = load float, float* %5, align 4
  %46 = fsub float %44, %45
  %47 = load float, float* %7, align 4
  %48 = fsub float 0x3FE5555560000000, %47
  %49 = fmul float %46, %48
  %50 = fmul float %49, 6.000000e+00
  %51 = fadd float %43, %50
  store float %51, float* %4, align 4
  br label %54

52:                                               ; preds = %38
  %53 = load float, float* %5, align 4
  store float %53, float* %4, align 4
  br label %54

54:                                               ; preds = %52, %42, %36, %23
  %55 = load float, float* %4, align 4
  ret float %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
