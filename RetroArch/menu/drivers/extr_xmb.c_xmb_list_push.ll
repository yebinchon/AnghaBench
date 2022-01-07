; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_xmb.c_xmb_list_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_subsystem_info = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_18__*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.retro_subsystem_info* }

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
@subsystem_data = common dso_local global %struct.retro_subsystem_info* null, align 8
@MENU_ENUM_LABEL_LOAD_DISC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DUMP_DISC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_CONTENT_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_XMB_MAIN_MENU_ENABLE_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MENU_DISABLE_KIOSK_MODE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_INFORMATION_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONFIGURATIONS_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HELP_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RESTART_RETROARCH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_QUIT_RETROARCH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_REBOOT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SHUTDOWN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ONLINE_UPDATER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SHOW_WIMP = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SWITCH_BACKLIGHT_CONTROL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SWITCH_CPU_PROFILE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SWITCH_GPU_PROFILE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_18__*, i32)* @xmb_list_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmb_list_push(i8* %0, i8* %1, %struct.TYPE_18__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.retro_subsystem_info*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %302 [
    i32 129, label %20
    i32 128, label %89
  ]

20:                                               ; preds = %4
  %21 = call %struct.TYPE_16__* (...) @config_get_ptr()
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %13, align 8
  %22 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @menu_entries_ctl(i32 %22, i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MENU_ENUM_LABEL_VALUE_FAVORITES, align 4
  %31 = call i8* @msg_hash_to_str(i32 %30)
  %32 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES, align 4
  %33 = call i8* @msg_hash_to_str(i32 %32)
  %34 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES, align 4
  %35 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %36 = call i32 @menu_entries_append_enum(i32 %29, i8* %31, i8* %33, i32 %34, i32 %35, i32 0, i32 0)
  %37 = call i32 @core_info_get_list(i32** %11)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @core_info_list_num_info_files(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %20
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST, align 4
  %46 = call i8* @msg_hash_to_str(i32 %45)
  %47 = load i32, i32* @MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST, align 4
  %48 = call i8* @msg_hash_to_str(i32 %47)
  %49 = load i32, i32* @MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST, align 4
  %50 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %51 = call i32 @menu_entries_append_enum(i32 %44, i8* %46, i8* %48, i32 %49, i32 %50, i32 0, i32 0)
  br label %52

52:                                               ; preds = %41, %20
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @frontend_driver_parse_drive_list(i32 %55, i32 1)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %63 = call i8* @msg_hash_to_str(i32 %62)
  %64 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %65 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %66 = call i32 @menu_entries_append_enum(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %64, i32 %65, i32 0, i32 0)
  br label %67

67:                                               ; preds = %58, %52
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS, align 4
  %78 = call i8* @msg_hash_to_str(i32 %77)
  %79 = load i32, i32* @MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS, align 4
  %80 = call i8* @msg_hash_to_str(i32 %79)
  %81 = load i32, i32* @MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS, align 4
  %82 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %83 = call i32 @menu_entries_append_enum(i32 %76, i8* %78, i8* %80, i32 %81, i32 %82, i32 0, i32 0)
  br label %84

84:                                               ; preds = %73, %67
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 4
  store i32 0, i32* %10, align 4
  br label %302

89:                                               ; preds = %4
  %90 = call %struct.TYPE_16__* (...) @config_get_ptr()
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %14, align 8
  %91 = call %struct.TYPE_17__* (...) @runloop_get_system_info()
  store %struct.TYPE_17__* %91, %struct.TYPE_17__** %15, align 8
  %92 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @menu_entries_ctl(i32 %92, i32 %95)
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 4
  store i32* %97, i32** %98, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  store %struct.TYPE_18__* %99, %struct.TYPE_18__** %100, align 8
  %101 = load i32, i32* @PARSE_ACTION, align 4
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  store i32 %101, i32* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i32 0, i32* %103, align 8
  %104 = load i32, i32* @RARCH_CTL_CORE_IS_RUNNING, align 4
  %105 = call i32 @rarch_ctl(i32 %104, i32* null)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %89
  %108 = load i32, i32* @RARCH_CTL_IS_DUMMY_CORE, align 4
  %109 = call i32 @rarch_ctl(i32 %108, i32* null)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_SETTINGS, align 4
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  %114 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %115

115:                                              ; preds = %111, %107
  br label %140

116:                                              ; preds = %89
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i32, i32* @MENU_ENUM_LABEL_START_CORE, align 4
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %125

125:                                              ; preds = %121, %116
  %126 = call i32 (...) @frontend_driver_has_fork()
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 14
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* @MENU_ENUM_LABEL_CORE_LIST, align 4
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %135, i32* %136, align 4
  %137 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %138

138:                                              ; preds = %134, %128
  br label %139

139:                                              ; preds = %138, %125
  br label %140

140:                                              ; preds = %139, %115
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 13
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %140
  %147 = load i32, i32* @MENU_ENUM_LABEL_LOAD_CONTENT_LIST, align 4
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  %149 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %152, align 8
  %154 = icmp ne %struct.retro_subsystem_info* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %146
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %158, align 8
  store %struct.retro_subsystem_info* %159, %struct.retro_subsystem_info** %16, align 8
  br label %162

160:                                              ; preds = %146
  %161 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** @subsystem_data, align 8
  store %struct.retro_subsystem_info* %161, %struct.retro_subsystem_info** %16, align 8
  br label %162

162:                                              ; preds = %160, %155
  %163 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %16, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %165 = call i32 @menu_subsystem_populate(%struct.retro_subsystem_info* %163, %struct.TYPE_18__* %164)
  br label %166

166:                                              ; preds = %162, %140
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  %173 = load i32, i32* @MENU_ENUM_LABEL_LOAD_DISC, align 4
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %173, i32* %174, align 4
  %175 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %176

176:                                              ; preds = %172, %166
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load i32, i32* @MENU_ENUM_LABEL_DUMP_DISC, align 4
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %183, i32* %184, align 4
  %185 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %186

186:                                              ; preds = %182, %176
  %187 = load i32, i32* @MENU_ENUM_LABEL_ADD_CONTENT_LIST, align 4
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %187, i32* %188, align 4
  %189 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %186
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @string_is_empty(i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %195
  %203 = load i32, i32* @MENU_ENUM_LABEL_XMB_MAIN_MENU_ENABLE_SETTINGS, align 4
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %203, i32* %204, align 4
  %205 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %206

206:                                              ; preds = %202, %195, %186
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %206
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @string_is_empty(i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %212
  %220 = load i32, i32* @MENU_ENUM_LABEL_MENU_DISABLE_KIOSK_MODE, align 4
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %220, i32* %221, align 4
  %222 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %223

223:                                              ; preds = %219, %212, %206
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %223
  %230 = load i32, i32* @MENU_ENUM_LABEL_INFORMATION_LIST, align 4
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %230, i32* %231, align 4
  %232 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %233

233:                                              ; preds = %229, %223
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %249

239:                                              ; preds = %233
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %239
  %246 = load i32, i32* @MENU_ENUM_LABEL_CONFIGURATIONS_LIST, align 4
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %246, i32* %247, align 4
  %248 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %249

249:                                              ; preds = %245, %239, %233
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = load i32, i32* @MENU_ENUM_LABEL_HELP_LIST, align 4
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %256, i32* %257, align 4
  %258 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %259

259:                                              ; preds = %255, %249
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %259
  %266 = load i32, i32* @MENU_ENUM_LABEL_RESTART_RETROARCH, align 4
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %266, i32* %267, align 4
  %268 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %269

269:                                              ; preds = %265, %259
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %269
  %276 = load i32, i32* @MENU_ENUM_LABEL_QUIT_RETROARCH, align 4
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %276, i32* %277, align 4
  %278 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %279

279:                                              ; preds = %275, %269
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %279
  %286 = load i32, i32* @MENU_ENUM_LABEL_REBOOT, align 4
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %286, i32* %287, align 4
  %288 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %289

289:                                              ; preds = %285, %279
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = load i32, i32* @MENU_ENUM_LABEL_SHUTDOWN, align 4
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %296, i32* %297, align 4
  %298 = call i32 @menu_displaylist_setting(%struct.TYPE_19__* %9)
  br label %299

299:                                              ; preds = %295, %289
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 0
  store i32 1, i32* %301, align 4
  store i32 0, i32* %10, align 4
  br label %302

302:                                              ; preds = %4, %299, %84
  %303 = load i32, i32* %10, align 4
  ret i32 %303
}

declare dso_local %struct.TYPE_16__* @config_get_ptr(...) #1

declare dso_local i32 @menu_entries_ctl(i32, i32) #1

declare dso_local i32 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @core_info_get_list(i32**) #1

declare dso_local i32 @core_info_list_num_info_files(i32*) #1

declare dso_local i32 @frontend_driver_parse_drive_list(i32, i32) #1

declare dso_local %struct.TYPE_17__* @runloop_get_system_info(...) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @menu_displaylist_setting(%struct.TYPE_19__*) #1

declare dso_local i32 @frontend_driver_has_fork(...) #1

declare dso_local i32 @menu_subsystem_populate(%struct.retro_subsystem_info*, %struct.TYPE_18__*) #1

declare dso_local i32 @string_is_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
