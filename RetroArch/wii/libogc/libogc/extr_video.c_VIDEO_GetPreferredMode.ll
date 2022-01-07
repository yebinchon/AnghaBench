; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_GetPreferredMode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_GetPreferredMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TVNtsc480Prog = common dso_local global i32 0, align 4
@TVPal576ProgScale = common dso_local global i32 0, align 4
@TVMpal480Prog = common dso_local global i32 0, align 4
@TVEurgb60Hz480Prog = common dso_local global i32 0, align 4
@TVNtsc480IntDf = common dso_local global i32 0, align 4
@TVPal576IntDfScale = common dso_local global i32 0, align 4
@TVMpal480IntDf = common dso_local global i32 0, align 4
@TVEurgb60Hz480IntDf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @VIDEO_GetPreferredMode(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %5 = call i32 (...) @VIDEO_GetCurrentTvMode()
  store i32 %5, i32* %4, align 4
  %6 = call i64 (...) @VIDEO_HaveComponentCable()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %14 [
    i32 129, label %10
    i32 128, label %11
    i32 130, label %12
    i32 131, label %13
  ]

10:                                               ; preds = %8
  store i32* @TVNtsc480Prog, i32** %3, align 8
  br label %14

11:                                               ; preds = %8
  store i32* @TVPal576ProgScale, i32** %3, align 8
  br label %14

12:                                               ; preds = %8
  store i32* @TVMpal480Prog, i32** %3, align 8
  br label %14

13:                                               ; preds = %8
  store i32* @TVEurgb60Hz480Prog, i32** %3, align 8
  br label %14

14:                                               ; preds = %8, %13, %12, %11, %10
  br label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %21 [
    i32 129, label %17
    i32 128, label %18
    i32 130, label %19
    i32 131, label %20
  ]

17:                                               ; preds = %15
  store i32* @TVNtsc480IntDf, i32** %3, align 8
  br label %21

18:                                               ; preds = %15
  store i32* @TVPal576IntDfScale, i32** %3, align 8
  br label %21

19:                                               ; preds = %15
  store i32* @TVMpal480IntDf, i32** %3, align 8
  br label %21

20:                                               ; preds = %15
  store i32* @TVEurgb60Hz480IntDf, i32** %3, align 8
  br label %21

21:                                               ; preds = %15, %20, %19, %18, %17
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32*, i32** %2, align 8
  %24 = icmp ne i32* null, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32*, i32** %2, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @memcpy(i32* %26, i32* %27, i32 4)
  br label %31

29:                                               ; preds = %22
  %30 = load i32*, i32** %3, align 8
  store i32* %30, i32** %2, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32*, i32** %2, align 8
  ret i32* %32
}

declare dso_local i32 @VIDEO_GetCurrentTvMode(...) #1

declare dso_local i64 @VIDEO_HaveComponentCable(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
