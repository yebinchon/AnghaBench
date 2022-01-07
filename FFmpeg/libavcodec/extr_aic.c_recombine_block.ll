; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aic.c_recombine_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aic.c_recombine_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32**, i32**)* @recombine_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recombine_block(i32* %0, i64* %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %70, %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %73

14:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %38

18:                                               ; preds = %15
  %19 = load i32**, i32*** %7, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 %27, 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %25, i64 %33
  store i32 %24, i32* %34, align 4
  br label %35

35:                                               ; preds = %18
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %15

38:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i32**, i32*** %8, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = mul nsw i32 %51, 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = add nsw i32 %54, 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %50, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %49, i64 %58
  store i32 %48, i32* %59, align 4
  br label %60

60:                                               ; preds = %42
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %39

63:                                               ; preds = %39
  %64 = load i32**, i32*** %7, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32* %66, i32** %64, align 8
  %67 = load i32**, i32*** %8, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  store i32* %69, i32** %67, align 8
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %11

73:                                               ; preds = %11
  br label %74

74:                                               ; preds = %105, %73
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 8
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %98, %77
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 8
  br i1 %80, label %81, label %101

81:                                               ; preds = %78
  %82 = load i32**, i32*** %8, align 8
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i64*, i64** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %90, 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %89, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %88, i64 %96
  store i32 %87, i32* %97, align 4
  br label %98

98:                                               ; preds = %81
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %78

101:                                              ; preds = %78
  %102 = load i32**, i32*** %8, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  store i32* %104, i32** %102, align 8
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %74

108:                                              ; preds = %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
