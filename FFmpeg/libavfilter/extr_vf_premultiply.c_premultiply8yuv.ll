; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_premultiply8yuv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_premultiply8yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* @premultiply8yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @premultiply8yuv(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
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
  %24 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %77, %11
  %26 = load i32, i32* %24, align 4
  %27 = load i32, i32* %19, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %80

29:                                               ; preds = %25
  store i32 0, i32* %23, align 4
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i32, i32* %23, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %23, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 128
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %23, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 1
  %47 = and i32 %46, 1
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %23, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %47, %52
  %54 = mul nsw i32 %40, %53
  %55 = ashr i32 %54, 8
  %56 = add nsw i32 %55, 128
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* %23, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %34
  %62 = load i32, i32* %23, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %23, align 4
  br label %30

64:                                               ; preds = %30
  %65 = load i32, i32* %17, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %14, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %13, align 8
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %24, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %24, align 4
  br label %25

80:                                               ; preds = %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
