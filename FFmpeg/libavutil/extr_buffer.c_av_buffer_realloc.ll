; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_buffer.c_av_buffer_realloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_buffer.c_av_buffer_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@av_buffer_default_free = common dso_local global i32 0, align 4
@BUFFER_FLAG_REALLOCATABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_buffer_realloc(%struct.TYPE_9__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @av_realloc(i32* null, i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %125

22:                                               ; preds = %14
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @av_buffer_default_free, align 4
  %26 = call %struct.TYPE_9__* @av_buffer_create(i32* %23, i32 %24, i32 %25, i32* null, i32 0)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %6, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = call i32 @av_freep(i32** %8)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %125

33:                                               ; preds = %22
  %34 = load i32, i32* @BUFFER_FLAG_REALLOCATABLE, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %34
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %42, align 8
  store i32 0, i32* %3, align 4
  br label %125

43:                                               ; preds = %2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %125

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BUFFER_FLAG_REALLOCATABLE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = call i32 @av_buffer_is_writable(%struct.TYPE_9__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %67, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %64, %60, %51
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @av_buffer_realloc(%struct.TYPE_9__** %9, i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = icmp ne %struct.TYPE_9__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = call i32 @AVERROR(i32 %80)
  store i32 %81, i32* %3, align 4
  br label %125

82:                                               ; preds = %74
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @FFMIN(i32 %89, i32 %92)
  %94 = call i32 @memcpy(i32* %85, i32* %88, i32 %93)
  %95 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %4, align 8
  %96 = call i32 @buffer_replace(%struct.TYPE_9__** %95, %struct.TYPE_9__** %9)
  store i32 0, i32* %3, align 4
  br label %125

97:                                               ; preds = %64
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32* @av_realloc(i32* %102, i32 %103)
  store i32* %104, i32** %7, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %97
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = call i32 @AVERROR(i32 %108)
  store i32 %109, i32* %3, align 4
  br label %125

110:                                              ; preds = %97
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  store i32* %111, i32** %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store i32* %111, i32** %117, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  store i32 %118, i32* %124, align 4
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %110, %107, %82, %79, %49, %33, %29, %19
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32* @av_realloc(i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_9__* @av_buffer_create(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @av_buffer_is_writable(%struct.TYPE_9__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @buffer_replace(%struct.TYPE_9__**, %struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
