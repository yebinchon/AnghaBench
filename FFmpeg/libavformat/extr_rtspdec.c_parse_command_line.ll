; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_parse_command_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_parse_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error parsing method string\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Method string too long\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ANNOUNCE\00", align 1
@ANNOUNCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@OPTIONS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"RECORD\00", align 1
@RECORD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"SETUP\00", align 1
@SETUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1
@PAUSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"TEARDOWN\00", align 1
@TEARDOWN = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@RTSP_STATE_IDLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Unexpected command in Idle State %s\0A\00", align 1
@AVERROR_PROTOCOL_NOT_FOUND = common dso_local global i32 0, align 4
@RTSP_STATE_PAUSED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"Unexpected command in Paused State %s\0A\00", align 1
@RTSP_STATE_STREAMING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"Unexpected command in Streaming State %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Unexpected State [%d]\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"Error parsing message URI\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"uri string length exceeded buffer size\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"Host %s differs from expected %s\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"WARNING: Path %s differs from expected %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Updating control URI to %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"RTSP/1.0\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"Error parsing protocol or version\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i32, i8*, i32, i8*, i32, i32*)* @parse_command_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_command_line(%struct.TYPE_6__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [128 x i8], align 16
  %22 = alloca [512 x i8], align 16
  %23 = alloca [128 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca [128 x i8], align 16
  %26 = alloca [512 x i8], align 16
  %27 = alloca [128 x i8], align 16
  %28 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %18, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 32)
  store i8* %33, i8** %19, align 8
  %34 = load i8*, i8** %19, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = load i32, i32* @AV_LOG_ERROR, align 4
  %39 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %37, i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %9, align 4
  br label %330

41:                                               ; preds = %8
  %42 = load i8*, i8** %19, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = load i32, i32* %16, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %53 = load i32, i32* @AV_LOG_ERROR, align 4
  %54 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %52, i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EIO, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %9, align 4
  br label %330

57:                                               ; preds = %41
  %58 = load i8*, i8** %15, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %19, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i8* %58, i8* %59, i32 %65)
  %67 = load i8*, i8** %15, align 8
  %68 = load i8*, i8** %19, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = getelementptr inbounds i8, i8* %67, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i8*, i8** %19, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %19, align 8
  %76 = load i8*, i8** %15, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %57
  %80 = load i32, i32* @ANNOUNCE, align 4
  %81 = load i32*, i32** %17, align 8
  store i32 %80, i32* %81, align 4
  br label %125

82:                                               ; preds = %57
  %83 = load i8*, i8** %15, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @OPTIONS, align 4
  %88 = load i32*, i32** %17, align 8
  store i32 %87, i32* %88, align 4
  br label %124

89:                                               ; preds = %82
  %90 = load i8*, i8** %15, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @RECORD, align 4
  %95 = load i32*, i32** %17, align 8
  store i32 %94, i32* %95, align 4
  br label %123

96:                                               ; preds = %89
  %97 = load i8*, i8** %15, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @SETUP, align 4
  %102 = load i32*, i32** %17, align 8
  store i32 %101, i32* %102, align 4
  br label %122

103:                                              ; preds = %96
  %104 = load i8*, i8** %15, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* @PAUSE, align 4
  %109 = load i32*, i32** %17, align 8
  store i32 %108, i32* %109, align 4
  br label %121

110:                                              ; preds = %103
  %111 = load i8*, i8** %15, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @TEARDOWN, align 4
  %116 = load i32*, i32** %17, align 8
  store i32 %115, i32* %116, align 4
  br label %120

117:                                              ; preds = %110
  %118 = load i32, i32* @UNKNOWN, align 4
  %119 = load i32*, i32** %17, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %107
  br label %122

122:                                              ; preds = %121, %100
  br label %123

123:                                              ; preds = %122, %93
  br label %124

124:                                              ; preds = %123, %86
  br label %125

125:                                              ; preds = %124, %79
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @RTSP_STATE_IDLE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %125
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ANNOUNCE, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load i32*, i32** %17, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @OPTIONS, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %143 = load i32, i32* @AV_LOG_ERROR, align 4
  %144 = load i8*, i8** %11, align 8
  %145 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %142, i32 %143, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* %144)
  %146 = load i32, i32* @AVERROR_PROTOCOL_NOT_FOUND, align 4
  store i32 %146, i32* %9, align 4
  br label %330

147:                                              ; preds = %136, %131
  br label %214

148:                                              ; preds = %125
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @RTSP_STATE_PAUSED, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %176

154:                                              ; preds = %148
  %155 = load i32*, i32** %17, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @OPTIONS, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %175

159:                                              ; preds = %154
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @RECORD, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %159
  %165 = load i32*, i32** %17, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @SETUP, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %171 = load i32, i32* @AV_LOG_ERROR, align 4
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %170, i32 %171, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %172)
  %174 = load i32, i32* @AVERROR_PROTOCOL_NOT_FOUND, align 4
  store i32 %174, i32* %9, align 4
  br label %330

175:                                              ; preds = %164, %159, %154
  br label %213

176:                                              ; preds = %148
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @RTSP_STATE_STREAMING, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %204

182:                                              ; preds = %176
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @PAUSE, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %203

187:                                              ; preds = %182
  %188 = load i32*, i32** %17, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @OPTIONS, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %187
  %193 = load i32*, i32** %17, align 8
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @TEARDOWN, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %199 = load i32, i32* @AV_LOG_ERROR, align 4
  %200 = load i8*, i8** %11, align 8
  %201 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %198, i32 %199, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i8* %200)
  %202 = load i32, i32* @AVERROR_PROTOCOL_NOT_FOUND, align 4
  store i32 %202, i32* %9, align 4
  br label %330

203:                                              ; preds = %192, %187, %182
  br label %212

204:                                              ; preds = %176
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %206 = load i32, i32* @AV_LOG_ERROR, align 4
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %205, i32 %206, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %211, i32* %9, align 4
  br label %330

212:                                              ; preds = %203
  br label %213

213:                                              ; preds = %212, %175
  br label %214

214:                                              ; preds = %213, %147
  %215 = load i8*, i8** %19, align 8
  %216 = call i8* @strchr(i8* %215, i8 signext 32)
  store i8* %216, i8** %20, align 8
  %217 = load i8*, i8** %20, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %224, label %219

219:                                              ; preds = %214
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %221 = load i32, i32* @AV_LOG_ERROR, align 4
  %222 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %220, i32 %221, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %223 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %223, i32* %9, align 4
  br label %330

224:                                              ; preds = %214
  %225 = load i8*, i8** %20, align 8
  %226 = load i8*, i8** %19, align 8
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = load i32, i32* %14, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = icmp sgt i64 %229, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %224
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %236 = load i32, i32* @AV_LOG_ERROR, align 4
  %237 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %235, i32 %236, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %238 = load i32, i32* @EIO, align 4
  %239 = call i32 @AVERROR(i32 %238)
  store i32 %239, i32* %9, align 4
  br label %330

240:                                              ; preds = %224
  %241 = load i8*, i8** %13, align 8
  %242 = load i8*, i8** %19, align 8
  %243 = load i8*, i8** %20, align 8
  %244 = load i8*, i8** %19, align 8
  %245 = ptrtoint i8* %243 to i64
  %246 = ptrtoint i8* %244 to i64
  %247 = sub i64 %245, %246
  %248 = trunc i64 %247 to i32
  %249 = call i32 @memcpy(i8* %241, i8* %242, i32 %248)
  %250 = load i8*, i8** %13, align 8
  %251 = load i8*, i8** %20, align 8
  %252 = load i8*, i8** %19, align 8
  %253 = ptrtoint i8* %251 to i64
  %254 = ptrtoint i8* %252 to i64
  %255 = sub i64 %253, %254
  %256 = getelementptr inbounds i8, i8* %250, i64 %255
  store i8 0, i8* %256, align 1
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load i8*, i8** %13, align 8
  %261 = call i64 @strcmp(i8* %259, i8* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %318

263:                                              ; preds = %240
  %264 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %265 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %266 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %267 = load i8*, i8** %13, align 8
  %268 = call i32 @av_url_split(i32* null, i32 0, i8* %264, i32 128, i8* %265, i32 128, i32* %24, i8* %266, i32 512, i8* %267)
  %269 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %270 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 0
  %271 = getelementptr inbounds [512 x i8], [512 x i8]* %26, i64 0, i64 0
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @av_url_split(i32* null, i32 0, i8* %269, i32 128, i8* %270, i32 128, i32* %28, i8* %271, i32 512, i8* %274)
  %276 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %277 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 0
  %278 = call i64 @strcmp(i8* %276, i8* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %263
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %282 = load i32, i32* @AV_LOG_INFO, align 4
  %283 = getelementptr inbounds [128 x i8], [128 x i8]* %21, i64 0, i64 0
  %284 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 0
  %285 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %281, i32 %282, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %283, i8* %284)
  br label %286

286:                                              ; preds = %280, %263
  %287 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %288 = getelementptr inbounds [512 x i8], [512 x i8]* %26, i64 0, i64 0
  %289 = call i64 @strcmp(i8* %287, i8* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %302

291:                                              ; preds = %286
  %292 = load i32*, i32** %17, align 8
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @SETUP, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %298 = load i32, i32* @AV_LOG_WARNING, align 4
  %299 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %300 = getelementptr inbounds [512 x i8], [512 x i8]* %26, i64 0, i64 0
  %301 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %297, i32 %298, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i8* %299, i8* %300)
  br label %302

302:                                              ; preds = %296, %291, %286
  %303 = load i32*, i32** %17, align 8
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @ANNOUNCE, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %317

307:                                              ; preds = %302
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %309 = load i32, i32* @AV_LOG_INFO, align 4
  %310 = load i8*, i8** %13, align 8
  %311 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %308, i32 %309, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i8* %310)
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = load i8*, i8** %13, align 8
  %316 = call i32 @av_strlcpy(i8* %314, i8* %315, i32 8)
  br label %317

317:                                              ; preds = %307, %302
  br label %318

318:                                              ; preds = %317, %240
  %319 = load i8*, i8** %20, align 8
  %320 = getelementptr inbounds i8, i8* %319, i64 1
  store i8* %320, i8** %19, align 8
  %321 = load i8*, i8** %19, align 8
  %322 = call i32 @av_strstart(i8* %321, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32* null)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %318
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %326 = load i32, i32* @AV_LOG_ERROR, align 4
  %327 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @av_log(%struct.TYPE_6__* %325, i32 %326, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %328 = load i32, i32* @AVERROR_PROTOCOL_NOT_FOUND, align 4
  store i32 %328, i32* %9, align 4
  br label %330

329:                                              ; preds = %318
  store i32 0, i32* %9, align 4
  br label %330

330:                                              ; preds = %329, %324, %234, %219, %204, %197, %169, %141, %51, %36
  %331 = load i32, i32* %9, align 4
  ret i32 %331
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_url_split(i32*, i32, i8*, i32, i8*, i32, i32*, i8*, i32, i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_strstart(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
