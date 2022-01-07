; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr16k.c_acelp_decode_gain_codef.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr16k.c_acelp_decode_gain_codef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_LN10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float*, float, float*, float*, i32, i32)* @acelp_decode_gain_codef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @acelp_decode_gain_codef(float %0, float* %1, float %2, float* %3, float* %4, i32 %5, i32 %6) #0 {
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store float %0, float* %8, align 4
  store float* %1, float** %9, align 8
  store float %2, float* %10, align 4
  store float* %3, float** %11, align 8
  store float* %4, float** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load float*, float** %11, align 8
  %16 = load float*, float** %12, align 8
  %17 = load i32, i32* %14, align 4
  %18 = call i64 @avpriv_scalarproduct_float_c(float* %15, float* %16, i32 %17)
  %19 = sitofp i64 %18 to float
  %20 = load float, float* %10, align 4
  %21 = fadd float %20, %19
  store float %21, float* %10, align 4
  %22 = load float, float* %8, align 4
  %23 = load i32, i32* @M_LN10, align 4
  %24 = sitofp i32 %23 to double
  %25 = fdiv double %24, 2.000000e+01
  %26 = load float, float* %10, align 4
  %27 = fpext float %26 to double
  %28 = fmul double %25, %27
  %29 = fptosi double %28 to i32
  %30 = call float @exp(i32 %29)
  %31 = fmul float %22, %30
  %32 = load float*, float** %9, align 8
  %33 = load float*, float** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i64 @avpriv_scalarproduct_float_c(float* %32, float* %33, i32 %34)
  %36 = sitofp i64 %35 to double
  %37 = fadd double 1.000000e-02, %36
  %38 = fptosi double %37 to i64
  %39 = call float @sqrt(i64 %38)
  %40 = fdiv float %31, %39
  store float %40, float* %10, align 4
  %41 = load float, float* %10, align 4
  ret float %41
}

declare dso_local i64 @avpriv_scalarproduct_float_c(float*, float*, i32) #1

declare dso_local float @exp(i32) #1

declare dso_local float @sqrt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
