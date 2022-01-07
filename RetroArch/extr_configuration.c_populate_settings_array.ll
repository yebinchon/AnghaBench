; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_configuration.c_populate_settings_array.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_configuration.c_populate_settings_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_array_setting = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"video_driver\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"record_driver\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"camera_driver\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"wifi_driver\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"location_driver\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"audio_device\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"camera_device\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"video_context_driver\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"audio_driver\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"audio_resampler\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"input_driver\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"input_joypad_driver\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"input_keyboard_layout\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"bundle_assets_src_path\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"bundle_assets_dst_path\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"bundle_assets_dst_path_subdir\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"led_driver\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"netplay_mitm_server\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"midi_driver\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"midi_input\00", align 1
@midi_input = common dso_local global i32* null, align 8
@.str.20 = private unnamed_addr constant [12 x i8] c"midi_output\00", align 1
@midi_output = common dso_local global i32* null, align 8
@.str.21 = private unnamed_addr constant [19 x i8] c"youtube_stream_key\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"twitch_stream_key\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"discord_app_id\00", align 1
@default_discord_app_id = common dso_local global i32* null, align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"ai_service_url\00", align 1
@DEFAULT_AI_SERVICE_URL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_array_setting* (%struct.TYPE_5__*, i32*)* @populate_settings_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_array_setting* @populate_settings_array(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.config_array_setting*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_array_setting*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i64 @calloc(i32 1, i32 %13)
  %15 = inttoptr i64 %14 to %struct.config_array_setting*
  store %struct.config_array_setting* %15, %struct.config_array_setting** %7, align 8
  %16 = load %struct.config_array_setting*, %struct.config_array_setting** %7, align 8
  %17 = icmp ne %struct.config_array_setting* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.config_array_setting* null, %struct.config_array_setting** %3, align 8
  br label %152

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 28
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %23, i32 0, i32* null, i32 1)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 27
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 0, i32* null, i32 1)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 26
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 0, i32* null, i32 1)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 25
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 0, i32* null, i32 1)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 24
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %43, i32 0, i32* null, i32 1)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 22
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %48, i32 0, i32* null, i32 1)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 21
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %53, i32 0, i32* null, i32 1)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 17
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %58, i32 0, i32* null, i32 1)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 16
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %63, i32 0, i32* null, i32 1)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 15
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %68, i32 0, i32* null, i32 1)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 14
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %73, i32 0, i32* null, i32 1)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %78, i32 0, i32* null, i32 1)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 12
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %83, i32 0, i32* null, i32 1)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %88, i32 0, i32* null, i32 1)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %93, i32 0, i32* null, i32 1)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %98, i32 0, i32* null, i32 1)
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %103, i32 0, i32* null, i32 1)
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %108, i32 0, i32* null, i32 1)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %113, i32 0, i32* null, i32 1)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** @midi_input, align 8
  %120 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i32 %118, i32 1, i32* %119, i32 1)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** @midi_output, align 8
  %126 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %124, i32 1, i32* %125, i32 1)
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %130, i32 1, i32* null, i32 1)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %135, i32 1, i32* null, i32 1)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** @default_discord_app_id, align 8
  %142 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %140, i32 1, i32* %141, i32 1)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** @DEFAULT_AI_SERVICE_URL, align 8
  %148 = call i32 @SETTING_ARRAY(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i32 %146, i32 1, i32* %147, i32 1)
  %149 = load i32, i32* %6, align 4
  %150 = load i32*, i32** %5, align 8
  store i32 %149, i32* %150, align 4
  %151 = load %struct.config_array_setting*, %struct.config_array_setting** %7, align 8
  store %struct.config_array_setting* %151, %struct.config_array_setting** %3, align 8
  br label %152

152:                                              ; preds = %19, %18
  %153 = load %struct.config_array_setting*, %struct.config_array_setting** %3, align 8
  ret %struct.config_array_setting* %153
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @SETTING_ARRAY(i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
