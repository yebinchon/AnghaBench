; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hbffmpeg.c_hb_ff_mixdown_xlat.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hbffmpeg.c_hb_ff_mixdown_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_MATRIX_ENCODING_NONE = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@AV_MATRIX_ENCODING_DOLBY = common dso_local global i32 0, align 4
@AV_MATRIX_ENCODING_DPLII = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_5POINT1 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_6POINT1 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_7POINT1 = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_5POINT1_BACK = common dso_local global i32 0, align 4
@AV_CH_FRONT_LEFT_OF_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_RIGHT_OF_CENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"hb_ff_mixdown_xlat: unsupported mixdown %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_ff_mixdown_xlat(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @AV_MATRIX_ENCODING_NONE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %32 [
    i32 130, label %9
    i32 131, label %10
    i32 132, label %10
    i32 129, label %10
    i32 134, label %12
    i32 133, label %15
    i32 128, label %18
    i32 138, label %20
    i32 136, label %22
    i32 135, label %24
    i32 137, label %26
  ]

9:                                                ; preds = %2
  br label %36

10:                                               ; preds = %2, %2, %2
  %11 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  store i32 %11, i32* %5, align 4
  br label %36

12:                                               ; preds = %2
  %13 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @AV_MATRIX_ENCODING_DOLBY, align 4
  store i32 %14, i32* %6, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* @AV_MATRIX_ENCODING_DPLII, align 4
  store i32 %17, i32* %6, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load i32, i32* @AV_CH_LAYOUT_5POINT1, align 4
  store i32 %21, i32* %5, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load i32, i32* @AV_CH_LAYOUT_6POINT1, align 4
  store i32 %23, i32* %5, align 4
  br label %36

24:                                               ; preds = %2
  %25 = load i32, i32* @AV_CH_LAYOUT_7POINT1, align 4
  store i32 %25, i32* %5, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load i32, i32* @AV_CH_LAYOUT_5POINT1_BACK, align 4
  %28 = load i32, i32* @AV_CH_FRONT_LEFT_OF_CENTER, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @AV_CH_FRONT_RIGHT_OF_CENTER, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %5, align 4
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @hb_log(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %26, %24, %22, %20, %18, %15, %12, %10, %9
  %37 = load i32*, i32** %4, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @hb_log(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
