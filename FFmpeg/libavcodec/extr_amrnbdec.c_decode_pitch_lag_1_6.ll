; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_pitch_lag_1_6.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrnbdec.c_decode_pitch_lag_1_6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PITCH_LAG_MIN_MODE_12k2 = common dso_local global i32 0, align 4
@PITCH_DELAY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @decode_pitch_lag_1_6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_pitch_lag_1_6(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %38

16:                                               ; preds = %13, %5
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 463
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 107
  %22 = mul nsw i32 %21, 10923
  %23 = ashr i32 %22, 16
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 6
  %29 = sub nsw i32 %25, %28
  %30 = add nsw i32 %29, 105
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %37

32:                                               ; preds = %16
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 368
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %19
  br label %63

38:                                               ; preds = %13
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 5
  %41 = mul nsw i32 %40, 10923
  %42 = ashr i32 %41, 16
  %43 = sub nsw i32 %42, 1
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 6
  %49 = sub nsw i32 %45, %48
  %50 = sub nsw i32 %49, 3
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 5
  %54 = load i32, i32* @PITCH_LAG_MIN_MODE_12k2, align 4
  %55 = load i64, i64* @PITCH_DELAY_MAX, align 8
  %56 = sub nsw i64 %55, 9
  %57 = call i64 @av_clip(i32 %53, i32 %54, i64 %56)
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %57
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %38, %37
  ret void
}

declare dso_local i64 @av_clip(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
