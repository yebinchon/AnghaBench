; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmsipr.c_ff_rm_reorder_sipr_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmsipr.c_ff_rm_reorder_sipr_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sipr_swaps = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_rm_reorder_sipr_data(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  %17 = mul nsw i32 %16, 2
  %18 = sdiv i32 %17, 96
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %126, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 38
  br i1 %21, label %22, label %129

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32**, i32*** @sipr_swaps, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %23, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32**, i32*** @sipr_swaps, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %32, %39
  store i32 %40, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %118, %22
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %125

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %10, align 4
  %48 = ashr i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 1
  %54 = mul nsw i32 4, %53
  %55 = ashr i32 %51, %54
  %56 = and i32 %55, 15
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 1
  %65 = mul nsw i32 4, %64
  %66 = ashr i32 %62, %65
  %67 = and i32 %66, 15
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 1
  %71 = mul nsw i32 4, %70
  %72 = shl i32 %68, %71
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %11, align 4
  %75 = ashr i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = mul nsw i32 4, %83
  %85 = shl i32 15, %84
  %86 = and i32 %78, %85
  %87 = or i32 %72, %86
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %11, align 4
  %90 = ashr i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, 1
  %96 = mul nsw i32 4, %95
  %97 = shl i32 %93, %96
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %10, align 4
  %100 = ashr i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = mul nsw i32 4, %108
  %110 = shl i32 15, %109
  %111 = and i32 %103, %110
  %112 = or i32 %97, %111
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* %10, align 4
  %115 = ashr i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 %112, i32* %117, align 4
  br label %118

118:                                              ; preds = %45
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %41

125:                                              ; preds = %41
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %19

129:                                              ; preds = %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
