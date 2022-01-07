; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_parser.c_av_parser_change.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_parser.c_av_parser_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32*, i32)* }
%struct.TYPE_9__ = type { i32, i32, i32, i32* }

@AV_CODEC_FLAG_GLOBAL_HEADER = common dso_local global i32 0, align 4
@AV_CODEC_FLAG2_LOCAL_HEADER = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_parser_change(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32** %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %59

20:                                               ; preds = %7
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_9__*, i32*, i32)*, i32 (%struct.TYPE_9__*, i32*, i32)** %24, align 8
  %26 = icmp ne i32 (%struct.TYPE_9__*, i32*, i32)* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @AV_CODEC_FLAG_GLOBAL_HEADER, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @AV_CODEC_FLAG2_LOCAL_HEADER, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34, %27
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_9__*, i32*, i32)*, i32 (%struct.TYPE_9__*, i32*, i32)** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 %46(%struct.TYPE_9__* %47, i32* %48, i32 %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %13, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %41, %34
  br label %59

59:                                               ; preds = %58, %20, %7
  %60 = load i32*, i32** %13, align 8
  %61 = load i32**, i32*** %11, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %120

68:                                               ; preds = %59
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %119

71:                                               ; preds = %68
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AV_CODEC_FLAG2_LOCAL_HEADER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %71
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %79, %82
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32*, i32** %12, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i32* @av_malloc(i32 %88)
  %90 = load i32**, i32*** %11, align 8
  store i32* %89, i32** %90, align 8
  %91 = load i32**, i32*** %11, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %78
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = call i32 @AVERROR(i32 %95)
  store i32 %96, i32* %8, align 4
  br label %121

97:                                               ; preds = %78
  %98 = load i32**, i32*** %11, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @memcpy(i32* %99, i32* %102, i32 %105)
  %107 = load i32**, i32*** %11, align 8
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @AV_INPUT_BUFFER_PADDING_SIZE, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @memcpy(i32* %113, i32* %114, i32 %117)
  store i32 1, i32* %8, align 4
  br label %121

119:                                              ; preds = %71, %68
  br label %120

120:                                              ; preds = %119, %59
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %97, %94
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
