; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_float_dsp.c_vector_fmul_window_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_float_dsp.c_vector_fmul_window_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*, i32)* @vector_fmul_window_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector_fmul_window_c(float* %0, float* %1, float* %2, float* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load float*, float** %6, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds float, float* %18, i64 %19
  store float* %20, float** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load float*, float** %9, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds float, float* %22, i64 %23
  store float* %24, float** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load float*, float** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds float, float* %26, i64 %27
  store float* %28, float** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %79, %5
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %33
  %37 = load float*, float** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  store float %41, float* %13, align 4
  %42 = load float*, float** %8, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  store float %46, float* %14, align 4
  %47 = load float*, float** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  store float %51, float* %15, align 4
  %52 = load float*, float** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  store float %56, float* %16, align 4
  %57 = load float, float* %13, align 4
  %58 = load float, float* %16, align 4
  %59 = fmul float %57, %58
  %60 = load float, float* %14, align 4
  %61 = load float, float* %15, align 4
  %62 = fmul float %60, %61
  %63 = fsub float %59, %62
  %64 = load float*, float** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  store float %63, float* %67, align 4
  %68 = load float, float* %13, align 4
  %69 = load float, float* %15, align 4
  %70 = fmul float %68, %69
  %71 = load float, float* %14, align 4
  %72 = load float, float* %16, align 4
  %73 = fmul float %71, %72
  %74 = fadd float %70, %73
  %75 = load float*, float** %6, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  store float %74, float* %78, align 4
  br label %79

79:                                               ; preds = %36
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %12, align 4
  br label %33

84:                                               ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
