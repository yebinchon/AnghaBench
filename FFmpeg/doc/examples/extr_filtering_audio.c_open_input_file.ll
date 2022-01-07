; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_audio.c_open_input_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_filtering_audio.c_open_input_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@fmt_ctx = common dso_local global %struct.TYPE_7__* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot open input file\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot find stream information\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Cannot find an audio stream in the input file\0A\00", align 1
@audio_stream_index = common dso_local global i64 0, align 8
@dec_ctx = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot open audio decoder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @open_input_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_input_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @avformat_open_input(%struct.TYPE_7__** @fmt_ctx, i8* %6, i32* null, i32* null)
  store i32 %7, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @AV_LOG_ERROR, align 4
  %11 = call i32 @av_log(i32* null, i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %61

13:                                               ; preds = %1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fmt_ctx, align 8
  %15 = call i32 @avformat_find_stream_info(%struct.TYPE_7__* %14, i32* null)
  store i32 %15, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @AV_LOG_ERROR, align 4
  %19 = call i32 @av_log(i32* null, i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %13
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fmt_ctx, align 8
  %23 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %24 = call i32 @av_find_best_stream(%struct.TYPE_7__* %22, i32 %23, i32 -1, i32 -1, i32** %5, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = call i32 @av_log(i32* null, i32 %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %61

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* @audio_stream_index, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @avcodec_alloc_context3(i32* %34)
  store i32 %35, i32* @dec_ctx, align 4
  %36 = load i32, i32* @dec_ctx, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %61

41:                                               ; preds = %31
  %42 = load i32, i32* @dec_ctx, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fmt_ctx, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %44, align 8
  %46 = load i64, i64* @audio_stream_index, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %45, i64 %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @avcodec_parameters_to_context(i32 %42, i32 %50)
  %52 = load i32, i32* @dec_ctx, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @avcodec_open2(i32 %52, i32* %53, i32* null)
  store i32 %54, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = call i32 @av_log(i32* null, i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %61

60:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %56, %38, %27, %17, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @avformat_open_input(%struct.TYPE_7__**, i8*, i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @av_find_best_stream(%struct.TYPE_7__*, i32, i32, i32, i32**, i32) #1

declare dso_local i32 @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_parameters_to_context(i32, i32) #1

declare dso_local i32 @avcodec_open2(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
