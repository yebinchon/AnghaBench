; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_encode.c_vaapi_encode_make_param_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vaapi_encode.c_vaapi_encode_make_param_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@VA_STATUS_SUCCESS = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to create parameter buffer (type %d): %d (%s).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Param buffer (%d) is %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_9__*, i32, i8*, i64)* @vaapi_encode_make_param_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vaapi_encode_make_param_buffer(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %12, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32* @av_realloc_array(i32* %21, i32 4, i64 %25)
  store i32* %26, i32** %14, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 @AVERROR(i32 %30)
  store i32 %31, i32* %6, align 4
  br label %77

32:                                               ; preds = %5
  %33 = load i32*, i32** %14, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i64, i64* %11, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i64 @vaCreateBuffer(i32 %40, i32 %43, i32 %44, i64 %45, i32 1, i8* %46, i32* %15)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @VA_STATUS_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %32
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @vaErrorStr(i64 %56)
  %58 = call i32 (%struct.TYPE_11__*, i32, i8*, i32, i64, ...) @av_log(%struct.TYPE_11__* %52, i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %55, i32 %57)
  %59 = load i32, i32* @EIO, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %6, align 4
  br label %77

61:                                               ; preds = %32
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = load i32, i32* @AV_LOG_DEBUG, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = call i32 (%struct.TYPE_11__*, i32, i8*, i32, i64, ...) @av_log(%struct.TYPE_11__* %71, i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %73, i64 %75)
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %61, %51, %29
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32* @av_realloc_array(i32*, i32, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @vaCreateBuffer(i32, i32, i32, i64, i32, i8*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32, i64, ...) #1

declare dso_local i32 @vaErrorStr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
