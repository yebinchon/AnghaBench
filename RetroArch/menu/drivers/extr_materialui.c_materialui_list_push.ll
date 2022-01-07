; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_list_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_list_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_subsystem_info = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_16__*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.retro_subsystem_info* }

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
@MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_LOAD_DISC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DUMP_DISC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_INFORMATION_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONFIGURATIONS_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HELP_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RESTART_RETROARCH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_QUIT_RETROARCH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETPLAY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ONLINE_UPDATER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_REBOOT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SHUTDOWN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_UPDATE_LAKKA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_16__*, i32)* @materialui_list_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @materialui_list_push(i8* %0, i8* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.retro_subsystem_info*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %234 [
    i32 129, label %20
    i32 128, label %81
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @menu_entries_ctl(i32 %21, i32 %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MENU_ENUM_LABEL_VALUE_FAVORITES, align 4
  %30 = call i8* @msg_hash_to_str(i32 %29)
  %31 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES, align 4
  %32 = call i8* @msg_hash_to_str(i32 %31)
  %33 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES, align 4
  %34 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %35 = call i32 @menu_entries_append_enum(i32 %28, i8* %30, i8* %32, i32 %33, i32 %34, i32 0, i32 0)
  %36 = call i32 @core_info_get_list(i32** %11)
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @core_info_list_num_info_files(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %20
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DOWNLOADED_FILE_DETECT_CORE_LIST, align 4
  %45 = call i8* @msg_hash_to_str(i32 %44)
  %46 = load i32, i32* @MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST, align 4
  %47 = call i8* @msg_hash_to_str(i32 %46)
  %48 = load i32, i32* @MENU_ENUM_LABEL_DOWNLOADED_FILE_DETECT_CORE_LIST, align 4
  %49 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %50 = call i32 @menu_entries_append_enum(i32 %43, i8* %45, i8* %47, i32 %48, i32 %49, i32 0, i32 0)
  br label %51

51:                                               ; preds = %40, %20
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @frontend_driver_parse_drive_list(i32 %54, i32 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %62 = call i8* @msg_hash_to_str(i32 %61)
  %63 = load i32, i32* @MENU_ENUM_LABEL_FILE_DETECT_CORE_LIST_PUSH_DIR, align 4
  %64 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %65 = call i32 @menu_entries_append_enum(i32 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %62, i32 %63, i32 %64, i32 0, i32 0)
  br label %66

66:                                               ; preds = %57, %51
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MENU_ENUM_LABEL_VALUE_MENU_FILE_BROWSER_SETTINGS, align 4
  %71 = call i8* @msg_hash_to_str(i32 %70)
  %72 = load i32, i32* @MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS, align 4
  %73 = call i8* @msg_hash_to_str(i32 %72)
  %74 = load i32, i32* @MENU_ENUM_LABEL_MENU_FILE_BROWSER_SETTINGS, align 4
  %75 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %76 = call i32 @menu_entries_append_enum(i32 %69, i8* %71, i8* %73, i32 %74, i32 %75, i32 0, i32 0)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  store i32 0, i32* %10, align 4
  br label %234

81:                                               ; preds = %4
  %82 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %82, %struct.TYPE_14__** %13, align 8
  %83 = call %struct.TYPE_15__* (...) @runloop_get_system_info()
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %14, align 8
  %84 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @menu_entries_ctl(i32 %84, i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 4
  store i32* %89, i32** %90, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %92, align 8
  %93 = load i32, i32* @PARSE_ACTION, align 4
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  store i32 %93, i32* %94, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load i32, i32* @RARCH_CTL_CORE_IS_RUNNING, align 4
  %97 = call i32 @rarch_ctl(i32 %96, i32* null)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %81
  %100 = load i32, i32* @RARCH_CTL_IS_DUMMY_CORE, align 4
  %101 = call i32 @rarch_ctl(i32 %100, i32* null)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_SETTINGS, align 4
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %107

107:                                              ; preds = %103, %99
  br label %132

108:                                              ; preds = %81
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @MENU_ENUM_LABEL_START_CORE, align 4
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %117

117:                                              ; preds = %113, %108
  %118 = call i32 (...) @frontend_driver_has_fork()
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 12
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load i32, i32* @MENU_ENUM_LABEL_CORE_LIST, align 4
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %130

130:                                              ; preds = %126, %120
  br label %131

131:                                              ; preds = %130, %117
  br label %132

132:                                              ; preds = %131, %107
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %132
  %139 = load i32, i32* @MENU_ENUM_LABEL_LOAD_CONTENT_LIST, align 4
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %139, i32* %140, align 4
  %141 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %144, align 8
  %146 = icmp ne %struct.retro_subsystem_info* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %138
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %150, align 8
  store %struct.retro_subsystem_info* %151, %struct.retro_subsystem_info** %15, align 8
  br label %154

152:                                              ; preds = %138
  %153 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** @subsystem_data, align 8
  store %struct.retro_subsystem_info* %153, %struct.retro_subsystem_info** %15, align 8
  br label %154

154:                                              ; preds = %152, %147
  %155 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %15, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %157 = call i32 @menu_subsystem_populate(%struct.retro_subsystem_info* %155, %struct.TYPE_16__* %156)
  br label %158

158:                                              ; preds = %154, %132
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* @MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY, align 4
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  %167 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %168

168:                                              ; preds = %164, %158
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i32, i32* @MENU_ENUM_LABEL_LOAD_DISC, align 4
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %175, i32* %176, align 4
  %177 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %178

178:                                              ; preds = %174, %168
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %178
  %185 = load i32, i32* @MENU_ENUM_LABEL_DUMP_DISC, align 4
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %185, i32* %186, align 4
  %187 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %188

188:                                              ; preds = %184, %178
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i32, i32* @MENU_ENUM_LABEL_INFORMATION_LIST, align 4
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %195, i32* %196, align 4
  %197 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %198

198:                                              ; preds = %194, %188
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i32, i32* @MENU_ENUM_LABEL_CONFIGURATIONS_LIST, align 4
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %205, i32* %206, align 4
  %207 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %208

208:                                              ; preds = %204, %198
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i32, i32* @MENU_ENUM_LABEL_HELP_LIST, align 4
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %215, i32* %216, align 4
  %217 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %218

218:                                              ; preds = %214, %208
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = load i32, i32* @MENU_ENUM_LABEL_RESTART_RETROARCH, align 4
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %225, i32* %226, align 4
  %227 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  br label %228

228:                                              ; preds = %224, %218
  %229 = load i32, i32* @MENU_ENUM_LABEL_QUIT_RETROARCH, align 4
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %229, i32* %230, align 4
  %231 = call i32 @menu_displaylist_setting(%struct.TYPE_17__* %9)
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  store i32 1, i32* %233, align 4
  store i32 0, i32* %10, align 4
  br label %234

234:                                              ; preds = %4, %228, %66
  %235 = load i32, i32* %10, align 4
  ret i32 %235
}

declare dso_local i32 @menu_entries_ctl(i32, i32) #1

declare dso_local i32 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @core_info_get_list(i32**) #1

declare dso_local i32 @core_info_list_num_info_files(i32*) #1

declare dso_local i32 @frontend_driver_parse_drive_list(i32, i32) #1

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_15__* @runloop_get_system_info(...) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @menu_displaylist_setting(%struct.TYPE_17__*) #1

declare dso_local i32 @frontend_driver_has_fork(...) #1

declare dso_local i32 @menu_subsystem_populate(%struct.retro_subsystem_info*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
