; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_yuvPlanartoyuy2_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb_template.c_yuvPlanartoyuy2_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32)* @yuvPlanartoyuy2_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuvPlanartoyuy2_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
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
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %28 = load i32, i32* %15, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %23, align 4
  store i32 0, i32* %21, align 4
  br label %30

30:                                               ; preds = %99, %10
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %102

34:                                               ; preds = %30
  %35 = load i32*, i32** %14, align 8
  store i32* %35, i32** %24, align 8
  %36 = load i32*, i32** %11, align 8
  store i32* %36, i32** %25, align 8
  %37 = load i32*, i32** %12, align 8
  store i32* %37, i32** %26, align 8
  %38 = load i32*, i32** %13, align 8
  store i32* %38, i32** %27, align 8
  store i32 0, i32* %22, align 4
  br label %39

39:                                               ; preds = %70, %34
  %40 = load i32, i32* %22, align 4
  %41 = load i32, i32* %23, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load i32*, i32** %25, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %26, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = add nsw i32 %46, %50
  %52 = load i32*, i32** %25, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = add nsw i32 %51, %55
  %57 = load i32*, i32** %27, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 24
  %61 = add nsw i32 %56, %60
  %62 = load i32*, i32** %24, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %24, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32*, i32** %25, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32* %65, i32** %25, align 8
  %66 = load i32*, i32** %26, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %26, align 8
  %68 = load i32*, i32** %27, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %27, align 8
  br label %70

70:                                               ; preds = %43
  %71 = load i32, i32* %22, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %22, align 4
  br label %39

73:                                               ; preds = %39
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %20, align 4
  %76 = sub nsw i32 %75, 1
  %77 = and i32 %74, %76
  %78 = load i32, i32* %20, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = load i32, i32* %18, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32* %85, i32** %12, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load i32*, i32** %13, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %13, align 8
  br label %90

90:                                               ; preds = %81, %73
  %91 = load i32, i32* %17, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %11, align 8
  %95 = load i32, i32* %19, align 4
  %96 = load i32*, i32** %14, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %14, align 8
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %21, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %21, align 4
  br label %30

102:                                              ; preds = %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
