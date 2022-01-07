; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aic.c_recombine_block_il.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aic.c_recombine_block_il.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32**, i32**, i32)* @recombine_block_il to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recombine_block_il(i32* %0, i64* %1, i32** %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %79

15:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %75, %15
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %78

19:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32**, i32*** %8, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 %32, 8
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %31, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %30, i64 %38
  store i32 %29, i32* %39, align 4
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %20

43:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %65, %43
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load i32**, i32*** %9, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %56, 8
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %57, %58
  %60 = add nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %55, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %54, i64 %63
  store i32 %53, i32* %64, align 4
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %44

68:                                               ; preds = %44
  %69 = load i32**, i32*** %8, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  store i32* %71, i32** %69, align 8
  %72 = load i32**, i32*** %9, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32* %74, i32** %72, align 8
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %16

78:                                               ; preds = %16
  br label %104

79:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 64
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load i32**, i32*** %9, align 8
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  store i32 %89, i32* %96, align 4
  br label %97

97:                                               ; preds = %83
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %80

100:                                              ; preds = %80
  %101 = load i32**, i32*** %9, align 8
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 64
  store i32* %103, i32** %101, align 8
  br label %104

104:                                              ; preds = %100, %78
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
