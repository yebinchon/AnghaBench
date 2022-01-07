; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_adjust_ntsc_framenum2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_timecode.c_av_timecode_adjust_ntsc_framenum2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_timecode_adjust_ntsc_framenum2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 30
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  store i32 17982, i32* %9, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 60
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 4, i32* %6, align 4
  store i32 35964, i32* %9, align 4
  br label %19

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %9, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 9, %28
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  %32 = add nsw i32 %27, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %37, 10
  %39 = sdiv i32 %36, %38
  %40 = mul nsw i32 %33, %39
  %41 = add nsw i32 %32, %40
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %20, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
