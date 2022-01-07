; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb.c_rgb12to15.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_rgb2rgb.c_rgb12to15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rgb12to15(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %4, align 8
  store i32* %15, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32* %20, i32** %13, align 8
  br label %21

21:                                               ; preds = %25, %3
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %12, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 3840
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 240
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 15
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = shl i32 %35, 3
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 2048
  %39 = ashr i32 %38, 1
  %40 = or i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %41, 2
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 128
  %45 = ashr i32 %44, 2
  %46 = or i32 %42, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 1
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %49, 3
  %51 = or i32 %48, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %54, %55
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  br label %21

59:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
