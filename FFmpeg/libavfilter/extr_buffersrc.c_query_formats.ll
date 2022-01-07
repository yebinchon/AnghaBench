; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_buffersrc.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_buffersrc.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__**, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %14, i64 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %85 [
    i32 128, label %19
    i32 129, label %33
  ]

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ff_add_format(i32** %6, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @ff_set_common_formats(%struct.TYPE_10__* %26, i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %19
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %2, align 4
  br label %89

32:                                               ; preds = %25
  br label %88

33:                                               ; preds = %1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ff_add_format(i32** %6, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @ff_set_common_formats(%struct.TYPE_10__* %40, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ff_add_format(i32** %7, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @ff_set_common_samplerates(%struct.TYPE_10__* %51, i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %44, %39, %33
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %89

57:                                               ; preds = %50
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  br label %71

66:                                               ; preds = %57
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @FF_COUNT2LAYOUT(i32 %69)
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i32 [ %65, %62 ], [ %70, %66 ]
  %73 = call i32 @ff_add_channel_layout(i32** %5, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %2, align 4
  br label %89

77:                                               ; preds = %71
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @ff_set_common_channel_layouts(%struct.TYPE_10__* %78, i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %89

84:                                               ; preds = %77
  br label %88

85:                                               ; preds = %1
  %86 = load i32, i32* @EINVAL, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %89

88:                                               ; preds = %84, %32
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %85, %82, %75, %55, %30
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @ff_add_format(i32**, i32) #1

declare dso_local i32 @ff_set_common_formats(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ff_set_common_samplerates(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ff_add_channel_layout(i32**, i32) #1

declare dso_local i32 @FF_COUNT2LAYOUT(i32) #1

declare dso_local i32 @ff_set_common_channel_layouts(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
