; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_compute_network0_i16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_compute_network0_i16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*, i32*)* @compute_network0_i16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_network0_i16(i32* %0, float* %1, float* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca [12 x float], align 16
  %12 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load float*, float** %7, align 8
  %14 = getelementptr inbounds float, float* %13, i64 96
  store float* %14, float** %9, align 8
  store float 1.000000e+00, float* %12, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load float*, float** %6, align 8
  %17 = load float*, float** %7, align 8
  %18 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 0
  %19 = call i32 @dot_prods(i32* %15, float* %16, float* %17, float* %18, i32 4, i32 48, float* %12)
  %20 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 0
  %21 = load float, float* %20, align 16
  store float %21, float* %10, align 4
  %22 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 0
  %23 = call i32 @elliott(float* %22, i32 4)
  %24 = load float, float* %10, align 4
  %25 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 0
  store float %24, float* %25, align 16
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 0
  %28 = load float*, float** %9, align 8
  %29 = getelementptr inbounds float, float* %28, i64 8
  %30 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 0
  %31 = getelementptr inbounds float, float* %30, i64 4
  %32 = call i32 @dot_prod(i32* %26, float* %27, float* %29, float* %31, i32 4, i32 4, float* %12)
  %33 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 0
  %34 = getelementptr inbounds float, float* %33, i64 4
  %35 = call i32 @elliott(float* %34, i32 4)
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 0
  %38 = load float*, float** %9, align 8
  %39 = getelementptr inbounds float, float* %38, i64 8
  %40 = getelementptr inbounds float, float* %39, i64 20
  %41 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 0
  %42 = getelementptr inbounds float, float* %41, i64 8
  %43 = call i32 @dot_prod(i32* %36, float* %37, float* %40, float* %42, i32 4, i32 8, float* %12)
  %44 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 10
  %45 = load float, float* %44, align 8
  %46 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 11
  %47 = load float, float* %46, align 4
  %48 = call i64 @FFMAX(float %45, float %47)
  %49 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 8
  %50 = load float, float* %49, align 16
  %51 = getelementptr inbounds [12 x float], [12 x float]* %11, i64 0, i64 9
  %52 = load float, float* %51, align 4
  %53 = call i64 @FFMAX(float %50, float %52)
  %54 = icmp sle i64 %48, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 1, i32* %57, align 4
  br label %61

58:                                               ; preds = %4
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @dot_prods(i32*, float*, float*, float*, i32, i32, float*) #1

declare dso_local i32 @elliott(float*, i32) #1

declare dso_local i32 @dot_prod(i32*, float*, float*, float*, i32, i32, float*) #1

declare dso_local i64 @FFMAX(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
