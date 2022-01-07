; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_start_achievement_notification.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_start_achievement_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { float*, float, i32*, i32, i32, i32, i32 }

@cheevo_height = common dso_local global i32 0, align 4
@font_regular = common dso_local global i32 0, align 4
@MSG_ACHIEVEMENT_UNLOCKED = common dso_local global i32 0, align 4
@cheevo_title = common dso_local global i32 0, align 4
@cheevo_width = common dso_local global i32 0, align 4
@simple_widget_padding = common dso_local global i32 0, align 4
@cheevo_y = common dso_local global float 0.000000e+00, align 4
@cheevo_unfold = common dso_local global float 0.000000e+00, align 4
@menu_widgets_achievement_unfold = common dso_local global i32 0, align 4
@MSG_QUEUE_ANIMATION_DURATION = common dso_local global i32 0, align 4
@EASING_OUT_QUAD = common dso_local global i32 0, align 4
@menu_widgets_generic_tag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @menu_widgets_start_achievement_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_widgets_start_achievement_notification() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %1, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %7, 4
  store i32 %8, i32* @cheevo_height, align 4
  %9 = load i32, i32* @font_regular, align 4
  %10 = load i32, i32* @MSG_ACHIEVEMENT_UNLOCKED, align 4
  %11 = call i32 @msg_hash_to_str(i32 %10)
  %12 = call i32 @font_driver_get_message_width(i32 %9, i32 %11, i32 0, i32 1)
  %13 = load i32, i32* @font_regular, align 4
  %14 = load i32, i32* @cheevo_title, align 4
  %15 = call i32 @font_driver_get_message_width(i32 %13, i32 %14, i32 0, i32 1)
  %16 = call i32 @MAX(i32 %12, i32 %15)
  store i32 %16, i32* @cheevo_width, align 4
  %17 = load i32, i32* @simple_widget_padding, align 4
  %18 = mul nsw i32 %17, 2
  %19 = load i32, i32* @cheevo_width, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* @cheevo_width, align 4
  %21 = load i32, i32* @cheevo_height, align 4
  %22 = sub nsw i32 0, %21
  %23 = sitofp i32 %22 to float
  store float %23, float* @cheevo_y, align 4
  store float 0.000000e+00, float* @cheevo_unfold, align 4
  %24 = load i32, i32* @menu_widgets_achievement_unfold, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @MSG_QUEUE_ANIMATION_DURATION, align 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @EASING_OUT_QUAD, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store float* @cheevo_y, float** %30, align 8
  %31 = load i32, i32* @menu_widgets_generic_tag, align 4
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store float 0.000000e+00, float* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = call i32 @menu_animation_push(%struct.TYPE_8__* %2)
  ret void
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @font_driver_get_message_width(i32, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @menu_animation_push(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
