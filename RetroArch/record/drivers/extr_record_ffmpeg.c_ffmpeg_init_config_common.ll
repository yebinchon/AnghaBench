; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_config_common.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_config_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_config_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@PIX_FMT_YUV420P = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"libx264\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"aac\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ultrafast\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"35\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"audio_global_quality\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"75\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"superfast\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@PIX_FMT_BGR24 = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"libx264rgb\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"flac\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"libvpx\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"libopus\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"deadline\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"realtime\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"14\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@PIX_FMT_RGB8 = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@PIX_FMT_RGB24 = common dso_local global i8* null, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"apng\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"pred\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"avg\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"zerolatency\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"matroska\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"webm\00", align 1
@STREAMING_MODE_YOUTUBE = common dso_local global i64 0, align 8
@STREAMING_MODE_TWITCH = common dso_local global i64 0, align 8
@.str.36 = private unnamed_addr constant [4 x i8] c"flv\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"mpegts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_config_param*, i32)* @ffmpeg_init_config_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_init_config_common(%struct.ff_config_param* %0, i32 %1) #0 {
  %3 = alloca %struct.ff_config_param*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.ff_config_param* %0, %struct.ff_config_param** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %308 [
    i32 135, label %8
    i32 130, label %8
    i32 134, label %44
    i32 129, label %44
    i32 137, label %80
    i32 131, label %80
    i32 136, label %116
    i32 133, label %146
    i32 132, label %179
    i32 138, label %212
    i32 139, label %242
    i32 128, label %272
  ]

8:                                                ; preds = %2, %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %14 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %13, i32 0, i32 10
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %16 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %18 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %20 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %19, i32 0, i32 2
  store i32 75, i32* %20, align 8
  %21 = load i8*, i8** @PIX_FMT_YUV420P, align 8
  %22 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %23 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %22, i32 0, i32 9
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %25 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @strlcpy(i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %28 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %29 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strlcpy(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %32 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %33 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %32, i32 0, i32 6
  %34 = call i32 @av_dict_set(i32* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %35 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %36 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %35, i32 0, i32 6
  %37 = call i32 @av_dict_set(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %38 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %39 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %38, i32 0, i32 6
  %40 = call i32 @av_dict_set(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %41 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %42 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %41, i32 0, i32 5
  %43 = call i32 @av_dict_set(i32* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 0)
  br label %309

44:                                               ; preds = %2, %2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %50 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %52 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %54 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %56 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %55, i32 0, i32 2
  store i32 75, i32* %56, align 8
  %57 = load i8*, i8** @PIX_FMT_YUV420P, align 8
  %58 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %59 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %58, i32 0, i32 9
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %61 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @strlcpy(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %64 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %65 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strlcpy(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %68 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %69 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %68, i32 0, i32 6
  %70 = call i32 @av_dict_set(i32* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %71 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %72 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %71, i32 0, i32 6
  %73 = call i32 @av_dict_set(i32* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %74 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %75 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %74, i32 0, i32 6
  %76 = call i32 @av_dict_set(i32* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 0)
  %77 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %78 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %77, i32 0, i32 5
  %79 = call i32 @av_dict_set(i32* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 0)
  br label %309

80:                                               ; preds = %2, %2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %86 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %85, i32 0, i32 10
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %88 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %90 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %89, i32 0, i32 1
  store i32 1, i32* %90, align 4
  %91 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %92 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %91, i32 0, i32 2
  store i32 100, i32* %92, align 8
  %93 = load i8*, i8** @PIX_FMT_YUV420P, align 8
  %94 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %95 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %94, i32 0, i32 9
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %97 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @strlcpy(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %100 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %101 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @strlcpy(i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %104 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %105 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %104, i32 0, i32 6
  %106 = call i32 @av_dict_set(i32* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %107 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %108 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %107, i32 0, i32 6
  %109 = call i32 @av_dict_set(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %110 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %111 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %110, i32 0, i32 6
  %112 = call i32 @av_dict_set(i32* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %113 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %114 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %113, i32 0, i32 5
  %115 = call i32 @av_dict_set(i32* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 0)
  br label %309

116:                                              ; preds = %2
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %122 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %121, i32 0, i32 10
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %124 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %126 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %128 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %127, i32 0, i32 2
  store i32 80, i32* %128, align 8
  %129 = load i8*, i8** @PIX_FMT_BGR24, align 8
  %130 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %131 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %130, i32 0, i32 9
  store i8* %129, i8** %131, align 8
  %132 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %133 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @strlcpy(i32 %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 4)
  %136 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %137 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @strlcpy(i32 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 4)
  %140 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %141 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %140, i32 0, i32 6
  %142 = call i32 @av_dict_set(i32* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 0)
  %143 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %144 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %143, i32 0, i32 5
  %145 = call i32 @av_dict_set(i32* %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 0)
  br label %309

146:                                              ; preds = %2
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %152 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %154 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %156 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  %157 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %158 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %157, i32 0, i32 2
  store i32 50, i32* %158, align 8
  %159 = load i8*, i8** @PIX_FMT_YUV420P, align 8
  %160 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %161 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %160, i32 0, i32 9
  store i8* %159, i8** %161, align 8
  %162 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %163 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @strlcpy(i32 %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 4)
  %166 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %167 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @strlcpy(i32 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 4)
  %170 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %171 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %170, i32 0, i32 6
  %172 = call i32 @av_dict_set(i32* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 0)
  %173 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %174 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %173, i32 0, i32 6
  %175 = call i32 @av_dict_set(i32* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %176 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %177 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %176, i32 0, i32 5
  %178 = call i32 @av_dict_set(i32* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 0)
  br label %309

179:                                              ; preds = %2
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %185 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %184, i32 0, i32 10
  store i32 %183, i32* %185, align 8
  %186 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %187 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %189 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %188, i32 0, i32 1
  store i32 1, i32* %189, align 4
  %190 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %191 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %190, i32 0, i32 2
  store i32 75, i32* %191, align 8
  %192 = load i8*, i8** @PIX_FMT_YUV420P, align 8
  %193 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %194 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %193, i32 0, i32 9
  store i8* %192, i8** %194, align 8
  %195 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %196 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @strlcpy(i32 %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 4)
  %199 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %200 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @strlcpy(i32 %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 4)
  %203 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %204 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %203, i32 0, i32 6
  %205 = call i32 @av_dict_set(i32* %204, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 0)
  %206 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %207 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %206, i32 0, i32 6
  %208 = call i32 @av_dict_set(i32* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 0)
  %209 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %210 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %209, i32 0, i32 5
  %211 = call i32 @av_dict_set(i32* %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 0)
  br label %309

212:                                              ; preds = %2
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %218 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %217, i32 0, i32 10
  store i32 %216, i32* %218, align 8
  %219 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %220 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %219, i32 0, i32 0
  store i32 4, i32* %220, align 8
  %221 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %222 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %221, i32 0, i32 1
  store i32 0, i32* %222, align 4
  %223 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %224 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %223, i32 0, i32 2
  store i32 0, i32* %224, align 8
  %225 = load i8*, i8** @PIX_FMT_RGB8, align 8
  %226 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %227 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %226, i32 0, i32 9
  store i8* %225, i8** %227, align 8
  %228 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %229 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @strlcpy(i32 %230, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 4)
  %232 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %233 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @strlcpy(i32 %234, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0), i32 4)
  %236 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %237 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %236, i32 0, i32 6
  %238 = call i32 @av_dict_set(i32* %237, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 0)
  %239 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %240 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %239, i32 0, i32 5
  %241 = call i32 @av_dict_set(i32* %240, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 0)
  br label %309

242:                                              ; preds = %2
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %248 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %247, i32 0, i32 10
  store i32 %246, i32* %248, align 8
  %249 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %250 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  %251 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %252 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %251, i32 0, i32 1
  store i32 0, i32* %252, align 4
  %253 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %254 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %253, i32 0, i32 2
  store i32 0, i32* %254, align 8
  %255 = load i8*, i8** @PIX_FMT_RGB24, align 8
  %256 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %257 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %256, i32 0, i32 9
  store i8* %255, i8** %257, align 8
  %258 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %259 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @strlcpy(i32 %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 4)
  %262 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %263 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %262, i32 0, i32 7
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @strlcpy(i32 %264, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i64 0, i64 0), i32 4)
  %266 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %267 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %266, i32 0, i32 6
  %268 = call i32 @av_dict_set(i32* %267, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i32 0)
  %269 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %270 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %269, i32 0, i32 5
  %271 = call i32 @av_dict_set(i32* %270, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i32 0)
  br label %309

272:                                              ; preds = %2
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %278 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %277, i32 0, i32 10
  store i32 %276, i32* %278, align 8
  %279 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %280 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %279, i32 0, i32 0
  store i32 1, i32* %280, align 8
  %281 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %282 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %281, i32 0, i32 1
  store i32 1, i32* %282, align 4
  %283 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %284 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %283, i32 0, i32 2
  store i32 50, i32* %284, align 8
  %285 = load i8*, i8** @PIX_FMT_YUV420P, align 8
  %286 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %287 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %286, i32 0, i32 9
  store i8* %285, i8** %287, align 8
  %288 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %289 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %288, i32 0, i32 8
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @strlcpy(i32 %290, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 4)
  %292 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %293 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %292, i32 0, i32 7
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @strlcpy(i32 %294, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %296 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %297 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %296, i32 0, i32 6
  %298 = call i32 @av_dict_set(i32* %297, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %299 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %300 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %299, i32 0, i32 6
  %301 = call i32 @av_dict_set(i32* %300, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 0)
  %302 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %303 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %302, i32 0, i32 6
  %304 = call i32 @av_dict_set(i32* %303, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i32 0)
  %305 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %306 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %305, i32 0, i32 5
  %307 = call i32 @av_dict_set(i32* %306, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 0)
  br label %309

308:                                              ; preds = %2
  br label %309

309:                                              ; preds = %308, %272, %242, %212, %179, %146, %116, %80, %44, %8
  %310 = load i32, i32* %4, align 4
  %311 = icmp ule i32 %310, 136
  br i1 %311, label %312, label %343

312:                                              ; preds = %309
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %335, label %318

318:                                              ; preds = %312
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp sgt i64 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %318
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  br label %330

329:                                              ; preds = %318
  br label %330

330:                                              ; preds = %329, %324
  %331 = phi i64 [ %328, %324 ], [ 1, %329 ]
  %332 = trunc i64 %331 to i32
  %333 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %334 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %333, i32 0, i32 3
  store i32 %332, i32* %334, align 4
  br label %338

335:                                              ; preds = %312
  %336 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %337 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %336, i32 0, i32 3
  store i32 1, i32* %337, align 4
  br label %338

338:                                              ; preds = %335, %330
  %339 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %340 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = call i32 @strlcpy(i32 %341, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i32 4)
  br label %496

343:                                              ; preds = %309
  %344 = load i32, i32* %4, align 4
  %345 = icmp uge i32 %344, 133
  br i1 %345, label %346, label %380

346:                                              ; preds = %343
  %347 = load i32, i32* %4, align 4
  %348 = icmp ult i32 %347, 138
  br i1 %348, label %349, label %380

349:                                              ; preds = %346
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %372, label %355

355:                                              ; preds = %349
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = icmp sgt i64 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %355
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  br label %367

366:                                              ; preds = %355
  br label %367

367:                                              ; preds = %366, %361
  %368 = phi i64 [ %365, %361 ], [ 1, %366 ]
  %369 = trunc i64 %368 to i32
  %370 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %371 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %370, i32 0, i32 3
  store i32 %369, i32* %371, align 4
  br label %375

372:                                              ; preds = %349
  %373 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %374 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %373, i32 0, i32 3
  store i32 1, i32* %374, align 4
  br label %375

375:                                              ; preds = %372, %367
  %376 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %377 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @strlcpy(i32 %378, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i32 4)
  br label %495

380:                                              ; preds = %346, %343
  %381 = load i32, i32* %4, align 4
  %382 = icmp uge i32 %381, 138
  br i1 %382, label %383, label %417

383:                                              ; preds = %380
  %384 = load i32, i32* %4, align 4
  %385 = icmp ult i32 %384, 139
  br i1 %385, label %386, label %417

386:                                              ; preds = %383
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %409, label %392

392:                                              ; preds = %386
  %393 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp sgt i64 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %392
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  br label %404

403:                                              ; preds = %392
  br label %404

404:                                              ; preds = %403, %398
  %405 = phi i64 [ %402, %398 ], [ 1, %403 ]
  %406 = trunc i64 %405 to i32
  %407 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %408 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %407, i32 0, i32 3
  store i32 %406, i32* %408, align 4
  br label %412

409:                                              ; preds = %386
  %410 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %411 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %410, i32 0, i32 3
  store i32 1, i32* %411, align 4
  br label %412

412:                                              ; preds = %409, %404
  %413 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %414 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @strlcpy(i32 %415, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i32 4)
  br label %494

417:                                              ; preds = %383, %380
  %418 = load i32, i32* %4, align 4
  %419 = icmp ult i32 %418, 130
  br i1 %419, label %420, label %427

420:                                              ; preds = %417
  %421 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %422 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %421, i32 0, i32 3
  store i32 1, i32* %422, align 4
  %423 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %424 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 8
  %426 = call i32 @strlcpy(i32 %425, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 4)
  br label %493

427:                                              ; preds = %417
  %428 = load i32, i32* %4, align 4
  %429 = icmp ule i32 %428, 131
  br i1 %429, label %430, label %481

430:                                              ; preds = %427
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %453, label %436

436:                                              ; preds = %430
  %437 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = icmp sgt i64 %440, 0
  br i1 %441, label %442, label %447

442:                                              ; preds = %436
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 1
  %446 = load i64, i64* %445, align 8
  br label %448

447:                                              ; preds = %436
  br label %448

448:                                              ; preds = %447, %442
  %449 = phi i64 [ %446, %442 ], [ 1, %447 ]
  %450 = trunc i64 %449 to i32
  %451 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %452 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %451, i32 0, i32 3
  store i32 %450, i32* %452, align 4
  br label %456

453:                                              ; preds = %430
  %454 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %455 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %454, i32 0, i32 3
  store i32 1, i32* %455, align 4
  br label %456

456:                                              ; preds = %453, %448
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i32 0, i32 2
  %460 = load i64, i64* %459, align 8
  %461 = load i64, i64* @STREAMING_MODE_YOUTUBE, align 8
  %462 = icmp eq i64 %460, %461
  br i1 %462, label %470, label %463

463:                                              ; preds = %456
  %464 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = load i64, i64* @STREAMING_MODE_TWITCH, align 8
  %469 = icmp eq i64 %467, %468
  br i1 %469, label %470, label %475

470:                                              ; preds = %463, %456
  %471 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %472 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %471, i32 0, i32 4
  %473 = load i32, i32* %472, align 8
  %474 = call i32 @strlcpy(i32 %473, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i32 4)
  br label %480

475:                                              ; preds = %463
  %476 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %477 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %476, i32 0, i32 4
  %478 = load i32, i32* %477, align 8
  %479 = call i32 @strlcpy(i32 %478, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 4)
  br label %480

480:                                              ; preds = %475, %470
  br label %492

481:                                              ; preds = %427
  %482 = load i32, i32* %4, align 4
  %483 = icmp eq i32 %482, 128
  br i1 %483, label %484, label %491

484:                                              ; preds = %481
  %485 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %486 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %485, i32 0, i32 3
  store i32 1, i32* %486, align 4
  %487 = load %struct.ff_config_param*, %struct.ff_config_param** %3, align 8
  %488 = getelementptr inbounds %struct.ff_config_param, %struct.ff_config_param* %487, i32 0, i32 4
  %489 = load i32, i32* %488, align 8
  %490 = call i32 @strlcpy(i32 %489, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 4)
  br label %491

491:                                              ; preds = %484, %481
  br label %492

492:                                              ; preds = %491, %480
  br label %493

493:                                              ; preds = %492, %420
  br label %494

494:                                              ; preds = %493, %412
  br label %495

495:                                              ; preds = %494, %375
  br label %496

496:                                              ; preds = %495, %338
  ret i32 1
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
