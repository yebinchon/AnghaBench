; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_midequalizer.c_midequalizer16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_midequalizer.c_midequalizer16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, float*, float*, i32*, i64)* @midequalizer16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @midequalizer16(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, float* %10, float* %11, i32* %12, i64 %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
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
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
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
  %33 = load i32*, i32** %15, align 8
  %34 = bitcast i32* %33 to i64*
  store i64* %34, i64** %29, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = bitcast i32* %35 to i64*
  store i64* %36, i64** %30, align 8
  %37 = load i64*, i64** %29, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sdiv i32 %38, 2
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %22, align 4
  %42 = load float*, float** %25, align 8
  %43 = load i64, i64* %28, align 8
  %44 = call i32 @compute_histogram16(i64* %37, i32 %39, i32 %40, i32 %41, float* %42, i64 %43)
  %45 = load i32*, i32** %16, align 8
  %46 = bitcast i32* %45 to i64*
  %47 = load i32, i32* %19, align 4
  %48 = sdiv i32 %47, 2
  %49 = load i32, i32* %23, align 4
  %50 = load i32, i32* %24, align 4
  %51 = load float*, float** %26, align 8
  %52 = load i64, i64* %28, align 8
  %53 = call i32 @compute_histogram16(i64* %46, i32 %48, i32 %49, i32 %50, float* %51, i64 %52)
  %54 = load float*, float** %25, align 8
  %55 = load float*, float** %26, align 8
  %56 = load i32*, i32** %27, align 8
  %57 = load i64, i64* %28, align 8
  %58 = call i32 @compute_contrast_change(float* %54, float* %55, i32* %56, i64 %57)
  store i32 0, i32* %32, align 4
  br label %59

59:                                               ; preds = %96, %14
  %60 = load i32, i32* %32, align 4
  %61 = load i32, i32* %22, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %59
  store i32 0, i32* %31, align 4
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %31, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i32*, i32** %27, align 8
  %70 = load i64*, i64** %29, align 8
  %71 = load i32, i32* %31, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %69, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64*, i64** %30, align 8
  %79 = load i32, i32* %31, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 %77, i64* %81, align 8
  br label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %31, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %31, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load i32, i32* %20, align 4
  %87 = sdiv i32 %86, 2
  %88 = load i64*, i64** %30, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64* %90, i64** %30, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sdiv i32 %91, 2
  %93 = load i64*, i64** %29, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64* %95, i64** %29, align 8
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %32, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %32, align 4
  br label %59

99:                                               ; preds = %59
  ret void
}

declare dso_local i32 @compute_histogram16(i64*, i32, i32, i32, float*, i64) #1

declare dso_local i32 @compute_contrast_change(float*, float*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
