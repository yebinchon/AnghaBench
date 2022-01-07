; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-flac-test.c_init_encoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-flac-test.c_init_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@NAME_BUFF_SIZE = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"channel layout: %s, sample rate: %i\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Can't allocate encoder context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Can't open encoder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__**, i32, i32)* @init_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_encoder(i32* %0, %struct.TYPE_6__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @NAME_BUFF_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @NAME_BUFF_SIZE, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @av_get_channel_layout_string(i8* %18, i32 %19, i32 0, i32 %20)
  %22 = load i32, i32* @AV_LOG_INFO, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* null, i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.TYPE_6__* @avcodec_alloc_context3(i32* %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %10, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @AV_LOG_ERROR, align 4
  %31 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* null, i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @AVERROR(i32 %32)
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %57

34:                                               ; preds = %4
  %35 = load i32, i32* @AV_SAMPLE_FMT_S16, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @avcodec_open2(%struct.TYPE_6__* %44, i32* %45, i32* null)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %34
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = load i32, i32* @AV_LOG_ERROR, align 4
  %52 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %50, i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %57

54:                                               ; preds = %34
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %56, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %49, %29
  %58 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_get_channel_layout_string(i8*, i32, i32, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #2

declare dso_local %struct.TYPE_6__* @avcodec_alloc_context3(i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avcodec_open2(%struct.TYPE_6__*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
