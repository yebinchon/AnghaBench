; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wsddec.c_wsd_to_av_channel_layoyt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wsddec.c_wsd_to_av_channel_layoyt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_CH_BACK_RIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Rr-middle\00", align 1
@AV_CH_BACK_CENTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Lr-middle\00", align 1
@AV_CH_BACK_LEFT = common dso_local global i32 0, align 4
@AV_CH_LOW_FREQUENCY = common dso_local global i32 0, align 4
@AV_CH_FRONT_RIGHT = common dso_local global i32 0, align 4
@AV_CH_FRONT_RIGHT_OF_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_LEFT_OF_CENTER = common dso_local global i32 0, align 4
@AV_CH_FRONT_LEFT = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"reserved channel assignment\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @wsd_to_av_channel_layoyt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsd_to_av_channel_layoyt(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %31 [
    i32 2, label %7
    i32 3, label %9
    i32 4, label %12
    i32 5, label %14
    i32 6, label %17
    i32 24, label %19
    i32 26, label %21
    i32 27, label %23
    i32 28, label %25
    i32 29, label %27
    i32 30, label %29
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @AV_CH_BACK_RIGHT, align 4
  store i32 %8, i32* %3, align 4
  br label %36

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @avpriv_request_sample(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %35

12:                                               ; preds = %2
  %13 = load i32, i32* @AV_CH_BACK_CENTER, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @avpriv_request_sample(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %35

17:                                               ; preds = %2
  %18 = load i32, i32* @AV_CH_BACK_LEFT, align 4
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load i32, i32* @AV_CH_LOW_FREQUENCY, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load i32, i32* @AV_CH_FRONT_RIGHT, align 4
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @AV_CH_FRONT_RIGHT_OF_CENTER, align 4
  store i32 %24, i32* %3, align 4
  br label %36

25:                                               ; preds = %2
  %26 = load i32, i32* @AV_CH_FRONT_CENTER, align 4
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %2
  %28 = load i32, i32* @AV_CH_FRONT_LEFT_OF_CENTER, align 4
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @AV_CH_FRONT_LEFT, align 4
  store i32 %30, i32* %3, align 4
  br label %36

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @AV_LOG_WARNING, align 4
  %34 = call i32 @av_log(i32* %32, i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %14, %9
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %29, %27, %25, %23, %21, %19, %17, %12, %7
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @avpriv_request_sample(i32*, i8*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
