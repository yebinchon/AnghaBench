; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopus.c_ff_opus_error_to_averror.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libopus.c_ff_opus_error_to_averror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_opus_error_to_averror(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 133, label %5
    i32 132, label %8
    i32 131, label %10
    i32 130, label %13
    i32 128, label %15
    i32 129, label %18
    i32 134, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @EINVAL, align 4
  %7 = call i32 @AVERROR(i32 %6)
  store i32 %7, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %9, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @EFAULT, align 4
  %12 = call i32 @AVERROR(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOSYS, align 4
  %17 = call i32 @AVERROR(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %20, %18, %15, %13, %10, %8, %5
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
