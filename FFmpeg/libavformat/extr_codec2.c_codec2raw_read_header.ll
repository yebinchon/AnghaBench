; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_codec2.c_codec2raw_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_codec2.c_codec2raw_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"-mode must be set in order to make sense of raw codec2 files\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVPRIV_CODEC2_EXTRADATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @codec2raw_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec2raw_read_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = load i32, i32* @AV_LOG_ERROR, align 4
  %17 = call i32 @av_log(%struct.TYPE_15__* %15, i32 %16, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %21, i32* null)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %5, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %55

28:                                               ; preds = %20
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = load i32, i32* @AVPRIV_CODEC2_EXTRADATA_SIZE, align 4
  %33 = call i32 @ff_alloc_extradata(%struct.TYPE_16__* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %55

38:                                               ; preds = %28
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @avpriv_codec2_make_extradata(i32 %47, i64 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = call i32 @codec2_read_header_common(%struct.TYPE_15__* %52, %struct.TYPE_14__* %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %38, %36, %25, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @ff_alloc_extradata(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @avpriv_codec2_make_extradata(i32, i64) #1

declare dso_local i32 @codec2_read_header_common(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
