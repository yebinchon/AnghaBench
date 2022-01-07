; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-flac-test.c_init_decoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/api/extr_api-flac-test.c_init_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't allocate decoder context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Can't open decoder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__**, i8*)* @init_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_decoder(i32* %0, %struct.TYPE_6__** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.TYPE_6__* @avcodec_alloc_context3(i32* %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @AV_LOG_ERROR, align 4
  %16 = call i32 @av_log(%struct.TYPE_6__* null, i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = call i32 @AVERROR(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %42

19:                                               ; preds = %3
  %20 = load i32, i32* @AV_SAMPLE_FMT_S16, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @avcodec_open2(%struct.TYPE_6__* %29, i32* %30, i32* null)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 @av_log(%struct.TYPE_6__* %35, i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %19
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %34, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_6__* @avcodec_alloc_context3(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_open2(%struct.TYPE_6__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
