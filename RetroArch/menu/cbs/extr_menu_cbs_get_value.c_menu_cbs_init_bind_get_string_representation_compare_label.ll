; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_cbs_init_bind_get_string_representation_compare_label.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_cbs_init_bind_get_string_representation_compare_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MSG_UNKNOWN = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_wifi_is_online = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_cheat_num_passes = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_remap_file_load = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_configurations = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_menu_video_resolution = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_menu_more = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_playlist_associations = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_playlist_label_display_mode = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_playlist_right_thumbnail_mode = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_playlist_left_thumbnail_mode = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_shader_default_filter = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_shader_filter_pass = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_shader_num_passes = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_shader_pass = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_shader_scale_pass = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_shader_watch_for_changes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @menu_cbs_init_bind_get_string_representation_compare_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_cbs_init_bind_get_string_representation_compare_label(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MSG_UNKNOWN, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %65

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %63 [
    i32 138, label %13
    i32 178, label %13
    i32 160, label %13
    i32 159, label %13
    i32 177, label %13
    i32 148, label %13
    i32 154, label %13
    i32 156, label %13
    i32 176, label %13
    i32 128, label %13
    i32 155, label %13
    i32 171, label %17
    i32 174, label %21
    i32 147, label %25
    i32 136, label %29
    i32 129, label %30
    i32 135, label %31
    i32 141, label %32
    i32 133, label %33
    i32 137, label %34
    i32 172, label %35
    i32 143, label %39
    i32 153, label %43
    i32 158, label %43
    i32 163, label %43
    i32 162, label %43
    i32 166, label %43
    i32 170, label %43
    i32 142, label %43
    i32 134, label %43
    i32 132, label %43
    i32 131, label %43
    i32 130, label %43
    i32 175, label %43
    i32 161, label %43
    i32 169, label %43
    i32 164, label %43
    i32 165, label %43
    i32 146, label %43
    i32 173, label %43
    i32 145, label %43
    i32 139, label %43
    i32 167, label %43
    i32 168, label %43
    i32 140, label %43
    i32 180, label %43
    i32 179, label %43
    i32 144, label %43
    i32 157, label %43
    i32 152, label %47
    i32 151, label %51
    i32 149, label %55
    i32 150, label %59
  ]

13:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = load i32, i32* @menu_action_setting_disp_set_label, align 4
  %16 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %14, i32 %15)
  br label %64

17:                                               ; preds = %9
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = load i32, i32* @menu_action_setting_disp_set_label_wifi_is_online, align 4
  %20 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %18, i32 %19)
  br label %64

21:                                               ; preds = %9
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = load i32, i32* @menu_action_setting_disp_set_label_cheat_num_passes, align 4
  %24 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %22, i32 %23)
  br label %64

25:                                               ; preds = %9
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = load i32, i32* @menu_action_setting_disp_set_label_remap_file_load, align 4
  %28 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %26, i32 %27)
  br label %64

29:                                               ; preds = %9
  br label %64

30:                                               ; preds = %9
  br label %64

31:                                               ; preds = %9
  br label %64

32:                                               ; preds = %9
  br label %64

33:                                               ; preds = %9
  br label %64

34:                                               ; preds = %9
  br label %64

35:                                               ; preds = %9
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = load i32, i32* @menu_action_setting_disp_set_label_configurations, align 4
  %38 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %36, i32 %37)
  br label %64

39:                                               ; preds = %9
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = load i32, i32* @menu_action_setting_disp_set_label_menu_video_resolution, align 4
  %42 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %40, i32 %41)
  br label %64

43:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = load i32, i32* @menu_action_setting_disp_set_label_menu_more, align 4
  %46 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %44, i32 %45)
  br label %64

47:                                               ; preds = %9
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = load i32, i32* @menu_action_setting_disp_set_label_playlist_associations, align 4
  %50 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %48, i32 %49)
  br label %64

51:                                               ; preds = %9
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %53 = load i32, i32* @menu_action_setting_disp_set_label_playlist_label_display_mode, align 4
  %54 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %52, i32 %53)
  br label %64

55:                                               ; preds = %9
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = load i32, i32* @menu_action_setting_disp_set_label_playlist_right_thumbnail_mode, align 4
  %58 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %56, i32 %57)
  br label %64

59:                                               ; preds = %9
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = load i32, i32* @menu_action_setting_disp_set_label_playlist_left_thumbnail_mode, align 4
  %62 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__* %60, i32 %61)
  br label %64

63:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %67

64:                                               ; preds = %59, %55, %51, %47, %43, %39, %35, %34, %33, %32, %31, %30, %29, %25, %21, %17, %13
  br label %66

65:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %67

66:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %65, %63
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
