; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_load_content_settings.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_load_content_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@RARCH_CTL_IS_DUMMY_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_RESUME_CONTENT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RESUME_CONTENT = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_RUN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_RESTART_CONTENT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RESTART_CONTENT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CLOSE_CONTENT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CLOSE_CONTENT = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_CLOSE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_TAKE_SCREENSHOT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_TAKE_SCREENSHOT = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_SCREENSHOT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_STATE_SLOT = common dso_local global i32 0, align 4
@PARSE_ONLY_INT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SAVE_STATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SAVE_STATE = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_SAVESTATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_LOAD_STATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_LOAD_STATE = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_LOADSTATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_UNDO_LOAD_STATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_UNDO_LOAD_STATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_UNDO_SAVE_STATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_UNDO_SAVE_STATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ADD_TO_FAVORITES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TO_FAVORITES = common dso_local global i32 0, align 4
@FILE_TYPE_PLAYLIST_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@MENU_ENUM_LABEL_VALUE_QUICK_MENU_START_RECORDING = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_QUICK_MENU_START_RECORDING = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_QUICK_MENU_START_STREAMING = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_QUICK_MENU_START_STREAMING = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_QUICK_MENU_STOP_STREAMING = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_QUICK_MENU_STOP_STREAMING = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_QUICK_MENU_STOP_RECORDING = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_QUICK_MENU_STOP_RECORDING = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CORE_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ONSCREEN_OVERLAY_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ONSCREEN_OVERLAY_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_REWIND_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_REWIND_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_LATENCY_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_LATENCY_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_INPUT_REMAPPING_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CORE_INPUT_REMAPPING_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CORE_CHEAT_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CORE_CHEAT_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DISK_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DISK_OPTIONS = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_CORE_DISK_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_QUICK_MENU_OVERRIDE_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_QUICK_MENU_OVERRIDE_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_INFORMATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_INFORMATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NO_ITEMS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NO_ITEMS = common dso_local global i32 0, align 4
@MENU_SETTING_NO_ITEM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ACHIEVEMENT_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETPLAY_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ONSCREEN_VIDEO_LAYOUT_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SHADER_OPTIONS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ACHIEVEMENT_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NETPLAY_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ONSCREEN_VIDEO_LAYOUT_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SHADER_OPTIONS = common dso_local global i32 0, align 4
@rcheevos_hardcore_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_15__*)* @menu_displaylist_parse_load_content_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_load_content_settings(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %5, align 8
  %8 = load i32, i32* @RARCH_CTL_IS_DUMMY_CORE, align 4
  %9 = call i32 @rarch_ctl(i32 %8, i32* null)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %447, label %11

11:                                               ; preds = %2
  %12 = call %struct.TYPE_14__* (...) @runloop_get_system_info()
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 22
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MENU_ENUM_LABEL_VALUE_RESUME_CONTENT, align 4
  %23 = call i32 @msg_hash_to_str(i32 %22)
  %24 = load i32, i32* @MENU_ENUM_LABEL_RESUME_CONTENT, align 4
  %25 = call i32 @msg_hash_to_str(i32 %24)
  %26 = load i32, i32* @MENU_ENUM_LABEL_RESUME_CONTENT, align 4
  %27 = load i32, i32* @MENU_SETTING_ACTION_RUN, align 4
  %28 = call i32 @menu_entries_append_enum(i32 %21, i32 %23, i32 %25, i32 %26, i32 %27, i32 0, i32 0)
  br label %29

29:                                               ; preds = %18, %11
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 21
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MENU_ENUM_LABEL_VALUE_RESTART_CONTENT, align 4
  %40 = call i32 @msg_hash_to_str(i32 %39)
  %41 = load i32, i32* @MENU_ENUM_LABEL_RESTART_CONTENT, align 4
  %42 = call i32 @msg_hash_to_str(i32 %41)
  %43 = load i32, i32* @MENU_ENUM_LABEL_RESTART_CONTENT, align 4
  %44 = load i32, i32* @MENU_SETTING_ACTION_RUN, align 4
  %45 = call i32 @menu_entries_append_enum(i32 %38, i32 %40, i32 %42, i32 %43, i32 %44, i32 0, i32 0)
  br label %46

46:                                               ; preds = %35, %29
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 20
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CLOSE_CONTENT, align 4
  %57 = call i32 @msg_hash_to_str(i32 %56)
  %58 = load i32, i32* @MENU_ENUM_LABEL_CLOSE_CONTENT, align 4
  %59 = call i32 @msg_hash_to_str(i32 %58)
  %60 = load i32, i32* @MENU_ENUM_LABEL_CLOSE_CONTENT, align 4
  %61 = load i32, i32* @MENU_SETTING_ACTION_CLOSE, align 4
  %62 = call i32 @menu_entries_append_enum(i32 %55, i32 %57, i32 %59, i32 %60, i32 %61, i32 0, i32 0)
  br label %63

63:                                               ; preds = %52, %46
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 19
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MENU_ENUM_LABEL_VALUE_TAKE_SCREENSHOT, align 4
  %74 = call i32 @msg_hash_to_str(i32 %73)
  %75 = load i32, i32* @MENU_ENUM_LABEL_TAKE_SCREENSHOT, align 4
  %76 = call i32 @msg_hash_to_str(i32 %75)
  %77 = load i32, i32* @MENU_ENUM_LABEL_TAKE_SCREENSHOT, align 4
  %78 = load i32, i32* @MENU_SETTING_ACTION_SCREENSHOT, align 4
  %79 = call i32 @menu_entries_append_enum(i32 %72, i32 %74, i32 %76, i32 %77, i32 %78, i32 0, i32 0)
  br label %80

80:                                               ; preds = %69, %63
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 18
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %80
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MENU_ENUM_LABEL_STATE_SLOT, align 4
  %91 = load i32, i32* @PARSE_ONLY_INT, align 4
  %92 = call i32 @menu_displaylist_parse_settings_enum(i32 %89, i32 %90, i32 %91, i32 1)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SAVE_STATE, align 4
  %97 = call i32 @msg_hash_to_str(i32 %96)
  %98 = load i32, i32* @MENU_ENUM_LABEL_SAVE_STATE, align 4
  %99 = call i32 @msg_hash_to_str(i32 %98)
  %100 = load i32, i32* @MENU_ENUM_LABEL_SAVE_STATE, align 4
  %101 = load i32, i32* @MENU_SETTING_ACTION_SAVESTATE, align 4
  %102 = call i32 @menu_entries_append_enum(i32 %95, i32 %97, i32 %99, i32 %100, i32 %101, i32 0, i32 0)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MENU_ENUM_LABEL_VALUE_LOAD_STATE, align 4
  %107 = call i32 @msg_hash_to_str(i32 %106)
  %108 = load i32, i32* @MENU_ENUM_LABEL_LOAD_STATE, align 4
  %109 = call i32 @msg_hash_to_str(i32 %108)
  %110 = load i32, i32* @MENU_ENUM_LABEL_LOAD_STATE, align 4
  %111 = load i32, i32* @MENU_SETTING_ACTION_LOADSTATE, align 4
  %112 = call i32 @menu_entries_append_enum(i32 %105, i32 %107, i32 %109, i32 %110, i32 %111, i32 0, i32 0)
  br label %113

113:                                              ; preds = %86, %80
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 18
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %113
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 17
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %146

125:                                              ; preds = %119
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MENU_ENUM_LABEL_VALUE_UNDO_LOAD_STATE, align 4
  %130 = call i32 @msg_hash_to_str(i32 %129)
  %131 = load i32, i32* @MENU_ENUM_LABEL_UNDO_LOAD_STATE, align 4
  %132 = call i32 @msg_hash_to_str(i32 %131)
  %133 = load i32, i32* @MENU_ENUM_LABEL_UNDO_LOAD_STATE, align 4
  %134 = load i32, i32* @MENU_SETTING_ACTION_LOADSTATE, align 4
  %135 = call i32 @menu_entries_append_enum(i32 %128, i32 %130, i32 %132, i32 %133, i32 %134, i32 0, i32 0)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MENU_ENUM_LABEL_VALUE_UNDO_SAVE_STATE, align 4
  %140 = call i32 @msg_hash_to_str(i32 %139)
  %141 = load i32, i32* @MENU_ENUM_LABEL_UNDO_SAVE_STATE, align 4
  %142 = call i32 @msg_hash_to_str(i32 %141)
  %143 = load i32, i32* @MENU_ENUM_LABEL_UNDO_SAVE_STATE, align 4
  %144 = load i32, i32* @MENU_SETTING_ACTION_LOADSTATE, align 4
  %145 = call i32 @menu_entries_append_enum(i32 %138, i32 %140, i32 %142, i32 %143, i32 %144, i32 0, i32 0)
  br label %146

146:                                              ; preds = %125, %119, %113
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 16
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %146
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MENU_ENUM_LABEL_VALUE_ADD_TO_FAVORITES, align 4
  %157 = call i32 @msg_hash_to_str(i32 %156)
  %158 = load i32, i32* @MENU_ENUM_LABEL_ADD_TO_FAVORITES, align 4
  %159 = call i32 @msg_hash_to_str(i32 %158)
  %160 = load i32, i32* @MENU_ENUM_LABEL_ADD_TO_FAVORITES, align 4
  %161 = load i32, i32* @FILE_TYPE_PLAYLIST_ENTRY, align 4
  %162 = call i32 @menu_entries_append_enum(i32 %155, i32 %157, i32 %159, i32 %160, i32 %161, i32 0, i32 0)
  br label %163

163:                                              ; preds = %152, %146
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @string_is_not_equal(i32 %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %247

170:                                              ; preds = %163
  %171 = call i32 (...) @recording_is_enabled()
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %220, label %173

173:                                              ; preds = %170
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 15
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %196

179:                                              ; preds = %173
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %196, label %185

185:                                              ; preds = %179
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @MENU_ENUM_LABEL_VALUE_QUICK_MENU_START_RECORDING, align 4
  %190 = call i32 @msg_hash_to_str(i32 %189)
  %191 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_START_RECORDING, align 4
  %192 = call i32 @msg_hash_to_str(i32 %191)
  %193 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_START_RECORDING, align 4
  %194 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %195 = call i32 @menu_entries_append_enum(i32 %188, i32 %190, i32 %192, i32 %193, i32 %194, i32 0, i32 0)
  br label %196

196:                                              ; preds = %185, %179, %173
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 14
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %196
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %219, label %208

208:                                              ; preds = %202
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MENU_ENUM_LABEL_VALUE_QUICK_MENU_START_STREAMING, align 4
  %213 = call i32 @msg_hash_to_str(i32 %212)
  %214 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_START_STREAMING, align 4
  %215 = call i32 @msg_hash_to_str(i32 %214)
  %216 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_START_STREAMING, align 4
  %217 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %218 = call i32 @menu_entries_append_enum(i32 %211, i32 %213, i32 %215, i32 %216, i32 %217, i32 0, i32 0)
  br label %219

219:                                              ; preds = %208, %202, %196
  br label %246

220:                                              ; preds = %170
  %221 = call i64 (...) @streaming_is_enabled()
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %220
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @MENU_ENUM_LABEL_VALUE_QUICK_MENU_STOP_STREAMING, align 4
  %228 = call i32 @msg_hash_to_str(i32 %227)
  %229 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_STOP_STREAMING, align 4
  %230 = call i32 @msg_hash_to_str(i32 %229)
  %231 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_STOP_STREAMING, align 4
  %232 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %233 = call i32 @menu_entries_append_enum(i32 %226, i32 %228, i32 %230, i32 %231, i32 %232, i32 0, i32 0)
  br label %245

234:                                              ; preds = %220
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @MENU_ENUM_LABEL_VALUE_QUICK_MENU_STOP_RECORDING, align 4
  %239 = call i32 @msg_hash_to_str(i32 %238)
  %240 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_STOP_RECORDING, align 4
  %241 = call i32 @msg_hash_to_str(i32 %240)
  %242 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_STOP_RECORDING, align 4
  %243 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %244 = call i32 @menu_entries_append_enum(i32 %237, i32 %239, i32 %241, i32 %242, i32 %243, i32 0, i32 0)
  br label %245

245:                                              ; preds = %234, %223
  br label %246

246:                                              ; preds = %245, %219
  br label %247

247:                                              ; preds = %246, %163
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 13
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %270

253:                                              ; preds = %247
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %253
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_OPTIONS, align 4
  %264 = call i32 @msg_hash_to_str(i32 %263)
  %265 = load i32, i32* @MENU_ENUM_LABEL_CORE_OPTIONS, align 4
  %266 = call i32 @msg_hash_to_str(i32 %265)
  %267 = load i32, i32* @MENU_ENUM_LABEL_CORE_OPTIONS, align 4
  %268 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %269 = call i32 @menu_entries_append_enum(i32 %262, i32 %264, i32 %266, i32 %267, i32 %268, i32 0, i32 0)
  br label %270

270:                                              ; preds = %259, %253, %247
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 12
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %270
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %293, label %282

282:                                              ; preds = %276
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @MENU_ENUM_LABEL_VALUE_ONSCREEN_OVERLAY_SETTINGS, align 4
  %287 = call i32 @msg_hash_to_str(i32 %286)
  %288 = load i32, i32* @MENU_ENUM_LABEL_ONSCREEN_OVERLAY_SETTINGS, align 4
  %289 = call i32 @msg_hash_to_str(i32 %288)
  %290 = load i32, i32* @MENU_ENUM_LABEL_ONSCREEN_OVERLAY_SETTINGS, align 4
  %291 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %292 = call i32 @menu_entries_append_enum(i32 %285, i32 %287, i32 %289, i32 %290, i32 %291, i32 0, i32 0)
  br label %293

293:                                              ; preds = %282, %276, %270
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 10
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %316

299:                                              ; preds = %293
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %316, label %305

305:                                              ; preds = %299
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @MENU_ENUM_LABEL_VALUE_REWIND_SETTINGS, align 4
  %310 = call i32 @msg_hash_to_str(i32 %309)
  %311 = load i32, i32* @MENU_ENUM_LABEL_REWIND_SETTINGS, align 4
  %312 = call i32 @msg_hash_to_str(i32 %311)
  %313 = load i32, i32* @MENU_ENUM_LABEL_REWIND_SETTINGS, align 4
  %314 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %315 = call i32 @menu_entries_append_enum(i32 %308, i32 %310, i32 %312, i32 %313, i32 %314, i32 0, i32 0)
  br label %316

316:                                              ; preds = %305, %299, %293
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 9
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %339

322:                                              ; preds = %316
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %339, label %328

328:                                              ; preds = %322
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @MENU_ENUM_LABEL_VALUE_LATENCY_SETTINGS, align 4
  %333 = call i32 @msg_hash_to_str(i32 %332)
  %334 = load i32, i32* @MENU_ENUM_LABEL_LATENCY_SETTINGS, align 4
  %335 = call i32 @msg_hash_to_str(i32 %334)
  %336 = load i32, i32* @MENU_ENUM_LABEL_LATENCY_SETTINGS, align 4
  %337 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %338 = call i32 @menu_entries_append_enum(i32 %331, i32 %333, i32 %335, i32 %336, i32 %337, i32 0, i32 0)
  br label %339

339:                                              ; preds = %328, %322, %316
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 8
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %362

345:                                              ; preds = %339
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %362, label %351

351:                                              ; preds = %345
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_INPUT_REMAPPING_OPTIONS, align 4
  %356 = call i32 @msg_hash_to_str(i32 %355)
  %357 = load i32, i32* @MENU_ENUM_LABEL_CORE_INPUT_REMAPPING_OPTIONS, align 4
  %358 = call i32 @msg_hash_to_str(i32 %357)
  %359 = load i32, i32* @MENU_ENUM_LABEL_CORE_INPUT_REMAPPING_OPTIONS, align 4
  %360 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %361 = call i32 @menu_entries_append_enum(i32 %354, i32 %356, i32 %358, i32 %359, i32 %360, i32 0, i32 0)
  br label %362

362:                                              ; preds = %351, %345, %339
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 7
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %379

368:                                              ; preds = %362
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CORE_CHEAT_OPTIONS, align 4
  %373 = call i32 @msg_hash_to_str(i32 %372)
  %374 = load i32, i32* @MENU_ENUM_LABEL_CORE_CHEAT_OPTIONS, align 4
  %375 = call i32 @msg_hash_to_str(i32 %374)
  %376 = load i32, i32* @MENU_ENUM_LABEL_CORE_CHEAT_OPTIONS, align 4
  %377 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %378 = call i32 @menu_entries_append_enum(i32 %371, i32 %373, i32 %375, i32 %376, i32 %377, i32 0, i32 0)
  br label %379

379:                                              ; preds = %368, %362
  %380 = load i32, i32* @RARCH_CTL_IS_DUMMY_CORE, align 4
  %381 = call i32 @rarch_ctl(i32 %380, i32* null)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %400, label %383

383:                                              ; preds = %379
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %400

389:                                              ; preds = %383
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DISK_OPTIONS, align 4
  %394 = call i32 @msg_hash_to_str(i32 %393)
  %395 = load i32, i32* @MENU_ENUM_LABEL_DISK_OPTIONS, align 4
  %396 = call i32 @msg_hash_to_str(i32 %395)
  %397 = load i32, i32* @MENU_ENUM_LABEL_DISK_OPTIONS, align 4
  %398 = load i32, i32* @MENU_SETTING_ACTION_CORE_DISK_OPTIONS, align 4
  %399 = call i32 @menu_entries_append_enum(i32 %392, i32 %394, i32 %396, i32 %397, i32 %398, i32 0, i32 0)
  br label %400

400:                                              ; preds = %389, %383, %379
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 5
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %412, label %406

406:                                              ; preds = %400
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 4
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %429

412:                                              ; preds = %406, %400
  %413 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 3
  %416 = load i32, i32* %415, align 8
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %429, label %418

418:                                              ; preds = %412
  %419 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = load i32, i32* @MENU_ENUM_LABEL_VALUE_QUICK_MENU_OVERRIDE_OPTIONS, align 4
  %423 = call i32 @msg_hash_to_str(i32 %422)
  %424 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_OVERRIDE_OPTIONS, align 4
  %425 = call i32 @msg_hash_to_str(i32 %424)
  %426 = load i32, i32* @MENU_ENUM_LABEL_QUICK_MENU_OVERRIDE_OPTIONS, align 4
  %427 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %428 = call i32 @menu_entries_append_enum(i32 %421, i32 %423, i32 %425, i32 %426, i32 %427, i32 0, i32 0)
  br label %429

429:                                              ; preds = %418, %412, %406
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %446

435:                                              ; preds = %429
  %436 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @MENU_ENUM_LABEL_VALUE_INFORMATION, align 4
  %440 = call i32 @msg_hash_to_str(i32 %439)
  %441 = load i32, i32* @MENU_ENUM_LABEL_INFORMATION, align 4
  %442 = call i32 @msg_hash_to_str(i32 %441)
  %443 = load i32, i32* @MENU_ENUM_LABEL_INFORMATION, align 4
  %444 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %445 = call i32 @menu_entries_append_enum(i32 %438, i32 %440, i32 %442, i32 %443, i32 %444, i32 0, i32 0)
  br label %446

446:                                              ; preds = %435, %429
  br label %458

447:                                              ; preds = %2
  %448 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NO_ITEMS, align 4
  %452 = call i32 @msg_hash_to_str(i32 %451)
  %453 = load i32, i32* @MENU_ENUM_LABEL_NO_ITEMS, align 4
  %454 = call i32 @msg_hash_to_str(i32 %453)
  %455 = load i32, i32* @MENU_ENUM_LABEL_NO_ITEMS, align 4
  %456 = load i32, i32* @MENU_SETTING_NO_ITEM, align 4
  %457 = call i32 @menu_entries_append_enum(i32 %450, i32 %452, i32 %454, i32 %455, i32 %456, i32 0, i32 0)
  br label %458

458:                                              ; preds = %447, %446
  ret i32 0
}

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @runloop_get_system_info(...) #1

declare dso_local i32 @menu_entries_append_enum(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_displaylist_parse_settings_enum(i32, i32, i32, i32) #1

declare dso_local i64 @string_is_not_equal(i32, i8*) #1

declare dso_local i32 @recording_is_enabled(...) #1

declare dso_local i64 @streaming_is_enabled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
