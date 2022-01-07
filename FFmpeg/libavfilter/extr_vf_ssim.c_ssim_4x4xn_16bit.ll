; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_4x4xn_16bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_4x4xn_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, [4 x i32]*, i32)* @ssim_4x4xn_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssim_4x4xn_16bit(i32* %0, i32 %1, i32* %2, i32 %3, [4 x i32]* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store [4 x i32]* %4, [4 x i32]** %11, align 8
  store i32 %5, i32* %12, align 4
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %14, align 8
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %10, align 4
  store i32 0, i32* %17, align 4
  br label %30

30:                                               ; preds = %118, %6
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %121

34:                                               ; preds = %30
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %86, %34
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %89

38:                                               ; preds = %35
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %82, %38
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %85

42:                                               ; preds = %39
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %22, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %53, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %22, align 4
  %62 = load i32, i32* %18, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* %19, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %22, align 4
  %68 = load i32, i32* %22, align 4
  %69 = mul i32 %67, %68
  %70 = load i32, i32* %20, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %23, align 4
  %74 = mul i32 %72, %73
  %75 = load i32, i32* %20, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %23, align 4
  %79 = mul i32 %77, %78
  %80 = load i32, i32* %21, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %21, align 4
  br label %82

82:                                               ; preds = %42
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %39

85:                                               ; preds = %39
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %35

89:                                               ; preds = %35
  %90 = load i32, i32* %18, align 4
  %91 = load [4 x i32]*, [4 x i32]** %11, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %91, i64 %93
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %94, i64 0, i64 0
  store i32 %90, i32* %95, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load [4 x i32]*, [4 x i32]** %11, align 8
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %97, i64 %99
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %100, i64 0, i64 1
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load [4 x i32]*, [4 x i32]** %11, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %103, i64 %105
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %106, i64 0, i64 2
  store i32 %102, i32* %107, align 4
  %108 = load i32, i32* %21, align 4
  %109 = load [4 x i32]*, [4 x i32]** %11, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %109, i64 %111
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %112, i64 0, i64 3
  store i32 %108, i32* %113, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  store i32* %115, i32** %13, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32* %117, i32** %14, align 8
  br label %118

118:                                              ; preds = %89
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %17, align 4
  br label %30

121:                                              ; preds = %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
