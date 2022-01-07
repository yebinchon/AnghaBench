; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_midequalizer.c_midequalizer8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_midequalizer.c_midequalizer8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i32, i32, i32, i32, i32, i32, i32, float*, float*, i32*, i64)* @midequalizer8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @midequalizer8(i64* %0, i64* %1, i64* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, float* %10, float* %11, i32* %12, i64 %13) #0 {
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i64* %0, i64** %15, align 8
  store i64* %1, i64** %16, align 8
  store i64* %2, i64** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store float* %10, float** %25, align 8
  store float* %11, float** %26, align 8
  store i32* %12, i32** %27, align 8
  store i64 %13, i64* %28, align 8
  %31 = load i64*, i64** %15, align 8
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %21, align 4
  %34 = load i32, i32* %22, align 4
  %35 = load float*, float** %25, align 8
  %36 = load i64, i64* %28, align 8
  %37 = call i32 @compute_histogram8(i64* %31, i32 %32, i32 %33, i32 %34, float* %35, i64 %36)
  %38 = load i64*, i64** %16, align 8
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %23, align 4
  %41 = load i32, i32* %24, align 4
  %42 = load float*, float** %26, align 8
  %43 = load i64, i64* %28, align 8
  %44 = call i32 @compute_histogram8(i64* %38, i32 %39, i32 %40, i32 %41, float* %42, i64 %43)
  %45 = load float*, float** %25, align 8
  %46 = load float*, float** %26, align 8
  %47 = load i32*, i32** %27, align 8
  %48 = load i64, i64* %28, align 8
  %49 = call i32 @compute_contrast_change(float* %45, float* %46, i32* %47, i64 %48)
  store i32 0, i32* %30, align 4
  br label %50

50:                                               ; preds = %85, %14
  %51 = load i32, i32* %30, align 4
  %52 = load i32, i32* %22, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %88

54:                                               ; preds = %50
  store i32 0, i32* %29, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %29, align 4
  %57 = load i32, i32* %21, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i32*, i32** %27, align 8
  %61 = load i64*, i64** %15, align 8
  %62 = load i32, i32* %29, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @av_clip_uint8(i32 %67)
  %69 = load i64*, i64** %17, align 8
  %70 = load i32, i32* %29, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %29, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %29, align 4
  br label %55

76:                                               ; preds = %55
  %77 = load i32, i32* %20, align 4
  %78 = load i64*, i64** %17, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64* %80, i64** %17, align 8
  %81 = load i32, i32* %18, align 4
  %82 = load i64*, i64** %15, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64* %84, i64** %15, align 8
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %30, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %30, align 4
  br label %50

88:                                               ; preds = %50
  ret void
}

declare dso_local i32 @compute_histogram8(i64*, i32, i32, i32, float*, i64) #1

declare dso_local i32 @compute_contrast_change(float*, float*, i32*, i64) #1

declare dso_local i64 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
