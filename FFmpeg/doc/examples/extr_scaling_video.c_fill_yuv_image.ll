; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_scaling_video.c_fill_yuv_image.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_scaling_video.c_fill_yuv_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32, i32)* @fill_yuv_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_yuv_image(i32** %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %45, %5
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %26, 3
  %28 = add nsw i32 %25, %27
  %29 = load i32**, i32*** %6, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %31, i64 %39
  store i32 %28, i32* %40, align 4
  br label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %18

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %13

48:                                               ; preds = %13
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %99, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 %51, 2
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %95, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %57, 2
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %55
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 128, %61
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 %62, %64
  %66 = load i32**, i32*** %6, align 8
  %67 = getelementptr inbounds i32*, i32** %66, i64 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %68, i64 %76
  store i32 %65, i32* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 64, %78
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 %80, 5
  %82 = add nsw i32 %79, %81
  %83 = load i32**, i32*** %6, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %85, i64 %93
  store i32 %82, i32* %94, align 4
  br label %95

95:                                               ; preds = %60
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %55

98:                                               ; preds = %55
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %49

102:                                              ; preds = %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
