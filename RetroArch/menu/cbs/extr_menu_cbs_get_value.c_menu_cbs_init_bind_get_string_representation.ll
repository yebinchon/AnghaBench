; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_cbs_init_bind_get_string_representation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_get_value.c_menu_cbs_init_bind_get_string_representation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"joypad_index\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"input_player\00", align 1
@menu_action_setting_disp_set_label = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_cheevos_unlocked_entry = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_cheevos_unlocked_entry_hardcore = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_cheevos_locked_entry = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_cheevos_unsupported_entry = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_cheevos_unofficial_entry = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_menu_more = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_achievement_information = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_setting_bool = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_setting_string = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_setting_path = common dso_local global i32 0, align 4
@MENU_SETTINGS_CORE_OPTION_START = common dso_local global i32 0, align 4
@MENU_SETTINGS_CHEEVOS_START = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_core_options = common dso_local global i32 0, align 4
@MENU_SETTINGS_LAST = common dso_local global i32 0, align 4
@MENU_SETTINGS_NONE = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PARAMETER_0 = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PARAMETER_LAST = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PRESET_PARAMETER_0 = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_netplay_mitm_server = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_shader_parameter = common dso_local global i32 0, align 4
@menu_action_setting_disp_set_label_shader_preset_parameter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_cbs_init_bind_get_string_representation(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %120

15:                                               ; preds = %5
  %16 = load i8*, i8** %9, align 8
  %17 = call i64 @strstr(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @strstr(i8* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = load i32, i32* @menu_action_setting_disp_set_label, align 4
  %26 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %24, i32 %25)
  store i32 0, i32* %6, align 4
  br label %120

27:                                               ; preds = %19, %15
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MSG_UNKNOWN, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %70 [
    i32 137, label %37
    i32 136, label %41
    i32 138, label %45
    i32 134, label %49
    i32 135, label %53
    i32 133, label %57
    i32 131, label %57
    i32 140, label %61
    i32 139, label %65
    i32 132, label %69
  ]

37:                                               ; preds = %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = load i32, i32* @menu_action_setting_disp_set_label_cheevos_unlocked_entry, align 4
  %40 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %38, i32 %39)
  store i32 0, i32* %6, align 4
  br label %120

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = load i32, i32* @menu_action_setting_disp_set_label_cheevos_unlocked_entry_hardcore, align 4
  %44 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %42, i32 %43)
  store i32 0, i32* %6, align 4
  br label %120

45:                                               ; preds = %33
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = load i32, i32* @menu_action_setting_disp_set_label_cheevos_locked_entry, align 4
  %48 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %46, i32 %47)
  store i32 0, i32* %6, align 4
  br label %120

49:                                               ; preds = %33
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = load i32, i32* @menu_action_setting_disp_set_label_cheevos_unsupported_entry, align 4
  %52 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %50, i32 %51)
  store i32 0, i32* %6, align 4
  br label %120

53:                                               ; preds = %33
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = load i32, i32* @menu_action_setting_disp_set_label_cheevos_unofficial_entry, align 4
  %56 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %54, i32 %55)
  store i32 0, i32* %6, align 4
  br label %120

57:                                               ; preds = %33, %33
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = load i32, i32* @menu_action_setting_disp_set_label_menu_more, align 4
  %60 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %58, i32 %59)
  store i32 0, i32* %6, align 4
  br label %120

61:                                               ; preds = %33
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = load i32, i32* @menu_action_setting_disp_set_label_achievement_information, align 4
  %64 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %62, i32 %63)
  store i32 0, i32* %6, align 4
  br label %120

65:                                               ; preds = %33
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = load i32, i32* @menu_action_setting_disp_set_label_achievement_information, align 4
  %68 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %66, i32 %67)
  store i32 0, i32* %6, align 4
  br label %120

69:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %120

70:                                               ; preds = %33
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %27
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @setting_get_type(i64 %80)
  switch i32 %81, label %94 [
    i32 130, label %82
    i32 128, label %86
    i32 129, label %90
  ]

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = load i32, i32* @menu_action_setting_disp_set_label_setting_bool, align 4
  %85 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %83, i32 %84)
  store i32 0, i32* %6, align 4
  br label %120

86:                                               ; preds = %77
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = load i32, i32* @menu_action_setting_disp_set_label_setting_string, align 4
  %89 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %87, i32 %88)
  store i32 0, i32* %6, align 4
  br label %120

90:                                               ; preds = %77
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = load i32, i32* @menu_action_setting_disp_set_label_setting_path, align 4
  %93 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %91, i32 %92)
  store i32 0, i32* %6, align 4
  br label %120

94:                                               ; preds = %77
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95, %72
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @MENU_SETTINGS_CORE_OPTION_START, align 4
  %99 = icmp uge i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MENU_SETTINGS_CHEEVOS_START, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = load i32, i32* @menu_action_setting_disp_set_label_core_options, align 4
  %107 = call i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__* %105, i32 %106)
  store i32 0, i32* %6, align 4
  br label %120

108:                                              ; preds = %100, %96
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = call i64 @menu_cbs_init_bind_get_string_representation_compare_label(%struct.TYPE_6__* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 0, i32* %6, align 4
  br label %120

113:                                              ; preds = %108
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @menu_cbs_init_bind_get_string_representation_compare_type(%struct.TYPE_6__* %114, i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %120

119:                                              ; preds = %113
  store i32 -1, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %118, %112, %104, %90, %86, %82, %69, %65, %61, %57, %53, %49, %45, %41, %37, %23, %14
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @BIND_ACTION_GET_VALUE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @setting_get_type(i64) #1

declare dso_local i64 @menu_cbs_init_bind_get_string_representation_compare_label(%struct.TYPE_6__*) #1

declare dso_local i64 @menu_cbs_init_bind_get_string_representation_compare_type(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
