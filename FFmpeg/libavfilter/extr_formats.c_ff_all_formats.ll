; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_formats.c_ff_all_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_formats.c_ff_all_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ff_all_formats(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  store i32* null, i32** %5, align 8
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @av_pix_fmt_desc_next(i32* %12)
  store i32* %13, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @av_pix_fmt_desc_get_id(i32* %16)
  %18 = call i64 @ff_add_format(i32** %4, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32* null, i32** %2, align 8
  br label %44

21:                                               ; preds = %15
  br label %11

22:                                               ; preds = %11
  br label %42

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %37, %27
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @av_get_sample_fmt_name(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @ff_add_format(i32** %4, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32* null, i32** %2, align 8
  br label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %28

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32*, i32** %4, align 8
  store i32* %43, i32** %2, align 8
  br label %44

44:                                               ; preds = %42, %36, %20
  %45 = load i32*, i32** %2, align 8
  ret i32* %45
}

declare dso_local i32* @av_pix_fmt_desc_next(i32*) #1

declare dso_local i64 @ff_add_format(i32**, i32) #1

declare dso_local i32 @av_pix_fmt_desc_get_id(i32*) #1

declare dso_local i64 @av_get_sample_fmt_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
