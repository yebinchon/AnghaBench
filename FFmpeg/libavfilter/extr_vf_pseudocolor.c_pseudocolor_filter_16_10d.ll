; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_16_10d.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_16_10d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, float*)* @pseudocolor_filter_16_10d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseudocolor_filter_16_10d(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, float* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store float* %9, float** %20, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = bitcast i32* %27 to i64*
  store i64* %28, i64** %21, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = bitcast i32* %29 to i64*
  store i64* %30, i64** %22, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = bitcast i32* %31 to i64*
  store i64* %32, i64** %23, align 8
  store i32 0, i32* %25, align 4
  br label %33

33:                                               ; preds = %96, %10
  %34 = load i32, i32* %25, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %33
  store i32 0, i32* %24, align 4
  br label %38

38:                                               ; preds = %77, %37
  %39 = load i32, i32* %24, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load float*, float** %20, align 8
  %44 = load i64*, i64** %21, align 8
  %45 = load i32, i32* %24, align 4
  %46 = ashr i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds float, float* %43, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fptosi float %51 to i32
  store i32 %52, i32* %26, align 4
  %53 = load i32, i32* %26, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %42
  %56 = load i32, i32* %26, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %26, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %23, align 8
  %63 = load i32, i32* %24, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %61, i64* %65, align 8
  br label %76

66:                                               ; preds = %55, %42
  %67 = load i64*, i64** %22, align 8
  %68 = load i32, i32* %24, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %23, align 8
  %73 = load i32, i32* %24, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %71, i64* %75, align 8
  br label %76

76:                                               ; preds = %66, %59
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %24, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %24, align 4
  br label %38

80:                                               ; preds = %38
  %81 = load i32, i32* %17, align 4
  %82 = sdiv i32 %81, 2
  %83 = load i64*, i64** %21, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64* %85, i64** %21, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sdiv i32 %86, 2
  %88 = load i64*, i64** %22, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64* %90, i64** %22, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sdiv i32 %91, 2
  %93 = load i64*, i64** %23, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64* %95, i64** %23, align 8
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %25, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %25, align 4
  br label %33

99:                                               ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
