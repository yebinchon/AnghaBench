; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_generic_action_ok.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_generic_action_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_17__ = type { i32*, i32*, i32*, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_MENU_SETTINGS_LIST = common dso_local global i32 0, align 4
@menu_display_handle_wallpaper_upload = common dso_local global i32 0, align 4
@MENU_SETTINGS = common dso_local global i32 0, align 4
@CORE_TYPE_PLAIN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"[sideload] %s: %s\0A\00", align 1
@MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"[sideload] %s\0A\00", align 1
@MENU_NAVIGATION_CTL_CLEAR = common dso_local global i32 0, align 4
@CMD_EVENT_DISK_APPEND_IMAGE = common dso_local global i32 0, align 4
@CMD_EVENT_RESUME = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DIRECTORY_SETTINGS_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_AUDIO_SETTINGS_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_ONSCREEN_OVERLAY_SETTINGS_LIST = common dso_local global i32 0, align 4
@AUDIO_MIXER_SYSTEM_SLOT_OK = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_ONSCREEN_VIDEO_LAYOUT_SETTINGS_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64, i32, i32)* @generic_action_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_action_ok(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_16__*, align 8
  %25 = alloca %struct.TYPE_15__*, align 8
  %26 = alloca %struct.TYPE_17__, align 8
  %27 = alloca %struct.TYPE_15__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_15__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_15__*, align 8
  %34 = alloca %struct.TYPE_15__*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca %struct.TYPE_15__*, align 8
  %37 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %38 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %16, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %42 = load i32, i32* @MSG_UNKNOWN, align 4
  store i32 %42, i32* %20, align 4
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %43 = call %struct.TYPE_16__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %24, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %45 = icmp ne %struct.TYPE_16__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %7
  br label %256

47:                                               ; preds = %7
  %48 = call i32 @menu_entries_get_last_stack(i8** %21, i8** %22, i32* null, i32* %20, i32* null)
  %49 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %49, align 16
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @string_is_empty(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %21, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = trunc i64 %39 to i32
  %57 = call i32 @fill_pathname_join(i8* %41, i8* %54, i8* %55, i32 %56)
  br label %62

58:                                               ; preds = %47
  %59 = load i8*, i8** %21, align 8
  %60 = trunc i64 %39 to i32
  %61 = call i32 @strlcpy(i8* %41, i8* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %14, align 4
  switch i32 %63, label %248 [
    i32 136, label %64
    i32 143, label %80
    i32 129, label %91
    i32 144, label %133
    i32 142, label %147
    i32 138, label %148
    i32 137, label %149
    i32 141, label %162
    i32 140, label %175
    i32 146, label %185
    i32 145, label %193
    i32 139, label %200
    i32 147, label %213
    i32 128, label %219
    i32 135, label %222
    i32 131, label %229
    i32 133, label %234
    i32 132, label %239
    i32 134, label %244
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_MENU_SETTINGS_LIST, align 4
  %66 = call i8* @msg_hash_to_str(i32 %65)
  store i8* %66, i8** %23, align 8
  %67 = call i32 @filestream_exists(i8* %41)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %70, %struct.TYPE_15__** %25, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strlcpy(i8* %74, i8* %41, i32 8)
  %76 = call i32 (...) @video_driver_supports_rgba()
  %77 = load i32, i32* @menu_display_handle_wallpaper_upload, align 4
  %78 = call i32 @task_push_image_load(i8* %41, i32 %76, i32 0, i32 %77, i32* null)
  br label %79

79:                                               ; preds = %69, %64
  br label %251

80:                                               ; preds = %62
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 3
  store i32 0, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  store i32* null, i32** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* @MENU_SETTINGS, align 4
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %87 = call i32 @task_push_load_new_core(i8* %41, i32* null, %struct.TYPE_17__* %26, i32 %86, i32* null, i32* null)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  store i32 -1, i32* %19, align 4
  br label %90

90:                                               ; preds = %89, %80
  br label %251

91:                                               ; preds = %62
  %92 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %27, align 8
  %93 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %94 = zext i32 %93 to i64
  %95 = call i8* @llvm.stacksave()
  store i8* %95, i8** %28, align 8
  %96 = alloca i8, i64 %94, align 16
  store i64 %94, i64* %29, align 8
  %97 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %98 = zext i32 %97 to i64
  %99 = alloca i8, i64 %98, align 16
  store i64 %98, i64* %30, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @path_basename(i8* %41)
  %105 = trunc i64 %94 to i32
  %106 = call i32 @fill_pathname_join(i8* %96, i8* %103, i8* %104, i32 %105)
  %107 = trunc i64 %98 to i32
  %108 = call i32 @file_copy(i8* %41, i8* %96, i8* %99, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %91
  %111 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR, align 4
  %112 = call i8* @msg_hash_to_str(i32 %111)
  %113 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %114 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %115 = call i32 @runloop_msg_queue_push(i8* %112, i32 1, i32 100, i32 1, i32* null, i32 %113, i32 %114)
  %116 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR, align 4
  %117 = call i8* @msg_hash_to_str(i32 %116)
  %118 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %117, i8* %99)
  %119 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR, align 4
  %120 = call i8* @msg_hash_to_str(i32 %119)
  %121 = call i32 (i8*, ...) @RARCH_LOG(i8* %120)
  br label %131

122:                                              ; preds = %91
  %123 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_SUCCESS, align 4
  %124 = call i8* @msg_hash_to_str(i32 %123)
  %125 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %126 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %127 = call i32 @runloop_msg_queue_push(i8* %124, i32 1, i32 100, i32 1, i32* null, i32 %125, i32 %126)
  %128 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_SUCCESS, align 4
  %129 = call i8* @msg_hash_to_str(i32 %128)
  %130 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %122, %110
  %132 = load i8*, i8** %28, align 8
  call void @llvm.stackrestore(i8* %132)
  br label %251

133:                                              ; preds = %62
  %134 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %134, %struct.TYPE_15__** %31, align 8
  %135 = load i32, i32* @MENU_SETTINGS, align 4
  store i32 %135, i32* %18, align 4
  %136 = call i32 @menu_display_set_msg_force(i32 1)
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @config_replace(i32 %140, i8* %41)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %133
  store i32 0, i32* %32, align 4
  %144 = load i32, i32* @MENU_NAVIGATION_CTL_CLEAR, align 4
  %145 = call i32 @menu_driver_ctl(i32 %144, i32* %32)
  store i32 -1, i32* %19, align 4
  br label %146

146:                                              ; preds = %143, %133
  br label %251

147:                                              ; preds = %62
  br label %251

148:                                              ; preds = %62
  br label %251

149:                                              ; preds = %62
  %150 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %150, %struct.TYPE_15__** %33, align 8
  %151 = load i32, i32* %15, align 4
  %152 = call i8* @msg_hash_to_str(i32 %151)
  store i8* %152, i8** %23, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %154 = icmp ne %struct.TYPE_15__* %153, null
  br i1 %154, label %155, label %161

155:                                              ; preds = %149
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strlcpy(i8* %159, i8* %41, i32 8)
  br label %161

161:                                              ; preds = %155, %149
  br label %251

162:                                              ; preds = %62
  %163 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %163, %struct.TYPE_15__** %34, align 8
  %164 = load i32, i32* %15, align 4
  %165 = call i8* @msg_hash_to_str(i32 %164)
  store i8* %165, i8** %23, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %167 = icmp ne %struct.TYPE_15__* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @strlcpy(i8* %172, i8* %41, i32 8)
  br label %174

174:                                              ; preds = %168, %162
  br label %251

175:                                              ; preds = %62
  %176 = call i32* @config_file_new_from_path_to_string(i8* %41)
  store i32* %176, i32** %35, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i8* @msg_hash_to_str(i32 %177)
  store i8* %178, i8** %23, align 8
  %179 = load i32*, i32** %35, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i32*, i32** %35, align 8
  %183 = call i32 @input_remapping_load_file(i32* %182, i8* %41)
  br label %184

184:                                              ; preds = %181, %175
  br label %251

185:                                              ; preds = %62
  %186 = load i32, i32* %15, align 4
  %187 = call i8* @msg_hash_to_str(i32 %186)
  store i8* %187, i8** %23, align 8
  %188 = call i32 (...) @cheat_manager_state_free()
  %189 = call i32 @cheat_manager_load(i8* %41, i32 0)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %185
  br label %256

192:                                              ; preds = %185
  br label %251

193:                                              ; preds = %62
  %194 = load i32, i32* %15, align 4
  %195 = call i8* @msg_hash_to_str(i32 %194)
  store i8* %195, i8** %23, align 8
  %196 = call i32 @cheat_manager_load(i8* %41, i32 1)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  br label %256

199:                                              ; preds = %193
  br label %251

200:                                              ; preds = %62
  %201 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %201, %struct.TYPE_15__** %36, align 8
  %202 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_MENU_SETTINGS_LIST, align 4
  %203 = call i8* @msg_hash_to_str(i32 %202)
  store i8* %203, i8** %23, align 8
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %205 = icmp ne %struct.TYPE_15__* %204, null
  br i1 %205, label %206, label %212

206:                                              ; preds = %200
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @strlcpy(i8* %210, i8* %41, i32 8)
  br label %212

212:                                              ; preds = %206, %200
  br label %251

213:                                              ; preds = %62
  %214 = load i32, i32* @MENU_SETTINGS, align 4
  store i32 %214, i32* %18, align 4
  %215 = load i32, i32* @CMD_EVENT_DISK_APPEND_IMAGE, align 4
  %216 = call i32 @command_event(i32 %215, i8* %41)
  %217 = load i32, i32* @CMD_EVENT_RESUME, align 4
  %218 = call i32 @generic_action_ok_command(i32 %217)
  br label %251

219:                                              ; preds = %62
  %220 = load i32, i32* @MENU_SETTINGS, align 4
  store i32 %220, i32* %18, align 4
  %221 = call i32 @content_add_subsystem(i8* %41)
  br label %251

222:                                              ; preds = %62
  %223 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DIRECTORY_SETTINGS_LIST, align 4
  %224 = call i8* @msg_hash_to_str(i32 %223)
  store i8* %224, i8** %23, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @set_path_generic(i8* %227, i8* %41)
  store i32 %228, i32* %19, align 4
  br label %251

229:                                              ; preds = %62
  %230 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST, align 4
  %231 = call i8* @msg_hash_to_str(i32 %230)
  store i8* %231, i8** %23, align 8
  %232 = load i8*, i8** %22, align 8
  %233 = call i32 @set_path_generic(i8* %232, i8* %41)
  store i32 %233, i32* %19, align 4
  br label %251

234:                                              ; preds = %62
  %235 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_AUDIO_SETTINGS_LIST, align 4
  %236 = call i8* @msg_hash_to_str(i32 %235)
  store i8* %236, i8** %23, align 8
  %237 = load i8*, i8** %22, align 8
  %238 = call i32 @set_path_generic(i8* %237, i8* %41)
  store i32 %238, i32* %19, align 4
  br label %251

239:                                              ; preds = %62
  %240 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_ONSCREEN_OVERLAY_SETTINGS_LIST, align 4
  %241 = call i8* @msg_hash_to_str(i32 %240)
  store i8* %241, i8** %23, align 8
  %242 = load i8*, i8** %22, align 8
  %243 = call i32 @set_path_generic(i8* %242, i8* %41)
  store i32 %243, i32* %19, align 4
  br label %251

244:                                              ; preds = %62
  %245 = load i32, i32* @MENU_SETTINGS, align 4
  store i32 %245, i32* %18, align 4
  %246 = load i8*, i8** %22, align 8
  %247 = call i32 @set_path_generic(i8* %246, i8* %41)
  store i32 %247, i32* %19, align 4
  br label %251

248:                                              ; preds = %62
  %249 = load i32, i32* %15, align 4
  %250 = call i8* @msg_hash_to_str(i32 %249)
  store i8* %250, i8** %23, align 8
  br label %251

251:                                              ; preds = %248, %244, %239, %234, %229, %222, %219, %213, %212, %199, %192, %184, %174, %161, %148, %147, %146, %131, %90, %79
  %252 = load i8*, i8** %23, align 8
  %253 = load i32, i32* %18, align 4
  %254 = call i32 @menu_entries_flush_stack(i8* %252, i32 %253)
  %255 = load i32, i32* %19, align 4
  store i32 %255, i32* %8, align 4
  store i32 1, i32* %37, align 4
  br label %258

256:                                              ; preds = %198, %191, %46
  %257 = call i32 (...) @menu_cbs_exit()
  store i32 %257, i32* %8, align 4
  store i32 1, i32* %37, align 4
  br label %258

258:                                              ; preds = %256, %251
  %259 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %259)
  %260 = load i32, i32* %8, align 4
  ret i32 %260
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_16__* @menu_driver_get_ptr(...) #2

declare dso_local i32 @menu_entries_get_last_stack(i8**, i8**, i32*, i32*, i32*) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @msg_hash_to_str(i32) #2

declare dso_local i32 @filestream_exists(i8*) #2

declare dso_local %struct.TYPE_15__* @config_get_ptr(...) #2

declare dso_local i32 @task_push_image_load(i8*, i32, i32, i32, i32*) #2

declare dso_local i32 @video_driver_supports_rgba(...) #2

declare dso_local i32 @task_push_load_new_core(i8*, i32*, %struct.TYPE_17__*, i32, i32*, i32*) #2

declare dso_local i8* @path_basename(i8*) #2

declare dso_local i32 @file_copy(i8*, i8*, i8*, i32) #2

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @RARCH_LOG(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @menu_display_set_msg_force(i32) #2

declare dso_local i32 @config_replace(i32, i8*) #2

declare dso_local i32 @menu_driver_ctl(i32, i32*) #2

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #2

declare dso_local i32 @input_remapping_load_file(i32*, i8*) #2

declare dso_local i32 @cheat_manager_state_free(...) #2

declare dso_local i32 @cheat_manager_load(i8*, i32) #2

declare dso_local i32 @command_event(i32, i8*) #2

declare dso_local i32 @generic_action_ok_command(i32) #2

declare dso_local i32 @content_add_subsystem(i8*) #2

declare dso_local i32 @set_path_generic(i8*, i8*) #2

declare dso_local i32 @menu_entries_flush_stack(i8*, i32) #2

declare dso_local i32 @menu_cbs_exit(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
