; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_lrcenc.c_lrc_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_lrcenc.c_lrc_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32*, i32 }

@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"LRC supports only a single subtitle stream.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_CODEC_ID_SUBRIP = common dso_local global i64 0, align 8
@AV_CODEC_ID_TEXT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported subtitle codec: %s\0A\00", align 1
@ff_lrc_metadata_conv = common dso_local global i32 0, align 4
@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"ve\00", align 1
@LIBAVFORMAT_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"[%s:%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @lrc_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lrc_write_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %13, i64 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %10, %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %23, i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %147

28:                                               ; preds = %10
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %31, i64 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AV_CODEC_ID_SUBRIP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %28
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %43, i64 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AV_CODEC_ID_TEXT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %40
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %57, i64 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @avcodec_get_name(i64 %63)
  %65 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %53, i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = call i32 @AVERROR(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %147

68:                                               ; preds = %40, %28
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %71, i64 0
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %73, i32 64, i32 1, i32 100)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = call i32 @ff_standardize_creation_time(%struct.TYPE_12__* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = load i32, i32* @ff_lrc_metadata_conv, align 4
  %79 = call i32 @ff_metadata_conv_ctx(%struct.TYPE_12__* %77, i32 %78, i32* null)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %68
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load i32, i32* @LIBAVFORMAT_VERSION, align 4
  %90 = call i32* @AV_STRINGIFY(i32 %89)
  %91 = call i32 @av_dict_set(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %90, i32 0)
  br label %96

92:                                               ; preds = %68
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = call i32 @av_dict_set(i32* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0)
  br label %96

96:                                               ; preds = %92, %86
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %97

97:                                               ; preds = %131, %112, %96
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %103 = call %struct.TYPE_13__* @av_dict_get(i32 %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_13__* %101, i32 %102)
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %4, align 8
  %104 = icmp ne %struct.TYPE_13__* %103, null
  br i1 %104, label %105, label %142

105:                                              ; preds = %97
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %97

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %120, %113
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i8* @strchr(i32* %117, i8 signext 10)
  store i8* %118, i8** %5, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i8*, i8** %5, align 8
  store i8 32, i8* %121, align 1
  br label %114

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %129, %122
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = call i8* @strchr(i32* %126, i8 signext 13)
  store i8* %127, i8** %5, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = load i8*, i8** %5, align 8
  store i8 32, i8* %130, align 1
  br label %123

131:                                              ; preds = %123
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 (i32, i8*, ...) @avio_printf(i32 %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32* %140)
  br label %97

142:                                              ; preds = %97
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, ...) @avio_printf(i32 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %142, %52, %22
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avcodec_get_name(i64) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @ff_standardize_creation_time(%struct.TYPE_12__*) #1

declare dso_local i32 @ff_metadata_conv_ctx(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i32*, i32) #1

declare dso_local i32* @AV_STRINGIFY(i32) #1

declare dso_local %struct.TYPE_13__* @av_dict_get(i32, i8*, %struct.TYPE_13__*, i32) #1

declare dso_local i8* @strchr(i32*, i8 signext) #1

declare dso_local i32 @avio_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
