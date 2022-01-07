; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_cycle_devices.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_cycle_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.dshow_ctx* }
%struct.dshow_ctx = type { i8**, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32 }

@VideoDevice = common dso_local global i32 0, align 4
@CLSID_VideoInputDeviceCategory = common dso_local global i32 0, align 4
@CLSID_AudioInputDeviceCategory = common dso_local global i32 0, align 4
@__const.dshow_cycle_devices.device_guid = private unnamed_addr constant [2 x i32*] [i32* @CLSID_VideoInputDeviceCategory, i32* @CLSID_AudioInputDeviceCategory], align 16
@.str = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"audio only\00", align 1
@VideoSourceDevice = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@S_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Could not enumerate %s devices (or none found).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IID_IPropertyBag = common dso_local global i32 0, align 4
@VT_BSTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i32] [i32 70, i32 114, i32 105, i32 101, i32 110, i32 100, i32 108, i32 121, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@IID_IBaseFilter = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to BindToObject for %s\0A\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c" \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"    Alternative name \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [74 x i8] c"Could not find %s device with name [%s] among source devices of type %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32, i32**, i8**)* @dshow_cycle_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dshow_cycle_devices(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, i32** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.dshow_ctx*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [2 x i32*], align 16
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_6__, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.dshow_ctx*, %struct.dshow_ctx** %33, align 8
  store %struct.dshow_ctx* %34, %struct.dshow_ctx** %14, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  %35 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  %36 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %35, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %18, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @VideoDevice, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %6
  %46 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  %47 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  br label %53

49:                                               ; preds = %6
  %50 = load %struct.dshow_ctx*, %struct.dshow_ctx** %14, align 8
  %51 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  store i32 %54, i32* %19, align 4
  %55 = bitcast [2 x i32*]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %55, i8* align 16 bitcast ([2 x i32*]* @__const.dshow_cycle_devices.device_guid to i8*), i64 16, i1 false)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @VideoDevice, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  store i8* %60, i8** %22, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @VideoSourceDevice, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  store i8* %65, i8** %23, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [2 x i32*], [2 x i32*]* %21, i64 0, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @ICreateDevEnum_CreateClassEnumerator(i32* %66, i32* %70, i32** %16, i32 0)
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* @S_OK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %53
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = load i8*, i8** %22, align 8
  %79 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_7__* %76, i32 %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = call i32 @AVERROR(i32 %80)
  store i32 %81, i32* %7, align 4
  br label %250

82:                                               ; preds = %53
  br label %83

83:                                               ; preds = %226, %82
  %84 = load i32*, i32** %15, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** %16, align 8
  %88 = call i32 @IEnumMoniker_Next(i32* %87, i32 1, i32** %17, i32* null)
  %89 = load i32, i32* @S_OK, align 4
  %90 = icmp eq i32 %88, %89
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i1 [ false, %83 ], [ %90, %86 ]
  br i1 %92, label %93, label %229

93:                                               ; preds = %91
  store i32* null, i32** %24, align 8
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  store i32* null, i32** %28, align 8
  store i32* null, i32** %29, align 8
  store i32* null, i32** %30, align 8
  %94 = call i32 @CoGetMalloc(i32 1, i32** %30)
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* @S_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %202

99:                                               ; preds = %93
  %100 = call i32 @CreateBindCtx(i32 0, i32** %28)
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* @S_OK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %202

105:                                              ; preds = %99
  %106 = load i32*, i32** %17, align 8
  %107 = load i32*, i32** %28, align 8
  %108 = call i32 @IMoniker_GetDisplayName(i32* %106, i32* %107, i32* null, i32** %29)
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* @S_OK, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %202

113:                                              ; preds = %105
  %114 = load i32*, i32** %29, align 8
  %115 = call i8* @dup_wchar_to_utf8(i32* %114)
  store i8* %115, i8** %26, align 8
  store i32 0, i32* %31, align 4
  br label %116

116:                                              ; preds = %135, %113
  %117 = load i32, i32* %31, align 4
  %118 = load i8*, i8** %26, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  %122 = load i8*, i8** %26, align 8
  %123 = load i32, i32* %31, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 58
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = load i8*, i8** %26, align 8
  %131 = load i32, i32* %31, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8 95, i8* %133, align 1
  br label %134

134:                                              ; preds = %129, %121
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %31, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %31, align 4
  br label %116

138:                                              ; preds = %116
  %139 = load i32*, i32** %17, align 8
  %140 = bitcast i32** %24 to i8*
  %141 = call i32 @IMoniker_BindToStorage(i32* %139, i32 0, i32 0, i32* @IID_IPropertyBag, i8* %140)
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %20, align 4
  %143 = load i32, i32* @S_OK, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %202

146:                                              ; preds = %138
  %147 = load i32, i32* @VT_BSTR, align 4
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %147, i32* %148, align 8
  %149 = load i32*, i32** %24, align 8
  %150 = call i32 @IPropertyBag_Read(i32* %149, i8* bitcast ([13 x i32]* @.str.4 to i8*), %struct.TYPE_6__* %27, i32* null)
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %20, align 4
  %152 = load i32, i32* @S_OK, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  br label %202

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i8* @dup_wchar_to_utf8(i32* %157)
  store i8* %158, i8** %25, align 8
  %159 = load i32**, i32*** %12, align 8
  %160 = icmp ne i32** %159, null
  br i1 %160, label %161, label %192

161:                                              ; preds = %155
  %162 = load i8*, i8** %18, align 8
  %163 = load i8*, i8** %25, align 8
  %164 = call i64 @strcmp(i8* %162, i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i8*, i8** %18, align 8
  %168 = load i8*, i8** %26, align 8
  %169 = call i64 @strcmp(i8* %167, i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %202

172:                                              ; preds = %166, %161
  %173 = load i32, i32* %19, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %19, align 4
  %175 = icmp ne i32 %173, 0
  br i1 %175, label %191, label %176

176:                                              ; preds = %172
  %177 = load i32*, i32** %17, align 8
  %178 = bitcast i32** %15 to i8*
  %179 = call i32 @IMoniker_BindToObject(i32* %177, i32 0, i32 0, i32* @IID_IBaseFilter, i8* %178)
  store i32 %179, i32* %20, align 4
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* @S_OK, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %176
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = load i32, i32* @AV_LOG_ERROR, align 4
  %186 = load i8*, i8** %18, align 8
  %187 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_7__* %184, i32 %185, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %186)
  br label %202

188:                                              ; preds = %176
  %189 = load i8*, i8** %26, align 8
  %190 = load i8**, i8*** %13, align 8
  store i8* %189, i8** %190, align 8
  store i8* null, i8** %26, align 8
  br label %191

191:                                              ; preds = %188, %172
  br label %201

192:                                              ; preds = %155
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = load i32, i32* @AV_LOG_INFO, align 4
  %195 = load i8*, i8** %25, align 8
  %196 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_7__* %193, i32 %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %195)
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %198 = load i32, i32* @AV_LOG_INFO, align 4
  %199 = load i8*, i8** %26, align 8
  %200 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_7__* %197, i32 %198, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %192, %191
  br label %202

202:                                              ; preds = %201, %183, %171, %154, %145, %112, %104, %98
  %203 = load i32*, i32** %29, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load i32*, i32** %30, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i32*, i32** %30, align 8
  %210 = load i32*, i32** %29, align 8
  %211 = call i32 @IMalloc_Free(i32* %209, i32* %210)
  br label %212

212:                                              ; preds = %208, %205, %202
  %213 = load i32*, i32** %28, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32*, i32** %28, align 8
  %217 = call i32 @IBindCtx_Release(i32* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = call i32 @av_freep(i8** %25)
  %220 = call i32 @av_freep(i8** %26)
  %221 = load i32*, i32** %24, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i32*, i32** %24, align 8
  %225 = call i32 @IPropertyBag_Release(i32* %224)
  br label %226

226:                                              ; preds = %223, %218
  %227 = load i32*, i32** %17, align 8
  %228 = call i32 @IMoniker_Release(i32* %227)
  br label %83

229:                                              ; preds = %91
  %230 = load i32*, i32** %16, align 8
  %231 = call i32 @IEnumMoniker_Release(i32* %230)
  %232 = load i32**, i32*** %12, align 8
  %233 = icmp ne i32** %232, null
  br i1 %233, label %234, label %249

234:                                              ; preds = %229
  %235 = load i32*, i32** %15, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %246, label %237

237:                                              ; preds = %234
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %239 = load i32, i32* @AV_LOG_ERROR, align 4
  %240 = load i8*, i8** %22, align 8
  %241 = load i8*, i8** %18, align 8
  %242 = load i8*, i8** %23, align 8
  %243 = call i32 (%struct.TYPE_7__*, i32, i8*, i8*, ...) @av_log(%struct.TYPE_7__* %238, i32 %239, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.8, i64 0, i64 0), i8* %240, i8* %241, i8* %242)
  %244 = load i32, i32* @EIO, align 4
  %245 = call i32 @AVERROR(i32 %244)
  store i32 %245, i32* %7, align 4
  br label %250

246:                                              ; preds = %234
  %247 = load i32*, i32** %15, align 8
  %248 = load i32**, i32*** %12, align 8
  store i32* %247, i32** %248, align 8
  br label %249

249:                                              ; preds = %246, %229
  store i32 0, i32* %7, align 4
  br label %250

250:                                              ; preds = %249, %237, %75
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ICreateDevEnum_CreateClassEnumerator(i32*, i32*, i32**, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i8*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @IEnumMoniker_Next(i32*, i32, i32**, i32*) #2

declare dso_local i32 @CoGetMalloc(i32, i32**) #2

declare dso_local i32 @CreateBindCtx(i32, i32**) #2

declare dso_local i32 @IMoniker_GetDisplayName(i32*, i32*, i32*, i32**) #2

declare dso_local i8* @dup_wchar_to_utf8(i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @IMoniker_BindToStorage(i32*, i32, i32, i32*, i8*) #2

declare dso_local i32 @IPropertyBag_Read(i32*, i8*, %struct.TYPE_6__*, i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @IMoniker_BindToObject(i32*, i32, i32, i32*, i8*) #2

declare dso_local i32 @IMalloc_Free(i32*, i32*) #2

declare dso_local i32 @IBindCtx_Release(i32*) #2

declare dso_local i32 @av_freep(i8**) #2

declare dso_local i32 @IPropertyBag_Release(i32*) #2

declare dso_local i32 @IMoniker_Release(i32*) #2

declare dso_local i32 @IEnumMoniker_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
