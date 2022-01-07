; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_dct.c_init_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_dct.c_init_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, i32)* @init_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_block(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @memset(i32* %14, i32 0, i32 256)
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %103 [
    i32 0, label %17
    i32 1, label %57
    i32 2, label %85
  ]

17:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 64
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @av_lfg_get(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 2, %24
  %26 = srem i32 %23, %25
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ff_ref_fdct(i32* %40)
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %52, %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 64
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 3
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %42

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %36
  br label %103

57:                                               ; preds = %5
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @av_lfg_get(i32* %58)
  %60 = srem i32 %59, 10
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %81, %57
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @av_lfg_get(i32* %67)
  %69 = srem i32 %68, 64
  store i32 %69, i32* %13, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @av_lfg_get(i32* %70)
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 2, %72
  %74 = srem i32 %71, %73
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %62

84:                                               ; preds = %62
  br label %103

85:                                               ; preds = %5
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @av_lfg_get(i32* %86)
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 16, %88
  %90 = srem i32 %87, %89
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 8, %91
  %93 = sub nsw i32 %90, %92
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 1
  %100 = xor i32 %99, 1
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 63
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %5, %85, %84, %56
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32 @ff_ref_fdct(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
