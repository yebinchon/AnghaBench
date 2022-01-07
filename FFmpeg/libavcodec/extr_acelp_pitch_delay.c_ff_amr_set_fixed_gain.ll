; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_pitch_delay.c_ff_amr_set_fixed_gain.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_pitch_delay.c_ff_amr_set_fixed_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ff_amr_set_fixed_gain(float %0, float %1, float* %2, float %3, float* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float* %2, float** %8, align 8
  store float %3, float* %9, align 4
  store float* %4, float** %10, align 8
  %12 = load float, float* %6, align 4
  %13 = load float*, float** %10, align 8
  %14 = load float*, float** %8, align 8
  %15 = call float @avpriv_scalarproduct_float_c(float* %13, float* %14, i32 4)
  %16 = load float, float* %9, align 4
  %17 = fadd float %15, %16
  %18 = fpext float %17 to double
  %19 = fmul double 5.000000e-02, %18
  %20 = call float @ff_exp10(double %19)
  %21 = fmul float %12, %20
  %22 = load float, float* %7, align 4
  %23 = fcmp une float %22, 0.000000e+00
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load float, float* %7, align 4
  %26 = fpext float %25 to double
  br label %28

27:                                               ; preds = %5
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi double [ %26, %24 ], [ 1.000000e+00, %27 ]
  %30 = fptrunc double %29 to float
  %31 = call float @sqrtf(float %30) #3
  %32 = fdiv float %21, %31
  store float %32, float* %11, align 4
  %33 = load float*, float** %8, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  %35 = load float*, float** %8, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  %37 = call i32 @memmove(float* %34, float* %36, i32 12)
  %38 = load float, float* %6, align 4
  %39 = call double @log10f(float %38)
  %40 = fmul double 2.000000e+01, %39
  %41 = fptrunc double %40 to float
  %42 = load float*, float** %8, align 8
  %43 = getelementptr inbounds float, float* %42, i64 3
  store float %41, float* %43, align 4
  %44 = load float, float* %11, align 4
  ret float %44
}

declare dso_local float @ff_exp10(double) #1

declare dso_local float @avpriv_scalarproduct_float_c(float*, float*, i32) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

declare dso_local i32 @memmove(float*, float*, i32) #1

declare dso_local double @log10f(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
