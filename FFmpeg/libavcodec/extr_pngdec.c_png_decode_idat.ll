; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_png_decode_idat.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_png_decode_idat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_8__, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i64, i8*, i64, i32 }
%struct.TYPE_9__ = type { i64 }

@Z_PARTIAL_FLUSH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"inflate returned error %d\0A\00", align 1
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@PNG_ALLIMAGE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%d undecompressed bytes left in buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @png_decode_idat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_decode_idat(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %10 = call i32 @bytestream2_get_bytes_left(%struct.TYPE_9__* %9)
  %11 = call i64 @FFMIN(i32 %7, i32 %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @bytestream2_skip(%struct.TYPE_9__* %24, i32 %25)
  br label %27

27:                                               ; preds = %103, %2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %104

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* @Z_PARTIAL_FLUSH, align 4
  %37 = call i32 @inflate(%struct.TYPE_8__* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @Z_OK, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @Z_STREAM_END, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @av_log(i32 %48, i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %52, i32* %3, align 4
  br label %105

53:                                               ; preds = %41, %33
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PNG_ALLIMAGE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = call i32 @png_handle_row(%struct.TYPE_7__* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 8
  br label %82

82:                                               ; preds = %69, %53
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @Z_STREAM_END, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @AV_LOG_WARNING, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @av_log(i32 %95, i32 %96, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  store i32 0, i32* %3, align 4
  br label %105

103:                                              ; preds = %86, %82
  br label %27

104:                                              ; preds = %27
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %92, %45
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(%struct.TYPE_9__*) #1

declare dso_local i32 @bytestream2_skip(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @inflate(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @png_handle_row(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
