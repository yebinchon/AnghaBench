; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_boxblur.c_hblur.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_boxblur.c_hblur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32, i32, i32, i32, i32**, i32)* @hblur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hblur(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32** %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32** %8, i32*** %19, align 8
  store i32 %9, i32* %20, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %10
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %58

29:                                               ; preds = %24, %10
  store i32 0, i32* %21, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %21, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %30
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %21, align 4
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %20, align 4
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %14, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32**, i32*** %19, align 8
  %53 = load i32, i32* %20, align 4
  %54 = call i32 @blur_power(i32* %40, i32 %41, i32* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32** %52, i32 %53)
  br label %55

55:                                               ; preds = %34
  %56 = load i32, i32* %21, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %21, align 4
  br label %30

58:                                               ; preds = %28, %30
  ret void
}

declare dso_local i32 @blur_power(i32*, i32, i32*, i32, i32, i32, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
