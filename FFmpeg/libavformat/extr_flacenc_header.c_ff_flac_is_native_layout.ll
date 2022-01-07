; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc_header.c_ff_flac_is_native_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc_header.c_ff_flac_is_native_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CH_LAYOUT_MONO = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_STEREO = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_SURROUND = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_QUAD = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_5POINT0 = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_5POINT1 = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_6POINT1 = common dso_local global i64 0, align 8
@AV_CH_LAYOUT_7POINT1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_flac_is_native_layout(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @AV_CH_LAYOUT_MONO, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %35, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @AV_CH_LAYOUT_STEREO, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @AV_CH_LAYOUT_SURROUND, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @AV_CH_LAYOUT_QUAD, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @AV_CH_LAYOUT_5POINT0, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @AV_CH_LAYOUT_5POINT1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @AV_CH_LAYOUT_6POINT1, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @AV_CH_LAYOUT_7POINT1, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27, %23, %19, %15, %11, %7, %1
  store i32 1, i32* %2, align 4
  br label %37

36:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
