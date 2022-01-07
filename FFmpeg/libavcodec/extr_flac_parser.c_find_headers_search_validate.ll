; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_find_headers_search_validate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_find_headers_search_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, %struct.TYPE_7__* }

@MAX_FRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"couldn't allocate FLACHeaderMarker\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FLAC_MAX_SEQUENTIAL_HEADERS = common dso_local global i32 0, align 4
@FLAC_HEADER_NOT_PENALIZED_YET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @find_headers_search_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_headers_search_validate(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_FRAME_HEADER_SIZE, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = call i32* @flac_fifo_read_wrap(%struct.TYPE_6__* %11, i32 %12, i32 %13, i32* %15, i32* %17)
  store i32* %18, i32** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @frame_header_is_valid(i32 %21, i32* %22, i32* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %84

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store %struct.TYPE_7__** %27, %struct.TYPE_7__*** %9, align 8
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %32, %25
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  store %struct.TYPE_7__** %35, %struct.TYPE_7__*** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %28

38:                                               ; preds = %28
  %39 = call %struct.TYPE_7__* @av_mallocz(i32 32)
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %40, align 8
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 @av_log(i32 %47, i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %86

52:                                               ; preds = %38
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %74, %52
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @FLAC_MAX_SEQUENTIAL_HEADERS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i32, i32* @FLAC_HEADER_NOT_PENALIZED_YET, align 4
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %66, i32* %73, align 4
  br label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %77, %2
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %44
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32* @flac_fifo_read_wrap(%struct.TYPE_6__*, i32, i32, i32*, i32*) #1

declare dso_local i64 @frame_header_is_valid(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @av_mallocz(i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
