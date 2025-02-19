; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_sum_square_butterfly_float_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3dsp.c_ac3_sum_square_butterfly_float_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32)* @ac3_sum_square_butterfly_float_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ac3_sum_square_butterfly_float_c(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load float*, float** %5, align 8
  %15 = getelementptr inbounds float, float* %14, i64 3
  store float 0.000000e+00, float* %15, align 4
  %16 = load float*, float** %5, align 8
  %17 = getelementptr inbounds float, float* %16, i64 2
  store float 0.000000e+00, float* %17, align 4
  %18 = load float*, float** %5, align 8
  %19 = getelementptr inbounds float, float* %18, i64 1
  store float 0.000000e+00, float* %19, align 4
  %20 = load float*, float** %5, align 8
  %21 = getelementptr inbounds float, float* %20, i64 0
  store float 0.000000e+00, float* %21, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %71, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load float*, float** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  %31 = load float, float* %30, align 4
  store float %31, float* %10, align 4
  %32 = load float*, float** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  store float %36, float* %11, align 4
  %37 = load float, float* %10, align 4
  %38 = load float, float* %11, align 4
  %39 = fadd float %37, %38
  store float %39, float* %12, align 4
  %40 = load float, float* %10, align 4
  %41 = load float, float* %11, align 4
  %42 = fsub float %40, %41
  store float %42, float* %13, align 4
  %43 = load float, float* %10, align 4
  %44 = load float, float* %10, align 4
  %45 = fmul float %43, %44
  %46 = load float*, float** %5, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = fadd float %48, %45
  store float %49, float* %47, align 4
  %50 = load float, float* %11, align 4
  %51 = load float, float* %11, align 4
  %52 = fmul float %50, %51
  %53 = load float*, float** %5, align 8
  %54 = getelementptr inbounds float, float* %53, i64 1
  %55 = load float, float* %54, align 4
  %56 = fadd float %55, %52
  store float %56, float* %54, align 4
  %57 = load float, float* %12, align 4
  %58 = load float, float* %12, align 4
  %59 = fmul float %57, %58
  %60 = load float*, float** %5, align 8
  %61 = getelementptr inbounds float, float* %60, i64 2
  %62 = load float, float* %61, align 4
  %63 = fadd float %62, %59
  store float %63, float* %61, align 4
  %64 = load float, float* %13, align 4
  %65 = load float, float* %13, align 4
  %66 = fmul float %64, %65
  %67 = load float*, float** %5, align 8
  %68 = getelementptr inbounds float, float* %67, i64 3
  %69 = load float, float* %68, align 4
  %70 = fadd float %69, %66
  store float %70, float* %68, align 4
  br label %71

71:                                               ; preds = %26
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %22

74:                                               ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
