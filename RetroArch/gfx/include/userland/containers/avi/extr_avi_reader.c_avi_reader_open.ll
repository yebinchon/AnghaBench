; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_reader_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/avi/extr_avi_reader.c_avi_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64, %struct.TYPE_34__*, %struct.TYPE_38__**, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_37__*, i32 (%struct.TYPE_36__*, i32*, i32, i32)*, i32, i32 }
%struct.TYPE_37__ = type { %struct.TYPE_33__, i8*, i64, i8*, i64, %struct.TYPE_38__** }
%struct.TYPE_33__ = type { i8* }
%struct.TYPE_38__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_32__, i64 }
%struct.TYPE_32__ = type { %struct.TYPE_33__* }

@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"RIFF ID\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fileSize\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fileType\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"'hdrl' LIST not found\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hdrl\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"'avih' not found\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"dwMicroSecPerFrame\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"dwMaxBytesPerSec\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"dwPaddingGranularity\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"dwFlags\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"dwTotalFrames\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"dwInitialFrames\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"dwStreams\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"dwSuggestedBufferSize\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"dwWidth\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"dwHeight\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"dwReserved0\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"dwReserved1\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"dwReserved2\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"dwReserved3\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@AVI_TRACKS_MAX = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [42 x i8] c"cannot handle %u tracks, restricted to %d\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"'movi' LIST not found\00", align 1
@avi_reader_close = common dso_local global i32 0, align 4
@avi_reader_read = common dso_local global i32 0, align 4
@AVIF_MUSTUSEINDEX = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [66 x i8] c"AVIF_MUSTUSEINDEX not supported, playback might not work properly\00", align 1
@VC_CONTAINER_CAPS_CAN_SEEK = common dso_local global i32 0, align 4
@VC_CONTAINER_CAPS_FORCE_TRACK = common dso_local global i32 0, align 4
@VC_CONTAINER_CAPS_HAS_INDEX = common dso_local global i32 0, align 4
@AVIF_TRUSTCKTYPE = common dso_local global i64 0, align 8
@VC_CONTAINER_CAPS_DATA_HAS_KEYFRAME_FLAG = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"'idx1' found\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"movi\00", align 1
@VC_CONTAINER_SEEK_MODE_TIME = common dso_local global i32 0, align 4
@VC_CONTAINER_SEEK_FLAG_PRECISE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"error opening stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @avi_reader_open(%struct.TYPE_36__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %3, align 8
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %4, align 8
  %12 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %14 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %15 = bitcast i64* %14 to i32*
  %16 = call i32 @PEEK_BYTES(%struct.TYPE_36__* %13, i32* %15, i32 12)
  %17 = icmp ne i32 %16, 12
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %19, i64* %2, align 8
  br label %441

20:                                               ; preds = %1
  %21 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %22 = load i64, i64* %21, align 16
  %23 = call i64 @VC_FOURCC(i8 signext 82, i8 signext 73, i8 signext 70, i8 signext 70)
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %26, i64* %2, align 8
  br label %441

27:                                               ; preds = %20
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %29 = load i64, i64* %28, align 16
  %30 = call i64 @VC_FOURCC(i8 signext 65, i8 signext 86, i8 signext 73, i8 signext 32)
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %33, i64* %2, align 8
  br label %441

34:                                               ; preds = %27
  %35 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %36 = call i32 @SKIP_FOURCC(%struct.TYPE_36__* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %38 = call i32 @SKIP_U32(%struct.TYPE_36__* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %40 = call i32 @SKIP_FOURCC(%struct.TYPE_36__* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %42 = call i64 @VC_FOURCC(i8 signext 104, i8 signext 100, i8 signext 114, i8 signext 108)
  %43 = call i64 @avi_find_list(%struct.TYPE_36__* %41, i64 %42, i64* %6)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %49 = call i32 (%struct.TYPE_36__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_36__* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %50, i64* %2, align 8
  br label %441

51:                                               ; preds = %34
  %52 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %53 = call i32 @SKIP_FOURCC(%struct.TYPE_36__* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %54 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %55 = call i64 @VC_FOURCC(i8 signext 97, i8 signext 118, i8 signext 105, i8 signext 104)
  %56 = call i64 @avi_find_chunk(%struct.TYPE_36__* %54, i64 %55, i64* %6)
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %62 = call i32 (%struct.TYPE_36__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_36__* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %63, i64* %2, align 8
  br label %441

64:                                               ; preds = %51
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %66 = call i32 @SKIP_U32(%struct.TYPE_36__* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %68 = call i32 @SKIP_U32(%struct.TYPE_36__* %67, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %69 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %70 = call i32 @SKIP_U32(%struct.TYPE_36__* %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %72 = call i64 @READ_U32(%struct.TYPE_36__* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i64 %72, i64* %9, align 8
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %74 = call i32 @SKIP_U32(%struct.TYPE_36__* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %75 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %76 = call i32 @SKIP_U32(%struct.TYPE_36__* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %78 = call i64 @READ_U32(%struct.TYPE_36__* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  store i64 %78, i64* %10, align 8
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %80 = call i32 @SKIP_U32(%struct.TYPE_36__* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %81 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %82 = call i32 @SKIP_U32(%struct.TYPE_36__* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %84 = call i32 @SKIP_U32(%struct.TYPE_36__* %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %86 = call i32 @SKIP_U32(%struct.TYPE_36__* %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %88 = call i32 @SKIP_U32(%struct.TYPE_36__* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %89 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %90 = call i32 @SKIP_U32(%struct.TYPE_36__* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %92 = call i32 @SKIP_U32(%struct.TYPE_36__* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %93 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %94 = call i64 @STREAM_STATUS(%struct.TYPE_36__* %93)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %64
  br label %401

98:                                               ; preds = %64
  %99 = call %struct.TYPE_37__* @malloc(i32 48)
  store %struct.TYPE_37__* %99, %struct.TYPE_37__** %4, align 8
  %100 = icmp eq %struct.TYPE_37__* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %102, i64* %2, align 8
  br label %441

103:                                              ; preds = %98
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %105 = call i32 @memset(%struct.TYPE_37__* %104, i32 0, i32 48)
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %107 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 0
  store %struct.TYPE_37__* %106, %struct.TYPE_37__** %110, align 8
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %112, align 8
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %114, i32 0, i32 2
  store %struct.TYPE_38__** %113, %struct.TYPE_38__*** %115, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @AVI_TRACKS_MAX, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %103
  %120 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @AVI_TRACKS_MAX, align 8
  %123 = call i32 (%struct.TYPE_36__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_36__* %120, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i64 %121, i64 %122)
  %124 = load i64, i64* @AVI_TRACKS_MAX, align 8
  store i64 %124, i64* %10, align 8
  br label %125

125:                                              ; preds = %119, %103
  %126 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %155, %125
  %129 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %10, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %128
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %136 = call %struct.TYPE_38__* @vc_container_allocate_track(%struct.TYPE_36__* %135, i32 16)
  %137 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %138, align 8
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %139, i64 %142
  store %struct.TYPE_38__* %136, %struct.TYPE_38__** %143, align 8
  %144 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %145, align 8
  %147 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %146, i64 %149
  %151 = load %struct.TYPE_38__*, %struct.TYPE_38__** %150, align 8
  %152 = icmp ne %struct.TYPE_38__* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %134
  br label %160

154:                                              ; preds = %134
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %157, align 8
  br label %128

160:                                              ; preds = %153, %128
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %10, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %160
  %167 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %167, i64* %5, align 8
  br label %401

168:                                              ; preds = %160
  store i32 0, i32* %8, align 4
  br label %169

169:                                              ; preds = %200, %168
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %10, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %169
  %175 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %176 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %178, i64 %180
  %182 = load %struct.TYPE_38__*, %struct.TYPE_38__** %181, align 8
  %183 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %185, i64 %187
  %189 = load %struct.TYPE_38__*, %struct.TYPE_38__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_35__*, %struct.TYPE_35__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %192, align 8
  %194 = call i64 @avi_read_stream_header_list(%struct.TYPE_36__* %175, %struct.TYPE_38__* %182, %struct.TYPE_31__* %193)
  store i64 %194, i64* %5, align 8
  %195 = load i64, i64* %5, align 8
  %196 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %174
  br label %401

199:                                              ; preds = %174
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %8, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %169

203:                                              ; preds = %169
  %204 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %205 = call i64 @VC_FOURCC(i8 signext 109, i8 signext 111, i8 signext 118, i8 signext 105)
  %206 = call i64 @avi_find_list(%struct.TYPE_36__* %204, i64 %205, i64* %6)
  store i64 %206, i64* %5, align 8
  %207 = load i64, i64* %5, align 8
  %208 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %212 = call i32 (%struct.TYPE_36__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_36__* %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %213 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %213, i64* %5, align 8
  br label %401

214:                                              ; preds = %203
  %215 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %216 = call i8* @STREAM_POSITION(%struct.TYPE_36__* %215)
  %217 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  %219 = load i64, i64* %6, align 8
  %220 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %220, i32 0, i32 4
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* @avi_reader_close, align 4
  %223 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %225, i32 0, i32 3
  store i32 %222, i32* %226, align 4
  %227 = load i32, i32* @avi_reader_read, align 4
  %228 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_34__*, %struct.TYPE_34__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %230, i32 0, i32 2
  store i32 %227, i32* %231, align 8
  %232 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %234, i32 0, i32 1
  store i32 (%struct.TYPE_36__*, i32*, i32, i32)* @avi_reader_seek, i32 (%struct.TYPE_36__*, i32*, i32, i32)** %235, align 8
  %236 = load i64, i64* %9, align 8
  %237 = load i64, i64* @AVIF_MUSTUSEINDEX, align 8
  %238 = and i64 %236, %237
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %214
  %241 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %242 = call i32 (%struct.TYPE_36__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_36__* %241, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %214
  %244 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %245 = call i64 @STREAM_SEEKABLE(%struct.TYPE_36__* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %348

247:                                              ; preds = %243
  %248 = load i32, i32* @VC_CONTAINER_CAPS_CAN_SEEK, align 4
  %249 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load i32, i32* @VC_CONTAINER_CAPS_FORCE_TRACK, align 4
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 8
  store i32 0, i32* %8, align 4
  br label %258

258:                                              ; preds = %282, %247
  %259 = load i32, i32* %8, align 4
  %260 = zext i32 %259 to i64
  %261 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp slt i64 %260, %263
  br i1 %264, label %265, label %285

265:                                              ; preds = %258
  %266 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %268, i64 %270
  %272 = load %struct.TYPE_38__*, %struct.TYPE_38__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_35__*, %struct.TYPE_35__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_31__*, %struct.TYPE_31__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %265
  br label %285

281:                                              ; preds = %265
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %8, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %8, align 4
  br label %258

285:                                              ; preds = %280, %258
  %286 = load i32, i32* %8, align 4
  %287 = zext i32 %286 to i64
  %288 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp slt i64 %287, %290
  br i1 %291, label %292, label %309

292:                                              ; preds = %285
  %293 = load i32, i32* @VC_CONTAINER_CAPS_HAS_INDEX, align 4
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  %298 = load i64, i64* %9, align 8
  %299 = load i64, i64* @AVIF_TRUSTCKTYPE, align 8
  %300 = and i64 %298, %299
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %292
  %303 = load i32, i32* @VC_CONTAINER_CAPS_DATA_HAS_KEYFRAME_FLAG, align 4
  %304 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 8
  br label %308

308:                                              ; preds = %302, %292
  br label %347

309:                                              ; preds = %285
  %310 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %311 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %311, i32 0, i32 4
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @AVI_SKIP_CHUNK(%struct.TYPE_36__* %310, i64 %313)
  %315 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %316 = call i64 @VC_FOURCC(i8 signext 105, i8 signext 100, i8 signext 120, i8 signext 49)
  %317 = call i64 @avi_find_chunk(%struct.TYPE_36__* %315, i64 %316, i64* %6)
  store i64 %317, i64* %5, align 8
  %318 = load i64, i64* %5, align 8
  %319 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %341

321:                                              ; preds = %309
  %322 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %323 = call i32 (%struct.TYPE_36__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_36__* %322, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %324 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %325 = call i8* @STREAM_POSITION(%struct.TYPE_36__* %324)
  %326 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %326, i32 0, i32 3
  store i8* %325, i8** %327, align 8
  %328 = load i64, i64* %6, align 8
  %329 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %329, i32 0, i32 2
  store i64 %328, i64* %330, align 8
  %331 = load i32, i32* @VC_CONTAINER_CAPS_HAS_INDEX, align 4
  %332 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 8
  %335 = or i32 %334, %331
  store i32 %335, i32* %333, align 8
  %336 = load i32, i32* @VC_CONTAINER_CAPS_DATA_HAS_KEYFRAME_FLAG, align 4
  %337 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 8
  %340 = or i32 %339, %336
  store i32 %340, i32* %338, align 8
  br label %341

341:                                              ; preds = %321, %309
  %342 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %343 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %343, i32 0, i32 1
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 @SEEK(%struct.TYPE_36__* %342, i8* %345)
  br label %347

347:                                              ; preds = %341, %308
  br label %348

348:                                              ; preds = %347, %243
  %349 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %350 = call i32 @SKIP_FOURCC(%struct.TYPE_36__* %349, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %351

351:                                              ; preds = %376, %348
  %352 = load i32, i32* %8, align 4
  %353 = zext i32 %352 to i64
  %354 = load i64, i64* %10, align 8
  %355 = icmp ne i64 %353, %354
  br i1 %355, label %356, label %379

356:                                              ; preds = %351
  %357 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %357, i32 0, i32 1
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_37__*, %struct.TYPE_37__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %363, i32 0, i32 2
  %365 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %364, align 8
  %366 = load i32, i32* %8, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %365, i64 %367
  %369 = load %struct.TYPE_38__*, %struct.TYPE_38__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_35__*, %struct.TYPE_35__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_31__*, %struct.TYPE_31__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %374, i32 0, i32 0
  store %struct.TYPE_33__* %362, %struct.TYPE_33__** %375, align 8
  br label %376

376:                                              ; preds = %356
  %377 = load i32, i32* %8, align 4
  %378 = add i32 %377, 1
  store i32 %378, i32* %8, align 4
  br label %351

379:                                              ; preds = %351
  %380 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %381 = call i8* @STREAM_POSITION(%struct.TYPE_36__* %380)
  %382 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %382, i32 0, i32 1
  %384 = load %struct.TYPE_34__*, %struct.TYPE_34__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_37__*, %struct.TYPE_37__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %387, i32 0, i32 0
  store i8* %381, i8** %388, align 8
  %389 = call i32 @INT64_C(i32 0)
  store i32 %389, i32* %11, align 4
  %390 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %391 = load i32, i32* @VC_CONTAINER_SEEK_MODE_TIME, align 4
  %392 = load i32, i32* @VC_CONTAINER_SEEK_FLAG_PRECISE, align 4
  %393 = call i32 @avi_reader_seek(%struct.TYPE_36__* %390, i32* %11, i32 %391, i32 %392)
  %394 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %395 = call i64 @STREAM_STATUS(%struct.TYPE_36__* %394)
  store i64 %395, i64* %5, align 8
  %396 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %397 = icmp ne i64 %395, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %379
  br label %401

399:                                              ; preds = %379
  %400 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %400, i64* %2, align 8
  br label %441

401:                                              ; preds = %398, %210, %198, %166, %97
  %402 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %403 = load i64, i64* %5, align 8
  %404 = call i32 (%struct.TYPE_36__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_36__* %402, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i64 %403)
  store i32 0, i32* %8, align 4
  br label %405

405:                                              ; preds = %422, %401
  %406 = load i32, i32* %8, align 4
  %407 = zext i32 %406 to i64
  %408 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = icmp slt i64 %407, %410
  br i1 %411, label %412, label %425

412:                                              ; preds = %405
  %413 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %414 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %415 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %414, i32 0, i32 2
  %416 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %415, align 8
  %417 = load i32, i32* %8, align 4
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %416, i64 %418
  %420 = load %struct.TYPE_38__*, %struct.TYPE_38__** %419, align 8
  %421 = call i32 @vc_container_free_track(%struct.TYPE_36__* %413, %struct.TYPE_38__* %420)
  br label %422

422:                                              ; preds = %412
  %423 = load i32, i32* %8, align 4
  %424 = add i32 %423, 1
  store i32 %424, i32* %8, align 4
  br label %405

425:                                              ; preds = %405
  %426 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %426, i32 0, i32 2
  store %struct.TYPE_38__** null, %struct.TYPE_38__*** %427, align 8
  %428 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %428, i32 0, i32 0
  store i64 0, i64* %429, align 8
  %430 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %431 = icmp ne %struct.TYPE_37__* %430, null
  br i1 %431, label %432, label %435

432:                                              ; preds = %425
  %433 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %434 = call i32 @free(%struct.TYPE_37__* %433)
  br label %435

435:                                              ; preds = %432, %425
  %436 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %437 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %436, i32 0, i32 1
  %438 = load %struct.TYPE_34__*, %struct.TYPE_34__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %438, i32 0, i32 0
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %439, align 8
  %440 = load i64, i64* %5, align 8
  store i64 %440, i64* %2, align 8
  br label %441

441:                                              ; preds = %435, %399, %101, %60, %47, %32, %25, %18
  %442 = load i64, i64* %2, align 8
  ret i64 %442
}

declare dso_local i32 @PEEK_BYTES(%struct.TYPE_36__*, i32*, i32) #1

declare dso_local i64 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @SKIP_FOURCC(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @SKIP_U32(%struct.TYPE_36__*, i8*) #1

declare dso_local i64 @avi_find_list(%struct.TYPE_36__*, i64, i64*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_36__*, i8*, ...) #1

declare dso_local i64 @avi_find_chunk(%struct.TYPE_36__*, i64, i64*) #1

declare dso_local i64 @READ_U32(%struct.TYPE_36__*, i8*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_37__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_37__*, i32, i32) #1

declare dso_local %struct.TYPE_38__* @vc_container_allocate_track(%struct.TYPE_36__*, i32) #1

declare dso_local i64 @avi_read_stream_header_list(%struct.TYPE_36__*, %struct.TYPE_38__*, %struct.TYPE_31__*) #1

declare dso_local i8* @STREAM_POSITION(%struct.TYPE_36__*) #1

declare dso_local i32 @avi_reader_seek(%struct.TYPE_36__*, i32*, i32, i32) #1

declare dso_local i64 @STREAM_SEEKABLE(%struct.TYPE_36__*) #1

declare dso_local i32 @AVI_SKIP_CHUNK(%struct.TYPE_36__*, i64) #1

declare dso_local i32 @SEEK(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i32 @vc_container_free_track(%struct.TYPE_36__*, %struct.TYPE_38__*) #1

declare dso_local i32 @free(%struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
