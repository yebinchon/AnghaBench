; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.dshow_ctx* }
%struct.dshow_ctx = type { i64, i64, i32*, i32*, i32*, i32, i64*, i64, i64*, i64, i32*, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Malformed dshow input string.\0A\00", align 1
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"Pixel format may only be set when video codec is not set or set to rawvideo\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not parse framerate '%s'.\0A\00", align 1
@CLSID_FilterGraph = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IGraphBuilder = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Could not create capture graph.\0A\00", align 1
@CLSID_SystemDeviceEnum = common dso_local global i32 0, align 4
@IID_ICreateDevEnum = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Could not enumerate system devices.\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [69 x i8] c"DirectShow video devices (some may be both video and audio devices)\0A\00", align 1
@VideoDevice = common dso_local global i64 0, align 8
@VideoSourceDevice = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"DirectShow audio devices\0A\00", align 1
@AudioDevice = common dso_local global i64 0, align 8
@AudioSourceDevice = common dso_local global i32 0, align 4
@AVERROR_EXIT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"Searching for audio device within video devices for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Could not create Mutex\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Could not create Event\0A\00", align 1
@IID_IMediaControl = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Could not get media control.\0A\00", align 1
@IID_IMediaEvent = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"Could not get media event.\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Could not get media event handle.\0A\00", align 1
@DUPLICATE_SAME_ACCESS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"Could not duplicate media event handle.\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [88 x i8] c"Could not run graph (sometimes caused by a device already in use by other application)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @dshow_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dshow_read_header(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.dshow_ctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  store %struct.dshow_ctx* %15, %struct.dshow_ctx** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = call i32 @AVERROR(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = call i32 @CoInitialize(i32 0)
  %19 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = call i32 @parse_device_name(%struct.TYPE_10__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %28, i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %369

31:                                               ; preds = %23, %1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  br label %42

40:                                               ; preds = %31
  %41 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i64 [ %39, %36 ], [ %41, %40 ]
  %44 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %42
  %52 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %58, i32 %59, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = call i32 @AVERROR(i32 %61)
  store i32 %62, i32* %10, align 4
  br label %369

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %65, i32 0, i32 11
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %70, i32 0, i32 12
  %72 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %72, i32 0, i32 11
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @av_parse_video_rate(i32* %71, i64 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %69
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %81, i32 0, i32 11
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %79, i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  br label %369

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %64
  %87 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %88 = bitcast i32** %4 to i8**
  %89 = call i32 @CoCreateInstance(i32* @CLSID_FilterGraph, i32* null, i32 %87, i32* @IID_IGraphBuilder, i8** %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @S_OK, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %94, i32 %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %369

97:                                               ; preds = %86
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %99, i32 0, i32 10
  store i32* %98, i32** %100, align 8
  %101 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %102 = bitcast i32** %5 to i8**
  %103 = call i32 @CoCreateInstance(i32* @CLSID_SystemDeviceEnum, i32* null, i32 %101, i32* @IID_ICreateDevEnum, i8** %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @S_OK, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %109 = load i32, i32* @AV_LOG_ERROR, align 4
  %110 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %108, i32 %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %369

111:                                              ; preds = %97
  %112 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %112, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = load i32, i32* @AV_LOG_INFO, align 4
  %119 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %117, i32 %118, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load i64, i64* @VideoDevice, align 8
  %123 = load i32, i32* @VideoSourceDevice, align 4
  %124 = call i32 @dshow_cycle_devices(%struct.TYPE_10__* %120, i32* %121, i64 %122, i32 %123, i32* null, i32* null)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %126 = load i32, i32* @AV_LOG_INFO, align 4
  %127 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %125, i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %129 = load i32*, i32** %5, align 8
  %130 = load i64, i64* @AudioDevice, align 8
  %131 = load i32, i32* @AudioSourceDevice, align 4
  %132 = call i32 @dshow_cycle_devices(%struct.TYPE_10__* %128, i32* %129, i64 %130, i32 %131, i32* null, i32* null)
  %133 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %133, i32* %10, align 4
  br label %369

134:                                              ; preds = %111
  %135 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %136 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %135, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %184

139:                                              ; preds = %134
  %140 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %140, i32 0, i32 8
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* @VideoDevice, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %139
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %149 = load i32*, i32** %5, align 8
  %150 = load i64, i64* @VideoDevice, align 8
  %151 = load i32, i32* @VideoSourceDevice, align 4
  %152 = call i32 @dshow_list_device_options(%struct.TYPE_10__* %148, i32* %149, i64 %150, i32 %151)
  store i32 %152, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %10, align 4
  br label %369

156:                                              ; preds = %147
  br label %157

157:                                              ; preds = %156, %139
  %158 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %159 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %158, i32 0, i32 8
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* @AudioDevice, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %157
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = load i64, i64* @AudioDevice, align 8
  %169 = load i32, i32* @AudioSourceDevice, align 4
  %170 = call i32 @dshow_list_device_options(%struct.TYPE_10__* %166, i32* %167, i64 %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %165
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %174 = load i32*, i32** %5, align 8
  %175 = load i64, i64* @AudioDevice, align 8
  %176 = load i32, i32* @VideoSourceDevice, align 4
  %177 = call i32 @dshow_list_device_options(%struct.TYPE_10__* %173, i32* %174, i64 %175, i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %10, align 4
  br label %369

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %165
  br label %183

183:                                              ; preds = %182, %157
  br label %184

184:                                              ; preds = %183, %134
  %185 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %186 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %185, i32 0, i32 8
  %187 = load i64*, i64** %186, align 8
  %188 = load i64, i64* @VideoDevice, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %207

192:                                              ; preds = %184
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = load i64, i64* @VideoDevice, align 8
  %196 = load i32, i32* @VideoSourceDevice, align 4
  %197 = call i32 @dshow_open_device(%struct.TYPE_10__* %193, i32* %194, i64 %195, i32 %196)
  store i32 %197, i32* %11, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %192
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %201 = load i64, i64* @VideoDevice, align 8
  %202 = call i32 @dshow_add_device(%struct.TYPE_10__* %200, i64 %201)
  store i32 %202, i32* %11, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199, %192
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %10, align 4
  br label %369

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %206, %184
  %208 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %209 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %208, i32 0, i32 8
  %210 = load i64*, i64** %209, align 8
  %211 = load i64, i64* @AudioDevice, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %252

215:                                              ; preds = %207
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %217 = load i32*, i32** %5, align 8
  %218 = load i64, i64* @AudioDevice, align 8
  %219 = load i32, i32* @AudioSourceDevice, align 4
  %220 = call i32 @dshow_open_device(%struct.TYPE_10__* %216, i32* %217, i64 %218, i32 %219)
  store i32 %220, i32* %11, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %215
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %224 = load i64, i64* @AudioDevice, align 8
  %225 = call i32 @dshow_add_device(%struct.TYPE_10__* %223, i64 %224)
  store i32 %225, i32* %11, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %251

227:                                              ; preds = %222, %215
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %229 = load i32, i32* @AV_LOG_INFO, align 4
  %230 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %231 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %230, i32 0, i32 8
  %232 = load i64*, i64** %231, align 8
  %233 = load i64, i64* @AudioDevice, align 8
  %234 = getelementptr inbounds i64, i64* %232, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %228, i32 %229, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i64 %235)
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %238 = load i32*, i32** %5, align 8
  %239 = load i64, i64* @AudioDevice, align 8
  %240 = load i32, i32* @VideoSourceDevice, align 4
  %241 = call i32 @dshow_open_device(%struct.TYPE_10__* %237, i32* %238, i64 %239, i32 %240)
  store i32 %241, i32* %11, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %227
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %245 = load i64, i64* @AudioDevice, align 8
  %246 = call i32 @dshow_add_device(%struct.TYPE_10__* %244, i64 %245)
  store i32 %246, i32* %11, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %243, %227
  %249 = load i32, i32* %11, align 4
  store i32 %249, i32* %10, align 4
  br label %369

250:                                              ; preds = %243
  br label %251

251:                                              ; preds = %250, %222
  br label %252

252:                                              ; preds = %251, %207
  %253 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %254 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %253, i32 0, i32 7
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = load i32, i32* @AVERROR_EXIT, align 4
  store i32 %258, i32* %10, align 4
  br label %369

259:                                              ; preds = %252
  %260 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %261 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %260, i32 0, i32 6
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  store i64 0, i64* %263, align 8
  %264 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %265 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %264, i32 0, i32 6
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 1
  store i64 0, i64* %267, align 8
  %268 = call i32 @CreateMutex(i32* null, i32 0, i32* null)
  %269 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %270 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %269, i32 0, i32 5
  store i32 %268, i32* %270, align 8
  %271 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %272 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %259
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %277 = load i32, i32* @AV_LOG_ERROR, align 4
  %278 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %276, i32 %277, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %369

279:                                              ; preds = %259
  %280 = call i32 @CreateEvent(i32* null, i32 1, i32 0, i32* null)
  %281 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %282 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  store i32 %280, i32* %284, align 4
  %285 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %286 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %295, label %291

291:                                              ; preds = %279
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %293 = load i32, i32* @AV_LOG_ERROR, align 4
  %294 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %292, i32 %293, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %369

295:                                              ; preds = %279
  %296 = load i32*, i32** %4, align 8
  %297 = bitcast i32** %6 to i8**
  %298 = call i32 @IGraphBuilder_QueryInterface(i32* %296, i32* @IID_IMediaControl, i8** %297)
  store i32 %298, i32* %11, align 4
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* @S_OK, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %306

302:                                              ; preds = %295
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %304 = load i32, i32* @AV_LOG_ERROR, align 4
  %305 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %303, i32 %304, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %369

306:                                              ; preds = %295
  %307 = load i32*, i32** %6, align 8
  %308 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %309 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %308, i32 0, i32 4
  store i32* %307, i32** %309, align 8
  %310 = load i32*, i32** %4, align 8
  %311 = bitcast i32** %7 to i8**
  %312 = call i32 @IGraphBuilder_QueryInterface(i32* %310, i32* @IID_IMediaEvent, i8** %311)
  store i32 %312, i32* %11, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load i32, i32* @S_OK, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %320

316:                                              ; preds = %306
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %318 = load i32, i32* @AV_LOG_ERROR, align 4
  %319 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %317, i32 %318, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %369

320:                                              ; preds = %306
  %321 = load i32*, i32** %7, align 8
  %322 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %323 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %322, i32 0, i32 3
  store i32* %321, i32** %323, align 8
  %324 = load i32*, i32** %7, align 8
  %325 = bitcast i32* %8 to i8*
  %326 = call i32 @IMediaEvent_GetEventHandle(i32* %324, i8* %325)
  store i32 %326, i32* %11, align 4
  %327 = load i32, i32* %11, align 4
  %328 = load i32, i32* @S_OK, align 4
  %329 = icmp ne i32 %327, %328
  br i1 %329, label %330, label %334

330:                                              ; preds = %320
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %332 = load i32, i32* @AV_LOG_ERROR, align 4
  %333 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %331, i32 %332, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  br label %369

334:                                              ; preds = %320
  %335 = call i32 (...) @GetCurrentProcess()
  store i32 %335, i32* %9, align 4
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* %8, align 4
  %338 = load i32, i32* %9, align 4
  %339 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %340 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %339, i32 0, i32 2
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 0
  %343 = load i32, i32* @DUPLICATE_SAME_ACCESS, align 4
  %344 = call i32 @DuplicateHandle(i32 %336, i32 %337, i32 %338, i32* %342, i32 0, i32 0, i32 %343)
  store i32 %344, i32* %11, align 4
  %345 = load i32, i32* %11, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %351, label %347

347:                                              ; preds = %334
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %349 = load i32, i32* @AV_LOG_ERROR, align 4
  %350 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %348, i32 %349, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  br label %369

351:                                              ; preds = %334
  %352 = load i32*, i32** %6, align 8
  %353 = call i32 @IMediaControl_Run(i32* %352)
  store i32 %353, i32* %11, align 4
  %354 = load i32, i32* %11, align 4
  %355 = load i32, i32* @S_FALSE, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %351
  %358 = load i32*, i32** %6, align 8
  %359 = call i32 @IMediaControl_GetState(i32* %358, i32 0, i32* %12)
  store i32 %359, i32* %11, align 4
  br label %360

360:                                              ; preds = %357, %351
  %361 = load i32, i32* %11, align 4
  %362 = load i32, i32* @S_OK, align 4
  %363 = icmp ne i32 %361, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %360
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %366 = load i32, i32* @AV_LOG_ERROR, align 4
  %367 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %365, i32 %366, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.14, i64 0, i64 0))
  br label %369

368:                                              ; preds = %360
  store i32 0, i32* %10, align 4
  br label %369

369:                                              ; preds = %368, %364, %347, %330, %316, %302, %291, %275, %257, %248, %204, %179, %154, %116, %107, %93, %78, %57, %27
  %370 = load i32*, i32** %5, align 8
  %371 = icmp ne i32* %370, null
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load i32*, i32** %5, align 8
  %374 = call i32 @ICreateDevEnum_Release(i32* %373)
  br label %375

375:                                              ; preds = %372, %369
  %376 = load i32, i32* %10, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %380 = call i32 @dshow_read_close(%struct.TYPE_10__* %379)
  br label %381

381:                                              ; preds = %378, %375
  %382 = load i32, i32* %10, align 4
  ret i32 %382
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @CoInitialize(i32) #1

declare dso_local i32 @parse_device_name(%struct.TYPE_10__*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @av_parse_video_rate(i32*, i64) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @dshow_cycle_devices(%struct.TYPE_10__*, i32*, i64, i32, i32*, i32*) #1

declare dso_local i32 @dshow_list_device_options(%struct.TYPE_10__*, i32*, i64, i32) #1

declare dso_local i32 @dshow_open_device(%struct.TYPE_10__*, i32*, i64, i32) #1

declare dso_local i32 @dshow_add_device(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @CreateMutex(i32*, i32, i32*) #1

declare dso_local i32 @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @IGraphBuilder_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IMediaEvent_GetEventHandle(i32*, i8*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @DuplicateHandle(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @IMediaControl_Run(i32*) #1

declare dso_local i32 @IMediaControl_GetState(i32*, i32, i32*) #1

declare dso_local i32 @ICreateDevEnum_Release(i32*) #1

declare dso_local i32 @dshow_read_close(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
