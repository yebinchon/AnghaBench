; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_widgets.c_menu_widgets_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@volume_tag = common dso_local global i64 0, align 8
@menu_widgets_generic_tag = common dso_local global i64 0, align 8
@msg_queue = common dso_local global i32* null, align 8
@current_msgs = common dso_local global %struct.TYPE_8__* null, align 8
@msg_queue_tasks_count = common dso_local global i64 0, align 8
@font_raster_regular = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@font_raster_bold = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@generic_message_alpha = common dso_local global float 0.000000e+00, align 4
@libretro_message_timer = common dso_local global i32 0, align 4
@libretro_message_alpha = common dso_local global float 0.000000e+00, align 4
@volume_alpha = common dso_local global float 0.000000e+00, align 4
@screenshot_alpha = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_widgets_free() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 @menu_animation_kill_by_tag(i64* @volume_tag)
  %6 = call i32 @menu_animation_kill_by_tag(i64* @menu_widgets_generic_tag)
  %7 = load i32*, i32** @msg_queue, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %14, %9
  %11 = load i32*, i32** @msg_queue, align 8
  %12 = call i64 @fifo_read_avail(i32* %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32*, i32** @msg_queue, align 8
  %16 = call i32 @fifo_read(i32* %15, i32** %3, i32 8)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @menu_widgets_msg_queue_free(i32* %17, i32 0)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @free(i32* %19)
  br label %10

21:                                               ; preds = %10
  %22 = load i32*, i32** @msg_queue, align 8
  %23 = call i32 @fifo_free(i32* %22)
  store i32* null, i32** @msg_queue, align 8
  br label %24

24:                                               ; preds = %21, %0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_msgs, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  store i64 0, i64* %1, align 8
  br label %28

28:                                               ; preds = %41, %27
  %29 = load i64, i64* %1, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_msgs, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_msgs, align 8
  %36 = load i64, i64* %1, align 8
  %37 = call i64 @file_list_get_userdata_at_offset(%struct.TYPE_8__* %35, i64 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @menu_widgets_msg_queue_free(i32* %39, i32 0)
  br label %41

41:                                               ; preds = %34
  %42 = load i64, i64* %1, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %1, align 8
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_msgs, align 8
  %46 = call i32 @file_list_free(%struct.TYPE_8__* %45)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @current_msgs, align 8
  br label %47

47:                                               ; preds = %44, %24
  store i64 0, i64* @msg_queue_tasks_count, align 8
  %48 = call i32 @menu_widgets_achievement_free(i32* null)
  %49 = call i32 @video_coord_array_free(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @font_raster_regular, i32 0, i32 0))
  %50 = call i32 @video_coord_array_free(i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @font_raster_bold, i32 0, i32 0))
  %51 = call i32 @font_driver_bind_block(i32* null, i32* null)
  store float 0.000000e+00, float* @generic_message_alpha, align 4
  store i64 ptrtoint (i32* @libretro_message_timer to i64), i64* %2, align 8
  store float 0.000000e+00, float* @libretro_message_alpha, align 4
  %52 = call i32 @menu_timer_kill(i32* @libretro_message_timer)
  %53 = call i32 @menu_animation_kill_by_tag(i64* %2)
  store float 0.000000e+00, float* @volume_alpha, align 4
  store float 0.000000e+00, float* @screenshot_alpha, align 4
  %54 = call i32 @menu_widgets_screenshot_dispose(i32* null)
  ret void
}

declare dso_local i32 @menu_animation_kill_by_tag(i64*) #1

declare dso_local i64 @fifo_read_avail(i32*) #1

declare dso_local i32 @fifo_read(i32*, i32**, i32) #1

declare dso_local i32 @menu_widgets_msg_queue_free(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fifo_free(i32*) #1

declare dso_local i64 @file_list_get_userdata_at_offset(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @file_list_free(%struct.TYPE_8__*) #1

declare dso_local i32 @menu_widgets_achievement_free(i32*) #1

declare dso_local i32 @video_coord_array_free(i32*) #1

declare dso_local i32 @font_driver_bind_block(i32*, i32*) #1

declare dso_local i32 @menu_timer_kill(i32*) #1

declare dso_local i32 @menu_widgets_screenshot_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
