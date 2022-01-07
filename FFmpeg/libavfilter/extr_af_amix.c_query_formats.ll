; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amix.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amix.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@ENOMEM = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_FLT = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_FLTP = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_DBL = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_DBLP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = call %struct.TYPE_5__* (...) @ff_all_channel_counts()
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = call i32 @AVERROR(i32 %11)
  store i32 %12, i32* %6, align 4
  br label %46

13:                                               ; preds = %1
  %14 = load i32, i32* @AV_SAMPLE_FMT_FLT, align 4
  %15 = call i32 @ff_add_format(i32** %4, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %19 = call i32 @ff_add_format(i32** %4, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @AV_SAMPLE_FMT_DBL, align 4
  %23 = call i32 @ff_add_format(i32** %4, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @AV_SAMPLE_FMT_DBLP, align 4
  %27 = call i32 @ff_add_format(i32** %4, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ff_set_common_formats(i32* %30, i32* %31)
  store i32 %32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = call i32 @ff_set_common_channel_layouts(i32* %35, %struct.TYPE_5__* %36)
  store i32 %37, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 (...) @ff_all_samplerates()
  %42 = call i32 @ff_set_common_samplerates(i32* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34, %29, %25, %21, %17, %13
  br label %46

45:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %56

46:                                               ; preds = %44, %10
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = icmp ne %struct.TYPE_5__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @av_freep(%struct.TYPE_5__** %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = call i32 @av_freep(%struct.TYPE_5__** %5)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %45
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_5__* @ff_all_channel_counts(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_add_format(i32**, i32) #1

declare dso_local i32 @ff_set_common_formats(i32*, i32*) #1

declare dso_local i32 @ff_set_common_channel_layouts(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ff_set_common_samplerates(i32*, i32) #1

declare dso_local i32 @ff_all_samplerates(...) #1

declare dso_local i32 @av_freep(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
