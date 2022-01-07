; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_volume_update_and_show.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_volume_update_and_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float }
%struct.TYPE_8__ = type { i32*, i32, i32 }

@AUDIO_ACTION_MUTE_ENABLE = common dso_local global i32 0, align 4
@volume_tag = common dso_local global i32 0, align 4
@volume_db = common dso_local global float 0.000000e+00, align 4
@volume_percent = common dso_local global i32 0, align 4
@DEFAULT_BACKDROP = common dso_local global i32 0, align 4
@volume_alpha = common dso_local global i32 0, align 4
@volume_text_alpha = common dso_local global float 0.000000e+00, align 4
@volume_mute = common dso_local global i32 0, align 4
@menu_widgets_volume_timer_end = common dso_local global i32 0, align 4
@VOLUME_DURATION = common dso_local global i32 0, align 4
@volume_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_widgets_volume_update_and_show() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %1, align 8
  %6 = load i32, i32* @AUDIO_ACTION_MUTE_ENABLE, align 4
  %7 = call i32* @audio_get_bool_ptr(i32 %6)
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %2, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load float, float* %11, align 4
  store float %12, float* %3, align 4
  %13 = call i32 @menu_animation_kill_by_tag(i32* @volume_tag)
  %14 = load float, float* %3, align 4
  store float %14, float* @volume_db, align 4
  %15 = load float, float* %3, align 4
  %16 = fdiv float %15, 2.000000e+01
  %17 = call i32 @pow(i32 10, float %16)
  store i32 %17, i32* @volume_percent, align 4
  %18 = load i32, i32* @DEFAULT_BACKDROP, align 4
  store i32 %18, i32* @volume_alpha, align 4
  store float 1.000000e+00, float* @volume_text_alpha, align 4
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* @volume_mute, align 4
  %20 = load i32, i32* @menu_widgets_volume_timer_end, align 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @VOLUME_DURATION, align 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = call i32 @menu_timer_start(i32* @volume_timer, %struct.TYPE_8__* %4)
  ret void
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32* @audio_get_bool_ptr(i32) #1

declare dso_local i32 @menu_animation_kill_by_tag(i32*) #1

declare dso_local i32 @pow(i32, float) #1

declare dso_local i32 @menu_timer_start(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
