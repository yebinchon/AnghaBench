; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1.c_ff_g723_1_get_residual.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1.c_ff_g723_1_get_residual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PITCH_MAX = common dso_local global i32 0, align 4
@PITCH_ORDER = common dso_local global i32 0, align 4
@SUBFRAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_g723_1_get_residual(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @PITCH_MAX, align 4
  %10 = load i32, i32* @PITCH_ORDER, align 4
  %11 = sdiv i32 %10, 2
  %12 = sub nsw i32 %9, %11
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %32

32:                                               ; preds = %54, %3
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SUBFRAME_LEN, align 4
  %35 = load i32, i32* @PITCH_ORDER, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 2
  %44 = load i32, i32* %6, align 4
  %45 = srem i32 %43, %44
  %46 = add nsw i32 %41, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %40, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %32

57:                                               ; preds = %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
