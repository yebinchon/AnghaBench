; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_kaiser_params.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_kaiser_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, float*, i32*)* @kaiser_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kaiser_params(float %0, float %1, float %2, float* %3, i32* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32*, align 8
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float* %3, float** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load float*, float** %9, align 8
  %12 = load float, float* %11, align 4
  %13 = fcmp olt float %12, 0.000000e+00
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load float, float* %6, align 4
  %16 = load float, float* %8, align 4
  %17 = fmul float %16, 5.000000e-01
  %18 = load float, float* %7, align 4
  %19 = fdiv float %17, %18
  %20 = call float @kaiser_beta(float %15, float %19)
  br label %24

21:                                               ; preds = %5
  %22 = load float*, float** %9, align 8
  %23 = load float, float* %22, align 4
  br label %24

24:                                               ; preds = %21, %14
  %25 = phi float [ %20, %14 ], [ %23, %21 ]
  %26 = load float*, float** %9, align 8
  store float %25, float* %26, align 4
  %27 = load float, float* %6, align 4
  %28 = fcmp olt float %27, 6.000000e+01
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load float, float* %6, align 4
  %31 = fsub float %30, 0x401FCCCCC0000000
  %32 = load float, float* @M_PI, align 4
  %33 = fmul float 0x400247AE20000000, %32
  %34 = fmul float %33, 2.000000e+00
  %35 = fdiv float %31, %34
  %36 = fpext float %35 to double
  br label %53

37:                                               ; preds = %24
  %38 = load float*, float** %9, align 8
  %39 = load float, float* %38, align 4
  %40 = fpext float %39 to double
  %41 = fmul double 0x3EF08B349C54E2EE, %40
  %42 = fsub double 0x3F48AB3EA0000000, %41
  %43 = load float*, float** %9, align 8
  %44 = load float, float* %43, align 4
  %45 = fpext float %44 to double
  %46 = fmul double %42, %45
  %47 = fadd double %46, 0x3FE3FE6120000000
  %48 = load float*, float** %9, align 8
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = fmul double %47, %50
  %52 = fadd double %51, 0x3FAFAD4BE0000000
  br label %53

53:                                               ; preds = %37, %29
  %54 = phi double [ %36, %29 ], [ %52, %37 ]
  %55 = fptrunc double %54 to float
  store float %55, float* %6, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load float, float* %6, align 4
  %61 = load float, float* %8, align 4
  %62 = fdiv float %60, %61
  %63 = fadd float %62, 1.000000e+00
  %64 = call i32 @ceilf(float %63)
  br label %68

65:                                               ; preds = %53
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i32 [ %64, %59 ], [ %67, %65 ]
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  ret void
}

declare dso_local float @kaiser_beta(float, float) #1

declare dso_local i32 @ceilf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
