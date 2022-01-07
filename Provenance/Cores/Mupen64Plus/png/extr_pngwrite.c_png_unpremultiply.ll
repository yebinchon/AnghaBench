; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwrite.c_png_unpremultiply.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngwrite.c_png_unpremultiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @png_unpremultiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_unpremultiply(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 128
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 255, i32* %4, align 4
  br label %36

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 65407
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 64
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 7
  store i32 %28, i32* %5, align 4
  br label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %30, 255
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @PNG_sRGB_FROM_LINEAR(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %32, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @PNG_sRGB_FROM_LINEAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
