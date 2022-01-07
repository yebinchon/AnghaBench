; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_codec2.c_codec2_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_codec2.c_codec2_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVPRIV_CODEC2_MAGIC = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a .c2 file\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVPRIV_CODEC2_EXTRADATA_SIZE = common dso_local global i32 0, align 4
@EXPECTED_CODEC2_MAJOR_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Major version %i\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AVPRIV_CODEC2_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @codec2_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec2_read_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %7, i32* null)
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %4, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = icmp ne %struct.TYPE_13__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = call i32 @AVERROR(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %77

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @avio_rb24(i32 %17)
  %19 = load i64, i64* @AVPRIV_CODEC2_MAGIC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = load i32, i32* @AV_LOG_ERROR, align 4
  %24 = call i32 @av_log(%struct.TYPE_14__* %22, i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %2, align 4
  br label %77

26:                                               ; preds = %14
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = load i32, i32* @AVPRIV_CODEC2_EXTRADATA_SIZE, align 4
  %31 = call i32 @ff_alloc_extradata(%struct.TYPE_15__* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %77

36:                                               ; preds = %26
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AVPRIV_CODEC2_EXTRADATA_SIZE, align 4
  %46 = call i32 @ffio_read_size(i32 %39, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %77

51:                                               ; preds = %36
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @avpriv_codec2_version_from_extradata(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = ashr i32 %58, 8
  %60 = load i32, i32* @EXPECTED_CODEC2_MAJOR_VERSION, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 8
  %66 = call i32 @avpriv_report_missing_feature(%struct.TYPE_14__* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %67, i32* %2, align 4
  br label %77

68:                                               ; preds = %51
  %69 = load i32, i32* @AVPRIV_CODEC2_HEADER_SIZE, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = call i32 @codec2_read_header_common(%struct.TYPE_14__* %74, %struct.TYPE_13__* %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %68, %62, %49, %34, %21, %11
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @avio_rb24(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @ff_alloc_extradata(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ffio_read_size(i32, i32, i32) #1

declare dso_local i32 @avpriv_codec2_version_from_extradata(i32) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @codec2_read_header_common(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
