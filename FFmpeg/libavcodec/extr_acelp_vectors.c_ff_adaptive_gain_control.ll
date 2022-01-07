; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_vectors.c_ff_adaptive_gain_control.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_vectors.c_ff_adaptive_gain_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_adaptive_gain_control(float* %0, float* %1, float %2, i32 %3, float %4, float* %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float %2, float* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store float* %5, float** %12, align 8
  %17 = load float*, float** %8, align 8
  %18 = load float*, float** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call float @avpriv_scalarproduct_float_c(float* %17, float* %18, i32 %19)
  store float %20, float* %14, align 4
  store float 1.000000e+00, float* %15, align 4
  %21 = load float*, float** %12, align 8
  %22 = load float, float* %21, align 4
  store float %22, float* %16, align 4
  %23 = load float, float* %14, align 4
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load float, float* %9, align 4
  %27 = load float, float* %14, align 4
  %28 = fdiv float %26, %27
  %29 = call float @sqrt(float %28)
  store float %29, float* %15, align 4
  br label %30

30:                                               ; preds = %25, %6
  %31 = load float, float* %11, align 4
  %32 = fpext float %31 to double
  %33 = fsub double 1.000000e+00, %32
  %34 = load float, float* %15, align 4
  %35 = fpext float %34 to double
  %36 = fmul double %35, %33
  %37 = fptrunc double %36 to float
  store float %37, float* %15, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %59, %30
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load float, float* %11, align 4
  %44 = load float, float* %16, align 4
  %45 = fmul float %43, %44
  %46 = load float, float* %15, align 4
  %47 = fadd float %45, %46
  store float %47, float* %16, align 4
  %48 = load float*, float** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %48, i64 %50
  %52 = load float, float* %51, align 4
  %53 = load float, float* %16, align 4
  %54 = fmul float %52, %53
  %55 = load float*, float** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  store float %54, float* %58, align 4
  br label %59

59:                                               ; preds = %42
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %38

62:                                               ; preds = %38
  %63 = load float, float* %16, align 4
  %64 = load float*, float** %12, align 8
  store float %63, float* %64, align 4
  ret void
}

declare dso_local float @avpriv_scalarproduct_float_c(float*, float*, i32) #1

declare dso_local float @sqrt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
