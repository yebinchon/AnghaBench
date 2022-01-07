; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_pitch_lag_low.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_pitch_lag_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_6k60 = common dso_local global i32 0, align 4
@AMRWB_P_DELAY_MIN = common dso_local global i32 0, align 4
@AMRWB_P_DELAY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i64*, i32, i32)* @decode_pitch_lag_low to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_pitch_lag_low(i32* %0, i32* %1, i32 %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %6
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @MODE_6k60, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18, %6
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 116
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 69
  %28 = ashr i32 %27, 1
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 1
  %34 = sub nsw i32 %30, %33
  %35 = add nsw i32 %34, 68
  %36 = mul nsw i32 %35, 2
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  br label %43

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 24
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %25
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = sub nsw i32 %46, %50
  %52 = load i32, i32* @AMRWB_P_DELAY_MIN, align 4
  %53 = load i64, i64* @AMRWB_P_DELAY_MAX, align 8
  %54 = sub nsw i64 %53, 15
  %55 = call i64 @av_clip(i32 %51, i32 %52, i64 %54)
  %56 = load i64*, i64** %10, align 8
  store i64 %55, i64* %56, align 8
  br label %76

57:                                               ; preds = %18, %15
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  %60 = ashr i32 %59, 1
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 1
  %66 = sub nsw i32 %62, %65
  %67 = mul nsw i32 %66, 2
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i64*, i64** %10, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %70
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  br label %76

76:                                               ; preds = %57, %43
  ret void
}

declare dso_local i64 @av_clip(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
