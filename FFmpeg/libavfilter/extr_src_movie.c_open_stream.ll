; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_src_movie.c_open_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_src_movie.c_open_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to find any codec\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to open codec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @open_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_stream(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @avcodec_find_decoder(i32 %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @AV_LOG_ERROR, align 4
  %21 = call i32 @av_log(i32* %19, i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %73

24:                                               ; preds = %2
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.TYPE_10__* @avcodec_alloc_context3(i32* %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %73

36:                                               ; preds = %24
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i32 @avcodec_parameters_to_context(%struct.TYPE_10__* %39, %struct.TYPE_11__* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %73

50:                                               ; preds = %36
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @ff_filter_get_nb_threads(i32* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @avcodec_open2(%struct.TYPE_10__* %63, i32* %64, i32* null)
  store i32 %65, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = call i32 @av_log(i32* %68, i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %67, %48, %33, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @avcodec_find_decoder(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_10__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @avcodec_parameters_to_context(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ff_filter_get_nb_threads(i32*) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_10__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
