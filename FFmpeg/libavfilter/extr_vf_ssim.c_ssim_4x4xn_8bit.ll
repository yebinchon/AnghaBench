; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_4x4xn_8bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_4x4xn_8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, [4 x i32]*, i32)* @ssim_4x4xn_8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssim_4x4xn_8bit(i32* %0, i32 %1, i32* %2, i32 %3, [4 x i32]* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store [4 x i32]* %4, [4 x i32]** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %110, %6
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %113

26:                                               ; preds = %22
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %78, %26
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %81

30:                                               ; preds = %27
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %74, %30
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %77

34:                                               ; preds = %31
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %20, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %45, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %44, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %21, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %18, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %21, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %19, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %34
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %31

77:                                               ; preds = %31
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %27

81:                                               ; preds = %27
  %82 = load i32, i32* %16, align 4
  %83 = load [4 x i32]*, [4 x i32]** %11, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %83, i64 %85
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %86, i64 0, i64 0
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load [4 x i32]*, [4 x i32]** %11, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %89, i64 %91
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %92, i64 0, i64 1
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load [4 x i32]*, [4 x i32]** %11, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i64 %97
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %98, i64 0, i64 2
  store i32 %94, i32* %99, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load [4 x i32]*, [4 x i32]** %11, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %101, i64 %103
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %104, i64 0, i64 3
  store i32 %100, i32* %105, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32* %107, i32** %7, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  store i32* %109, i32** %9, align 8
  br label %110

110:                                              ; preds = %81
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %22

113:                                              ; preds = %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
