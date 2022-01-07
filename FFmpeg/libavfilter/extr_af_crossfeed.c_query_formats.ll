; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crossfeed.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crossfeed.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_SAMPLE_FMT_DBL = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* @AV_SAMPLE_FMT_DBL, align 4
  %8 = call i32 @ff_add_format(i32** %4, i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @ff_set_common_formats(i32* %11, i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* @AV_CH_LAYOUT_STEREO, align 4
  %17 = call i32 @ff_add_channel_layout(i32** %5, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @ff_set_common_channel_layouts(i32* %20, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 (...) @ff_all_samplerates()
  %27 = call i32 @ff_set_common_samplerates(i32* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %19, %15, %10, %1
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @ff_add_format(i32**, i32) #1

declare dso_local i32 @ff_set_common_formats(i32*, i32*) #1

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #1

declare dso_local i32 @ff_set_common_channel_layouts(i32*, i32*) #1

declare dso_local i32 @ff_set_common_samplerates(i32*, i32) #1

declare dso_local i32 @ff_all_samplerates(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
