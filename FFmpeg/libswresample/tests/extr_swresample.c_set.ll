; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/tests/extr_swresample.c_set.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/tests/extr_swresample.c_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32, i32, i32, double)* @set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set(i32** %0, i32 %1, i32 %2, i32 %3, i32 %4, double %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store double %5, double* %12, align 8
  %14 = load i32, i32* %11, align 4
  %15 = call i64 @av_sample_fmt_is_planar(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @av_get_alt_sample_fmt(i32 %18, i32 0)
  store i32 %19, i32* %11, align 4
  %20 = load i32**, i32*** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %13, align 8
  br label %34

25:                                               ; preds = %6
  %26 = load i32**, i32*** %7, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %13, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %25, %17
  %35 = load i32, i32* %11, align 4
  switch i32 %35, label %79 [
    i32 128, label %36
    i32 130, label %46
    i32 129, label %55
    i32 131, label %64
    i32 132, label %72
  ]

36:                                               ; preds = %34
  %37 = load double, double* %12, align 8
  %38 = fadd double %37, 1.000000e+00
  %39 = fmul double %38, 1.270000e+02
  %40 = call i32 @lrint(double %39)
  %41 = call i32 @av_clip_uint8(i32 %40)
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %81

46:                                               ; preds = %34
  %47 = load double, double* %12, align 8
  %48 = fmul double %47, 3.276700e+04
  %49 = call i32 @lrint(double %48)
  %50 = call i32 @av_clip_int16(i32 %49)
  %51 = load i32*, i32** %13, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %81

55:                                               ; preds = %34
  %56 = load double, double* %12, align 8
  %57 = fmul double %56, 0x41DFFFFFFFC00000
  %58 = call i32 @llrint(double %57)
  %59 = call i32 @av_clipl_int32(i32 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %81

64:                                               ; preds = %34
  %65 = load double, double* %12, align 8
  %66 = fptrunc double %65 to float
  %67 = load i32*, i32** %13, align 8
  %68 = bitcast i32* %67 to float*
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float %66, float* %71, align 4
  br label %81

72:                                               ; preds = %34
  %73 = load double, double* %12, align 8
  %74 = load i32*, i32** %13, align 8
  %75 = bitcast i32* %74 to double*
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  store double %73, double* %78, align 8
  br label %81

79:                                               ; preds = %34
  %80 = call i32 @av_assert2(i32 0)
  br label %81

81:                                               ; preds = %79, %72, %64, %55, %46, %36
  ret void
}

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @av_get_alt_sample_fmt(i32, i32) #1

declare dso_local i32 @av_clip_uint8(i32) #1

declare dso_local i32 @lrint(double) #1

declare dso_local i32 @av_clip_int16(i32) #1

declare dso_local i32 @av_clipl_int32(i32) #1

declare dso_local i32 @llrint(double) #1

declare dso_local i32 @av_assert2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
