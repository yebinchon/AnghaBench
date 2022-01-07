; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix_matrix.c_sane_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix_matrix.c_sane_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CH_LAYOUT_SURROUND = common dso_local global i32 0, align 4
@AV_CH_FRONT_LEFT = common dso_local global i32 0, align 4
@AV_CH_FRONT_RIGHT = common dso_local global i32 0, align 4
@AV_CH_SIDE_LEFT = common dso_local global i32 0, align 4
@AV_CH_SIDE_RIGHT = common dso_local global i32 0, align 4
@AV_CH_BACK_LEFT = common dso_local global i32 0, align 4
@AV_CH_BACK_RIGHT = common dso_local global i32 0, align 4
@AV_CH_FRONT_LEFT_OF_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_RIGHT_OF_CENTER = common dso_local global i32 0, align 4
@AV_CH_TOP_FRONT_LEFT = common dso_local global i32 0, align 4
@AV_CH_TOP_FRONT_RIGHT = common dso_local global i32 0, align 4
@AV_CH_TOP_BACK_LEFT = common dso_local global i32 0, align 4
@AV_CH_TOP_BACK_RIGHT = common dso_local global i32 0, align 4
@AV_CH_STEREO_LEFT = common dso_local global i32 0, align 4
@AV_CH_STEREO_RIGHT = common dso_local global i32 0, align 4
@AV_CH_WIDE_LEFT = common dso_local global i32 0, align 4
@AV_CH_WIDE_RIGHT = common dso_local global i32 0, align 4
@AV_CH_SURROUND_DIRECT_LEFT = common dso_local global i32 0, align 4
@AV_CH_SURROUND_DIRECT_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sane_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sane_layout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @AV_CH_LAYOUT_SURROUND, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @AV_CH_FRONT_LEFT, align 4
  %12 = load i32, i32* @AV_CH_FRONT_RIGHT, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = call i32 @even(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %81

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @AV_CH_SIDE_LEFT, align 4
  %20 = load i32, i32* @AV_CH_SIDE_RIGHT, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = call i32 @even(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %81

25:                                               ; preds = %17
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @AV_CH_BACK_LEFT, align 4
  %28 = load i32, i32* @AV_CH_BACK_RIGHT, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = call i32 @even(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @AV_CH_FRONT_LEFT_OF_CENTER, align 4
  %36 = load i32, i32* @AV_CH_FRONT_RIGHT_OF_CENTER, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = call i32 @even(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @AV_CH_TOP_FRONT_LEFT, align 4
  %44 = load i32, i32* @AV_CH_TOP_FRONT_RIGHT, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = call i32 @even(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %41
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @AV_CH_TOP_BACK_LEFT, align 4
  %52 = load i32, i32* @AV_CH_TOP_BACK_RIGHT, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = call i32 @even(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %49
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @AV_CH_STEREO_LEFT, align 4
  %60 = load i32, i32* @AV_CH_STEREO_RIGHT, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = call i32 @even(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %57
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @AV_CH_WIDE_LEFT, align 4
  %68 = load i32, i32* @AV_CH_WIDE_RIGHT, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = call i32 @even(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @AV_CH_SURROUND_DIRECT_LEFT, align 4
  %76 = load i32, i32* @AV_CH_SURROUND_DIRECT_RIGHT, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = call i32 @even(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73, %65, %57, %49, %41, %33, %25, %17, %9
  store i32 0, i32* %2, align 4
  br label %83

82:                                               ; preds = %73
  store i32 1, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %81, %8
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @even(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
