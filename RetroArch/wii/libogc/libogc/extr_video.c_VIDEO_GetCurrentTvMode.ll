; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_GetCurrentTvMode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_GetCurrentTvMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@currTvMode = common dso_local global i64 0, align 8
@VI_DEBUG = common dso_local global i64 0, align 8
@VI_NTSC = common dso_local global i64 0, align 8
@VI_EURGB60 = common dso_local global i64 0, align 8
@VI_MPAL = common dso_local global i64 0, align 8
@VI_PAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @VIDEO_GetCurrentTvMode() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @_CPU_ISR_Disable(i64 %4)
  %6 = load i64, i64* @currTvMode, align 8
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @VI_DEBUG, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = load i64, i64* @VI_NTSC, align 8
  store i64 %11, i64* %3, align 8
  br label %35

12:                                               ; preds = %0
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @VI_EURGB60, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i64, i64* @VI_EURGB60, align 8
  store i64 %17, i64* %3, align 8
  br label %34

18:                                               ; preds = %12
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @VI_MPAL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* @VI_MPAL, align 8
  store i64 %23, i64* %3, align 8
  br label %33

24:                                               ; preds = %18
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @VI_NTSC, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @VI_NTSC, align 8
  store i64 %29, i64* %3, align 8
  br label %32

30:                                               ; preds = %24
  %31 = load i64, i64* @VI_PAL, align 8
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %22
  br label %34

34:                                               ; preds = %33, %16
  br label %35

35:                                               ; preds = %34, %10
  %36 = load i64, i64* %2, align 8
  %37 = call i32 @_CPU_ISR_Restore(i64 %36)
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
