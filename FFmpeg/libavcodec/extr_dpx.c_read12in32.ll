; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dpx.c_read12in32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dpx.c_read12in32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32)* @read12in32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read12in32(i32** %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  br label %25

19:                                               ; preds = %4
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @read32(i32** %20, i32 %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 7, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %15
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %82 [
    i32 7, label %28
    i32 6, label %32
    i32 5, label %37
    i32 4, label %52
    i32 3, label %57
    i32 2, label %62
    i32 1, label %77
  ]

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 4095
  store i32 %31, i32* %5, align 4
  br label %86

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 12
  %36 = and i32 %35, 4095
  store i32 %36, i32* %5, align 4
  br label %86

37:                                               ; preds = %25
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 24
  store i32 %40, i32* %10, align 4
  %41 = load i32**, i32*** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @read32(i32** %41, i32 %42)
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 4095
  store i32 %51, i32* %5, align 4
  br label %86

52:                                               ; preds = %25
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 4095
  store i32 %56, i32* %5, align 4
  br label %86

57:                                               ; preds = %25
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 4095
  store i32 %61, i32* %5, align 4
  br label %86

62:                                               ; preds = %25
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 28
  store i32 %65, i32* %11, align 4
  %66 = load i32**, i32*** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @read32(i32** %66, i32 %67)
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 4095
  store i32 %76, i32* %5, align 4
  br label %86

77:                                               ; preds = %25
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 8
  %81 = and i32 %80, 4095
  store i32 %81, i32* %5, align 4
  br label %86

82:                                               ; preds = %25
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 20
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %77, %62, %57, %52, %37, %32, %28
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @read32(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
