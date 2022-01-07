; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_cycle_pins.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_cycle_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.dshow_ctx* }
%struct.dshow_ctx = type { i64, i64, i32, i32, i8*, i8*, i8*, i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@MEDIATYPE_Video = common dso_local global i32 0, align 4
@MEDIATYPE_Audio = common dso_local global i32 0, align 4
@__const.dshow_cycle_pins.mediatype = private unnamed_addr constant [2 x i32*] [i32* @MEDIATYPE_Video, i32* @MEDIATYPE_Audio], align 16
@VideoDevice = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"audio only\00", align 1
@VideoSourceDevice = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@AudioDevice = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not enumerate pins.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"DirectShow %s device options (from %s devices)\0A\00", align 1
@PINDIR_OUTPUT = common dso_local global i64 0, align 8
@IID_IKsPropertySet = common dso_local global i32 0, align 4
@AMPROPSETID_Pin = common dso_local global i32 0, align 4
@AMPROPERTY_PIN_CATEGORY = common dso_local global i32 0, align 4
@PIN_CATEGORY_CAPTURE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Could not query pin id\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c" Pin \22%s\22 (alternative pin name \22%s\22)\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"skipping pin \22%s\22 (\22%s\22) != requested \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"unable to set audio buffer size %d to pin, using pin anyway...\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Selecting pin %s on %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Could not set %s options\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Could not find output pin from %s capture device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32, i32*, i32**)* @dshow_cycle_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dshow_cycle_pins(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.dshow_ctx*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32*], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_16__, align 8
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_15__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32** %4, i32*** %11, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load %struct.dshow_ctx*, %struct.dshow_ctx** %34, align 8
  store %struct.dshow_ctx* %35, %struct.dshow_ctx** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %36 = bitcast [2 x i32*]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 bitcast ([2 x i32*]* @__const.dshow_cycle_pins.mediatype to i8*), i64 16, i1 false)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @VideoDevice, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  store i8* %41, i8** %18, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @VideoSourceDevice, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  store i8* %46, i8** %19, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @VideoDevice, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %5
  %51 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %52 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %51, i32 0, i32 11
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %95, label %55

55:                                               ; preds = %50
  %56 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %57 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %56, i32 0, i32 10
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %62 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %61, i32 0, i32 9
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %67 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %95, label %71

71:                                               ; preds = %65
  %72 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %73 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %95, label %77

77:                                               ; preds = %71, %5
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @AudioDevice, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %83 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %88 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi i1 [ true, %81 ], [ %90, %86 ]
  br label %93

93:                                               ; preds = %91, %77
  %94 = phi i1 [ false, %77 ], [ %92, %91 ]
  br label %95

95:                                               ; preds = %93, %71, %65, %60, %50
  %96 = phi i1 [ true, %71 ], [ true, %65 ], [ true, %60 ], [ true, %50 ], [ %94, %93 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @VideoDevice, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %103 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  br label %109

105:                                              ; preds = %95
  %106 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %107 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i32 [ %104, %101 ], [ %108, %105 ]
  store i32 %110, i32* %22, align 4
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = call i32 @dshow_show_filter_properties(i32* %114, %struct.TYPE_17__* %115)
  br label %117

117:                                              ; preds = %113, %109
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @IBaseFilter_EnumPins(i32* %118, i32** %13)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @S_OK, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %125 = load i32, i32* @AV_LOG_ERROR, align 4
  %126 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %124, i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* @EIO, align 4
  %128 = call i32 @AVERROR(i32 %127)
  store i32 %128, i32* %6, align 4
  br label %378

129:                                              ; preds = %117
  %130 = load i32**, i32*** %11, align 8
  %131 = icmp ne i32** %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %134 = load i32, i32* @AV_LOG_INFO, align 4
  %135 = load i8*, i8** %18, align 8
  %136 = load i8*, i8** %19, align 8
  %137 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %133, i32 %134, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* %135, i8* %136)
  br label %138

138:                                              ; preds = %132, %129
  br label %139

139:                                              ; preds = %345, %138
  %140 = load i32*, i32** %14, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %139
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @IEnumPins_Next(i32* %143, i32 1, i32** %15, i32* null)
  %145 = load i32, i32* @S_OK, align 4
  %146 = icmp eq i32 %144, %145
  br label %147

147:                                              ; preds = %142, %139
  %148 = phi i1 [ false, %139 ], [ %146, %142 ]
  br i1 %148, label %149, label %346

149:                                              ; preds = %147
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %150 = bitcast %struct.TYPE_16__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %150, i8 0, i64 24, i1 false)
  store i8* null, i8** %29, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %30, align 8
  store i8* null, i8** %31, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @VideoDevice, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %156 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %155, i32 0, i32 4
  %157 = load i8*, i8** %156, align 8
  br label %162

158:                                              ; preds = %149
  %159 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %160 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %159, i32 0, i32 5
  %161 = load i8*, i8** %160, align 8
  br label %162

162:                                              ; preds = %158, %154
  %163 = phi i8* [ %157, %154 ], [ %161, %158 ]
  store i8* %163, i8** %32, align 8
  %164 = load i32*, i32** %15, align 8
  %165 = call i32 @IPin_QueryPinInfo(i32* %164, %struct.TYPE_16__* %25)
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @IBaseFilter_Release(i32 %167)
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @PINDIR_OUTPUT, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %162
  br label %316

174:                                              ; preds = %162
  %175 = load i32*, i32** %15, align 8
  %176 = bitcast i32** %23 to i8**
  %177 = call i32 @IPin_QueryInterface(i32* %175, i32* @IID_IKsPropertySet, i8** %176)
  %178 = load i32, i32* @S_OK, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %316

181:                                              ; preds = %174
  %182 = load i32*, i32** %23, align 8
  %183 = load i32, i32* @AMPROPERTY_PIN_CATEGORY, align 4
  %184 = call i32 @IKsPropertySet_Get(i32* %182, i32* @AMPROPSETID_Pin, i32 %183, i32* null, i32 0, i32* %27, i32 4, i32* %28)
  %185 = load i32, i32* @S_OK, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %316

188:                                              ; preds = %181
  %189 = call i64 @IsEqualGUID(i32* %27, i32* @PIN_CATEGORY_CAPTURE)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  br label %316

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = call i8* @dup_wchar_to_utf8(%struct.TYPE_15__* %194)
  store i8* %195, i8** %29, align 8
  %196 = load i32*, i32** %15, align 8
  %197 = call i32 @IPin_QueryId(i32* %196, %struct.TYPE_15__** %30)
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* @S_OK, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %192
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %203 = load i32, i32* @AV_LOG_ERROR, align 4
  %204 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %202, i32 %203, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %205 = load i32, i32* @EIO, align 4
  %206 = call i32 @AVERROR(i32 %205)
  store i32 %206, i32* %6, align 4
  br label %378

207:                                              ; preds = %192
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %209 = call i8* @dup_wchar_to_utf8(%struct.TYPE_15__* %208)
  store i8* %209, i8** %31, align 8
  %210 = load i32**, i32*** %11, align 8
  %211 = icmp ne i32** %210, null
  br i1 %211, label %222, label %212

212:                                              ; preds = %207
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %214 = load i32, i32* @AV_LOG_INFO, align 4
  %215 = load i8*, i8** %29, align 8
  %216 = load i8*, i8** %31, align 8
  %217 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %213, i32 %214, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %215, i8* %216)
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %219 = load i32, i32* %8, align 4
  %220 = load i32*, i32** %15, align 8
  %221 = call i32 @dshow_cycle_formats(%struct.TYPE_17__* %218, i32 %219, i32* %220, i32* null)
  br label %316

222:                                              ; preds = %207
  %223 = load i8*, i8** %32, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %243

225:                                              ; preds = %222
  %226 = load i8*, i8** %29, align 8
  %227 = load i8*, i8** %32, align 8
  %228 = call i64 @strcmp(i8* %226, i8* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %225
  %231 = load i8*, i8** %31, align 8
  %232 = load i8*, i8** %32, align 8
  %233 = call i64 @strcmp(i8* %231, i8* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %230
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %237 = load i32, i32* @AV_LOG_DEBUG, align 4
  %238 = load i8*, i8** %29, align 8
  %239 = load i8*, i8** %31, align 8
  %240 = load i8*, i8** %32, align 8
  %241 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %236, i32 %237, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %238, i8* %239, i8* %240)
  br label %316

242:                                              ; preds = %230, %225
  br label %243

243:                                              ; preds = %242, %222
  %244 = load i32, i32* %20, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %248 = load i32, i32* %8, align 4
  %249 = load i32*, i32** %15, align 8
  %250 = call i32 @dshow_cycle_formats(%struct.TYPE_17__* %247, i32 %248, i32* %249, i32* %21)
  %251 = load i32, i32* %21, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %246
  br label %316

254:                                              ; preds = %246
  br label %255

255:                                              ; preds = %254, %243
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @AudioDevice, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %277

259:                                              ; preds = %255
  %260 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %261 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %260, i32 0, i32 6
  %262 = load i8*, i8** %261, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %277

264:                                              ; preds = %259
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %266 = load i32*, i32** %15, align 8
  %267 = call i64 @dshow_set_audio_buffer_size(%struct.TYPE_17__* %265, i32* %266)
  %268 = icmp slt i64 %267, 0
  br i1 %268, label %269, label %276

269:                                              ; preds = %264
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %271 = load i32, i32* @AV_LOG_ERROR, align 4
  %272 = load %struct.dshow_ctx*, %struct.dshow_ctx** %12, align 8
  %273 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %272, i32 0, i32 6
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %270, i32 %271, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i8* %274)
  br label %276

276:                                              ; preds = %269, %264
  br label %277

277:                                              ; preds = %276, %259, %255
  %278 = load i32*, i32** %15, align 8
  %279 = call i32 @IPin_EnumMediaTypes(i32* %278, i32** %24)
  %280 = load i32, i32* @S_OK, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  br label %316

283:                                              ; preds = %277
  %284 = load i32*, i32** %24, align 8
  %285 = call i32 @IEnumMediaTypes_Reset(i32* %284)
  br label %286

286:                                              ; preds = %312, %283
  %287 = load i32*, i32** %14, align 8
  %288 = icmp ne i32* %287, null
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = load i32*, i32** %24, align 8
  %291 = call i32 @IEnumMediaTypes_Next(i32* %290, i32 1, %struct.TYPE_15__** %26, i32* null)
  %292 = load i32, i32* @S_OK, align 4
  %293 = icmp eq i32 %291, %292
  br label %294

294:                                              ; preds = %289, %286
  %295 = phi i1 [ false, %286 ], [ %293, %289 ]
  br i1 %295, label %296, label %315

296:                                              ; preds = %294
  %297 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 0
  %299 = load i32, i32* %8, align 4
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [2 x i32*], [2 x i32*]* %17, i64 0, i64 %300
  %302 = load i32*, i32** %301, align 8
  %303 = call i64 @IsEqualGUID(i32* %298, i32* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %312

305:                                              ; preds = %296
  %306 = load i32*, i32** %15, align 8
  store i32* %306, i32** %14, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %308 = load i32, i32* @AV_LOG_DEBUG, align 4
  %309 = load i8*, i8** %29, align 8
  %310 = load i8*, i8** %18, align 8
  %311 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %307, i32 %308, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %309, i8* %310)
  br label %316

312:                                              ; preds = %296
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %314 = call i32 @CoTaskMemFree(%struct.TYPE_15__* %313)
  br label %286

315:                                              ; preds = %294
  br label %316

316:                                              ; preds = %315, %305, %282, %253, %235, %212, %191, %187, %180, %173
  %317 = load i32*, i32** %24, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load i32*, i32** %24, align 8
  %321 = call i32 @IEnumMediaTypes_Release(i32* %320)
  br label %322

322:                                              ; preds = %319, %316
  %323 = load i32*, i32** %23, align 8
  %324 = icmp ne i32* %323, null
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load i32*, i32** %23, align 8
  %327 = call i32 @IKsPropertySet_Release(i32* %326)
  br label %328

328:                                              ; preds = %325, %322
  %329 = load i32*, i32** %14, align 8
  %330 = load i32*, i32** %15, align 8
  %331 = icmp ne i32* %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %328
  %333 = load i32*, i32** %15, align 8
  %334 = call i32 @IPin_Release(i32* %333)
  br label %335

335:                                              ; preds = %332, %328
  %336 = load i8*, i8** %29, align 8
  %337 = call i32 @av_free(i8* %336)
  %338 = load i8*, i8** %31, align 8
  %339 = call i32 @av_free(i8* %338)
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %341 = icmp ne %struct.TYPE_15__* %340, null
  br i1 %341, label %342, label %345

342:                                              ; preds = %335
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %344 = call i32 @CoTaskMemFree(%struct.TYPE_15__* %343)
  br label %345

345:                                              ; preds = %342, %335
  br label %139

346:                                              ; preds = %147
  %347 = load i32*, i32** %13, align 8
  %348 = call i32 @IEnumPins_Release(i32* %347)
  %349 = load i32**, i32*** %11, align 8
  %350 = icmp ne i32** %349, null
  br i1 %350, label %351, label %377

351:                                              ; preds = %346
  %352 = load i32, i32* %20, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %364

354:                                              ; preds = %351
  %355 = load i32, i32* %21, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %364, label %357

357:                                              ; preds = %354
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %359 = load i32, i32* @AV_LOG_ERROR, align 4
  %360 = load i8*, i8** %18, align 8
  %361 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %358, i32 %359, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %360)
  %362 = load i32, i32* @EIO, align 4
  %363 = call i32 @AVERROR(i32 %362)
  store i32 %363, i32* %6, align 4
  br label %378

364:                                              ; preds = %354, %351
  %365 = load i32*, i32** %14, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %374, label %367

367:                                              ; preds = %364
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %369 = load i32, i32* @AV_LOG_ERROR, align 4
  %370 = load i8*, i8** %18, align 8
  %371 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @av_log(%struct.TYPE_17__* %368, i32 %369, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i8* %370)
  %372 = load i32, i32* @EIO, align 4
  %373 = call i32 @AVERROR(i32 %372)
  store i32 %373, i32* %6, align 4
  br label %378

374:                                              ; preds = %364
  %375 = load i32*, i32** %14, align 8
  %376 = load i32**, i32*** %11, align 8
  store i32* %375, i32** %376, align 8
  br label %377

377:                                              ; preds = %374, %346
  store i32 0, i32* %6, align 4
  br label %378

378:                                              ; preds = %377, %367, %357, %201, %123
  %379 = load i32, i32* %6, align 4
  ret i32 %379
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dshow_show_filter_properties(i32*, %struct.TYPE_17__*) #2

declare dso_local i32 @IBaseFilter_EnumPins(i32*, i32**) #2

declare dso_local i32 @av_log(%struct.TYPE_17__*, i32, i8*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @IEnumPins_Next(i32*, i32, i32**, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IPin_QueryPinInfo(i32*, %struct.TYPE_16__*) #2

declare dso_local i32 @IBaseFilter_Release(i32) #2

declare dso_local i32 @IPin_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @IKsPropertySet_Get(i32*, i32*, i32, i32*, i32, i32*, i32, i32*) #2

declare dso_local i64 @IsEqualGUID(i32*, i32*) #2

declare dso_local i8* @dup_wchar_to_utf8(%struct.TYPE_15__*) #2

declare dso_local i32 @IPin_QueryId(i32*, %struct.TYPE_15__**) #2

declare dso_local i32 @dshow_cycle_formats(%struct.TYPE_17__*, i32, i32*, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @dshow_set_audio_buffer_size(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @IPin_EnumMediaTypes(i32*, i32**) #2

declare dso_local i32 @IEnumMediaTypes_Reset(i32*) #2

declare dso_local i32 @IEnumMediaTypes_Next(i32*, i32, %struct.TYPE_15__**, i32*) #2

declare dso_local i32 @CoTaskMemFree(%struct.TYPE_15__*) #2

declare dso_local i32 @IEnumMediaTypes_Release(i32*) #2

declare dso_local i32 @IKsPropertySet_Release(i32*) #2

declare dso_local i32 @IPin_Release(i32*) #2

declare dso_local i32 @av_free(i8*) #2

declare dso_local i32 @IEnumPins_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
