; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pseudocolor.c_pseudocolor_filter_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, float*)* @pseudocolor_filter_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseudocolor_filter_16(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, float* %9) #0 {
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

33:                                               ; preds = %95, %10
  %34 = load i32, i32* %25, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %33
  store i32 0, i32* %24, align 4
  br label %38

38:                                               ; preds = %76, %37
  %39 = load i32, i32* %24, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = load float*, float** %20, align 8
  %44 = load i64*, i64** %21, align 8
  %45 = load i32, i32* %24, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds float, float* %43, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fptosi float %50 to i32
  store i32 %51, i32* %26, align 4
  %52 = load i32, i32* %26, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %42
  %55 = load i32, i32* %26, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %26, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %23, align 8
  %62 = load i32, i32* %24, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  br label %75

65:                                               ; preds = %54, %42
  %66 = load i64*, i64** %22, align 8
  %67 = load i32, i32* %24, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %23, align 8
  %72 = load i32, i32* %24, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 %70, i64* %74, align 8
  br label %75

75:                                               ; preds = %65, %58
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %24, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %24, align 4
  br label %38

79:                                               ; preds = %38
  %80 = load i32, i32* %17, align 4
  %81 = sdiv i32 %80, 2
  %82 = load i64*, i64** %21, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64* %84, i64** %21, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sdiv i32 %85, 2
  %87 = load i64*, i64** %22, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  store i64* %89, i64** %22, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sdiv i32 %90, 2
  %92 = load i64*, i64** %23, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  store i64* %94, i64** %23, align 8
  br label %95

95:                                               ; preds = %79
  %96 = load i32, i32* %25, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %25, align 4
  br label %33

98:                                               ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
