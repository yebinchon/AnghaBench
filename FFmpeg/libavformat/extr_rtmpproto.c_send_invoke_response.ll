; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_send_invoke_response.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_send_invoke_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Error in PT_INVOKE\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"FCPublish\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"publish\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Unable to parse stream name - name too long?\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to parse stream name\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Unable to find / in url %s, bad format\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Unexpected stream %s, expecting %s\0A\00", align 1
@STATE_RECEIVING = common dso_local global i32 0, align 4
@RTMP_SYSTEM_CHANNEL = common dso_local global i32 0, align 4
@RTMP_PT_INVOKE = common dso_local global i32 0, align 4
@RTMP_PKTDATA_DEFAULT_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Unable to create response packet\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"onFCPublish\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"NetStream.Publish.Start\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@STATE_SENDING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"NetStream.Play.Start\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"_result\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"createStream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @send_invoke_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_invoke_response(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca double, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %23 = bitcast %struct.TYPE_14__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = load i32*, i32** %12, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @bytestream2_init(i32* %15, i32* %24, i32 %27)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %30 = call i32 @ff_amf_read_string(i32* %15, i8* %29, i32 64, i32* %10)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %33, i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %3, align 4
  br label %247

37:                                               ; preds = %2
  %38 = call i32 @ff_amf_read_number(i32* %15, double* %7)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %16, align 4
  store i32 %42, i32* %3, align 4
  br label %247

43:                                               ; preds = %37
  %44 = call i32 @ff_amf_read_null(i32* %15)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %3, align 4
  br label %247

49:                                               ; preds = %43
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %117, label %57

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %59 = call i32 @ff_amf_read_string(i32* %15, i8* %58, i32 128, i32* %10)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @EINVAL, align 4
  %65 = call i32 @AVERROR(i32 %64)
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = load i32, i32* @AV_LOG_ERROR, align 4
  %70 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %68, i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %75

71:                                               ; preds = %62
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %72, i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %16, align 4
  store i32 %76, i32* %3, align 4
  br label %247

77:                                               ; preds = %57
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %113

82:                                               ; preds = %77
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @strrchr(i8* %85, i8 signext 47)
  store i8* %86, i8** %11, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %82
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = load i32, i32* @AV_LOG_WARNING, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %90, i32 %91, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %11, align 8
  br label %99

99:                                               ; preds = %89, %82
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %104 = call i64 @strcmp(i8* %102, i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = load i32, i32* @AV_LOG_WARNING, align 4
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %107, i32 %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %109, i8* %110)
  br label %112

112:                                              ; preds = %106, %99
  br label %113

113:                                              ; preds = %112, %77
  %114 = load i32, i32* @STATE_RECEIVING, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %113, %53
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* @RTMP_SYSTEM_CHANNEL, align 4
  %123 = load i32, i32* @RTMP_PT_INVOKE, align 4
  %124 = load i32, i32* @RTMP_PKTDATA_DEFAULT_SIZE, align 4
  %125 = call i32 @ff_rtmp_packet_create(%struct.TYPE_14__* %14, i32 %122, i32 %123, i32 0, i32 %124)
  store i32 %125, i32* %16, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = load i32, i32* @AV_LOG_ERROR, align 4
  %130 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %128, i32 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %3, align 4
  br label %247

132:                                              ; preds = %121
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %13, align 8
  %135 = call i32 @ff_amf_write_string(i32** %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %220

136:                                              ; preds = %117
  %137 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %136
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %142 = call i32 @write_begin(%struct.TYPE_13__* %141)
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %3, align 4
  br label %247

147:                                              ; preds = %140
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %150 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %151 = call i32 @write_status(%struct.TYPE_13__* %148, %struct.TYPE_14__* %149, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %150)
  store i32 %151, i32* %3, align 4
  br label %247

152:                                              ; preds = %136
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %171, label %156

156:                                              ; preds = %152
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %158 = call i32 @write_begin(%struct.TYPE_13__* %157)
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %16, align 4
  store i32 %162, i32* %3, align 4
  br label %247

163:                                              ; preds = %156
  %164 = load i32, i32* @STATE_SENDING, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %169 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %170 = call i32 @write_status(%struct.TYPE_13__* %167, %struct.TYPE_14__* %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %169)
  store i32 %170, i32* %3, align 4
  br label %247

171:                                              ; preds = %152
  %172 = load i32, i32* @RTMP_SYSTEM_CHANNEL, align 4
  %173 = load i32, i32* @RTMP_PT_INVOKE, align 4
  %174 = load i32, i32* @RTMP_PKTDATA_DEFAULT_SIZE, align 4
  %175 = call i32 @ff_rtmp_packet_create(%struct.TYPE_14__* %14, i32 %172, i32 %173, i32 0, i32 %174)
  store i32 %175, i32* %16, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = load i32, i32* @AV_LOG_ERROR, align 4
  %180 = call i32 (%struct.TYPE_13__*, i32, i8*, ...) @av_log(%struct.TYPE_13__* %178, i32 %179, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %181 = load i32, i32* %16, align 4
  store i32 %181, i32* %3, align 4
  br label %247

182:                                              ; preds = %171
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %13, align 8
  %185 = call i32 @ff_amf_write_string(i32** %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %186 = load double, double* %7, align 8
  %187 = call i32 @ff_amf_write_number(i32** %13, double %186)
  %188 = call i32 @ff_amf_write_null(i32** %13)
  %189 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %190 = call i64 @strcmp(i8* %189, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %217, label %192

192:                                              ; preds = %182
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %192
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 2
  br i1 %205, label %206, label %211

206:                                              ; preds = %201, %192
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %206, %201
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sitofp i32 %214 to double
  %216 = call i32 @ff_amf_write_number(i32** %13, double %215)
  br label %217

217:                                              ; preds = %211, %182
  br label %218

218:                                              ; preds = %217
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219, %132
  %221 = load i32*, i32** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = ptrtoint i32* %221 to i64
  %225 = ptrtoint i32* %223 to i64
  %226 = sub i64 %224, %225
  %227 = sdiv exact i64 %226, 4
  %228 = trunc i64 %227 to i32
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i32 %228, i32* %229, align 8
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 1
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = call i32 @ff_rtmp_packet_write(i32 %232, %struct.TYPE_14__* %14, i32 %235, i32* %239, i32* %243)
  store i32 %244, i32* %16, align 4
  %245 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_14__* %14)
  %246 = load i32, i32* %16, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %220, %177, %163, %161, %147, %145, %127, %75, %47, %41, %32
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #2

declare dso_local i32 @ff_amf_read_string(i32*, i8*, i32, i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, ...) #2

declare dso_local i32 @ff_amf_read_number(i32*, double*) #2

declare dso_local i32 @ff_amf_read_null(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @ff_rtmp_packet_create(%struct.TYPE_14__*, i32, i32, i32, i32) #2

declare dso_local i32 @ff_amf_write_string(i32**, i8*) #2

declare dso_local i32 @write_begin(%struct.TYPE_13__*) #2

declare dso_local i32 @write_status(%struct.TYPE_13__*, %struct.TYPE_14__*, i8*, i8*) #2

declare dso_local i32 @ff_amf_write_number(i32**, double) #2

declare dso_local i32 @ff_amf_write_null(i32**) #2

declare dso_local i32 @ff_rtmp_packet_write(i32, %struct.TYPE_14__*, i32, i32*, i32*) #2

declare dso_local i32 @ff_rtmp_packet_destroy(%struct.TYPE_14__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
