; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_read_connect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_read_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i8*, i32, i32 }
%struct.TYPE_19__ = type { i64 }

@RTMP_PT_CHUNK_SIZE = common dso_local global i64 0, align 8
@RTMP_CTRL_ABORT_MESSAGE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"received abort message\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@RTMP_PT_BYTES_READ = common dso_local global i64 0, align 8
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"received acknowledgement\0A\00", align 1
@RTMP_PT_WINDOW_ACK_SIZE = common dso_local global i64 0, align 8
@RTMP_PT_SET_PEER_BW = common dso_local global i64 0, align 8
@RTMP_PT_INVOKE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Unknown control message type (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to read command string\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Expecting connect, got %s\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"SeqNum not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"app\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"App field not found in connect\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"App field don't match up: %s <-> %s\0A\00", align 1
@RTMP_NETWORK_CHANNEL = common dso_local global i32 0, align 4
@RTMP_PT_USER_CONTROL = common dso_local global i64 0, align 8
@RTMP_SYSTEM_CHANNEL = common dso_local global i32 0, align 4
@RTMP_PKTDATA_DEFAULT_SIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"_result\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"fmsVer\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"FMS/3,0,1,123\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"NetConnection.Connect.Success\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Connection succeeded.\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"objectEncoding\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"onBWDone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*)* @read_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_connect(i32* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca %struct.TYPE_19__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %15 = bitcast %struct.TYPE_17__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  br label %16

16:                                               ; preds = %111, %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i32 @ff_rtmp_packet_read(i32 %19, %struct.TYPE_17__* %6, i32 %22, i32* %26, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %16
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %431

35:                                               ; preds = %16
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RTMP_PT_CHUNK_SIZE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @handle_chunk_size(i32* %41, %struct.TYPE_17__* %6)
  store i32 %42, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %431

47:                                               ; preds = %40
  br label %111

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RTMP_CTRL_ABORT_MESSAGE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %54, i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %58 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %58, i32* %3, align 4
  br label %431

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RTMP_PT_BYTES_READ, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* @AV_LOG_TRACE, align 4
  %67 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %65, i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %109

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RTMP_PT_WINDOW_ACK_SIZE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @handle_window_ack_size(i32* %74, %struct.TYPE_17__* %6)
  store i32 %75, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %431

80:                                               ; preds = %73
  br label %108

81:                                               ; preds = %68
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @RTMP_PT_SET_PEER_BW, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @handle_set_peer_bw(i32* %87, %struct.TYPE_17__* %6)
  store i32 %88, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %431

93:                                               ; preds = %86
  br label %107

94:                                               ; preds = %81
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @RTMP_PT_INVOKE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %113

100:                                              ; preds = %94
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %101, i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %104)
  br label %106

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %93
  br label %108

108:                                              ; preds = %107, %80
  br label %109

109:                                              ; preds = %108, %64
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110, %47
  %112 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  br label %16

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @bytestream2_init(%struct.TYPE_19__* %14, i8* %116, i32 %118)
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %121 = call i64 @ff_amf_read_string(%struct.TYPE_19__* %14, i8* %120, i32 64, i32* %11)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* @AV_LOG_ERROR, align 4
  %126 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %124, i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %127 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %128 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %128, i32* %3, align 4
  br label %431

129:                                              ; preds = %113
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* @AV_LOG_ERROR, align 4
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %137 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %134, i32 %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %136)
  %138 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %139 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %139, i32* %3, align 4
  br label %431

140:                                              ; preds = %129
  %141 = call i32 @ff_amf_read_number(%struct.TYPE_19__* %14, double* %12)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* @AV_LOG_WARNING, align 4
  %147 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %145, i32 %146, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %140
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @bytestream2_get_bytes_left(%struct.TYPE_19__* %14)
  %154 = add nsw i64 %152, %153
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %156 = call i32 @ff_amf_get_field_value(i64 %150, i64 %154, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %155, i32 256)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %148
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* @AV_LOG_WARNING, align 4
  %162 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %160, i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %163

163:                                              ; preds = %159, %148
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %163
  %167 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @strcmp(i8* %167, i8* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* @AV_LOG_WARNING, align 4
  %176 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %174, i32 %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %176, i8* %179)
  br label %181

181:                                              ; preds = %173, %166, %163
  %182 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %183 = load i32, i32* @RTMP_NETWORK_CHANNEL, align 4
  %184 = load i64, i64* @RTMP_PT_WINDOW_ACK_SIZE, align 8
  %185 = call i32 @ff_rtmp_packet_create(%struct.TYPE_17__* %6, i32 %183, i64 %184, i32 0, i32 4)
  store i32 %185, i32* %9, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %3, align 4
  br label %431

189:                                              ; preds = %181
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %7, align 8
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @bytestream_put_be32(i8** %7, i32 %194)
  %196 = load i8*, i8** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = ptrtoint i8* %196 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store i32 %202, i32* %203, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = call i32 @ff_rtmp_packet_write(i32 %206, %struct.TYPE_17__* %6, i32 %209, i32* %213, i32* %217)
  store i32 %218, i32* %9, align 4
  %219 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %220 = load i32, i32* %9, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %189
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %3, align 4
  br label %431

224:                                              ; preds = %189
  %225 = load i32, i32* @RTMP_NETWORK_CHANNEL, align 4
  %226 = load i64, i64* @RTMP_PT_SET_PEER_BW, align 8
  %227 = call i32 @ff_rtmp_packet_create(%struct.TYPE_17__* %6, i32 %225, i64 %226, i32 0, i32 5)
  store i32 %227, i32* %9, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %3, align 4
  br label %431

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  store i8* %233, i8** %7, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @bytestream_put_be32(i8** %7, i32 %236)
  %238 = call i32 @bytestream_put_byte(i8** %7, i32 2)
  %239 = load i8*, i8** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = ptrtoint i8* %239 to i64
  %243 = ptrtoint i8* %241 to i64
  %244 = sub i64 %242, %243
  %245 = trunc i64 %244 to i32
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store i32 %245, i32* %246, align 8
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = call i32 @ff_rtmp_packet_write(i32 %249, %struct.TYPE_17__* %6, i32 %252, i32* %256, i32* %260)
  store i32 %261, i32* %9, align 4
  %262 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %263 = load i32, i32* %9, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %231
  %266 = load i32, i32* %9, align 4
  store i32 %266, i32* %3, align 4
  br label %431

267:                                              ; preds = %231
  %268 = load i32, i32* @RTMP_NETWORK_CHANNEL, align 4
  %269 = load i64, i64* @RTMP_PT_USER_CONTROL, align 8
  %270 = call i32 @ff_rtmp_packet_create(%struct.TYPE_17__* %6, i32 %268, i64 %269, i32 0, i32 6)
  store i32 %270, i32* %9, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %267
  %273 = load i32, i32* %9, align 4
  store i32 %273, i32* %3, align 4
  br label %431

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  store i8* %276, i8** %7, align 8
  %277 = call i32 @bytestream_put_be16(i8** %7, i32 0)
  %278 = call i32 @bytestream_put_be32(i8** %7, i32 0)
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  %293 = call i32 @ff_rtmp_packet_write(i32 %281, %struct.TYPE_17__* %6, i32 %284, i32* %288, i32* %292)
  store i32 %293, i32* %9, align 4
  %294 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %295 = load i32, i32* %9, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %274
  %298 = load i32, i32* %9, align 4
  store i32 %298, i32* %3, align 4
  br label %431

299:                                              ; preds = %274
  %300 = load i32, i32* @RTMP_NETWORK_CHANNEL, align 4
  %301 = load i64, i64* @RTMP_PT_CHUNK_SIZE, align 8
  %302 = call i32 @ff_rtmp_packet_create(%struct.TYPE_17__* %6, i32 %300, i64 %301, i32 0, i32 4)
  store i32 %302, i32* %9, align 4
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  %305 = load i32, i32* %9, align 4
  store i32 %305, i32* %3, align 4
  br label %431

306:                                              ; preds = %299
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %308 = load i8*, i8** %307, align 8
  store i8* %308, i8** %7, align 8
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @bytestream_put_be32(i8** %7, i32 %311)
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %323, i32 0, i32 1
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 1
  %327 = call i32 @ff_rtmp_packet_write(i32 %315, %struct.TYPE_17__* %6, i32 %318, i32* %322, i32* %326)
  store i32 %327, i32* %9, align 4
  %328 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %329 = load i32, i32* %9, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %306
  %332 = load i32, i32* %9, align 4
  store i32 %332, i32* %3, align 4
  br label %431

333:                                              ; preds = %306
  %334 = load i32, i32* @RTMP_SYSTEM_CHANNEL, align 4
  %335 = load i64, i64* @RTMP_PT_INVOKE, align 8
  %336 = load i32, i32* @RTMP_PKTDATA_DEFAULT_SIZE, align 4
  %337 = call i32 @ff_rtmp_packet_create(%struct.TYPE_17__* %6, i32 %334, i64 %335, i32 0, i32 %336)
  store i32 %337, i32* %9, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %333
  %340 = load i32, i32* %9, align 4
  store i32 %340, i32* %3, align 4
  br label %431

341:                                              ; preds = %333
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %343 = load i8*, i8** %342, align 8
  store i8* %343, i8** %7, align 8
  %344 = call i32 @ff_amf_write_string(i8** %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %345 = load double, double* %12, align 8
  %346 = fptosi double %345 to i32
  %347 = call i32 @ff_amf_write_number(i8** %7, i32 %346)
  %348 = call i32 @ff_amf_write_object_start(i8** %7)
  %349 = call i32 @ff_amf_write_field_name(i8** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %350 = call i32 @ff_amf_write_string(i8** %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %351 = call i32 @ff_amf_write_field_name(i8** %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %352 = call i32 @ff_amf_write_number(i8** %7, i32 31)
  %353 = call i32 @ff_amf_write_object_end(i8** %7)
  %354 = call i32 @ff_amf_write_object_start(i8** %7)
  %355 = call i32 @ff_amf_write_field_name(i8** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %356 = call i32 @ff_amf_write_string(i8** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %357 = call i32 @ff_amf_write_field_name(i8** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %358 = call i32 @ff_amf_write_string(i8** %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %359 = call i32 @ff_amf_write_field_name(i8** %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %360 = call i32 @ff_amf_write_string(i8** %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %361 = call i32 @ff_amf_write_field_name(i8** %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %362 = call i32 @ff_amf_write_number(i8** %7, i32 0)
  %363 = call i32 @ff_amf_write_object_end(i8** %7)
  %364 = load i8*, i8** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %366 = load i8*, i8** %365, align 8
  %367 = ptrtoint i8* %364 to i64
  %368 = ptrtoint i8* %366 to i64
  %369 = sub i64 %367, %368
  %370 = trunc i64 %369 to i32
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store i32 %370, i32* %371, align 8
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 2
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 1
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 1
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 1
  %386 = call i32 @ff_rtmp_packet_write(i32 %374, %struct.TYPE_17__* %6, i32 %377, i32* %381, i32* %385)
  store i32 %386, i32* %9, align 4
  %387 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %388 = load i32, i32* %9, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %341
  %391 = load i32, i32* %9, align 4
  store i32 %391, i32* %3, align 4
  br label %431

392:                                              ; preds = %341
  %393 = load i32, i32* @RTMP_SYSTEM_CHANNEL, align 4
  %394 = load i64, i64* @RTMP_PT_INVOKE, align 8
  %395 = call i32 @ff_rtmp_packet_create(%struct.TYPE_17__* %6, i32 %393, i64 %394, i32 0, i32 30)
  store i32 %395, i32* %9, align 4
  %396 = icmp slt i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %392
  %398 = load i32, i32* %9, align 4
  store i32 %398, i32* %3, align 4
  br label %431

399:                                              ; preds = %392
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %401 = load i8*, i8** %400, align 8
  store i8* %401, i8** %7, align 8
  %402 = call i32 @ff_amf_write_string(i8** %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %403 = call i32 @ff_amf_write_number(i8** %7, i32 0)
  %404 = call i32 @ff_amf_write_null(i8** %7)
  %405 = call i32 @ff_amf_write_number(i8** %7, i32 8192)
  %406 = load i8*, i8** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %408 = load i8*, i8** %407, align 8
  %409 = ptrtoint i8* %406 to i64
  %410 = ptrtoint i8* %408 to i64
  %411 = sub i64 %409, %410
  %412 = trunc i64 %411 to i32
  %413 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store i32 %412, i32* %413, align 8
  %414 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %415 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %420, i32 0, i32 2
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 1
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 1
  %428 = call i32 @ff_rtmp_packet_write(i32 %416, %struct.TYPE_17__* %6, i32 %419, i32* %423, i32* %427)
  store i32 %428, i32* %9, align 4
  %429 = call i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__* %6)
  %430 = load i32, i32* %9, align 4
  store i32 %430, i32* %3, align 4
  br label %431

431:                                              ; preds = %399, %397, %390, %339, %331, %304, %297, %272, %265, %229, %222, %187, %133, %123, %90, %77, %53, %44, %33
  %432 = load i32, i32* %3, align 4
  ret i32 %432
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_rtmp_packet_read(i32, %struct.TYPE_17__*, i32, i32*, i32*) #2

declare dso_local i32 @handle_chunk_size(i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @ff_rtmp_packet_destroy(%struct.TYPE_17__*) #2

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #2

declare dso_local i32 @handle_window_ack_size(i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @handle_set_peer_bw(i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @bytestream2_init(%struct.TYPE_19__*, i8*, i32) #2

declare dso_local i64 @ff_amf_read_string(%struct.TYPE_19__*, i8*, i32, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ff_amf_read_number(%struct.TYPE_19__*, double*) #2

declare dso_local i32 @ff_amf_get_field_value(i64, i64, i8*, i8*, i32) #2

declare dso_local i64 @bytestream2_get_bytes_left(%struct.TYPE_19__*) #2

declare dso_local i32 @ff_rtmp_packet_create(%struct.TYPE_17__*, i32, i64, i32, i32) #2

declare dso_local i32 @bytestream_put_be32(i8**, i32) #2

declare dso_local i32 @ff_rtmp_packet_write(i32, %struct.TYPE_17__*, i32, i32*, i32*) #2

declare dso_local i32 @bytestream_put_byte(i8**, i32) #2

declare dso_local i32 @bytestream_put_be16(i8**, i32) #2

declare dso_local i32 @ff_amf_write_string(i8**, i8*) #2

declare dso_local i32 @ff_amf_write_number(i8**, i32) #2

declare dso_local i32 @ff_amf_write_object_start(i8**) #2

declare dso_local i32 @ff_amf_write_field_name(i8**, i8*) #2

declare dso_local i32 @ff_amf_write_object_end(i8**) #2

declare dso_local i32 @ff_amf_write_null(i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
