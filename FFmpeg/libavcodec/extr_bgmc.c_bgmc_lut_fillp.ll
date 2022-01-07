; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bgmc.c_bgmc_lut_fillp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_bgmc.c_bgmc_lut_fillp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUT_SIZE = common dso_local global i32 0, align 4
@FREQ_BITS = common dso_local global i32 0, align 4
@LUT_BITS = common dso_local global i32 0, align 4
@cf_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @bgmc_lut_fillp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmc_lut_fillp(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %55, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %12, 16
  br i1 %13, label %14, label %58

14:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %51, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @LUT_SIZE, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = add i32 %20, 1
  %22 = load i32, i32* @FREQ_BITS, align 4
  %23 = load i32, i32* @LUT_BITS, align 4
  %24 = sub i32 %22, %23
  %25 = shl i32 %21, %24
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 1, %26
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %40, %19
  %29 = load i32**, i32*** @cf_table, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = lshr i32 %46, %47
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %8, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %15

54:                                               ; preds = %15
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
