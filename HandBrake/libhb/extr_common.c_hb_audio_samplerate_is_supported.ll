; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_audio_samplerate_is_supported.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_audio_samplerate_is_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hb_audio_samplerate_is_supported(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %21 [
    i32 132, label %7
    i32 129, label %7
    i32 131, label %7
    i32 130, label %12
    i32 128, label %17
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 32000
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %22

11:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 16000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %22

16:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %20 [
    i32 8000, label %19
    i32 12000, label %19
    i32 16000, label %19
    i32 24000, label %19
    i32 48000, label %19
  ]

19:                                               ; preds = %17, %17, %17, %17, %17
  store i32 1, i32* %3, align 4
  br label %22

20:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20, %19, %16, %15, %11, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
