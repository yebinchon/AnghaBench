; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_open_device.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_open_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.dshow_ctx* }
%struct.dshow_ctx = type { i8*, i8*, i8**, i8*, i8*, i32**, %struct.TYPE_10__**, i32**, i32**, i32* }
%struct.TYPE_10__ = type { i32* }

@EIO = common dso_local global i32 0, align 4
@VideoDevice = common dso_local global i32 0, align 4
@AudioDevice = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 65, i32 117, i32 100, i32 105, i32 111, i32 32, i32 99, i32 97, i32 112, i32 116, i32 117, i32 114, i32 101, i32 32, i32 102, i32 105, i32 108, i32 116, i32 101, i32 114, i32 0], align 4
@.str.1 = private unnamed_addr constant [21 x i32] [i32 86, i32 105, i32 100, i32 101, i32 111, i32 32, i32 99, i32 97, i32 112, i32 116, i32 117, i32 114, i32 101, i32 32, i32 102, i32 105, i32 108, i32 116, i32 101, i32 114, i32 0], align 4
@__const.dshow_open_device.filter_name = private unnamed_addr constant [2 x i8*] [i8* bitcast ([21 x i32]* @.str to i8*), i8* bitcast ([21 x i32]* @.str.1 to i8*)], align 16
@AudioSourceDevice = common dso_local global i32 0, align 4
@VideoSourceDevice = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Could not open capture filter description file.\0A\00", align 1
@IID_IBaseFilter = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Could not load capture filter from file.\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"Audio-\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Video-\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Capture filter loaded successfully from file \22%s\22.\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"reusing previous graph capture filter... %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"not reusing previous graph capture filter %s != %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Could not add device filter to graph.\0A\00", align 1
@callback = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Could not create grabber filter.\0A\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"Could not create capture filter description file.\0A\00", align 1
@IID_IPersistStream = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"Query for IPersistStream failed.\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Could not save capture filter \0A\00", align 1
@STGC_DEFAULT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [47 x i8] c"Could not commit capture filter data to file.\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"Capture filter saved successfully to file \22%s\22.\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Could not add capture filter to graph\0A\00", align 1
@CLSID_CaptureGraphBuilder2 = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ICaptureGraphBuilder2 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"Could not create CaptureGraphBuilder2\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Could not set graph for CaptureGraphBuilder2\0A\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"Could not RenderStream to connect pins\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Could not setup CrossBar\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32, i32)* @dshow_open_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dshow_open_device(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dshow_ctx*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [2 x i8*], align 16
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.dshow_ctx*, %struct.dshow_ctx** %29, align 8
  store %struct.dshow_ctx* %30, %struct.dshow_ctx** %9, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %11, align 8
  %31 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %31, i32 0, i32 9
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %15, align 8
  store i32* null, i32** %16, align 8
  %34 = load i32, i32* @EIO, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %17, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @VideoDevice, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i32, i32* @AudioDevice, align 4
  br label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @VideoDevice, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %22, align 4
  %45 = bitcast [2 x i8*]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 16 bitcast ([2 x i8*]* @__const.dshow_open_device.filter_name to i8*), i64 16, i1 false)
  %46 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %47 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %52 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @AudioSourceDevice, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %75, label %60

60:                                               ; preds = %56, %50, %43
  %61 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %62 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %127

65:                                               ; preds = %60
  %66 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %67 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strlen(i8* %68)
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %127

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @VideoSourceDevice, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %127

75:                                               ; preds = %71, %56
  store i8* null, i8** %25, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @AudioSourceDevice, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %81 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %25, align 8
  br label %87

83:                                               ; preds = %75
  %84 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %85 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %25, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i8*, i8** %25, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = load i32, i32* @STGM_READ, align 4
  %91 = call i32 @SHCreateStreamOnFile(i32 %89, i32 %90, i32** %19)
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %96, i32 %97, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %436

99:                                               ; preds = %87
  %100 = load i32*, i32** %19, align 8
  %101 = bitcast i32** %10 to i8**
  %102 = call i32 @OleLoadFromStream(i32* %100, i32* @IID_IBaseFilter, i8** %101)
  store i32 %102, i32* %24, align 4
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* @S_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = load i32, i32* @AV_LOG_ERROR, align 4
  %109 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %107, i32 %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %436

110:                                              ; preds = %99
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @AudioSourceDevice, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = load i32, i32* @AV_LOG_INFO, align 4
  %117 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %115, i32 %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %122

118:                                              ; preds = %110
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %120 = load i32, i32* @AV_LOG_INFO, align 4
  %121 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %119, i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = load i32, i32* @AV_LOG_INFO, align 4
  %125 = load i8*, i8** %25, align 8
  %126 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %123, i32 %124, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %125)
  br label %137

127:                                              ; preds = %71, %65, %60
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @dshow_cycle_devices(%struct.TYPE_11__* %128, i32* %129, i32 %130, i32 %131, i32** %10, i8** %11)
  store i32 %132, i32* %18, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* %18, align 4
  store i32 %135, i32* %17, align 4
  br label %436

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %122
  %138 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %139 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %138, i32 0, i32 8
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %22, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %192

146:                                              ; preds = %137
  %147 = load i8*, i8** %11, align 8
  %148 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %149 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %148, i32 0, i32 2
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %22, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @strcmp(i8* %147, i8* %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %179

157:                                              ; preds = %146
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = load i32, i32* @AV_LOG_DEBUG, align 4
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %158, i32 %159, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %160)
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @IBaseFilter_Release(i32* %162)
  %164 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %165 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %164, i32 0, i32 8
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %22, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %10, align 8
  %171 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %172 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %171, i32 0, i32 8
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %22, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @IBaseFilter_AddRef(i32* %177)
  br label %191

179:                                              ; preds = %146
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %181 = load i32, i32* @AV_LOG_DEBUG, align 4
  %182 = load i8*, i8** %11, align 8
  %183 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %184 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %183, i32 0, i32 2
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %22, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %180, i32 %181, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i8* %182, i8* %189)
  br label %191

191:                                              ; preds = %179, %157
  br label %192

192:                                              ; preds = %191, %137
  %193 = load i32*, i32** %10, align 8
  %194 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %195 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %194, i32 0, i32 8
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  store i32* %193, i32** %199, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %202 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %201, i32 0, i32 2
  %203 = load i8**, i8*** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  store i8* %200, i8** %206, align 8
  %207 = load i32*, i32** %12, align 8
  %208 = load i32*, i32** %10, align 8
  %209 = call i32 @IGraphBuilder_AddFilter(i32* %207, i32* %208, i8* null)
  store i32 %209, i32* %18, align 4
  %210 = load i32, i32* %18, align 4
  %211 = load i32, i32* @S_OK, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %192
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %215 = load i32, i32* @AV_LOG_ERROR, align 4
  %216 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %214, i32 %215, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  br label %436

217:                                              ; preds = %192
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @dshow_cycle_pins(%struct.TYPE_11__* %218, i32 %219, i32 %220, i32* %221, i32** %13)
  store i32 %222, i32* %18, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = load i32, i32* %18, align 4
  store i32 %225, i32* %17, align 4
  br label %436

226:                                              ; preds = %217
  %227 = load i32*, i32** %13, align 8
  %228 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %229 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %228, i32 0, i32 7
  %230 = load i32**, i32*** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %230, i64 %232
  store i32* %227, i32** %233, align 8
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %235 = load i32, i32* @callback, align 4
  %236 = load i32, i32* %7, align 4
  %237 = call %struct.TYPE_10__* @libAVFilter_Create(%struct.TYPE_11__* %234, i32 %235, i32 %236)
  store %struct.TYPE_10__* %237, %struct.TYPE_10__** %15, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %239 = icmp ne %struct.TYPE_10__* %238, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %226
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %242 = load i32, i32* @AV_LOG_ERROR, align 4
  %243 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %241, i32 %242, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %436

244:                                              ; preds = %226
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %246 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %247 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %246, i32 0, i32 6
  %248 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %247, align 8
  %249 = load i32, i32* %7, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %248, i64 %250
  store %struct.TYPE_10__* %245, %struct.TYPE_10__** %251, align 8
  %252 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %253 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %252, i32 0, i32 3
  %254 = load i8*, i8** %253, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %266

256:                                              ; preds = %244
  %257 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %258 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %257, i32 0, i32 3
  %259 = load i8*, i8** %258, align 8
  %260 = call i64 @strlen(i8* %259)
  %261 = icmp sgt i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %256
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* @AudioSourceDevice, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %281, label %266

266:                                              ; preds = %262, %256, %244
  %267 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %268 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %267, i32 0, i32 4
  %269 = load i8*, i8** %268, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %357

271:                                              ; preds = %266
  %272 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %273 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %272, i32 0, i32 4
  %274 = load i8*, i8** %273, align 8
  %275 = call i64 @strlen(i8* %274)
  %276 = icmp sgt i64 %275, 0
  br i1 %276, label %277, label %357

277:                                              ; preds = %271
  %278 = load i32, i32* %8, align 4
  %279 = load i32, i32* @VideoSourceDevice, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %357

281:                                              ; preds = %277, %262
  store i8* null, i8** %27, align 8
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* @AudioSourceDevice, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %287 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %286, i32 0, i32 3
  %288 = load i8*, i8** %287, align 8
  store i8* %288, i8** %27, align 8
  br label %293

289:                                              ; preds = %281
  %290 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %291 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %290, i32 0, i32 4
  %292 = load i8*, i8** %291, align 8
  store i8* %292, i8** %27, align 8
  br label %293

293:                                              ; preds = %289, %285
  %294 = load i8*, i8** %27, align 8
  %295 = ptrtoint i8* %294 to i32
  %296 = load i32, i32* @STGM_CREATE, align 4
  %297 = load i32, i32* @STGM_READWRITE, align 4
  %298 = or i32 %296, %297
  %299 = call i32 @SHCreateStreamOnFile(i32 %295, i32 %298, i32** %20)
  store i32 %299, i32* %26, align 4
  %300 = load i32, i32* @S_OK, align 4
  %301 = load i32, i32* %26, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %293
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %305 = load i32, i32* @AV_LOG_ERROR, align 4
  %306 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %304, i32 %305, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0))
  br label %436

307:                                              ; preds = %293
  %308 = load i32*, i32** %10, align 8
  %309 = bitcast i32** %21 to i8**
  %310 = call i32 @IBaseFilter_QueryInterface(i32* %308, i32* @IID_IPersistStream, i8** %309)
  store i32 %310, i32* %26, align 4
  %311 = load i32, i32* %26, align 4
  %312 = load i32, i32* @S_OK, align 4
  %313 = icmp ne i32 %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %307
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %316 = load i32, i32* @AV_LOG_ERROR, align 4
  %317 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %315, i32 %316, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %436

318:                                              ; preds = %307
  %319 = load i32*, i32** %21, align 8
  %320 = load i32*, i32** %20, align 8
  %321 = call i32 @OleSaveToStream(i32* %319, i32* %320)
  store i32 %321, i32* %26, align 4
  %322 = load i32, i32* %26, align 4
  %323 = load i32, i32* @S_OK, align 4
  %324 = icmp ne i32 %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %318
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %327 = load i32, i32* @AV_LOG_ERROR, align 4
  %328 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %326, i32 %327, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  br label %436

329:                                              ; preds = %318
  %330 = load i32*, i32** %20, align 8
  %331 = load i32, i32* @STGC_DEFAULT, align 4
  %332 = call i32 @IStream_Commit(i32* %330, i32 %331)
  store i32 %332, i32* %26, align 4
  %333 = load i32, i32* @S_OK, align 4
  %334 = load i32, i32* %26, align 4
  %335 = icmp ne i32 %333, %334
  br i1 %335, label %336, label %340

336:                                              ; preds = %329
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %338 = load i32, i32* @AV_LOG_ERROR, align 4
  %339 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %337, i32 %338, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  br label %436

340:                                              ; preds = %329
  %341 = load i32, i32* %8, align 4
  %342 = load i32, i32* @AudioSourceDevice, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %348

344:                                              ; preds = %340
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %346 = load i32, i32* @AV_LOG_INFO, align 4
  %347 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %345, i32 %346, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %352

348:                                              ; preds = %340
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %350 = load i32, i32* @AV_LOG_INFO, align 4
  %351 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %349, i32 %350, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %352

352:                                              ; preds = %348, %344
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %354 = load i32, i32* @AV_LOG_INFO, align 4
  %355 = load i8*, i8** %27, align 8
  %356 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %353, i32 %354, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i8* %355)
  br label %357

357:                                              ; preds = %352, %277, %271, %266
  %358 = load i32*, i32** %12, align 8
  %359 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %360 = bitcast %struct.TYPE_10__* %359 to i32*
  %361 = load i32, i32* %7, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 %362
  %364 = load i8*, i8** %363, align 8
  %365 = call i32 @IGraphBuilder_AddFilter(i32* %358, i32* %360, i8* %364)
  store i32 %365, i32* %18, align 4
  %366 = load i32, i32* %18, align 4
  %367 = load i32, i32* @S_OK, align 4
  %368 = icmp ne i32 %366, %367
  br i1 %368, label %369, label %373

369:                                              ; preds = %357
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %371 = load i32, i32* @AV_LOG_ERROR, align 4
  %372 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %370, i32 %371, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %436

373:                                              ; preds = %357
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = call i32 @libAVPin_AddRef(i32* %376)
  %378 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %379 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  store i32* %380, i32** %14, align 8
  %381 = load i32*, i32** %14, align 8
  %382 = load %struct.dshow_ctx*, %struct.dshow_ctx** %9, align 8
  %383 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %382, i32 0, i32 5
  %384 = load i32**, i32*** %383, align 8
  %385 = load i32, i32* %7, align 4
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds i32*, i32** %384, i64 %386
  store i32* %381, i32** %387, align 8
  %388 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %389 = bitcast i32** %16 to i8**
  %390 = call i32 @CoCreateInstance(i32* @CLSID_CaptureGraphBuilder2, i32* null, i32 %388, i32* @IID_ICaptureGraphBuilder2, i8** %389)
  store i32 %390, i32* %18, align 4
  %391 = load i32, i32* %18, align 4
  %392 = load i32, i32* @S_OK, align 4
  %393 = icmp ne i32 %391, %392
  br i1 %393, label %394, label %398

394:                                              ; preds = %373
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %396 = load i32, i32* @AV_LOG_ERROR, align 4
  %397 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %395, i32 %396, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  br label %436

398:                                              ; preds = %373
  %399 = load i32*, i32** %16, align 8
  %400 = load i32*, i32** %12, align 8
  %401 = call i32 @ICaptureGraphBuilder2_SetFiltergraph(i32* %399, i32* %400)
  %402 = load i32, i32* %18, align 4
  %403 = load i32, i32* @S_OK, align 4
  %404 = icmp ne i32 %402, %403
  br i1 %404, label %405, label %409

405:                                              ; preds = %398
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %407 = load i32, i32* @AV_LOG_ERROR, align 4
  %408 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %406, i32 %407, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i64 0, i64 0))
  br label %436

409:                                              ; preds = %398
  %410 = load i32*, i32** %16, align 8
  %411 = load i32*, i32** %13, align 8
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %413 = bitcast %struct.TYPE_10__* %412 to i32*
  %414 = call i32 @ICaptureGraphBuilder2_RenderStream(i32* %410, i32* null, i32* null, i32* %411, i32* null, i32* %413)
  store i32 %414, i32* %18, align 4
  %415 = load i32, i32* %18, align 4
  %416 = load i32, i32* @S_OK, align 4
  %417 = icmp ne i32 %415, %416
  br i1 %417, label %418, label %422

418:                                              ; preds = %409
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %420 = load i32, i32* @AV_LOG_ERROR, align 4
  %421 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %419, i32 %420, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0))
  br label %436

422:                                              ; preds = %409
  %423 = load i32*, i32** %16, align 8
  %424 = load i32*, i32** %10, align 8
  %425 = load i32, i32* %7, align 4
  %426 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %427 = call i32 @dshow_try_setup_crossbar_options(i32* %423, i32* %424, i32 %425, %struct.TYPE_11__* %426)
  store i32 %427, i32* %18, align 4
  %428 = load i32, i32* %18, align 4
  %429 = load i32, i32* @S_OK, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %435

431:                                              ; preds = %422
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %433 = load i32, i32* @AV_LOG_ERROR, align 4
  %434 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %432, i32 %433, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  br label %436

435:                                              ; preds = %422
  store i32 0, i32* %17, align 4
  br label %436

436:                                              ; preds = %435, %431, %418, %405, %394, %369, %336, %325, %314, %303, %240, %224, %213, %134, %106, %95
  %437 = load i32*, i32** %16, align 8
  %438 = icmp ne i32* %437, null
  br i1 %438, label %439, label %442

439:                                              ; preds = %436
  %440 = load i32*, i32** %16, align 8
  %441 = call i32 @ICaptureGraphBuilder2_Release(i32* %440)
  br label %442

442:                                              ; preds = %439, %436
  %443 = load i32*, i32** %21, align 8
  %444 = icmp ne i32* %443, null
  br i1 %444, label %445, label %448

445:                                              ; preds = %442
  %446 = load i32*, i32** %21, align 8
  %447 = call i32 @IPersistStream_Release(i32* %446)
  br label %448

448:                                              ; preds = %445, %442
  %449 = load i32*, i32** %19, align 8
  %450 = icmp ne i32* %449, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %448
  %452 = load i32*, i32** %19, align 8
  %453 = call i32 @IStream_Release(i32* %452)
  br label %454

454:                                              ; preds = %451, %448
  %455 = load i32*, i32** %20, align 8
  %456 = icmp ne i32* %455, null
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = load i32*, i32** %20, align 8
  %459 = call i32 @IStream_Release(i32* %458)
  br label %460

460:                                              ; preds = %457, %454
  %461 = load i32, i32* %17, align 4
  ret i32 %461
}

declare dso_local i32 @AVERROR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @SHCreateStreamOnFile(i32, i32, i32**) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local i32 @OleLoadFromStream(i32*, i32*, i8**) #1

declare dso_local i32 @dshow_cycle_devices(%struct.TYPE_11__*, i32*, i32, i32, i32**, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @IBaseFilter_Release(i32*) #1

declare dso_local i32 @IBaseFilter_AddRef(i32*) #1

declare dso_local i32 @IGraphBuilder_AddFilter(i32*, i32*, i8*) #1

declare dso_local i32 @dshow_cycle_pins(%struct.TYPE_11__*, i32, i32, i32*, i32**) #1

declare dso_local %struct.TYPE_10__* @libAVFilter_Create(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @IBaseFilter_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @OleSaveToStream(i32*, i32*) #1

declare dso_local i32 @IStream_Commit(i32*, i32) #1

declare dso_local i32 @libAVPin_AddRef(i32*) #1

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ICaptureGraphBuilder2_SetFiltergraph(i32*, i32*) #1

declare dso_local i32 @ICaptureGraphBuilder2_RenderStream(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dshow_try_setup_crossbar_options(i32*, i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ICaptureGraphBuilder2_Release(i32*) #1

declare dso_local i32 @IPersistStream_Release(i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
