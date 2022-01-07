; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale_fast_bilinear.c_ff_hyscale_fast_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_hscale_fast_bilinear.c_ff_hyscale_fast_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hyscale_fast_c(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %55, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %17
  %22 = load i32, i32* %14, align 4
  %23 = lshr i32 %22, 16
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %14, align 4
  %25 = and i32 %24, 65535
  %26 = lshr i32 %25, 9
  store i32 %26, i32* %16, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %15, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 7
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %15, align 4
  %35 = add i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %15, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %38, %43
  %45 = load i32, i32* %16, align 4
  %46 = mul i32 %44, %45
  %47 = add i32 %32, %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = add i32 %53, %52
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %21
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %17

58:                                               ; preds = %17
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %81, %58
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 %62, %63
  %65 = ashr i32 %64, 16
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp sge i32 %65, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %61
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 128
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %13, align 4
  br label %61

84:                                               ; preds = %61
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
