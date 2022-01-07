; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_rematrix.c_sane_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_rematrix.c_sane_layout.c"
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
@SWR_CH_MAX = common dso_local global i64 0, align 8
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
  br label %52

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @AV_CH_FRONT_LEFT, align 4
  %12 = load i32, i32* @AV_CH_FRONT_RIGHT, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = call i32 @even(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %52

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @AV_CH_SIDE_LEFT, align 4
  %21 = load i32, i32* @AV_CH_SIDE_RIGHT, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = call i32 @even(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %52

27:                                               ; preds = %18
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @AV_CH_BACK_LEFT, align 4
  %30 = load i32, i32* @AV_CH_BACK_RIGHT, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = call i32 @even(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %52

36:                                               ; preds = %27
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @AV_CH_FRONT_LEFT_OF_CENTER, align 4
  %39 = load i32, i32* @AV_CH_FRONT_RIGHT_OF_CENTER, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = call i32 @even(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %52

45:                                               ; preds = %36
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @av_get_channel_layout_nb_channels(i32 %46)
  %48 = load i64, i64* @SWR_CH_MAX, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %52

51:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50, %44, %35, %26, %17, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @even(i32) #1

declare dso_local i64 @av_get_channel_layout_nb_channels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
