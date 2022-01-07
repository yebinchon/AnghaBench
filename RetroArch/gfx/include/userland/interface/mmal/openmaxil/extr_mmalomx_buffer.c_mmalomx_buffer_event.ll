; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_buffer.c_mmalomx_buffer_event.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/openmaxil/extr_mmalomx_buffer.c_mmalomx_buffer_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i8*, %struct.TYPE_20__*, i32* }
%struct.TYPE_20__ = type { i64, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_26__, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { i64, i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_19__, i64, i64, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_23__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"hComponent %p, port %i, event %4.4s\00", align 1
@MMAL_EVENT_ERROR = common dso_local global i64 0, align 8
@OMX_EventError = common dso_local global i32 0, align 4
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8
@MMAL_ES_TYPE_VIDEO = common dso_local global i64 0, align 8
@MMAL_TRUE = common dso_local global i8* null, align 8
@MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_ASPECT_RATIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"aspect ratio change %ix%i->%ix%i\00", align 1
@OMX_EventPortSettingsChanged = common dso_local global i32 0, align 4
@OMX_IndexParamBrcmPixelAspectRatio = common dso_local global i32 0, align 4
@MMAL_ES_FORMAT_COMPARE_FLAG_ENCODING = common dso_local global i32 0, align 4
@MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_RESOLUTION = common dso_local global i32 0, align 4
@MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_CROPPING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"format change %ix%i(%ix%i) -> %ix%i(%ix%i)\00", align 1
@MMAL_ES_TYPE_AUDIO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"format change %ich, %iHz, %ibps -> %ich, %iHz, %ibps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_25__*)* @mmalomx_buffer_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmalomx_buffer_event(%struct.TYPE_17__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_26__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %4, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = bitcast i64* %21 to i8*
  %23 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %16, i32 %19, i8* %22)
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MMAL_EVENT_ERROR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %2
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @OMX_EventError, align 4
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mmalil_error_to_omx(i32 %36)
  %38 = call i32 @mmalomx_callback_event_handler(i32* %30, i32 %31, i32 %37, i32 0, i32* null)
  br label %331

39:                                               ; preds = %2
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = call %struct.TYPE_23__* @mmal_event_format_changed_get(%struct.TYPE_25__* %40)
  store %struct.TYPE_23__* %41, %struct.TYPE_23__** %6, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %43 = icmp ne %struct.TYPE_23__* %42, null
  br i1 %43, label %44, label %225

44:                                               ; preds = %39
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %225

52:                                               ; preds = %44
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MMAL_ES_TYPE_VIDEO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %225

62:                                               ; preds = %52
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %69, align 8
  %71 = call i32 @mmal_format_compare(i32 %65, %struct.TYPE_24__* %70)
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %75, align 8
  store %struct.TYPE_24__* %76, %struct.TYPE_24__** %8, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = bitcast %struct.TYPE_22__* %9 to i8*
  %82 = bitcast %struct.TYPE_22__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 48, i1 false)
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mmal_format_copy(%struct.TYPE_24__* %83, i32 %86)
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 2
  store i32 %90, i32* %94, align 4
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  store i32 %97, i32* %101, align 8
  %102 = load i8*, i8** @MMAL_TRUE, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_ASPECT_RATIO, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %163

109:                                              ; preds = %62
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %116, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %109
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %163

130:                                              ; preds = %125, %109
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 (i8*, i32, i32, i32, i32, ...) @LOG_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %138, i32 %146, i32 %154)
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* @OMX_EventPortSettingsChanged, align 4
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @OMX_IndexParamBrcmPixelAspectRatio, align 4
  %162 = call i32 @mmalomx_callback_event_handler(i32* %156, i32 %157, i32 %160, i32 %161, i32* null)
  br label %163

163:                                              ; preds = %130, %125, %62
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @MMAL_ES_FORMAT_COMPARE_FLAG_ENCODING, align 4
  %166 = load i32, i32* @MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_RESOLUTION, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @MMAL_ES_FORMAT_COMPARE_FLAG_VIDEO_CROPPING, align 4
  %169 = or i32 %167, %168
  %170 = and i32 %164, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %224

172:                                              ; preds = %163
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = call i32 (i8*, i32, i32, i32, i32, ...) @LOG_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %175, i32 %178, i32 %182, i32 %186, i32 %193, i32 %200, i32 %208, i32 %216)
  %218 = load i32*, i32** %5, align 8
  %219 = load i32, i32* @OMX_EventPortSettingsChanged, align 4
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @mmalomx_callback_event_handler(i32* %218, i32 %219, i32 %222, i32 0, i32* null)
  br label %224

224:                                              ; preds = %172, %163
  br label %331

225:                                              ; preds = %52, %44, %39
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %227 = icmp ne %struct.TYPE_23__* %226, null
  br i1 %227, label %228, label %330

228:                                              ; preds = %225
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %330

236:                                              ; preds = %228
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 3
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @MMAL_ES_TYPE_AUDIO, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %330

246:                                              ; preds = %236
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 2
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %253, align 8
  %255 = call i32 @mmal_format_compare(i32 %249, %struct.TYPE_24__* %254)
  store i32 %255, i32* %10, align 4
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %259, align 8
  store %struct.TYPE_24__* %260, %struct.TYPE_24__** %11, align 8
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = bitcast %struct.TYPE_26__* %12 to i8*
  %266 = bitcast %struct.TYPE_26__* %264 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %265, i8* align 8 %266, i64 24, i1 false)
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %268 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @mmal_format_copy(%struct.TYPE_24__* %267, i32 %270)
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 2
  store i32 %274, i32* %278, align 4
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 2
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 1
  store i32 %281, i32* %285, align 8
  %286 = load i8*, i8** @MMAL_TRUE, align 8
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 1
  store i8* %286, i8** %288, align 8
  %289 = load i32, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %329

291:                                              ; preds = %246
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = trunc i64 %293 to i32
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 1
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = trunc i64 %313 to i32
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = trunc i64 %320 to i32
  %322 = call i32 (i8*, i32, i32, i32, i32, ...) @LOG_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %294, i32 %297, i32 %300, i32 %307, i32 %314, i32 %321)
  %323 = load i32*, i32** %5, align 8
  %324 = load i32, i32* @OMX_EventPortSettingsChanged, align 4
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 @mmalomx_callback_event_handler(i32* %323, i32 %324, i32 %327, i32 0, i32* null)
  br label %329

329:                                              ; preds = %291, %246
  br label %330

330:                                              ; preds = %329, %236, %228, %225
  br label %331

331:                                              ; preds = %29, %330, %224
  ret void
}

declare dso_local i32 @LOG_TRACE(i8*, i32*, i32, i8*) #1

declare dso_local i32 @mmalomx_callback_event_handler(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @mmalil_error_to_omx(i32) #1

declare dso_local %struct.TYPE_23__* @mmal_event_format_changed_get(%struct.TYPE_25__*) #1

declare dso_local i32 @mmal_format_compare(i32, %struct.TYPE_24__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mmal_format_copy(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @LOG_DEBUG(i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
