; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_setup.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i8*, i32, i64, %struct.TYPE_14__**, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"No transport defined in SETUP\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@RTSP_LOWER_TRANSPORT_UDP = common dso_local global i64 0, align 8
@RTSP_LOWER_TRANSPORT_TCP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"mode=record/receive not set or transport protocol not supported (yet)\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"More than one transport not supported, using first of all\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to find requested track\0A\00", align 1
@AVERROR_STREAM_NOT_FOUND = common dso_local global i32 0, align 4
@RTSP_STATUS_TRANSPORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"Transport: RTP/AVP/TCP;unicast;mode=receive;interleaved=%d-%d\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"rtp\00", align 1
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"Opening: %s\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"Listening on: %d\00", align 1
@.str.11 = private unnamed_addr constant [92 x i8] c"Transport: RTP/AVP/UDP;unicast;mode=receive;source=%s;client_port=%d-%d;server_port=%d-%d\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Session: %s\0D\0A\00", align 1
@RTSP_STATUS_OK = common dso_local global i32 0, align 4
@RTSP_STATE_PAUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i8*, i8*)* @rtsp_read_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_read_setup(%struct.TYPE_17__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [256 x i8], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %8, align 8
  %22 = bitcast %struct.TYPE_16__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 24, i1 false)
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %24 = call i32 @rtsp_read_request(%struct.TYPE_17__* %23, %struct.TYPE_16__* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %320

29:                                               ; preds = %3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %38, i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %4, align 4
  br label %320

42:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %83, %42
  %44 = load i32, i32* %15, align 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %86

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RTSP_LOWER_TRANSPORT_UDP, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RTSP_LOWER_TRANSPORT_TCP, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %67, %48
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %78, i32 %79, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %4, align 4
  br label %320

82:                                               ; preds = %67, %57
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %43

86:                                               ; preds = %43
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = load i32, i32* @AV_LOG_WARNING, align 4
  %93 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %91, i32 %92, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %90, %86
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i32, i32* %16, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 7
  %104 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %103, align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %104, i64 %106
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @strcmp(i32 %110, i8* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %101
  br label %119

115:                                              ; preds = %101
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %95

119:                                              ; preds = %114, %95
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = load i32, i32* @AV_LOG_ERROR, align 4
  %128 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %126, i32 %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* @AVERROR_STREAM_NOT_FOUND, align 4
  store i32 %129, i32* %4, align 4
  br label %320

130:                                              ; preds = %119
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %132, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %133, i64 %135
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  store %struct.TYPE_14__* %137, %struct.TYPE_14__** %12, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %14, align 4
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @RTSP_LOWER_TRANSPORT_TCP, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %190

148:                                              ; preds = %130
  %149 = load i64, i64* @RTSP_LOWER_TRANSPORT_TCP, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 6
  store i64 %149, i64* %151, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %154 = call i32 @ff_rtsp_open_transport_ctx(%struct.TYPE_17__* %152, %struct.TYPE_14__* %153)
  store i32 %154, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %148
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %158 = load i32, i32* @RTSP_STATUS_TRANSPORT, align 4
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @rtsp_send_reply(%struct.TYPE_17__* %157, i32 %158, i8* null, i32 %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %4, align 4
  br label %320

163:                                              ; preds = %148
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i64 0
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %178, i32 1024, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %183, i32 %188)
  br label %292

190:                                              ; preds = %130
  br label %191

191:                                              ; preds = %236, %190
  store i32* null, i32** %17, align 8
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %192, i32 256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  %197 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %198 = call i32 @av_dict_set(i32** %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %197, i32 0)
  %199 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %200 = load i8*, i8** %6, align 8
  %201 = load i32, i32* %14, align 4
  %202 = call i32 @ff_url_join(i8* %199, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* null, i8* %200, i32 %201, i32* null)
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %204 = load i32, i32* @AV_LOG_TRACE, align 4
  %205 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %206 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %203, i32 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %205)
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %210 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @ffurl_open_whitelist(i32* %208, i8* %209, i32 %210, i32* %212, i32** %17, i32 %215, i32 %218, i32* null)
  store i32 %219, i32* %10, align 4
  %220 = call i32 @av_dict_free(i32** %17)
  %221 = load i32, i32* %10, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %191
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 2
  store i32 %225, i32* %14, align 4
  br label %226

226:                                              ; preds = %223, %191
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* %14, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp sgt i32 %231, %234
  br label %236

236:                                              ; preds = %230, %227
  %237 = phi i1 [ true, %227 ], [ %235, %230 ]
  br i1 %237, label %191, label %238

238:                                              ; preds = %236
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = icmp sgt i32 %239, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %238
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %246 = load i32, i32* @RTSP_STATUS_TRANSPORT, align 4
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @rtsp_send_reply(%struct.TYPE_17__* %245, i32 %246, i8* null, i32 %248)
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %4, align 4
  br label %320

251:                                              ; preds = %238
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %253 = load i32, i32* @AV_LOG_TRACE, align 4
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @ff_rtp_get_local_rtp_port(i32 %256)
  %258 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %252, i32 %253, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* %257)
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %261 = call i32 @ff_rtsp_open_transport_ctx(%struct.TYPE_17__* %259, %struct.TYPE_14__* %260)
  store i32 %261, i32* %10, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %251
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %265 = load i32, i32* @RTSP_STATUS_TRANSPORT, align 4
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @rtsp_send_reply(%struct.TYPE_17__* %264, i32 %265, i8* null, i32 %267)
  %269 = load i32, i32* %10, align 4
  store i32 %269, i32* %4, align 4
  br label %320

270:                                              ; preds = %251
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i8* @ff_rtp_get_local_rtp_port(i32 %273)
  %275 = ptrtoint i8* %274 to i32
  store i32 %275, i32* %14, align 4
  %276 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %277 = load i8*, i8** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i64 0
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i64 0
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %14, align 4
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  %291 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %276, i32 1024, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.11, i64 0, i64 0), i8* %277, i32 %282, i32 %287, i32 %288, i32 %290)
  br label %292

292:                                              ; preds = %270, %163
  br label %293

293:                                              ; preds = %299, %292
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 4
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 @strlen(i8* %296)
  %298 = icmp slt i32 %297, 8
  br i1 %298, label %299, label %305

299:                                              ; preds = %293
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 4
  %302 = load i8*, i8** %301, align 8
  %303 = call i8* (...) @av_get_random_seed()
  %304 = call i32 @av_strlcatf(i8* %302, i32 512, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %303)
  br label %293

305:                                              ; preds = %293
  %306 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 4
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @av_strlcatf(i8* %306, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* %309)
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %312 = load i32, i32* @RTSP_STATUS_OK, align 4
  %313 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @rtsp_send_reply(%struct.TYPE_17__* %311, i32 %312, i8* %313, i32 %315)
  %317 = load i32, i32* @RTSP_STATE_PAUSED, align 4
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 5
  store i32 %317, i32* %319, align 8
  store i32 0, i32* %4, align 4
  br label %320

320:                                              ; preds = %305, %263, %244, %156, %125, %77, %37, %27
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rtsp_read_request(%struct.TYPE_17__*, %struct.TYPE_16__*, i8*) #2

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, ...) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @ff_rtsp_open_transport_ctx(%struct.TYPE_17__*, %struct.TYPE_14__*) #2

declare dso_local i32 @rtsp_send_reply(%struct.TYPE_17__*, i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #2

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i8*, i32, i32*) #2

declare dso_local i32 @ffurl_open_whitelist(i32*, i8*, i32, i32*, i32**, i32, i32, i32*) #2

declare dso_local i32 @av_dict_free(i32**) #2

declare dso_local i8* @ff_rtp_get_local_rtp_port(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @av_get_random_seed(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
