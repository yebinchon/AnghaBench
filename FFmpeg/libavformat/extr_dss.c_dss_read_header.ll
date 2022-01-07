; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dss.c_dss_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dss.c_dss_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i8* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DSS_BLOCK_SIZE = common dso_local global i32 0, align 4
@DSS_HEAD_OFFSET_AUTHOR = common dso_local global i32 0, align 4
@DSS_AUTHOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"author\00", align 1
@DSS_HEAD_OFFSET_END_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@DSS_HEAD_OFFSET_COMMENT = common dso_local global i32 0, align 4
@DSS_COMMENT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@DSS_HEAD_OFFSET_ACODEC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@DSS_ACODEC_DSS_SP = common dso_local global i8* null, align 8
@AV_CODEC_ID_DSS_SP = common dso_local global i32 0, align 4
@DSS_ACODEC_G723_1 = common dso_local global i8* null, align 8
@AV_CODEC_ID_G723_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Support for codec %x in DSS\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CH_LAYOUT_MONO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DSS_FRAME_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @dss_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_read_header(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %4, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__* %15, i32* null)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %159

22:                                               ; preds = %1
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @avio_r8(i32* %23)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @DSS_BLOCK_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = load i32, i32* @DSS_HEAD_OFFSET_AUTHOR, align 4
  %33 = load i32, i32* @DSS_AUTHOR_SIZE, align 4
  %34 = call i32 @dss_read_metadata_string(%struct.TYPE_15__* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %159

39:                                               ; preds = %22
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = load i32, i32* @DSS_HEAD_OFFSET_END_TIME, align 4
  %42 = call i32 @dss_read_metadata_date(%struct.TYPE_15__* %40, i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %159

47:                                               ; preds = %39
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = load i32, i32* @DSS_HEAD_OFFSET_COMMENT, align 4
  %50 = load i32, i32* @DSS_COMMENT_SIZE, align 4
  %51 = call i32 @dss_read_metadata_string(%struct.TYPE_15__* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %159

56:                                               ; preds = %47
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @DSS_HEAD_OFFSET_ACODEC, align 4
  %59 = load i32, i32* @SEEK_SET, align 4
  %60 = call i32 @avio_seek(i32* %57, i32 %58, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i8* @avio_r8(i32* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** @DSS_ACODEC_DSS_SP, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %56
  %71 = load i32, i32* @AV_CODEC_ID_DSS_SP, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 4
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i32 11025, i32* %79, align 4
  br label %104

80:                                               ; preds = %56
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 4
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** @DSS_ACODEC_G723_1, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load i32, i32* @AV_CODEC_ID_G723_1, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  store i32 %87, i32* %91, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32 8000, i32* %95, align 4
  br label %103

96:                                               ; preds = %80
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @avpriv_request_sample(%struct.TYPE_15__* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %102, i32* %2, align 4
  br label %159

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %70
  %105 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* @AV_CH_LAYOUT_MONO, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  store i32 %110, i32* %114, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %119, i32 64, i32 1, i32 %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SEEK_SET, align 4
  %133 = call i32 @avio_seek(i32* %128, i32 %131, i32 %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %104
  %139 = load i32, i32* @EIO, align 4
  %140 = call i32 @AVERROR(i32 %139)
  store i32 %140, i32* %2, align 4
  br label %159

141:                                              ; preds = %104
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  store i64 0, i64* %143, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  %146 = load i64, i64* @DSS_FRAME_SIZE, align 8
  %147 = add nsw i64 %146, 1
  %148 = call i32 @av_malloc(i64 %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %141
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = call i32 @AVERROR(i32 %156)
  store i32 %157, i32* %2, align 4
  br label %159

158:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %155, %138, %96, %54, %45, %37, %19
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @avio_r8(i32*) #1

declare dso_local i32 @dss_read_metadata_string(%struct.TYPE_15__*, i32, i32, i8*) #1

declare dso_local i32 @dss_read_metadata_date(%struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @av_malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
