; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_target.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_opt_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@opt_target.frame_rates = internal constant [3 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"25\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"30000/1001\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"24000/1001\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"pal-\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ntsc-\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"film-\00", align 1
@nb_input_files = common dso_local global i32 0, align 4
@input_files = common dso_local global %struct.TYPE_11__** null, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Assuming %s for target.\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"NTSC\00", align 1
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [59 x i8] c"Could not determine norm (PAL/NTSC/NTSC-Film) for target.\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Please prefix target with \22pal-\22, \22ntsc-\22 or \22film-\22,\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"or set a framerate with \22-r xxx\22.\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"vcd\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"c:v\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"mpeg1video\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"c:a\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"mp2\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@options = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"352x288\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"352x240\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"18\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"b:v\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"1150000\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"maxrate:v\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"minrate:v\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"bufsize:v\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"327680\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"b:a\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"224000\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"44100\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"ac\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"packetsize\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"2324\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"muxrate\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"1411200\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"svcd\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"mpeg2video\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"480x576\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"480x480\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"pix_fmt\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"yuv420p\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"2040000\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"2516000\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"1835008\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"scan_offset\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"dvd\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"ac3\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"720x576\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"720x480\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"6000000\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"9000000\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"2048\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"10080000\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"448000\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"48000\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"dv50\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"yuv422p\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"yuv411p\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [20 x i8] c"Unknown target: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@codec_opts = common dso_local global i32 0, align 4
@AV_DICT_DONT_OVERWRITE = common dso_local global i32 0, align 4
@format_opts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @opt_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_target(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  store i32 3, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  store i8* %21, i8** %7, align 8
  br label %126

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  store i32 1, i32* %9, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  store i8* %28, i8** %7, align 8
  br label %125

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  store i32 2, i32* %9, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  store i8* %35, i8** %7, align 8
  br label %124

36:                                               ; preds = %29
  %37 = load i32, i32* @nb_input_files, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %113

39:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %109, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @nb_input_files, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %112

44:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %101, %44
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @input_files, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %47, i64 %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %46, %53
  br i1 %54, label %55, label %104

55:                                               ; preds = %45
  %56 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @input_files, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %56, i64 %58
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %64, i64 %66
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %67, align 8
  store %struct.TYPE_17__* %68, %struct.TYPE_17__** %12, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  br label %101

77:                                               ; preds = %55
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = mul nsw i64 %81, 1000
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sdiv i64 %82, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 25000
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %104

92:                                               ; preds = %77
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 29970
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 23976
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %92
  store i32 1, i32* %9, align 4
  br label %104

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %76
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %45

104:                                              ; preds = %98, %91, %45
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 3
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %112

108:                                              ; preds = %104
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %40

112:                                              ; preds = %107, %40
  br label %113

113:                                              ; preds = %112, %36
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 3
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* @AV_LOG_INFO, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %122 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %116, %113
  br label %124

124:                                              ; preds = %123, %33
  br label %125

125:                                              ; preds = %124, %26
  br label %126

126:                                              ; preds = %125, %19
  %127 = load i32, i32* %9, align 4
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* @AV_LOG_FATAL, align 4
  %131 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %130, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0))
  %132 = load i32, i32* @AV_LOG_FATAL, align 4
  %133 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %132, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0))
  %134 = load i32, i32* @AV_LOG_FATAL, align 4
  %135 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %136 = call i32 @exit_program(i32 1)
  br label %137

137:                                              ; preds = %129, %126
  %138 = load i8*, i8** %7, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %183, label %141

141:                                              ; preds = %137
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %143 = call i32 @opt_video_codec(%struct.TYPE_16__* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = call i32 @opt_audio_codec(%struct.TYPE_16__* %144, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %147 = load i32, i32* @options, align 4
  %148 = call i32 @parse_option(%struct.TYPE_16__* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %147)
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = icmp eq i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0)
  %154 = load i32, i32* @options, align 4
  %155 = call i32 @parse_option(%struct.TYPE_16__* %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %153, i32 %154)
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [3 x i8*], [3 x i8*]* @opt_target.frame_rates, i64 0, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* @options, align 4
  %162 = call i32 @parse_option(%struct.TYPE_16__* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* %160, i32 %161)
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)
  %167 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* %166)
  %168 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %169 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %170 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  %171 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0))
  %172 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %174 = load i32, i32* @options, align 4
  %175 = call i32 @parse_option(%struct.TYPE_16__* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32 %174)
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %177 = load i32, i32* @options, align 4
  %178 = call i32 @parse_option(%struct.TYPE_16__* %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 %177)
  %179 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  %180 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  br label %322

183:                                              ; preds = %137
  %184 = load i8*, i8** %7, align 8
  %185 = call i32 @strcmp(i8* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %227, label %187

187:                                              ; preds = %183
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %189 = call i32 @opt_video_codec(%struct.TYPE_16__* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0))
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %191 = call i32 @opt_audio_codec(%struct.TYPE_16__* %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %193 = load i32, i32* @options, align 4
  %194 = call i32 @parse_option(%struct.TYPE_16__* %192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %196 = load i32, i32* %9, align 4
  %197 = icmp eq i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0)
  %200 = load i32, i32* @options, align 4
  %201 = call i32 @parse_option(%struct.TYPE_16__* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %199, i32 %200)
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [3 x i8*], [3 x i8*]* @opt_target.frame_rates, i64 0, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* @options, align 4
  %208 = call i32 @parse_option(%struct.TYPE_16__* %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* %206, i32 %207)
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %210 = load i32, i32* @options, align 4
  %211 = call i32 @parse_option(%struct.TYPE_16__* %209, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i32 %210)
  %212 = load i32, i32* %9, align 4
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)
  %216 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* %215)
  %217 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0))
  %218 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i64 0, i64 0))
  %219 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0))
  %220 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0))
  %221 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0))
  %222 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %224 = load i32, i32* @options, align 4
  %225 = call i32 @parse_option(%struct.TYPE_16__* %223, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32 %224)
  %226 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  br label %321

227:                                              ; preds = %183
  %228 = load i8*, i8** %7, align 8
  %229 = call i32 @strcmp(i8* %228, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0))
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %271, label %231

231:                                              ; preds = %227
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %233 = call i32 @opt_video_codec(%struct.TYPE_16__* %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0))
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %235 = call i32 @opt_audio_codec(%struct.TYPE_16__* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0))
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %237 = load i32, i32* @options, align 4
  %238 = call i32 @parse_option(%struct.TYPE_16__* %236, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i32 %237)
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %240 = load i32, i32* %9, align 4
  %241 = icmp eq i32 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)
  %244 = load i32, i32* @options, align 4
  %245 = call i32 @parse_option(%struct.TYPE_16__* %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %243, i32 %244)
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %247 = load i32, i32* %9, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [3 x i8*], [3 x i8*]* @opt_target.frame_rates, i64 0, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = load i32, i32* @options, align 4
  %252 = call i32 @parse_option(%struct.TYPE_16__* %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* %250, i32 %251)
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %254 = load i32, i32* @options, align 4
  %255 = call i32 @parse_option(%struct.TYPE_16__* %253, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* %9, align 4
  %257 = icmp eq i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)
  %260 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i8* %259)
  %261 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0))
  %262 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0))
  %263 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0))
  %264 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0))
  %265 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0))
  %266 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0))
  %267 = call i32 @opt_default(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0))
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %269 = load i32, i32* @options, align 4
  %270 = call i32 @parse_option(%struct.TYPE_16__* %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i32 %269)
  br label %320

271:                                              ; preds = %227
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 @strncmp(i8* %272, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0), i32 2)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %313, label %275

275:                                              ; preds = %271
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %277 = load i32, i32* @options, align 4
  %278 = call i32 @parse_option(%struct.TYPE_16__* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0), i32 %277)
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %280 = load i32, i32* %9, align 4
  %281 = icmp eq i32 %280, 0
  %282 = zext i1 %281 to i64
  %283 = select i1 %281, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0)
  %284 = load i32, i32* @options, align 4
  %285 = call i32 @parse_option(%struct.TYPE_16__* %279, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* %283, i32 %284)
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %287 = load i8*, i8** %7, align 8
  %288 = call i32 @strncmp(i8* %287, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i64 0, i64 0), i32 4)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %275
  br label %296

291:                                              ; preds = %275
  %292 = load i32, i32* %9, align 4
  %293 = icmp eq i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i64 0, i64 0)
  br label %296

296:                                              ; preds = %291, %290
  %297 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), %290 ], [ %295, %291 ]
  %298 = load i32, i32* @options, align 4
  %299 = call i32 @parse_option(%struct.TYPE_16__* %286, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i8* %297, i32 %298)
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %301 = load i32, i32* %9, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds [3 x i8*], [3 x i8*]* @opt_target.frame_rates, i64 0, i64 %302
  %304 = load i8*, i8** %303, align 8
  %305 = load i32, i32* @options, align 4
  %306 = call i32 @parse_option(%struct.TYPE_16__* %300, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* %304, i32 %305)
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %308 = load i32, i32* @options, align 4
  %309 = call i32 @parse_option(%struct.TYPE_16__* %307, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i64 0, i64 0), i32 %308)
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %311 = load i32, i32* @options, align 4
  %312 = call i32 @parse_option(%struct.TYPE_16__* %310, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 %311)
  br label %319

313:                                              ; preds = %271
  %314 = load i32, i32* @AV_LOG_ERROR, align 4
  %315 = load i8*, i8** %7, align 8
  %316 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %314, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.67, i64 0, i64 0), i8* %315)
  %317 = load i32, i32* @EINVAL, align 4
  %318 = call i32 @AVERROR(i32 %317)
  store i32 %318, i32* %4, align 4
  br label %337

319:                                              ; preds = %296
  br label %320

320:                                              ; preds = %319, %231
  br label %321

321:                                              ; preds = %320, %187
  br label %322

322:                                              ; preds = %321, %141
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 1
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 1
  %327 = load i32, i32* @codec_opts, align 4
  %328 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %329 = call i32 @av_dict_copy(i32* %326, i32 %327, i32 %328)
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = load i32, i32* @format_opts, align 4
  %335 = load i32, i32* @AV_DICT_DONT_OVERWRITE, align 4
  %336 = call i32 @av_dict_copy(i32* %333, i32 %334, i32 %335)
  store i32 0, i32* %4, align 4
  br label %337

337:                                              ; preds = %322, %313
  %338 = load i32, i32* %4, align 4
  ret i32 %338
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @opt_video_codec(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @opt_audio_codec(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i32 @parse_option(%struct.TYPE_16__*, i8*, i8*, i32) #1

declare dso_local i32 @opt_default(i32*, i8*, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_copy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
