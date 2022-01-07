; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_recording_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_recording_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_system_av_info = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i8*, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_13__, %struct.TYPE_14__, %struct.TYPE_18__ }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_18__ = type { i32*, i32*, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32*, i32, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.record_params = type { i32, i32, i32, i8*, i32, float, i8*, i8*, i8*, i32*, i64, i64, i32 }
%struct.video_viewport = type { i32, i32, i64, i64, i64, i64 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@video_driver_av_info = common dso_local global %struct.retro_system_av_info zeroinitializer, align 8
@configuration_settings = common dso_local global %struct.TYPE_19__* null, align 8
@g_extern = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@recording_enable = common dso_local global i32 0, align 4
@current_core_type = common dso_local global i64 0, align 8
@CORE_TYPE_DUMMY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"[recording] %s\0A\00", align 1
@MSG_USING_LIBRETRO_DUMMY_CORE_RECORDING_SKIPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"[recording] %s.\0A\00", align 1
@MSG_HW_RENDERED_MUST_USE_POSTSHADED_RECORDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"[recording] %s: FPS: %.4f, Sample rate: %.4f\0A\00", align 1
@MSG_CUSTOM_TIMING_GIVEN = common dso_local global i32 0, align 4
@streaming_enable = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"udp://127.0.0.1:%u\00", align 1
@RARCH_PATH_BASENAME = common dso_local global i32 0, align 4
@RECORD_CONFIG_TYPE_RECORDING_WEBM_FAST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"mkv\00", align 1
@RECORD_CONFIG_TYPE_RECORDING_GIF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"webm\00", align 1
@RECORD_CONFIG_TYPE_RECORDING_APNG = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@video_driver_pix_fmt = common dso_local global i64 0, align 8
@RETRO_PIXEL_FORMAT_XRGB8888 = common dso_local global i64 0, align 8
@FFEMU_PIX_ARGB8888 = common dso_local global i8* null, align 8
@FFEMU_PIX_RGB565 = common dso_local global i8* null, align 8
@current_video = common dso_local global %struct.TYPE_12__* null, align 8
@.str.8 = private unnamed_addr constant [94 x i8] c"[recording] Failed to get viewport information from video driver. Cannot start recording ...\0A\00", align 1
@video_driver_aspect_ratio = common dso_local global float 0.000000e+00, align 4
@FFEMU_PIX_BGR24 = common dso_local global i8* null, align 8
@recording_gpu_width = common dso_local global i32 0, align 4
@recording_gpu_height = common dso_local global float 0.000000e+00, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"[recording] %s %u x %u\0A\00", align 1
@MSG_DETECTED_VIEWPORT_OF = common dso_local global i32 0, align 4
@recording_width = common dso_local global i32 0, align 4
@recording_height = common dso_local global i32 0, align 4
@video_driver_state_filter = common dso_local global i32 0, align 4
@video_driver_state_out_rgb32 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [57 x i8] c"[recording] %s %s @ %ux%u. (FB size: %ux%u pix_fmt: %u)\0A\00", align 1
@MSG_RECORDING_TO = common dso_local global i32 0, align 4
@recording_driver = common dso_local global i32 0, align 4
@recording_data = common dso_local global i32 0, align 4
@MSG_FAILED_TO_START_RECORDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @recording_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recording_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.record_params, align 8
  %6 = alloca %struct.retro_system_av_info*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.video_viewport, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %2, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %3, align 8
  %19 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %4, align 8
  %22 = bitcast %struct.record_params* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 88, i1 false)
  store %struct.retro_system_av_info* @video_driver_av_info, %struct.retro_system_av_info** %6, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** @configuration_settings, align 8
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_20__* @g_extern, %struct.TYPE_20__** %8, align 8
  %24 = load i32, i32* @recording_enable, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %440

27:                                               ; preds = %0
  %28 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %28, align 16
  %29 = load i64, i64* @current_core_type, align 8
  %30 = load i64, i64* @CORE_TYPE_DUMMY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @MSG_USING_LIBRETRO_DUMMY_CORE_RECORDING_SKIPPED, align 4
  %34 = call i32 @msg_hash_to_str(i32 %33)
  %35 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %440

36:                                               ; preds = %27
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %36
  %43 = call i64 (...) @video_driver_is_hw_context()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @MSG_HW_RENDERED_MUST_USE_POSTSHADED_RECORDING, align 4
  %47 = call i32 @msg_hash_to_str(i32 %46)
  %48 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %440

49:                                               ; preds = %42, %36
  %50 = load i32, i32* @MSG_CUSTOM_TIMING_GIVEN, align 4
  %51 = call i32 @msg_hash_to_str(i32 %50)
  %52 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %6, align 8
  %53 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sitofp i64 %55 to float
  %57 = fpext float %56 to double
  %58 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %6, align 8
  %59 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sitofp i64 %61 to float
  %63 = fpext float %62 to double
  %64 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %51, double %57, double %63)
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @string_is_empty(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %49
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = trunc i64 %16 to i32
  %77 = call i32 @strlcpy(i8* %18, i32* %75, i32 %76)
  br label %185

78:                                               ; preds = %49
  %79 = load i64, i64* @streaming_enable, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %78
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @string_is_empty(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = trunc i64 %16 to i32
  %94 = call i32 @strlcpy(i8* %18, i32* %92, i32 %93)
  br label %102

95:                                               ; preds = %81
  %96 = trunc i64 %16 to i32
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @snprintf(i8* %18, i32 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %95, %88
  br label %184

103:                                              ; preds = %78
  %104 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %105 = call i32 @path_get(i32 %104)
  %106 = call i8* @path_basename(i32 %105)
  store i8* %106, i8** %10, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RECORD_CONFIG_TYPE_RECORDING_WEBM_FAST, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %103
  %114 = load i8*, i8** %10, align 8
  %115 = trunc i64 %20 to i32
  %116 = call i32 @fill_str_dated_filename(i8* %21, i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = trunc i64 %16 to i32
  %122 = call i32 @fill_pathname_join(i8* %18, i32 %120, i8* %21, i32 %121)
  br label %183

123:                                              ; preds = %103
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RECORD_CONFIG_TYPE_RECORDING_WEBM_FAST, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %123
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @RECORD_CONFIG_TYPE_RECORDING_GIF, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %130
  %138 = load i8*, i8** %10, align 8
  %139 = trunc i64 %20 to i32
  %140 = call i32 @fill_str_dated_filename(i8* %21, i8* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %139)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = trunc i64 %16 to i32
  %146 = call i32 @fill_pathname_join(i8* %18, i32 %144, i8* %21, i32 %145)
  br label %182

147:                                              ; preds = %130, %123
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @RECORD_CONFIG_TYPE_RECORDING_GIF, align 8
  %153 = icmp sge i64 %151, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %147
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @RECORD_CONFIG_TYPE_RECORDING_APNG, align 8
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load i8*, i8** %10, align 8
  %163 = trunc i64 %20 to i32
  %164 = call i32 @fill_str_dated_filename(i8* %21, i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = trunc i64 %16 to i32
  %170 = call i32 @fill_pathname_join(i8* %18, i32 %168, i8* %21, i32 %169)
  br label %181

171:                                              ; preds = %154, %147
  %172 = load i8*, i8** %10, align 8
  %173 = trunc i64 %20 to i32
  %174 = call i32 @fill_str_dated_filename(i8* %21, i8* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %173)
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = trunc i64 %16 to i32
  %180 = call i32 @fill_pathname_join(i8* %18, i32 %178, i8* %21, i32 %179)
  br label %181

181:                                              ; preds = %171, %161
  br label %182

182:                                              ; preds = %181, %137
  br label %183

183:                                              ; preds = %182, %113
  br label %184

184:                                              ; preds = %183, %102
  br label %185

185:                                              ; preds = %184, %71
  %186 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %6, align 8
  %187 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 0
  store i32 %189, i32* %190, align 8
  %191 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %6, align 8
  %192 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 1
  store i32 %194, i32* %195, align 4
  %196 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %6, align 8
  %197 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 3
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 8
  store i8* %199, i8** %200, align 8
  %201 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %6, align 8
  %202 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 7
  store i8* %204, i8** %205, align 8
  %206 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 2
  store i32 2, i32* %206, align 8
  %207 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 3
  store i8* %18, i8** %207, align 8
  %208 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %6, align 8
  %209 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 11
  store i64 %211, i64* %212, align 8
  %213 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %6, align 8
  %214 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 10
  store i64 %216, i64* %217, align 8
  %218 = load i64, i64* @video_driver_pix_fmt, align 8
  %219 = load i64, i64* @RETRO_PIXEL_FORMAT_XRGB8888, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %185
  %222 = load i8*, i8** @FFEMU_PIX_ARGB8888, align 8
  br label %225

223:                                              ; preds = %185
  %224 = load i8*, i8** @FFEMU_PIX_RGB565, align 8
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i8* [ %222, %221 ], [ %224, %223 ]
  %227 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 6
  store i8* %226, i8** %227, align 8
  %228 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 9
  store i32* null, i32** %228, align 8
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = call i32 @string_is_empty(i32* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %225
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 9
  store i32* %239, i32** %240, align 8
  br label %269

241:                                              ; preds = %225
  %242 = load i64, i64* @streaming_enable, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %241
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 9
  store i32* %248, i32** %249, align 8
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = trunc i64 %253 to i32
  %255 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 4
  store i32 %254, i32* %255, align 8
  br label %268

256:                                              ; preds = %241
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 9
  store i32* %260, i32** %261, align 8
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = trunc i64 %265 to i32
  %267 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 4
  store i32 %266, i32* %267, align 8
  br label %268

268:                                              ; preds = %256, %244
  br label %269

269:                                              ; preds = %268, %235
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %358

275:                                              ; preds = %269
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** @current_video, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %358

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 5
  store i64 0, i64* %281, align 8
  %282 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 4
  store i64 0, i64* %282, align 8
  %283 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  store i32 0, i32* %283, align 8
  %284 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  store i32 0, i32* %284, align 4
  %285 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 3
  store i64 0, i64* %285, align 8
  %286 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 2
  store i64 0, i64* %286, align 8
  %287 = call i32 @video_driver_get_viewport_info(%struct.video_viewport* %12)
  %288 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %280
  %292 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %297, label %295

295:                                              ; preds = %291, %280
  %296 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %440

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 0
  store i32 %299, i32* %300, align 8
  %301 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 1
  store i32 %302, i32* %303, align 4
  %304 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i8* @next_pow2(i32 %305)
  %307 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 8
  store i8* %306, i8** %307, align 8
  %308 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i8* @next_pow2(i32 %309)
  %311 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 7
  store i8* %310, i8** %311, align 8
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %297
  %318 = load float, float* @video_driver_aspect_ratio, align 4
  %319 = fcmp ogt float %318, 0.000000e+00
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load float, float* @video_driver_aspect_ratio, align 4
  %322 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 5
  store float %321, float* %322, align 4
  br label %332

323:                                              ; preds = %317, %297
  %324 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = uitofp i32 %325 to float
  %327 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = uitofp i32 %328 to float
  %330 = fdiv float %326, %329
  %331 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 5
  store float %330, float* %331, align 4
  br label %332

332:                                              ; preds = %323, %320
  %333 = load i8*, i8** @FFEMU_PIX_BGR24, align 8
  %334 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 6
  store i8* %333, i8** %334, align 8
  %335 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  store i32 %336, i32* @recording_gpu_width, align 4
  %337 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = uitofp i32 %338 to float
  store float %339, float* @recording_gpu_height, align 4
  %340 = load i32, i32* @MSG_DETECTED_VIEWPORT_OF, align 4
  %341 = call i32 @msg_hash_to_str(i32 %340)
  %342 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %341, i32 %343, i32 %345)
  %347 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = getelementptr inbounds %struct.video_viewport, %struct.video_viewport* %12, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = mul i32 %348, %350
  %352 = mul i32 %351, 3
  store i32 %352, i32* %11, align 4
  %353 = load i32, i32* %11, align 4
  %354 = call i32 @video_driver_gpu_record_init(i32 %353)
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %357, label %356

356:                                              ; preds = %332
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %440

357:                                              ; preds = %332
  br label %417

358:                                              ; preds = %275, %269
  %359 = load i32, i32* @recording_width, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %364, label %361

361:                                              ; preds = %358
  %362 = load i32, i32* @recording_height, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %361, %358
  %365 = load i32, i32* @recording_width, align 4
  %366 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 0
  store i32 %365, i32* %366, align 8
  %367 = load i32, i32* @recording_height, align 4
  %368 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 1
  store i32 %367, i32* %368, align 4
  br label %369

369:                                              ; preds = %364, %361
  %370 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %371 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %369
  %376 = load float, float* @video_driver_aspect_ratio, align 4
  %377 = fcmp ogt float %376, 0.000000e+00
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load float, float* @video_driver_aspect_ratio, align 4
  %380 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 5
  store float %379, float* %380, align 4
  br label %390

381:                                              ; preds = %375, %369
  %382 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = uitofp i32 %383 to float
  %385 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = uitofp i32 %386 to float
  %388 = fdiv float %384, %387
  %389 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 5
  store float %388, float* %389, align 4
  br label %390

390:                                              ; preds = %381, %378
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %416

396:                                              ; preds = %390
  %397 = load i32, i32* @video_driver_state_filter, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %416

399:                                              ; preds = %396
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %400 = load i8*, i8** @FFEMU_PIX_RGB565, align 8
  %401 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 6
  store i8* %400, i8** %401, align 8
  %402 = load i64, i64* @video_driver_state_out_rgb32, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %407

404:                                              ; preds = %399
  %405 = load i8*, i8** @FFEMU_PIX_ARGB8888, align 8
  %406 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 6
  store i8* %405, i8** %406, align 8
  br label %407

407:                                              ; preds = %404, %399
  %408 = load i32, i32* @video_driver_state_filter, align 4
  %409 = call i32 @rarch_softfilter_get_max_output_size(i32 %408, i32* %13, i32* %14)
  %410 = load i32, i32* %13, align 4
  %411 = call i8* @next_pow2(i32 %410)
  %412 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 8
  store i8* %411, i8** %412, align 8
  %413 = load i32, i32* %14, align 4
  %414 = call i8* @next_pow2(i32 %413)
  %415 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 7
  store i8* %414, i8** %415, align 8
  br label %416

416:                                              ; preds = %407, %396, %390
  br label %417

417:                                              ; preds = %416, %357
  %418 = load i32, i32* @MSG_RECORDING_TO, align 4
  %419 = call i32 @msg_hash_to_str(i32 %418)
  %420 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 8
  %425 = load i8*, i8** %424, align 8
  %426 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 7
  %427 = load i8*, i8** %426, align 8
  %428 = getelementptr inbounds %struct.record_params, %struct.record_params* %5, i32 0, i32 6
  %429 = load i8*, i8** %428, align 8
  %430 = ptrtoint i8* %429 to i32
  %431 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %419, i8* %18, i32 %421, i32 %423, i8* %425, i8* %427, i32 %430)
  %432 = call i32 @record_driver_init_first(i32* @recording_driver, i32* @recording_data, %struct.record_params* %5)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %439, label %434

434:                                              ; preds = %417
  %435 = load i32, i32* @MSG_FAILED_TO_START_RECORDING, align 4
  %436 = call i32 @msg_hash_to_str(i32 %435)
  %437 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %436)
  %438 = call i32 (...) @video_driver_gpu_record_deinit()
  store i32 0, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %440

439:                                              ; preds = %417
  store i32 1, i32* %1, align 4
  store i32 1, i32* %9, align 4
  br label %440

440:                                              ; preds = %439, %434, %356, %295, %45, %32, %26
  %441 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %441)
  %442 = load i32, i32* %1, align 4
  ret i32 %442
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @RARCH_WARN(i8*, i32) #3

declare dso_local i32 @msg_hash_to_str(i32) #3

declare dso_local i64 @video_driver_is_hw_context(...) #3

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #3

declare dso_local i32 @string_is_empty(i32*) #3

declare dso_local i32 @strlcpy(i8*, i32*, i32) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #3

declare dso_local i8* @path_basename(i32) #3

declare dso_local i32 @path_get(i32) #3

declare dso_local i32 @fill_str_dated_filename(i8*, i8*, i8*, i32) #3

declare dso_local i32 @fill_pathname_join(i8*, i32, i8*, i32) #3

declare dso_local i32 @video_driver_get_viewport_info(%struct.video_viewport*) #3

declare dso_local i32 @RARCH_ERR(i8*, ...) #3

declare dso_local i8* @next_pow2(i32) #3

declare dso_local i32 @video_driver_gpu_record_init(i32) #3

declare dso_local i32 @rarch_softfilter_get_max_output_size(i32, i32*, i32*) #3

declare dso_local i32 @record_driver_init_first(i32*, i32*, %struct.record_params*) #3

declare dso_local i32 @video_driver_gpu_record_deinit(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
