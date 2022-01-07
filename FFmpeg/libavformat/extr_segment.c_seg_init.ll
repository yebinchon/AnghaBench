; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_seg_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_seg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 (%struct.TYPE_28__*, %struct.TYPE_29__**, i64, i32, i32*)*, i32, i64, %struct.TYPE_27__**, %struct.TYPE_29__*, i64, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { %struct.TYPE_25__, i32, %struct.TYPE_23__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_26__ = type { i32, i64, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64, %struct.TYPE_28__*, %struct.TYPE_24__*, i32, i32, i64, i32, i64, i64, i64, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_24__ = type { i32, i64 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"NOTE: the option initial_offset is deprecated,you can use output_ts_offset instead of it\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [105 x i8] c"segment_time, segment_times, and segment_frames options are mutually exclusive, select just one of them\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"Invalid time duration specification '%s' for segment_time option\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"Invalid negative segment_time with segment_atclocktime option set\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Could not parse format options list '%s'\0A\00", align 1
@LIST_TYPE_UNDEFINED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"csv\00", align 1
@LIST_TYPE_CSV = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@LIST_TYPE_EXT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"m3u8\00", align 1
@LIST_TYPE_M3U8 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"ffcat,ffconcat\00", align 1
@LIST_TYPE_FFCONCAT = common dso_local global i64 0, align 8
@LIST_TYPE_FLAT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"'ext' list type option is deprecated in favor of 'csv'\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"Selected stream id:%d type:%s\0A\00", align 1
@AVERROR_MUXER_NOT_FOUND = common dso_local global i32 0, align 4
@AVFMT_NOFILE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"format %s not supported.\0A\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"Failed to open segment '%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"fflags\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"-autobsf\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"Some of the provided format options in '%s' are not recognized\0A\00", align 1
@AVSTREAM_INIT_IN_WRITE_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*)* @seg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg_init(%struct.TYPE_28__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %3, align 8
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %4, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 12
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  store %struct.TYPE_28__* %17, %struct.TYPE_28__** %5, align 8
  store i32* null, i32** %6, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 26
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 10
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 11
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 10
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %44 = load i32, i32* @AV_LOG_WARNING, align 4
  %45 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %43, i32 %44, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 19
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 23
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = add nsw i32 %53, %60
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 20
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = add nsw i32 %61, %68
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %77

71:                                               ; preds = %46
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %72, i32 %73, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %2, align 4
  br label %541

77:                                               ; preds = %46
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 23
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 25
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 24
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 23
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @parse_times(%struct.TYPE_28__* %83, i32* %85, i32* %87, i64 %90)
  store i32 %91, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %541

95:                                               ; preds = %82
  br label %172

96:                                               ; preds = %77
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 20
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 22
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 21
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 20
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @parse_frames(%struct.TYPE_28__* %102, i32* %104, i32* %106, i64 %109)
  store i32 %110, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %101
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %541

114:                                              ; preds = %101
  br label %171

115:                                              ; preds = %96
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 19
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = call i64 @av_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 19
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %120, %115
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 19
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @av_parse_time(i32* %126, i64 %129, i32 1)
  store i32 %130, i32* %7, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %134 = load i32, i32* @AV_LOG_ERROR, align 4
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 19
  %137 = load i64, i64* %136, align 8
  %138 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %133, i32 %134, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i64 %137)
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %541

140:                                              ; preds = %124
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 18
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %140
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %152 = load i32, i32* @AV_LOG_ERROR, align 4
  %153 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %151, i32 %152, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = call i32 @AVERROR(i32 %154)
  store i32 %155, i32* %2, align 4
  br label %541

156:                                              ; preds = %145
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = srem i32 %162, %165
  %167 = sub nsw i32 %159, %166
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %156, %140
  br label %171

171:                                              ; preds = %170, %114
  br label %172

172:                                              ; preds = %171, %95
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 8
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %195

177:                                              ; preds = %172
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 9
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 8
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @av_dict_parse_string(i32* %179, i64 %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %194

186:                                              ; preds = %177
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %188 = load i32, i32* @AV_LOG_ERROR, align 4
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 8
  %191 = load i64, i64* %190, align 8
  %192 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %187, i32 %188, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %191)
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %2, align 4
  br label %541

194:                                              ; preds = %177
  br label %195

195:                                              ; preds = %194, %172
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 16
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %290

200:                                              ; preds = %195
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @LIST_TYPE_UNDEFINED, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %254

206:                                              ; preds = %200
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 16
  %209 = load i64, i64* %208, align 8
  %210 = call i64 @av_match_ext(i64 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i64, i64* @LIST_TYPE_CSV, align 8
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 4
  store i64 %213, i64* %215, align 8
  br label %253

216:                                              ; preds = %206
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 16
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @av_match_ext(i64 %219, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %216
  %223 = load i64, i64* @LIST_TYPE_EXT, align 8
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 4
  store i64 %223, i64* %225, align 8
  br label %252

226:                                              ; preds = %216
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 16
  %229 = load i64, i64* %228, align 8
  %230 = call i64 @av_match_ext(i64 %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load i64, i64* @LIST_TYPE_M3U8, align 8
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %234, i32 0, i32 4
  store i64 %233, i64* %235, align 8
  br label %251

236:                                              ; preds = %226
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 16
  %239 = load i64, i64* %238, align 8
  %240 = call i64 @av_match_ext(i64 %239, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  %243 = load i64, i64* @LIST_TYPE_FFCONCAT, align 8
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 4
  store i64 %243, i64* %245, align 8
  br label %250

246:                                              ; preds = %236
  %247 = load i64, i64* @LIST_TYPE_FLAT, align 8
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 4
  store i64 %247, i64* %249, align 8
  br label %250

250:                                              ; preds = %246, %242
  br label %251

251:                                              ; preds = %250, %232
  br label %252

252:                                              ; preds = %251, %222
  br label %253

253:                                              ; preds = %252, %212
  br label %254

254:                                              ; preds = %253, %200
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 17
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %272, label %259

259:                                              ; preds = %254
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @LIST_TYPE_M3U8, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %259
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %267 = call i32 @segment_list_open(%struct.TYPE_28__* %266)
  store i32 %267, i32* %7, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = load i32, i32* %7, align 4
  store i32 %270, i32* %2, align 4
  br label %541

271:                                              ; preds = %265
  br label %289

272:                                              ; preds = %259, %254
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 16
  %275 = load i64, i64* %274, align 8
  %276 = call i8* @avio_find_protocol_name(i64 %275)
  store i8* %276, i8** %9, align 8
  %277 = load i8*, i8** %9, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %284

279:                                              ; preds = %272
  %280 = load i8*, i8** %9, align 8
  %281 = call i32 @strcmp(i8* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %282 = icmp ne i32 %281, 0
  %283 = xor i1 %282, true
  br label %284

284:                                              ; preds = %279, %272
  %285 = phi i1 [ false, %272 ], [ %283, %279 ]
  %286 = zext i1 %285 to i32
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 15
  store i32 %286, i32* %288, align 4
  br label %289

289:                                              ; preds = %284, %271
  br label %290

290:                                              ; preds = %289, %195
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @LIST_TYPE_EXT, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %290
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %298 = load i32, i32* @AV_LOG_WARNING, align 4
  %299 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %297, i32 %298, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  br label %300

300:                                              ; preds = %296, %290
  %301 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %302 = call i32 @select_reference_stream(%struct.TYPE_28__* %301)
  store i32 %302, i32* %7, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = load i32, i32* %7, align 4
  store i32 %305, i32* %2, align 4
  br label %541

306:                                              ; preds = %300
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %308 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 5
  %311 = load i64, i64* %310, align 8
  %312 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %313, align 8
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %314, i64 %317
  %319 = load %struct.TYPE_27__*, %struct.TYPE_27__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %319, i32 0, i32 2
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @av_get_media_type_string(i32 %323)
  %325 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %307, i32 %308, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i64 %311, i32 %324)
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 14
  %328 = load i32, i32* %327, align 8
  %329 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %329, i32 0, i32 5
  %331 = load i64, i64* %330, align 8
  %332 = call %struct.TYPE_24__* @av_guess_format(i32 %328, i64 %331, i32* null)
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 13
  store %struct.TYPE_24__* %332, %struct.TYPE_24__** %334, align 8
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 13
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %336, align 8
  %338 = icmp ne %struct.TYPE_24__* %337, null
  br i1 %338, label %341, label %339

339:                                              ; preds = %306
  %340 = load i32, i32* @AVERROR_MUXER_NOT_FOUND, align 4
  store i32 %340, i32* %2, align 4
  br label %541

341:                                              ; preds = %306
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 13
  %344 = load %struct.TYPE_24__*, %struct.TYPE_24__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = load i32, i32* @AVFMT_NOFILE, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %361

350:                                              ; preds = %341
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %352 = load i32, i32* @AV_LOG_ERROR, align 4
  %353 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %353, i32 0, i32 13
  %355 = load %struct.TYPE_24__*, %struct.TYPE_24__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %351, i32 %352, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i64 %357)
  %359 = load i32, i32* @EINVAL, align 4
  %360 = call i32 @AVERROR(i32 %359)
  store i32 %360, i32* %2, align 4
  br label %541

361:                                              ; preds = %341
  %362 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %363 = call i32 @segment_mux_init(%struct.TYPE_28__* %362)
  store i32 %363, i32* %7, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = load i32, i32* %7, align 4
  store i32 %366, i32* %2, align 4
  br label %541

367:                                              ; preds = %361
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %369 = call i32 @set_segment_filename(%struct.TYPE_28__* %368)
  store i32 %369, i32* %7, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %367
  %372 = load i32, i32* %7, align 4
  store i32 %372, i32* %2, align 4
  br label %541

373:                                              ; preds = %367
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 12
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %375, align 8
  store %struct.TYPE_28__* %376, %struct.TYPE_28__** %5, align 8
  %377 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %424

381:                                              ; preds = %373
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %382, i32 0, i32 0
  %384 = load i32 (%struct.TYPE_28__*, %struct.TYPE_29__**, i64, i32, i32*)*, i32 (%struct.TYPE_28__*, %struct.TYPE_29__**, i64, i32, i32*)** %383, align 8
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %386 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %386, i32 0, i32 4
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 11
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %381
  %393 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %393, i32 0, i32 11
  %395 = load i64, i64* %394, align 8
  br label %400

396:                                              ; preds = %381
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 5
  %399 = load i64, i64* %398, align 8
  br label %400

400:                                              ; preds = %396, %392
  %401 = phi i64 [ %395, %392 ], [ %399, %396 ]
  %402 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %403 = call i32 %384(%struct.TYPE_28__* %385, %struct.TYPE_29__** %387, i64 %401, i32 %402, i32* null)
  store i32 %403, i32* %7, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %413

405:                                              ; preds = %400
  %406 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %407 = load i32, i32* @AV_LOG_ERROR, align 4
  %408 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %408, i32 0, i32 5
  %410 = load i64, i64* %409, align 8
  %411 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %406, i32 %407, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i64 %410)
  %412 = load i32, i32* %7, align 4
  store i32 %412, i32* %2, align 4
  br label %541

413:                                              ; preds = %400
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 10
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %423, label %418

418:                                              ; preds = %413
  %419 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %419, i32 0, i32 4
  %421 = load %struct.TYPE_29__*, %struct.TYPE_29__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %421, i32 0, i32 0
  store i64 0, i64* %422, align 8
  br label %423

423:                                              ; preds = %418, %413
  br label %432

424:                                              ; preds = %373
  %425 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %425, i32 0, i32 4
  %427 = call i32 @open_null_ctx(%struct.TYPE_29__** %426)
  store i32 %427, i32* %7, align 4
  %428 = icmp slt i32 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %424
  %430 = load i32, i32* %7, align 4
  store i32 %430, i32* %2, align 4
  br label %541

431:                                              ; preds = %424
  br label %432

432:                                              ; preds = %431, %423
  %433 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %433, i32 0, i32 9
  %435 = load i32, i32* %434, align 8
  %436 = call i32 @av_dict_copy(i32** %6, i32 %435, i32 0)
  %437 = call i32 @av_dict_set(i32** %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 0)
  %438 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %439 = call i32 @avformat_init_output(%struct.TYPE_28__* %438, i32** %6)
  store i32 %439, i32* %7, align 4
  %440 = load i32*, i32** %6, align 8
  %441 = call i64 @av_dict_count(i32* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %453

443:                                              ; preds = %432
  %444 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %445 = load i32, i32* @AV_LOG_ERROR, align 4
  %446 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %446, i32 0, i32 8
  %448 = load i64, i64* %447, align 8
  %449 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @av_log(%struct.TYPE_28__* %444, i32 %445, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19, i64 0, i64 0), i64 %448)
  %450 = call i32 @av_dict_free(i32** %6)
  %451 = load i32, i32* @EINVAL, align 4
  %452 = call i32 @AVERROR(i32 %451)
  store i32 %452, i32* %2, align 4
  br label %541

453:                                              ; preds = %432
  %454 = call i32 @av_dict_free(i32** %6)
  %455 = load i32, i32* %7, align 4
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %457, label %463

457:                                              ; preds = %453
  %458 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %459 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %459, i32 0, i32 4
  %461 = call i32 @ff_format_io_close(%struct.TYPE_28__* %458, %struct.TYPE_29__** %460)
  %462 = load i32, i32* %7, align 4
  store i32 %462, i32* %2, align 4
  br label %541

463:                                              ; preds = %453
  %464 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %464, i32 0, i32 7
  store i64 0, i64* %465, align 8
  %466 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %467 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = icmp eq i32 %468, %471
  %473 = zext i1 %472 to i32
  %474 = call i32 @av_assert0(i32 %473)
  %475 = load i32, i32* %7, align 4
  %476 = load i32, i32* @AVSTREAM_INIT_IN_WRITE_HEADER, align 4
  %477 = icmp eq i32 %475, %476
  br i1 %477, label %478, label %488

478:                                              ; preds = %463
  %479 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %480 = call i32 @avformat_write_header(%struct.TYPE_28__* %479, i32* null)
  store i32 %480, i32* %7, align 4
  %481 = load i32, i32* %7, align 4
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %478
  %484 = load i32, i32* %7, align 4
  store i32 %484, i32* %2, align 4
  br label %541

485:                                              ; preds = %478
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %486, i32 0, i32 6
  store i32 1, i32* %487, align 8
  br label %488

488:                                              ; preds = %485, %463
  store i32 0, i32* %8, align 4
  br label %489

489:                                              ; preds = %523, %488
  %490 = load i32, i32* %8, align 4
  %491 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 8
  %494 = icmp slt i32 %490, %493
  br i1 %494, label %495, label %526

495:                                              ; preds = %489
  %496 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %496, i32 0, i32 3
  %498 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %497, align 8
  %499 = load i32, i32* %8, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %498, i64 %500
  %502 = load %struct.TYPE_27__*, %struct.TYPE_27__** %501, align 8
  store %struct.TYPE_27__* %502, %struct.TYPE_27__** %10, align 8
  %503 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %503, i32 0, i32 3
  %505 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %504, align 8
  %506 = load i32, i32* %8, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %505, i64 %507
  %509 = load %struct.TYPE_27__*, %struct.TYPE_27__** %508, align 8
  store %struct.TYPE_27__* %509, %struct.TYPE_27__** %11, align 8
  %510 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %511 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %512 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %515 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %519 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = call i32 @avpriv_set_pts_info(%struct.TYPE_27__* %510, i32 %513, i32 %517, i32 %521)
  br label %523

523:                                              ; preds = %495
  %524 = load i32, i32* %8, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %8, align 4
  br label %489

526:                                              ; preds = %489
  %527 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %527, i32 0, i32 2
  %529 = load i64, i64* %528, align 8
  %530 = icmp sgt i64 %529, 0
  br i1 %530, label %531, label %539

531:                                              ; preds = %526
  %532 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %532, i32 0, i32 2
  %534 = load i64, i64* %533, align 8
  %535 = icmp slt i64 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %531
  %537 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %537, i32 0, i32 2
  store i64 1, i64* %538, align 8
  br label %539

539:                                              ; preds = %536, %531, %526
  %540 = load i32, i32* %7, align 4
  store i32 %540, i32* %2, align 4
  br label %541

541:                                              ; preds = %539, %483, %457, %443, %429, %405, %371, %365, %350, %339, %304, %269, %186, %150, %132, %112, %93, %71
  %542 = load i32, i32* %2, align 4
  ret i32 %542
}

declare dso_local i32 @av_log(%struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @parse_times(%struct.TYPE_28__*, i32*, i32*, i64) #1

declare dso_local i32 @parse_frames(%struct.TYPE_28__*, i32*, i32*, i64) #1

declare dso_local i64 @av_strdup(i8*) #1

declare dso_local i32 @av_parse_time(i32*, i64, i32) #1

declare dso_local i32 @av_dict_parse_string(i32*, i64, i8*, i8*, i32) #1

declare dso_local i64 @av_match_ext(i64, i8*) #1

declare dso_local i32 @segment_list_open(%struct.TYPE_28__*) #1

declare dso_local i8* @avio_find_protocol_name(i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @select_reference_stream(%struct.TYPE_28__*) #1

declare dso_local i32 @av_get_media_type_string(i32) #1

declare dso_local %struct.TYPE_24__* @av_guess_format(i32, i64, i32*) #1

declare dso_local i32 @segment_mux_init(%struct.TYPE_28__*) #1

declare dso_local i32 @set_segment_filename(%struct.TYPE_28__*) #1

declare dso_local i32 @open_null_ctx(%struct.TYPE_29__**) #1

declare dso_local i32 @av_dict_copy(i32**, i32, i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

declare dso_local i32 @avformat_init_output(%struct.TYPE_28__*, i32**) #1

declare dso_local i64 @av_dict_count(i32*) #1

declare dso_local i32 @av_dict_free(i32**) #1

declare dso_local i32 @ff_format_io_close(%struct.TYPE_28__*, %struct.TYPE_29__**) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @avformat_write_header(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_27__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
