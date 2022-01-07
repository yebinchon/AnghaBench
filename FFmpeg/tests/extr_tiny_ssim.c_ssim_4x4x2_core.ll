; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_ssim.c_ssim_4x4x2_core.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_ssim.c_ssim_4x4x2_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64, [4 x i32]*)* @ssim_4x4x2_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssim_4x4x2_core(i32* %0, i64 %1, i32* %2, i64 %3, [4 x i32]* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i32]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store [4 x i32]* %4, [4 x i32]** %10, align 8
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %109, %5
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %112

23:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %77, %23
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %80

27:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %73, %27
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %76

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %7, align 8
  %38 = mul nsw i64 %36, %37
  %39 = add nsw i64 %34, %38
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %18, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %9, align 8
  %48 = mul nsw i64 %46, %47
  %49 = add nsw i64 %44, %48
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %19, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %17, align 4
  br label %73

73:                                               ; preds = %31
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %28

76:                                               ; preds = %28
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %24

80:                                               ; preds = %24
  %81 = load i32, i32* %14, align 4
  %82 = load [4 x i32]*, [4 x i32]** %10, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %82, i64 %84
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %85, i64 0, i64 0
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load [4 x i32]*, [4 x i32]** %10, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %88, i64 %90
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %91, i64 0, i64 1
  store i32 %87, i32* %92, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load [4 x i32]*, [4 x i32]** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %94, i64 %96
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %97, i64 0, i64 2
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load [4 x i32]*, [4 x i32]** %10, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %100, i64 %102
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %103, i64 0, i64 3
  store i32 %99, i32* %104, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  store i32* %106, i32** %6, align 8
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 4
  store i32* %108, i32** %8, align 8
  br label %109

109:                                              ; preds = %80
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %20

112:                                              ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
