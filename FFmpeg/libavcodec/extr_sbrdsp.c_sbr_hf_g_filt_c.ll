; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_hf_g_filt_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbrdsp.c_sbr_hf_g_filt_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([2 x float]*, [40 x [2 x float]]*, float*, i32, i64)* @sbr_hf_g_filt_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbr_hf_g_filt_c([2 x float]* %0, [40 x [2 x float]]* %1, float* %2, i32 %3, i64 %4) #0 {
  %6 = alloca [2 x float]*, align 8
  %7 = alloca [40 x [2 x float]]*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store [2 x float]* %0, [2 x float]** %6, align 8
  store [40 x [2 x float]]* %1, [40 x [2 x float]]** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %55, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %12
  %17 = load [40 x [2 x float]]*, [40 x [2 x float]]** %7, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [40 x [2 x float]], [40 x [2 x float]]* %17, i64 %19
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds [40 x [2 x float]], [40 x [2 x float]]* %20, i64 0, i64 %21
  %23 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fmul float %24, %29
  %31 = load [2 x float]*, [2 x float]** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x float], [2 x float]* %31, i64 %33
  %35 = getelementptr inbounds [2 x float], [2 x float]* %34, i64 0, i64 0
  store float %30, float* %35, align 4
  %36 = load [40 x [2 x float]]*, [40 x [2 x float]]** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [40 x [2 x float]], [40 x [2 x float]]* %36, i64 %38
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds [40 x [2 x float]], [40 x [2 x float]]* %39, i64 0, i64 %40
  %42 = getelementptr inbounds [2 x float], [2 x float]* %41, i64 0, i64 1
  %43 = load float, float* %42, align 4
  %44 = load float*, float** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fmul float %43, %48
  %50 = load [2 x float]*, [2 x float]** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x float], [2 x float]* %50, i64 %52
  %54 = getelementptr inbounds [2 x float], [2 x float]* %53, i64 0, i64 1
  store float %49, float* %54, align 4
  br label %55

55:                                               ; preds = %16
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %12

58:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
