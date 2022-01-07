; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_mcompand.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_mcompand.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@query_formats.sample_fmts = internal constant [2 x i32] [i32 129, i32 128], align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = call i32* (...) @ff_all_channel_counts()
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = call i32 @AVERROR(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %47

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @ff_set_common_channel_layouts(i32* %14, i32* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %13
  %22 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.sample_fmts, i64 0, i64 0))
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %47

28:                                               ; preds = %21
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ff_set_common_formats(i32* %29, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %28
  %37 = call i32* (...) @ff_all_samplerates()
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %2, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load i32*, i32** %3, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @ff_set_common_samplerates(i32* %44, i32* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %40, %34, %25, %19, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32* @ff_all_channel_counts(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_set_common_channel_layouts(i32*, i32*) #1

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @ff_set_common_formats(i32*, i32*) #1

declare dso_local i32* @ff_all_samplerates(...) #1

declare dso_local i32 @ff_set_common_samplerates(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
