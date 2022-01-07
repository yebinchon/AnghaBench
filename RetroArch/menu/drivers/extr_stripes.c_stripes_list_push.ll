; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_17__*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, %struct.retro_subsystem_info* }
%struct.retro_subsystem_info = type { i8*, i32 }

@MENU_ENTRIES_CTL_CLEAR = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_FAVORITES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS = common dso_local global i32 0, align 4
@PARSE_ACTION = common dso_local global i32 0, align 4
@RARCH_CTL_CORE_IS_RUNNING = common dso_local global i32 0, align 4
@RARCH_CTL_IS_DUMMY_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONTENT_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_START_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CORE_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_LOAD_CONTENT_LIST = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Load %s %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\E2\98\85\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@MENU_ENUM_LABEL_SUBSYSTEM_ADD = common dso_local global i32 0, align 4
@MENU_SETTINGS_SUBSYSTEM_ADD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Start %s %s\00", align 1
@MENU_ENUM_LABEL_SUBSYSTEM_LOAD = common dso_local global i32 0, align 4
@MENU_SETTINGS_SUBSYSTEM_LOAD = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_CONTENT_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_XMB_MAIN_MENU_ENABLE_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MENU_DISABLE_KIOSK_MODE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_INFORMATION_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RESTART_RETROARCH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONFIGURATIONS_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HELP_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_QUIT_RETROARCH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_REBOOT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SHUTDOWN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONTENT_COLLECTION_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ONLINE_UPDATER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CONTENT_COLLECTION_LIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_17__*, i32)* @stripes_list_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripes_list_push(i8* %0, i8* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca %struct.retro_subsystem_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %361 [
    i32 129, label %23
    i32 128, label %92
  ]

23:                                               ; preds = %4
  %24 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %14, align 8
  %25 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @menu_entries_ctl(i32 %25, i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MENU_ENUM_LABEL_VALUE_FAVORITES, align 4
  %34 = call i8* @msg_hash_to_str(i32 %33)
  %35 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES, align 4
  %36 = call i8* @msg_hash_to_str(i32 %35)
  %37 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES, align 4
  %38 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %39 = call i32 @menu_entries_append_enum(i32 %32, i8* %34, i8* %36, i32 %37, i32 %38, i32 0, i32 0)
  %40 = call i32 @core_info_get_list(i32** %12)
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @core_info_list_num_info_files(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %23
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST, align 4
  %49 = call i8* @msg_hash_to_str(i32 %48)
  %50 = load i32, i32* @MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST, align 4
  %51 = call i8* @msg_hash_to_str(i32 %50)
  %52 = load i32, i32* @MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST, align 4
  %53 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %54 = call i32 @menu_entries_append_enum(i32 %47, i8* %49, i8* %51, i32 %52, i32 %53, i32 0, i32 0)
  br label %55

55:                                               ; preds = %44, %23
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @frontend_driver_parse_drive_list(i32 %58, i32 1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %66 = call i8* @msg_hash_to_str(i32 %65)
  %67 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %68 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %69 = call i32 @menu_entries_append_enum(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %66, i32 %67, i32 %68, i32 0, i32 0)
  br label %70

70:                                               ; preds = %61, %55
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS, align 4
  %81 = call i8* @msg_hash_to_str(i32 %80)
  %82 = load i32, i32* @MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS, align 4
  %83 = call i8* @msg_hash_to_str(i32 %82)
  %84 = load i32, i32* @MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS, align 4
  %85 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %86 = call i32 @menu_entries_append_enum(i32 %79, i8* %81, i8* %83, i32 %84, i32 %85, i32 0, i32 0)
  br label %87

87:                                               ; preds = %76, %70
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  store i32 0, i32* %10, align 4
  br label %361

92:                                               ; preds = %4
  %93 = call %struct.TYPE_15__* (...) @config_get_ptr()
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %15, align 8
  %94 = call %struct.TYPE_16__* (...) @runloop_get_system_info()
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %16, align 8
  %95 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @menu_entries_ctl(i32 %95, i32 %98)
  %100 = load i32*, i32** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 4
  store i32* %100, i32** %101, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 3
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %103, align 8
  %104 = load i32, i32* @PARSE_ACTION, align 4
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 %104, i32* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load i32, i32* @RARCH_CTL_CORE_IS_RUNNING, align 4
  %108 = call i32 @rarch_ctl(i32 %107, i32* null)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %92
  %111 = load i32, i32* @RARCH_CTL_IS_DUMMY_CORE, align 4
  %112 = call i32 @rarch_ctl(i32 %111, i32* null)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_SETTINGS, align 4
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %118

118:                                              ; preds = %114, %110
  br label %143

119:                                              ; preds = %92
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @MENU_ENUM_LABEL_START_CORE, align 4
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %128

128:                                              ; preds = %124, %119
  %129 = call i32 (...) @frontend_driver_has_fork()
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i32, i32* @MENU_ENUM_LABEL_CORE_LIST, align 4
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %138, i32* %139, align 4
  %140 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %141

141:                                              ; preds = %137, %131
  br label %142

142:                                              ; preds = %141, %128
  br label %143

143:                                              ; preds = %142, %118
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %252

149:                                              ; preds = %143
  store %struct.retro_subsystem_info* null, %struct.retro_subsystem_info** %17, align 8
  %150 = load i32, i32* @MENU_ENUM_LABEL_LOAD_CONTENT_LIST, align 4
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %150, i32* %151, align 4
  %152 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %155, align 8
  store %struct.retro_subsystem_info* %156, %struct.retro_subsystem_info** %17, align 8
  %157 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %158 = icmp ne %struct.retro_subsystem_info* %157, null
  br i1 %158, label %159, label %251

159:                                              ; preds = %149
  store i32 0, i32* %11, align 4
  br label %160

160:                                              ; preds = %245, %159
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %161, %165
  br i1 %166, label %167, label %250

167:                                              ; preds = %160
  %168 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %169 = zext i32 %168 to i64
  %170 = call i8* @llvm.stacksave()
  store i8* %170, i8** %18, align 8
  %171 = alloca i8, i64 %169, align 16
  store i64 %169, i64* %19, align 8
  %172 = call i32 (...) @content_get_subsystem()
  %173 = load i32, i32* %11, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %222

175:                                              ; preds = %167
  %176 = call i32 (...) @content_get_subsystem_rom_id()
  %177 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %178 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %175
  %182 = trunc i64 %169 to i32
  %183 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %184 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = call i32 (...) @content_get_subsystem()
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %191 = call i32 @snprintf(i8* %171, i32 %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %185, i8* %190)
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_ADD, align 4
  %196 = call i8* @msg_hash_to_str(i32 %195)
  %197 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_ADD, align 4
  %198 = load i32, i32* @MENU_SETTINGS_SUBSYSTEM_ADD, align 4
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %198, %199
  %201 = call i32 @menu_entries_append_enum(i32 %194, i8* %171, i8* %196, i32 %197, i32 %200, i32 0, i32 0)
  br label %221

202:                                              ; preds = %175
  %203 = trunc i64 %169 to i32
  %204 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %205 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = call i32 (...) @content_get_subsystem()
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %212 = call i32 @snprintf(i8* %171, i32 %203, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %206, i8* %211)
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_LOAD, align 4
  %217 = call i8* @msg_hash_to_str(i32 %216)
  %218 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_LOAD, align 4
  %219 = load i32, i32* @MENU_SETTINGS_SUBSYSTEM_LOAD, align 4
  %220 = call i32 @menu_entries_append_enum(i32 %215, i8* %171, i8* %217, i32 %218, i32 %219, i32 0, i32 0)
  br label %221

221:                                              ; preds = %202, %181
  br label %243

222:                                              ; preds = %167
  %223 = trunc i64 %169 to i32
  %224 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %225 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = call i32 (...) @content_get_subsystem()
  %229 = icmp eq i32 %227, %228
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %232 = call i32 @snprintf(i8* %171, i32 %223, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %226, i8* %231)
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_ADD, align 4
  %237 = call i8* @msg_hash_to_str(i32 %236)
  %238 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_ADD, align 4
  %239 = load i32, i32* @MENU_SETTINGS_SUBSYSTEM_ADD, align 4
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %239, %240
  %242 = call i32 @menu_entries_append_enum(i32 %235, i8* %171, i8* %237, i32 %238, i32 %241, i32 0, i32 0)
  br label %243

243:                                              ; preds = %222, %221
  %244 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %244)
  br label %245

245:                                              ; preds = %243
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %11, align 4
  %248 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %249 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %248, i32 1
  store %struct.retro_subsystem_info* %249, %struct.retro_subsystem_info** %17, align 8
  br label %160

250:                                              ; preds = %160
  br label %251

251:                                              ; preds = %250, %149
  br label %252

252:                                              ; preds = %251, %143
  %253 = load i32, i32* @MENU_ENUM_LABEL_ADD_CONTENT_LIST, align 4
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %253, i32* %254, align 4
  %255 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %272, label %261

261:                                              ; preds = %252
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @string_is_empty(i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %261
  %269 = load i32, i32* @MENU_ENUM_LABEL_XMB_MAIN_MENU_ENABLE_SETTINGS, align 4
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %269, i32* %270, align 4
  %271 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %272

272:                                              ; preds = %268, %261, %252
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %289

278:                                              ; preds = %272
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @string_is_empty(i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %278
  %286 = load i32, i32* @MENU_ENUM_LABEL_MENU_DISABLE_KIOSK_MODE, align 4
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %286, i32* %287, align 4
  %288 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %289

289:                                              ; preds = %285, %278, %272
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load i32, i32* @MENU_ENUM_LABEL_INFORMATION_LIST, align 4
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %296, i32* %297, align 4
  %298 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %299

299:                                              ; preds = %295, %289
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %299
  %306 = load i32, i32* @MENU_ENUM_LABEL_RESTART_RETROARCH, align 4
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %306, i32* %307, align 4
  %308 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %309

309:                                              ; preds = %305, %299
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %325

315:                                              ; preds = %309
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %315
  %322 = load i32, i32* @MENU_ENUM_LABEL_CONFIGURATIONS_LIST, align 4
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %322, i32* %323, align 4
  %324 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %325

325:                                              ; preds = %321, %315, %309
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %325
  %332 = load i32, i32* @MENU_ENUM_LABEL_HELP_LIST, align 4
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %332, i32* %333, align 4
  %334 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %335

335:                                              ; preds = %331, %325
  %336 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %335
  %342 = load i32, i32* @MENU_ENUM_LABEL_QUIT_RETROARCH, align 4
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %342, i32* %343, align 4
  %344 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %345

345:                                              ; preds = %341, %335
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %345
  %352 = load i32, i32* @MENU_ENUM_LABEL_REBOOT, align 4
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %352, i32* %353, align 4
  %354 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  br label %355

355:                                              ; preds = %351, %345
  %356 = load i32, i32* @MENU_ENUM_LABEL_SHUTDOWN, align 4
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %356, i32* %357, align 4
  %358 = call i32 @menu_displaylist_setting(%struct.TYPE_18__* %9)
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 0
  store i32 1, i32* %360, align 4
  store i32 0, i32* %10, align 4
  br label %361

361:                                              ; preds = %4, %355, %87
  %362 = load i32, i32* %10, align 4
  ret i32 %362
}

declare dso_local %struct.TYPE_15__* @config_get_ptr(...) #1

declare dso_local i32 @menu_entries_ctl(i32, i32) #1

declare dso_local i32 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @core_info_get_list(i32**) #1

declare dso_local i32 @core_info_list_num_info_files(i32*) #1

declare dso_local i32 @frontend_driver_parse_drive_list(i32, i32) #1

declare dso_local %struct.TYPE_16__* @runloop_get_system_info(...) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @menu_displaylist_setting(%struct.TYPE_18__*) #1

declare dso_local i32 @frontend_driver_has_fork(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @content_get_subsystem(...) #1

declare dso_local i32 @content_get_subsystem_rom_id(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @string_is_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
