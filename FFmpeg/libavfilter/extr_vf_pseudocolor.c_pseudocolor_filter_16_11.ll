; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_16_11.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_16_11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, float*)* @pseudocolor_filter_16_11 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseudocolor_filter_16_11(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, float* %9) #0 {
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
  %33 = load i32, i32* %17, align 4
  %34 = sdiv i32 %33, 2
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %19, align 4
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %18, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %18, align 4
  store i32 0, i32* %25, align 4
  br label %39

39:                                               ; preds = %100, %10
  %40 = load i32, i32* %25, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %103

43:                                               ; preds = %39
  store i32 0, i32* %24, align 4
  br label %44

44:                                               ; preds = %88, %43
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = load float*, float** %20, align 8
  %50 = load i64*, i64** %21, align 8
  %51 = load i32, i32* %25, align 4
  %52 = shl i32 %51, 1
  %53 = load i32, i32* %17, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %24, align 4
  %56 = shl i32 %55, 1
  %57 = add nsw i32 %54, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %50, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds float, float* %49, i64 %60
  %62 = load float, float* %61, align 4
  %63 = fptosi float %62 to i32
  store i32 %63, i32* %26, align 4
  %64 = load i32, i32* %26, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %48
  %67 = load i32, i32* %26, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load i32, i32* %26, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64*, i64** %23, align 8
  %74 = load i32, i32* %24, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %72, i64* %76, align 8
  br label %87

77:                                               ; preds = %66, %48
  %78 = load i64*, i64** %22, align 8
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %23, align 8
  %84 = load i32, i32* %24, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %82, i64* %86, align 8
  br label %87

87:                                               ; preds = %77, %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %24, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %24, align 4
  br label %44

91:                                               ; preds = %44
  %92 = load i32, i32* %18, align 4
  %93 = load i64*, i64** %22, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64* %95, i64** %22, align 8
  %96 = load i32, i32* %19, align 4
  %97 = load i64*, i64** %23, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  store i64* %99, i64** %23, align 8
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %25, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %25, align 4
  br label %39

103:                                              ; preds = %39
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
