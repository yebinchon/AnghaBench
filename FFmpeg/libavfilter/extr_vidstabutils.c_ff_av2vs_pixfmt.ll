; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vidstabutils.c_ff_av2vs_pixfmt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vidstabutils.c_ff_av2vs_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PF_YUV420P = common dso_local global i32 0, align 4
@PF_YUV422P = common dso_local global i32 0, align 4
@PF_YUV444P = common dso_local global i32 0, align 4
@PF_YUV410P = common dso_local global i32 0, align 4
@PF_YUV411P = common dso_local global i32 0, align 4
@PF_YUV440P = common dso_local global i32 0, align 4
@PF_YUVA420P = common dso_local global i32 0, align 4
@PF_GRAY8 = common dso_local global i32 0, align 4
@PF_RGB24 = common dso_local global i32 0, align 4
@PF_BGR24 = common dso_local global i32 0, align 4
@PF_RGBA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot deal with pixel format %i\0A\00", align 1
@PF_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_av2vs_pixfmt(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %29 [
    i32 132, label %7
    i32 131, label %9
    i32 129, label %11
    i32 134, label %13
    i32 133, label %15
    i32 130, label %17
    i32 128, label %19
    i32 137, label %21
    i32 136, label %23
    i32 138, label %25
    i32 135, label %27
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @PF_YUV420P, align 4
  store i32 %8, i32* %3, align 4
  br label %35

9:                                                ; preds = %2
  %10 = load i32, i32* @PF_YUV422P, align 4
  store i32 %10, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load i32, i32* @PF_YUV444P, align 4
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load i32, i32* @PF_YUV410P, align 4
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load i32, i32* @PF_YUV411P, align 4
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i32, i32* @PF_YUV440P, align 4
  store i32 %18, i32* %3, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load i32, i32* @PF_YUVA420P, align 4
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load i32, i32* @PF_GRAY8, align 4
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load i32, i32* @PF_RGB24, align 4
  store i32 %24, i32* %3, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load i32, i32* @PF_BGR24, align 4
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load i32, i32* @PF_RGBA, align 4
  store i32 %28, i32* %3, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @av_log(i32* %30, i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @PF_NONE, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
