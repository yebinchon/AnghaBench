; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_HSLToRGB.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_HSLToRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, float*)* @HSLToRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HSLToRGB(float %0, float %1, float %2, float* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float* %3, float** %8, align 8
  %11 = load float, float* %6, align 4
  %12 = fcmp oeq float %11, 0.000000e+00
  br i1 %12, label %13, label %21

13:                                               ; preds = %4
  %14 = load float, float* %7, align 4
  %15 = load float*, float** %8, align 8
  %16 = getelementptr inbounds float, float* %15, i64 2
  store float %14, float* %16, align 4
  %17 = load float*, float** %8, align 8
  %18 = getelementptr inbounds float, float* %17, i64 1
  store float %14, float* %18, align 4
  %19 = load float*, float** %8, align 8
  %20 = getelementptr inbounds float, float* %19, i64 0
  store float %14, float* %20, align 4
  br label %64

21:                                               ; preds = %4
  %22 = load float, float* %7, align 4
  %23 = fpext float %22 to double
  %24 = fcmp olt double %23, 5.000000e-01
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load float, float* %7, align 4
  %27 = load float, float* %6, align 4
  %28 = fadd float 1.000000e+00, %27
  %29 = fmul float %26, %28
  br label %38

30:                                               ; preds = %21
  %31 = load float, float* %7, align 4
  %32 = load float, float* %6, align 4
  %33 = fadd float %31, %32
  %34 = load float, float* %7, align 4
  %35 = load float, float* %6, align 4
  %36 = fmul float %34, %35
  %37 = fsub float %33, %36
  br label %38

38:                                               ; preds = %30, %25
  %39 = phi float [ %29, %25 ], [ %37, %30 ]
  store float %39, float* %10, align 4
  %40 = load float, float* %7, align 4
  %41 = fmul float 2.000000e+00, %40
  %42 = load float, float* %10, align 4
  %43 = fsub float %41, %42
  store float %43, float* %9, align 4
  %44 = load float, float* %9, align 4
  %45 = load float, float* %10, align 4
  %46 = load float, float* %5, align 4
  %47 = fadd float %46, 0x3FD5555560000000
  %48 = call float @HueToRGB(float %44, float %45, float %47)
  %49 = load float*, float** %8, align 8
  %50 = getelementptr inbounds float, float* %49, i64 0
  store float %48, float* %50, align 4
  %51 = load float, float* %9, align 4
  %52 = load float, float* %10, align 4
  %53 = load float, float* %5, align 4
  %54 = call float @HueToRGB(float %51, float %52, float %53)
  %55 = load float*, float** %8, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  store float %54, float* %56, align 4
  %57 = load float, float* %9, align 4
  %58 = load float, float* %10, align 4
  %59 = load float, float* %5, align 4
  %60 = fsub float %59, 0x3FD5555560000000
  %61 = call float @HueToRGB(float %57, float %58, float %60)
  %62 = load float*, float** %8, align 8
  %63 = getelementptr inbounds float, float* %62, i64 2
  store float %61, float* %63, align 4
  br label %64

64:                                               ; preds = %38, %13
  ret void
}

declare dso_local float @HueToRGB(float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
