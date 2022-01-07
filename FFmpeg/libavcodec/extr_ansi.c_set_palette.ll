; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ansi.c_set_palette.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ansi.c_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_cga_palette = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @set_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_palette(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @ff_cga_palette, align 4
  %8 = call i32 @memcpy(i32* %6, i32 %7, i32 64)
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 16
  store i32* %10, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %47, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %43, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 6
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = mul nsw i32 %23, 40
  %25 = add nsw i32 %24, 55
  %26 = shl i32 %25, 16
  %27 = or i32 -16777216, %26
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %28, 40
  %30 = add nsw i32 %29, 55
  %31 = shl i32 %30, 8
  %32 = or i32 %27, %31
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 40
  %35 = add nsw i32 %34, 55
  %36 = or i32 %32, %35
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %2, align 8
  store i32 %36, i32* %37, align 4
  br label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %19

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %15

46:                                               ; preds = %15
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %11

50:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %71, %50
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 24
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = mul nsw i32 %55, 10
  %57 = add nsw i32 %56, 8
  %58 = shl i32 %57, 16
  %59 = or i32 -16777216, %58
  %60 = load i32, i32* %4, align 4
  %61 = mul nsw i32 %60, 10
  %62 = add nsw i32 %61, 8
  %63 = shl i32 %62, 8
  %64 = or i32 %59, %63
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 %65, 10
  %67 = add nsw i32 %66, 8
  %68 = or i32 %64, %67
  %69 = load i32*, i32** %2, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %2, align 8
  store i32 %68, i32* %69, align 4
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %51

74:                                               ; preds = %51
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
