; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@query_formats.chlayouts = internal constant [2 x i32] [i32 130, i32 -1], align 4
@query_formats.sample_fmts = internal constant [2 x i32] [i32 129, i32 128], align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 -1, i32* %16, align 4
  %17 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.sample_fmts, i64 0, i64 0))
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ff_set_common_formats(%struct.TYPE_8__* %24, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %23
  %32 = call i32* @avfilter_make_format64_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.chlayouts, i64 0, i64 0))
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %58

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_8__* %39, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %58

46:                                               ; preds = %38
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %48 = call i32* @ff_make_format_list(i32* %47)
  store i32* %48, i32** %6, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %46
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @ff_set_common_samplerates(%struct.TYPE_8__* %55, i32* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %51, %44, %35, %29, %20
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @avfilter_make_format64_list(i32*) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
