; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_webmdashenc.c_write_representation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_webmdashenc.c_write_representation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i8* }

@INITIALIZATION_RANGE = common dso_local global i32 0, align 4
@CUES_START = common dso_local global i32 0, align 4
@CUES_END = common dso_local global i32 0, align 4
@FILENAME = common dso_local global i32 0, align 4
@BANDWIDTH = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"<Representation id=\22%s\22\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"128000\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"1000000\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" bandwidth=\22%s\22\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c" width=\22%d\22\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c" height=\22%d\22\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c" audioSamplingRate=\22%d\22\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c" codecs=\22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c" mimeType=\22%s/webm\22\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c" startsWithSAP=\221\22\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"<BaseURL>%s</BaseURL>\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"<SegmentBase\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"  indexRange=\22%s-%s\22>\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"<Initialization\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"  range=\220-%s\22 />\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"</SegmentBase>\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"</Representation>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32, i32, i32)* @write_representation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_representation(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %14, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @INITIALIZATION_RANGE, align 4
  %28 = call %struct.TYPE_13__* @av_dict_get(i32 %26, i32 %27, i32* null, i32 0)
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %15, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CUES_START, align 4
  %33 = call %struct.TYPE_13__* @av_dict_get(i32 %31, i32 %32, i32* null, i32 0)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %16, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CUES_END, align 4
  %38 = call %struct.TYPE_13__* @av_dict_get(i32 %36, i32 %37, i32* null, i32 0)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %17, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FILENAME, align 4
  %43 = call %struct.TYPE_13__* @av_dict_get(i32 %41, i32 %42, i32* null, i32 0)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %18, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BANDWIDTH, align 4
  %48 = call %struct.TYPE_13__* @av_dict_get(i32 %46, i32 %47, i32* null, i32 0)
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %19, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %6
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %53, %6
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %66 = icmp ne %struct.TYPE_13__* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %72 = icmp ne %struct.TYPE_13__* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %75 = icmp ne %struct.TYPE_13__* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73, %70, %67, %64, %61, %53
  %77 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %77, i32* %7, align 4
  br label %256

78:                                               ; preds = %73, %56
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 (i32, i8*, ...) @avio_printf(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %78
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %90 = icmp ne %struct.TYPE_13__* %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  store i8* %100, i8** %20, align 8
  br label %105

101:                                              ; preds = %88, %78
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %20, align 8
  br label %105

105:                                              ; preds = %101, %91
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %20, align 8
  %110 = call i32 (i32, i8*, ...) @avio_printf(i32 %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %105
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @avio_printf(i32 %124, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %121, %118, %105
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %131
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i8*, ...) @avio_printf(i32 %145, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %142, %139, %131
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %152
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i8*, ...) @avio_printf(i32 %166, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %163, %160, %152
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %210

178:                                              ; preds = %173
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @get_codec_name(i32 %186)
  %188 = call i32 (i32, i8*, ...) @avio_printf(i32 %181, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %198 = icmp eq i64 %196, %197
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)
  %201 = call i32 (i32, i8*, ...) @avio_printf(i32 %191, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %200)
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32, i8*, ...) @avio_printf(i32 %204, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i32, i8*, ...) @avio_printf(i32 %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %251

210:                                              ; preds = %173
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32, i8*, ...) @avio_printf(i32 %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 (i32, i8*, ...) @avio_printf(i32 %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %220)
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i32, i8*, ...) @avio_printf(i32 %224, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 (i32, i8*, ...) @avio_printf(i32 %228, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %231, i8* %234)
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (i32, i8*, ...) @avio_printf(i32 %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 (i32, i8*, ...) @avio_printf(i32 %242, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %245)
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i32, i8*, ...) @avio_printf(i32 %249, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  br label %251

251:                                              ; preds = %210, %178
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 (i32, i8*, ...) @avio_printf(i32 %254, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %256

256:                                              ; preds = %251, %76
  %257 = load i32, i32* %7, align 4
  ret i32 %257
}

declare dso_local %struct.TYPE_13__* @av_dict_get(i32, i32, i32*, i32) #1

declare dso_local i32 @avio_printf(i32, i8*, ...) #1

declare dso_local i32 @get_codec_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
