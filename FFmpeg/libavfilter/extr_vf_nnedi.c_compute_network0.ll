; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_compute_network0.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_compute_network0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, float*, i32*)* @compute_network0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_network0(i32* %0, float* %1, float* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca [12 x float], align 16
  %11 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32* %3, i32** %8, align 8
  store float 1.000000e+00, float* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load float*, float** %6, align 8
  %14 = load float*, float** %7, align 8
  %15 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 0
  %16 = call i32 @dot_prod(i32* %12, float* %13, float* %14, float* %15, i32 4, i32 48, float* %11)
  %17 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 0
  %18 = load float, float* %17, align 16
  store float %18, float* %9, align 4
  %19 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 0
  %20 = call i32 @elliott(float* %19, i32 4)
  %21 = load float, float* %9, align 4
  %22 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 0
  store float %21, float* %22, align 16
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 0
  %25 = load float*, float** %7, align 8
  %26 = getelementptr inbounds float, float* %25, i64 196
  %27 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 0
  %28 = getelementptr inbounds float, float* %27, i64 4
  %29 = call i32 @dot_prod(i32* %23, float* %24, float* %26, float* %28, i32 4, i32 4, float* %11)
  %30 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 0
  %31 = getelementptr inbounds float, float* %30, i64 4
  %32 = call i32 @elliott(float* %31, i32 4)
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 0
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i64 196
  %37 = getelementptr inbounds float, float* %36, i64 20
  %38 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 0
  %39 = getelementptr inbounds float, float* %38, i64 8
  %40 = call i32 @dot_prod(i32* %33, float* %34, float* %37, float* %39, i32 4, i32 8, float* %11)
  %41 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 10
  %42 = load float, float* %41, align 8
  %43 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 11
  %44 = load float, float* %43, align 4
  %45 = call i64 @FFMAX(float %42, float %44)
  %46 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 8
  %47 = load float, float* %46, align 16
  %48 = getelementptr inbounds [12 x float], [12 x float]* %10, i64 0, i64 9
  %49 = load float, float* %48, align 4
  %50 = call i64 @FFMAX(float %47, float %49)
  %51 = icmp sle i64 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %4
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 1, i32* %54, align 4
  br label %58

55:                                               ; preds = %4
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @dot_prod(i32*, float*, float*, float*, i32, i32, float*) #1

declare dso_local i32 @elliott(float*, i32) #1

declare dso_local i64 @FFMAX(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
