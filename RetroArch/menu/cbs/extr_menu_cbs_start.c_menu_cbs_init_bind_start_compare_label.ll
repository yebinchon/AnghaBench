; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_start.c_menu_cbs_init_bind_start_compare_label.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_start.c_menu_cbs_init_bind_start_compare_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MSG_UNKNOWN = common dso_local global i32 0, align 4
@action_start_load_core = common dso_local global i32 0, align 4
@action_start_shader_preset = common dso_local global i32 0, align 4
@action_start_remap_file_load = common dso_local global i32 0, align 4
@action_start_video_filter_file_load = common dso_local global i32 0, align 4
@action_start_cheat_num_passes = common dso_local global i32 0, align 4
@action_start_video_resolution = common dso_local global i32 0, align 4
@action_start_netplay_mitm_server = common dso_local global i32 0, align 4
@action_start_playlist_association = common dso_local global i32 0, align 4
@action_start_playlist_label_display_mode = common dso_local global i32 0, align 4
@action_start_playlist_right_thumbnail_mode = common dso_local global i32 0, align 4
@action_start_playlist_left_thumbnail_mode = common dso_local global i32 0, align 4
@action_start_shader_filter_pass = common dso_local global i32 0, align 4
@action_start_shader_num_passes = common dso_local global i32 0, align 4
@action_start_shader_pass = common dso_local global i32 0, align 4
@action_start_shader_scale_pass = common dso_local global i32 0, align 4
@action_start_shader_watch_for_changes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @menu_cbs_init_bind_start_compare_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_cbs_init_bind_start_compare_label(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MSG_UNKNOWN, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %64

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %62 [
    i32 142, label %13
    i32 129, label %17
    i32 136, label %21
    i32 133, label %25
    i32 130, label %29
    i32 128, label %30
    i32 132, label %31
    i32 134, label %32
    i32 131, label %33
    i32 143, label %34
    i32 135, label %38
    i32 141, label %42
    i32 140, label %46
    i32 139, label %50
    i32 137, label %54
    i32 138, label %58
  ]

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = load i32, i32* @action_start_load_core, align 4
  %16 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %14, i32 %15)
  br label %63

17:                                               ; preds = %9
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = load i32, i32* @action_start_shader_preset, align 4
  %20 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %18, i32 %19)
  br label %63

21:                                               ; preds = %9
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i32, i32* @action_start_remap_file_load, align 4
  %24 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %22, i32 %23)
  br label %63

25:                                               ; preds = %9
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = load i32, i32* @action_start_video_filter_file_load, align 4
  %28 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %26, i32 %27)
  br label %63

29:                                               ; preds = %9
  br label %63

30:                                               ; preds = %9
  br label %63

31:                                               ; preds = %9
  br label %63

32:                                               ; preds = %9
  br label %63

33:                                               ; preds = %9
  br label %63

34:                                               ; preds = %9
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = load i32, i32* @action_start_cheat_num_passes, align 4
  %37 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %35, i32 %36)
  br label %63

38:                                               ; preds = %9
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = load i32, i32* @action_start_video_resolution, align 4
  %41 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %39, i32 %40)
  br label %63

42:                                               ; preds = %9
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = load i32, i32* @action_start_netplay_mitm_server, align 4
  %45 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %43, i32 %44)
  br label %63

46:                                               ; preds = %9
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = load i32, i32* @action_start_playlist_association, align 4
  %49 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %47, i32 %48)
  br label %63

50:                                               ; preds = %9
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = load i32, i32* @action_start_playlist_label_display_mode, align 4
  %53 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %51, i32 %52)
  br label %63

54:                                               ; preds = %9
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = load i32, i32* @action_start_playlist_right_thumbnail_mode, align 4
  %57 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %55, i32 %56)
  br label %63

58:                                               ; preds = %9
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = load i32, i32* @action_start_playlist_left_thumbnail_mode, align 4
  %61 = call i32 @BIND_ACTION_START(%struct.TYPE_4__* %59, i32 %60)
  br label %63

62:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %65

63:                                               ; preds = %58, %54, %50, %46, %42, %38, %34, %33, %32, %31, %30, %29, %25, %21, %17, %13
  br label %64

64:                                               ; preds = %63, %1
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %62
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @BIND_ACTION_START(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
