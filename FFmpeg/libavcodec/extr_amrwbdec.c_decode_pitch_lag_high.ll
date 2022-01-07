; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_pitch_lag_high.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_pitch_lag_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMRWB_P_DELAY_MIN = common dso_local global i32 0, align 4
@AMRWB_P_DELAY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i64*, i32)* @decode_pitch_lag_high to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_pitch_lag_high(i32* %0, i32* %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %69

16:                                               ; preds = %13, %5
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 376
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 137
  %22 = ashr i32 %21, 2
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 2
  %28 = sub nsw i32 %24, %27
  %29 = add nsw i32 %28, 136
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %55

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 440
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 257
  %37 = sub nsw i32 %36, 376
  %38 = ashr i32 %37, 1
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 1
  %44 = sub nsw i32 %40, %43
  %45 = add nsw i32 %44, 256
  %46 = sub nsw i32 %45, 376
  %47 = mul nsw i32 %46, 2
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %54

49:                                               ; preds = %31
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 %50, 280
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %34
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = sub nsw i32 %58, %62
  %64 = load i32, i32* @AMRWB_P_DELAY_MIN, align 4
  %65 = load i64, i64* @AMRWB_P_DELAY_MAX, align 8
  %66 = sub nsw i64 %65, 15
  %67 = call i64 @av_clip(i32 %63, i32 %64, i64 %66)
  %68 = load i64*, i64** %9, align 8
  store i64 %67, i64* %68, align 8
  br label %87

69:                                               ; preds = %13
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  %72 = ashr i32 %71, 2
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 2
  %78 = sub nsw i32 %74, %77
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i64*, i64** %9, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %81
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 4
  br label %87

87:                                               ; preds = %69, %55
  ret void
}

declare dso_local i64 @av_clip(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
