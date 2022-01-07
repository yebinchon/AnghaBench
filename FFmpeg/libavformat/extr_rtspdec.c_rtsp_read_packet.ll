; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_15__**, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i64*, i32, i8*, i32, i64, i64, i32, i8*, i32, i32, i32, %struct.TYPE_16__, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@RTSP_SERVER_REAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Unsubscribe: %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SET_PARAMETER\00", align 1
@RTSP_STATUS_OK = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Subscribe: \00", align 1
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@RTSP_STATE_STREAMING = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@RTSP_LOWER_TRANSPORT_UDP = common dso_local global i64 0, align 8
@RTSP_LOWER_TRANSPORT_TCP = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"UDP timeout, retrying with TCP\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"TEARDOWN\00", align 1
@RTSP_STATE_IDLE = common dso_local global i64 0, align 8
@RTSP_FLAG_LISTEN = common dso_local global i32 0, align 4
@RTSP_SERVER_WMS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"GET_PARAMETER\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*)* @rtsp_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_read_packet(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_18__* %8, %struct.TYPE_18__** %9, align 8
  br label %20

20:                                               ; preds = %294, %2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RTSP_SERVER_REAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %225

26:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %36, i64 %38
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 %42, i64* %48, align 8
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %100, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 16
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = trunc i64 %68 to i32
  %70 = call i64 @memcmp(i64* %60, i32 %63, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %57
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %73, i32 1024, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 13
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = call i32 @ff_rtsp_send_cmd(%struct.TYPE_19__* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8* %82, %struct.TYPE_18__* %83, i32* null)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RTSP_STATUS_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %72
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %95 = call i32 @ff_rtsp_averror(i64 %93, i32 %94)
  store i32 %95, i32* %3, align 4
  br label %363

96:                                               ; preds = %72
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %96, %57
  br label %100

100:                                              ; preds = %99, %52
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %224

105:                                              ; preds = %100
  store i32 1, i32* %14, align 4
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 16
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i32 %108, i64* %111, i32 %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  store i8 0, i8* %122, align 1
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %124 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %123, i32 1024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %185, %105
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %188

131:                                              ; preds = %125
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %132

132:                                              ; preds = %181, %131
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %184

138:                                              ; preds = %132
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %141, i64 %143
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %180

150:                                              ; preds = %138
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %153, i64 %155
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @AVDISCARD_ALL, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %150
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @av_strlcat(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 8)
  br label %170

170:                                              ; preds = %165, %162
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @ff_rdt_subscribe_rule(i8* %173, i32 8, i32 %174, i32 %175)
  store i32 0, i32* %14, align 4
  br label %177

177:                                              ; preds = %170, %150
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %177, %138
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %12, align 4
  br label %132

184:                                              ; preds = %132
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %125

188:                                              ; preds = %125
  %189 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @av_strlcatf(i8* %189, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %192)
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 8
  %198 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %200 = call i32 @ff_rtsp_send_cmd(%struct.TYPE_19__* %194, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %197, i8* %198, %struct.TYPE_18__* %199, i32* null)
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @RTSP_STATUS_OK, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %188
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  %211 = call i32 @ff_rtsp_averror(i64 %209, i32 %210)
  store i32 %211, i32* %3, align 4
  br label %363

212:                                              ; preds = %188
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 2
  store i32 0, i32* %214, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @RTSP_STATE_STREAMING, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %212
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %222 = call i64 @rtsp_read_play(%struct.TYPE_19__* %221)
  br label %223

223:                                              ; preds = %220, %212
  br label %224

224:                                              ; preds = %223, %100
  br label %225

225:                                              ; preds = %224, %20
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %227 = load i32*, i32** %5, align 8
  %228 = call i32 @ff_rtsp_fetch_packet(%struct.TYPE_19__* %226, i32* %227)
  store i32 %228, i32* %7, align 4
  %229 = load i32, i32* %7, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %299

231:                                              ; preds = %225
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @ETIMEDOUT, align 4
  %234 = call i32 @AVERROR(i32 %233)
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %297

236:                                              ; preds = %231
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 15
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %297, label %241

241:                                              ; preds = %236
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 6
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @RTSP_LOWER_TRANSPORT_UDP, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %296

247:                                              ; preds = %241
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @RTSP_LOWER_TRANSPORT_TCP, align 4
  %252 = shl i32 1, %251
  %253 = and i32 %250, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %296

255:                                              ; preds = %247
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %16, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %257 = load i32, i32* @AV_LOG_WARNING, align 4
  %258 = call i32 @av_log(%struct.TYPE_19__* %256, i32 %257, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %260 = call i64 @rtsp_read_pause(%struct.TYPE_19__* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  store i32 -1, i32* %3, align 4
  br label %363

263:                                              ; preds = %255
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @RTSP_SERVER_REAL, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %263
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 13
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %275 = call i32 @ff_rtsp_send_cmd(%struct.TYPE_19__* %270, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %273, i8* null, %struct.TYPE_18__* %274, i32* null)
  br label %276

276:                                              ; preds = %269, %263
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 8
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 0
  store i8 0, i8* %280, align 1
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %282 = call i64 @resetup_tcp(%struct.TYPE_19__* %281)
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %276
  %285 = load i64, i64* @RTSP_STATE_IDLE, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 5
  store i64 %285, i64* %287, align 8
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 2
  store i32 1, i32* %289, align 8
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %291 = call i64 @rtsp_read_play(%struct.TYPE_19__* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %284
  store i32 -1, i32* %3, align 4
  br label %363

294:                                              ; preds = %284
  br label %20

295:                                              ; preds = %276
  br label %296

296:                                              ; preds = %295, %247, %241
  br label %297

297:                                              ; preds = %296, %236, %231
  %298 = load i32, i32* %7, align 4
  store i32 %298, i32* %3, align 4
  br label %363

299:                                              ; preds = %225
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 15
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 8
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 9
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @RTSP_FLAG_LISTEN, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %362, label %310

310:                                              ; preds = %299
  %311 = call i32 (...) @av_gettime_relative()
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 10
  %314 = load i32, i32* %313, align 4
  %315 = sub nsw i32 %311, %314
  %316 = sdiv i32 %315, 1000000
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 11
  %319 = load i32, i32* %318, align 8
  %320 = sdiv i32 %319, 2
  %321 = icmp sge i32 %316, %320
  br i1 %321, label %328, label %322

322:                                              ; preds = %310
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 12
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %361

328:                                              ; preds = %322, %310
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @RTSP_SERVER_WMS, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %345, label %334

334:                                              ; preds = %328
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @RTSP_SERVER_REAL, align 8
  %339 = icmp ne i64 %337, %338
  br i1 %339, label %340, label %351

340:                                              ; preds = %334
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 14
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %340, %328
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 13
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @ff_rtsp_send_cmd_async(%struct.TYPE_19__* %346, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %349, i32* null)
  br label %357

351:                                              ; preds = %340, %334
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 13
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @ff_rtsp_send_cmd_async(%struct.TYPE_19__* %352, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %355, i32* null)
  br label %357

357:                                              ; preds = %351, %345
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 12
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 0
  store i64 0, i64* %360, align 8
  br label %361

361:                                              ; preds = %357, %322
  br label %362

362:                                              ; preds = %361, %299
  store i32 0, i32* %3, align 4
  br label %363

363:                                              ; preds = %362, %297, %293, %262, %206, %90
  %364 = load i32, i32* %3, align 4
  ret i32 %364
}

declare dso_local i64 @memcmp(i64*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ff_rtsp_send_cmd(%struct.TYPE_19__*, i8*, i32, i8*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ff_rtsp_averror(i64, i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @av_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @ff_rdt_subscribe_rule(i8*, i32, i32, i32) #1

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @rtsp_read_play(%struct.TYPE_19__*) #1

declare dso_local i32 @ff_rtsp_fetch_packet(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i64 @rtsp_read_pause(%struct.TYPE_19__*) #1

declare dso_local i64 @resetup_tcp(%struct.TYPE_19__*) #1

declare dso_local i32 @av_gettime_relative(...) #1

declare dso_local i32 @ff_rtsp_send_cmd_async(%struct.TYPE_19__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
