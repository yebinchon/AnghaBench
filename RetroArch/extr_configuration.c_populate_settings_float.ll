; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_configuration.c_populate_settings_float.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_configuration.c_populate_settings_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_float_setting = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"video_aspect_ratio\00", align 1
@DEFAULT_ASPECT_RATIO = common dso_local global float 0.000000e+00, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"video_scale\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"crt_video_refresh_rate\00", align 1
@DEFAULT_CRT_REFRESH_RATE = common dso_local global float 0.000000e+00, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"video_refresh_rate\00", align 1
@DEFAULT_REFRESH_RATE = common dso_local global float 0.000000e+00, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"audio_rate_control_delta\00", align 1
@AUDIO_ACTION_RATE_CONTROL_DELTA = common dso_local global i32 0, align 4
@DEFAULT_RATE_CONTROL_DELTA = common dso_local global float 0.000000e+00, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"audio_max_timing_skew\00", align 1
@DEFAULT_MAX_TIMING_SKEW = common dso_local global float 0.000000e+00, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"audio_volume\00", align 1
@DEFAULT_AUDIO_VOLUME = common dso_local global float 0.000000e+00, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"video_message_pos_x\00", align 1
@message_pos_offset_x = common dso_local global float 0.000000e+00, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"video_message_pos_y\00", align 1
@message_pos_offset_y = common dso_local global float 0.000000e+00, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"video_font_size\00", align 1
@DEFAULT_FONT_SIZE = common dso_local global float 0.000000e+00, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"fastforward_ratio\00", align 1
@DEFAULT_FASTFORWARD_RATIO = common dso_local global float 0.000000e+00, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"slowmotion_ratio\00", align 1
@DEFAULT_SLOWMOTION_RATIO = common dso_local global float 0.000000e+00, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"input_axis_threshold\00", align 1
@INPUT_ACTION_AXIS_THRESHOLD = common dso_local global i32 0, align 4
@axis_threshold = common dso_local global float 0.000000e+00, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"input_analog_deadzone\00", align 1
@analog_deadzone = common dso_local global float 0.000000e+00, align 4
@.str.14 = private unnamed_addr constant [25 x i8] c"input_analog_sensitivity\00", align 1
@analog_sensitivity = common dso_local global float 0.000000e+00, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"video_msg_bgcolor_opacity\00", align 1
@message_bgcolor_opacity = common dso_local global float 0.000000e+00, align 4
@DEFAULT_AUDIO_MIXER_VOLUME = common dso_local global float 0.000000e+00, align 4
@DEFAULT_INPUT_OVERLAY_OPACITY = common dso_local global float 0.000000e+00, align 4
@DEFAULT_MENU_SCALE_FACTOR = common dso_local global float 0.000000e+00, align 4
@DEFAULT_RGUI_PARTICLE_EFFECT_SPEED = common dso_local global float 0.000000e+00, align 4
@menu_footer_opacity = common dso_local global float 0.000000e+00, align 4
@menu_framebuffer_opacity = common dso_local global float 0.000000e+00, align 4
@menu_header_opacity = common dso_local global float 0.000000e+00, align 4
@menu_ticker_speed = common dso_local global float 0.000000e+00, align 4
@menu_wallpaper_opacity = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_float_setting* (%struct.TYPE_5__*, i32*)* @populate_settings_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_float_setting* @populate_settings_float(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.config_float_setting*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.config_float_setting*, align 8
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
  %15 = inttoptr i64 %14 to %struct.config_float_setting*
  store %struct.config_float_setting* %15, %struct.config_float_setting** %7, align 8
  %16 = load %struct.config_float_setting*, %struct.config_float_setting** %7, align 8
  %17 = icmp ne %struct.config_float_setting* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.config_float_setting* null, %struct.config_float_setting** %3, align 8
  br label %100

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 23
  %23 = load float, float* @DEFAULT_ASPECT_RATIO, align 4
  %24 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %22, i32 1, float %23, i32 0)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 22
  %28 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %27, i32 0, float 0.000000e+00, i32 0)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 21
  %32 = load float, float* @DEFAULT_CRT_REFRESH_RATE, align 4
  %33 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %31, i32 1, float %32, i32 0)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 20
  %37 = load float, float* @DEFAULT_REFRESH_RATE, align 4
  %38 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32* %36, i32 1, float %37, i32 0)
  %39 = load i32, i32* @AUDIO_ACTION_RATE_CONTROL_DELTA, align 4
  %40 = call i32* @audio_get_float_ptr(i32 %39)
  %41 = load float, float* @DEFAULT_RATE_CONTROL_DELTA, align 4
  %42 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32* %40, i32 1, float %41, i32 0)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 19
  %46 = load float, float* @DEFAULT_MAX_TIMING_SKEW, align 4
  %47 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %45, i32 1, float %46, i32 0)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 18
  %51 = load float, float* @DEFAULT_AUDIO_VOLUME, align 4
  %52 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32* %50, i32 1, float %51, i32 0)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 7
  %56 = load float, float* @message_pos_offset_x, align 4
  %57 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32* %55, i32 1, float %56, i32 0)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load float, float* @message_pos_offset_y, align 4
  %62 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32* %60, i32 1, float %61, i32 0)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 5
  %66 = load float, float* @DEFAULT_FONT_SIZE, align 4
  %67 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* %65, i32 1, float %66, i32 0)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load float, float* @DEFAULT_FASTFORWARD_RATIO, align 4
  %72 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32* %70, i32 1, float %71, i32 0)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load float, float* @DEFAULT_SLOWMOTION_RATIO, align 4
  %77 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32* %75, i32 1, float %76, i32 0)
  %78 = load i32, i32* @INPUT_ACTION_AXIS_THRESHOLD, align 4
  %79 = call i32* @input_driver_get_float(i32 %78)
  %80 = load float, float* @axis_threshold, align 4
  %81 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32* %79, i32 1, float %80, i32 0)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load float, float* @analog_deadzone, align 4
  %86 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32* %84, i32 1, float %85, i32 0)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load float, float* @analog_sensitivity, align 4
  %91 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32* %89, i32 1, float %90, i32 0)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load float, float* @message_bgcolor_opacity, align 4
  %96 = call i32 @SETTING_FLOAT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32* %94, i32 1, float %95, i32 0)
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  %99 = load %struct.config_float_setting*, %struct.config_float_setting** %7, align 8
  store %struct.config_float_setting* %99, %struct.config_float_setting** %3, align 8
  br label %100

100:                                              ; preds = %19, %18
  %101 = load %struct.config_float_setting*, %struct.config_float_setting** %3, align 8
  ret %struct.config_float_setting* %101
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @SETTING_FLOAT(i8*, i32*, i32, float, i32) #1

declare dso_local i32* @audio_get_float_ptr(i32) #1

declare dso_local i32* @input_driver_get_float(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
