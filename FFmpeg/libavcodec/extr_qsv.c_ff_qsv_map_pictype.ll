; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_ff_qsv_map_pictype.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qsv.c_ff_qsv_map_pictype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MFX_FRAMETYPE_S = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_SI = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_SP = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_P = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_qsv_map_pictype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 7
  switch i32 %5, label %30 [
    i32 130, label %6
    i32 131, label %16
    i32 129, label %18
    i32 128, label %28
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MFX_FRAMETYPE_S, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, i32* @AV_PICTURE_TYPE_SI, align 4
  store i32 %12, i32* %3, align 4
  br label %15

13:                                               ; preds = %6
  %14 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %11
  br label %32

16:                                               ; preds = %1
  %17 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @MFX_FRAMETYPE_S, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @AV_PICTURE_TYPE_SP, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @AV_PICTURE_TYPE_P, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @AV_PICTURE_TYPE_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %32

30:                                               ; preds = %1
  %31 = call i32 @av_assert0(i32 0)
  br label %32

32:                                               ; preds = %30, %28, %27, %16, %15
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
