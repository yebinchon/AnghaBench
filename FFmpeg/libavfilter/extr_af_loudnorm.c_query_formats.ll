; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_loudnorm.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__**, %struct.TYPE_8__**, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@query_formats.input_srate = internal constant [2 x i32] [i32 192000, i32 -1], align 4
@query_formats.sample_fmts = internal constant [2 x i32] [i32 129, i32 128], align 4
@ENOMEM = common dso_local global i32 0, align 4
@LINEAR_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %15, i64 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %20, i64 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %8, align 8
  %23 = call i32* (...) @ff_all_channel_counts()
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = call i32 @AVERROR(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_9__* %30, i32* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %2, align 4
  br label %85

37:                                               ; preds = %29
  %38 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.sample_fmts, i64 0, i64 0))
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 @AVERROR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %85

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ff_set_common_formats(%struct.TYPE_9__* %45, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  br label %85

52:                                               ; preds = %44
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LINEAR_MODE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = call i32* @ff_make_format_list(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @query_formats.input_srate, i64 0, i64 0))
  store i32* %59, i32** %5, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %85

65:                                               ; preds = %58
  %66 = load i32*, i32** %5, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = call i32 @ff_formats_ref(i32* %66, i32* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %85

74:                                               ; preds = %65
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = call i32 @ff_formats_ref(i32* %75, i32* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %52
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %81, %72, %62, %50, %41, %35, %26
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32* @ff_all_channel_counts(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_9__*, i32*) #1

declare dso_local i32* @ff_make_format_list(i32*) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ff_formats_ref(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
