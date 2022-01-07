; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aacdec.c_adts_aac_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aacdec.c_adts_aac_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_18__*, i32, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AVSTREAM_PARSE_FULL_RAW = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @adts_aac_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adts_aac_read_header(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = call %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__* %7, i32* null)
  store %struct.TYPE_16__* %8, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = icmp ne %struct.TYPE_16__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = call i32 @AVERROR(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32 %15, i32* %19, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @AVSTREAM_PARSE_FULL_RAW, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = call i32 @ff_id3v1_read(%struct.TYPE_17__* %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %14
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %47 = call i32 @av_dict_get(i32 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = call i32 @avio_tell(%struct.TYPE_18__* %52)
  store i32 %53, i32* %6, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = call i32 @ff_ape_parse_tag(%struct.TYPE_17__* %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @SEEK_SET, align 4
  %61 = call i32 @avio_seek(%struct.TYPE_18__* %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %49, %42, %14
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = call i32 @adts_aac_resync(%struct.TYPE_17__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %72

69:                                               ; preds = %62
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = call i32 @avpriv_set_pts_info(%struct.TYPE_16__* %70, i32 64, i32 1, i32 28224000)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %67, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_16__* @avformat_new_stream(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_id3v1_read(%struct.TYPE_17__*) #1

declare dso_local i32 @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_18__*) #1

declare dso_local i32 @ff_ape_parse_tag(%struct.TYPE_17__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @adts_aac_resync(%struct.TYPE_17__*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_16__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
