; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxenc.c_ffat_get_format_id.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxenc.c_ffat_get_format_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kAudioFormatMPEG4AAC = common dso_local global i32 0, align 4
@kAudioFormatMPEG4AAC_HE = common dso_local global i32 0, align 4
@kAudioFormatMPEG4AAC_HE_V2 = common dso_local global i32 0, align 4
@kAudioFormatMPEG4AAC_LD = common dso_local global i32 0, align 4
@kAudioFormatMPEG4AAC_ELD = common dso_local global i32 0, align 4
@kAudioFormatAppleIMA4 = common dso_local global i32 0, align 4
@kAudioFormatAppleLossless = common dso_local global i32 0, align 4
@kAudioFormatiLBC = common dso_local global i32 0, align 4
@kAudioFormatALaw = common dso_local global i32 0, align 4
@kAudioFormatULaw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid codec ID!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ffat_get_format_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffat_get_format_id(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %30 [
    i32 138, label %7
    i32 137, label %20
    i32 136, label %22
    i32 135, label %24
    i32 134, label %26
    i32 133, label %28
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %10 [
    i32 128, label %9
    i32 131, label %12
    i32 130, label %14
    i32 129, label %16
    i32 132, label %18
  ]

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, i32* @kAudioFormatMPEG4AAC, align 4
  store i32 %11, i32* %3, align 4
  br label %32

12:                                               ; preds = %7
  %13 = load i32, i32* @kAudioFormatMPEG4AAC_HE, align 4
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %7
  %15 = load i32, i32* @kAudioFormatMPEG4AAC_HE_V2, align 4
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %7
  %17 = load i32, i32* @kAudioFormatMPEG4AAC_LD, align 4
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %7
  %19 = load i32, i32* @kAudioFormatMPEG4AAC_ELD, align 4
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %2
  %21 = load i32, i32* @kAudioFormatAppleIMA4, align 4
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* @kAudioFormatAppleLossless, align 4
  store i32 %23, i32* %3, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load i32, i32* @kAudioFormatiLBC, align 4
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @kAudioFormatALaw, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @kAudioFormatULaw, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %2
  %31 = call i32 @av_assert0(i32 0)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
