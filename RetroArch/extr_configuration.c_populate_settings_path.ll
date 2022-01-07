; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_configuration.c_populate_settings_path.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_configuration.c_populate_settings_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_path_setting = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"content_show_settings_password\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"kiosk_mode_password\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"netplay_nickname\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"video_filter\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"audio_dsp_plugin\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"core_updater_buildbot_cores_url\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"core_updater_buildbot_assets_url\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"libretro_directory\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"core_options_path\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"libretro_info_path\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"content_database_path\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"cheat_database_path\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"content_history_path\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"content_favorites_path\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"content_music_history_path\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"content_video_history_path\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"content_image_history_path\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"video_record_config\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"video_stream_config\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"video_stream_url\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"video_font_path\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"cursor_directory\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"content_history_dir\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"screenshot_directory\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"system_directory\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"cache_directory\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"input_remapping_directory\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"resampler_directory\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"video_shader_dir\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"video_filter_dir\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"core_assets_directory\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"assets_directory\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"dynamic_wallpapers_directory\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"thumbnails_directory\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"playlist_directory\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"runtime_log_directory\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"joypad_autoconfig_dir\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"audio_filter_dir\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"savefile_directory\00", align 1
@RARCH_DIR_SAVEFILE = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [20 x i8] c"savestate_directory\00", align 1
@RARCH_DIR_SAVESTATE = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [14 x i8] c"libretro_path\00", align 1
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [27 x i8] c"recording_output_directory\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"recording_config_directory\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"log_dir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_path_setting* (%struct.TYPE_9__*, i32*)* @populate_settings_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_path_setting* @populate_settings_path(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.config_path_setting*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_path_setting*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i64 @calloc(i32 1, i32 %14)
  %16 = inttoptr i64 %15 to %struct.config_path_setting*
  store %struct.config_path_setting* %16, %struct.config_path_setting** %7, align 8
  %17 = load %struct.config_path_setting*, %struct.config_path_setting** %7, align 8
  %18 = icmp ne %struct.config_path_setting* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.config_path_setting* null, %struct.config_path_setting** %3, align 8
  br label %248

20:                                               ; preds = %2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 49
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24, i32 0, i32* null, i32 1)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 48
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 0, i32* null, i32 1)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 47
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 0, i32* null, i32 1)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 46
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 0, i32* null, i32 1)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 45
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 0, i32* null, i32 1)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 44
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %49, i32 0, i32* null, i32 1)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 43
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %54, i32 0, i32* null, i32 1)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 39
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %59, i32 0, i32* null, i32 0)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 38
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %64, i32 0, i32* null, i32 1)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 37
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %69, i32 0, i32* null, i32 1)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 36
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %74, i32 0, i32* null, i32 1)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 35
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %79, i32 0, i32* null, i32 1)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 32
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %84, i32 0, i32* null, i32 1)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 31
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %89, i32 0, i32* null, i32 1)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 30
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %94, i32 0, i32* null, i32 1)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 29
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %99, i32 0, i32* null, i32 1)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 28
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %104, i32 0, i32* null, i32 1)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 25
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %109, i32 0, i32* null, i32 1)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 24
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %114, i32 0, i32* null, i32 1)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 23
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 %119, i32 0, i32* null, i32 1)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 22
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %124, i32 0, i32* null, i32 1)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 21
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %129, i32 0, i32* null, i32 1)
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 20
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %134, i32 0, i32* null, i32 1)
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i32 %139, i32 1, i32* null, i32 1)
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 19
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %144, i32 1, i32* null, i32 1)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 18
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 %149, i32 0, i32* null, i32 1)
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 17
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32 %154, i32 0, i32* null, i32 1)
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 16
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 %159, i32 0, i32* null, i32 1)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 15
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 %164, i32 1, i32* null, i32 1)
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 14
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32 %169, i32 1, i32* null, i32 1)
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 13
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i32 %174, i32 1, i32* null, i32 1)
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 12
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i32 %179, i32 1, i32* null, i32 1)
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 %184, i32 1, i32* null, i32 1)
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 10
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i32 %189, i32 1, i32* null, i32 1)
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 9
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i32 %194, i32 1, i32* null, i32 1)
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i32 %199, i32 1, i32* null, i32 1)
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i32 %204, i32 0, i32* null, i32 1)
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i32 %209, i32 1, i32* null, i32 1)
  %211 = load i32, i32* @RARCH_DIR_SAVEFILE, align 4
  %212 = call i32 @dir_get_ptr(i32 %211)
  %213 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0), i32 %212, i32 1, i32* null, i32 0)
  %214 = load i32, i32* @RARCH_DIR_SAVESTATE, align 4
  %215 = call i32 @dir_get_ptr(i32 %214)
  %216 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.39, i64 0, i64 0), i32 %215, i32 1, i32* null, i32 0)
  %217 = load i32, i32* @RARCH_PATH_CORE, align 4
  %218 = call i32 @path_get_ptr(i32 %217)
  %219 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32 %218, i32 0, i32* null, i32 0)
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i32 %223, i32 1, i32* null, i32 0)
  %225 = call %struct.TYPE_10__* (...) @global_get_ptr()
  store %struct.TYPE_10__* %225, %struct.TYPE_10__** %8, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %227 = icmp ne %struct.TYPE_10__* %226, null
  br i1 %227, label %228, label %239

228:                                              ; preds = %20
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), i32 %232, i32 0, i32* null, i32 1)
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @SETTING_PATH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i32 %237, i32 0, i32* null, i32 1)
  br label %239

239:                                              ; preds = %228, %20
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), i32 %243, i32 1, i32* null, i32 1)
  %245 = load i32, i32* %6, align 4
  %246 = load i32*, i32** %5, align 8
  store i32 %245, i32* %246, align 4
  %247 = load %struct.config_path_setting*, %struct.config_path_setting** %7, align 8
  store %struct.config_path_setting* %247, %struct.config_path_setting** %3, align 8
  br label %248

248:                                              ; preds = %239, %19
  %249 = load %struct.config_path_setting*, %struct.config_path_setting** %3, align 8
  ret %struct.config_path_setting* %249
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @SETTING_PATH(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @dir_get_ptr(i32) #1

declare dso_local i32 @path_get_ptr(i32) #1

declare dso_local %struct.TYPE_10__* @global_get_ptr(...) #1

declare dso_local i32 @SETTING_ARRAY(i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
