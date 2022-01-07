; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_vectors.c_ff_scale_vector_to_given_sum_of_squares.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_vectors.c_ff_scale_vector_to_given_sum_of_squares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_scale_vector_to_given_sum_of_squares(float* %0, float* %1, float %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load float*, float** %6, align 8
  %12 = load float*, float** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call float @avpriv_scalarproduct_float_c(float* %11, float* %12, i32 %13)
  store float %14, float* %10, align 4
  %15 = load float, float* %10, align 4
  %16 = fcmp une float %15, 0.000000e+00
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load float, float* %7, align 4
  %19 = load float, float* %10, align 4
  %20 = fdiv float %18, %19
  %21 = call float @sqrt(float %20)
  store float %21, float* %10, align 4
  br label %22

22:                                               ; preds = %17, %4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load float*, float** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = load float, float* %10, align 4
  %34 = fmul float %32, %33
  %35 = load float*, float** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  store float %34, float* %38, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %23

42:                                               ; preds = %23
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
