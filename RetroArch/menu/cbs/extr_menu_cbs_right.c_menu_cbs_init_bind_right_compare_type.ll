; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_menu_cbs_init_bind_right_compare_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_menu_cbs_init_bind_right_compare_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MENU_SETTINGS_CHEAT_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_CHEAT_END = common dso_local global i32 0, align 4
@action_right_cheat = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_DESC_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_DESC_END = common dso_local global i32 0, align 4
@action_right_input_desc = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_DESC_KBD_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_INPUT_DESC_KBD_END = common dso_local global i32 0, align 4
@action_right_input_desc_kbd = common dso_local global i32 0, align 4
@MENU_SETTINGS_CORE_OPTION_START = common dso_local global i32 0, align 4
@MENU_SETTINGS_CHEEVOS_START = common dso_local global i32 0, align 4
@core_setting_right = common dso_local global i32 0, align 4
@disk_options_disk_idx_right = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HISTORY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETPLAY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MUSIC_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_IMAGES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SETTINGS_TAB = common dso_local global i32 0, align 4
@action_right_mainmenu = common dso_local global i32 0, align 4
@action_right_scroll = common dso_local global i32 0, align 4
@MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_VOLUME_BEGIN = common dso_local global i32 0, align 4
@MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_VOLUME_END = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PARAMETER_0 = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PARAMETER_LAST = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PRESET_PARAMETER_0 = common dso_local global i32 0, align 4
@MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST = common dso_local global i32 0, align 4
@audio_mixer_stream_volume_right = common dso_local global i32 0, align 4
@shader_action_parameter_right = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @menu_cbs_init_bind_right_compare_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_cbs_init_bind_right_compare_type(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MENU_SETTINGS_CHEAT_BEGIN, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MENU_SETTINGS_CHEAT_END, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @action_right_cheat, align 4
  %18 = call i32 @BIND_ACTION_RIGHT(i32* %16, i32 %17)
  br label %138

19:                                               ; preds = %11, %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_BEGIN, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_END, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @action_right_input_desc, align 4
  %30 = call i32 @BIND_ACTION_RIGHT(i32* %28, i32 %29)
  br label %137

31:                                               ; preds = %23, %19
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_KBD_BEGIN, align 4
  %34 = icmp uge i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @MENU_SETTINGS_INPUT_DESC_KBD_END, align 4
  %38 = icmp ule i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @action_right_input_desc_kbd, align 4
  %42 = call i32 @BIND_ACTION_RIGHT(i32* %40, i32 %41)
  br label %136

43:                                               ; preds = %35, %31
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MENU_SETTINGS_CORE_OPTION_START, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @MENU_SETTINGS_CHEEVOS_START, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @core_setting_right, align 4
  %54 = call i32 @BIND_ACTION_RIGHT(i32* %52, i32 %53)
  br label %135

55:                                               ; preds = %47, %43
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %133 [
    i32 131, label %57
    i32 145, label %61
    i32 158, label %61
    i32 146, label %61
    i32 164, label %61
    i32 150, label %61
    i32 160, label %61
    i32 142, label %61
    i32 141, label %61
    i32 139, label %61
    i32 159, label %61
    i32 137, label %61
    i32 136, label %61
    i32 152, label %61
    i32 147, label %61
    i32 134, label %61
    i32 165, label %61
    i32 162, label %61
    i32 135, label %61
    i32 143, label %61
    i32 132, label %61
    i32 157, label %61
    i32 163, label %61
    i32 140, label %61
    i32 149, label %61
    i32 148, label %61
    i32 151, label %61
    i32 144, label %61
    i32 156, label %61
    i32 155, label %61
    i32 154, label %61
    i32 138, label %61
    i32 153, label %61
    i32 128, label %61
    i32 130, label %61
    i32 129, label %129
    i32 161, label %129
  ]

57:                                               ; preds = %55
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @disk_options_disk_idx_right, align 4
  %60 = call i32 @BIND_ACTION_RIGHT(i32* %58, i32 %59)
  br label %134

61:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %64 = call i32 @msg_hash_to_str(i32 %63)
  %65 = call i32 @string_is_equal(i8* %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %121, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %70 = call i32 @msg_hash_to_str(i32 %69)
  %71 = call i32 @string_is_equal(i8* %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %76 = call i32 @msg_hash_to_str(i32 %75)
  %77 = call i32 @string_is_equal(i8* %74, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %121, label %79

79:                                               ; preds = %73
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* @MENU_ENUM_LABEL_ADD_TAB, align 4
  %82 = call i32 @msg_hash_to_str(i32 %81)
  %83 = call i32 @string_is_equal(i8* %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %121, label %85

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* @MENU_ENUM_LABEL_NETPLAY_TAB, align 4
  %88 = call i32 @msg_hash_to_str(i32 %87)
  %89 = call i32 @string_is_equal(i8* %86, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %121, label %91

91:                                               ; preds = %85
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %94 = call i32 @msg_hash_to_str(i32 %93)
  %95 = call i32 @string_is_equal(i8* %92, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %121, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* @MENU_ENUM_LABEL_IMAGES_TAB, align 4
  %100 = call i32 @msg_hash_to_str(i32 %99)
  %101 = call i32 @string_is_equal(i8* %98, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* @MENU_ENUM_LABEL_VIDEO_TAB, align 4
  %106 = call i32 @msg_hash_to_str(i32 %105)
  %107 = call i32 @string_is_equal(i8* %104, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = load i8*, i8** %7, align 8
  %111 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %112 = call i32 @msg_hash_to_str(i32 %111)
  %113 = call i32 @string_is_equal(i8* %110, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load i8*, i8** %7, align 8
  %117 = load i32, i32* @MENU_ENUM_LABEL_SETTINGS_TAB, align 4
  %118 = call i32 @msg_hash_to_str(i32 %117)
  %119 = call i32 @string_is_equal(i8* %116, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115, %109, %103, %97, %91, %85, %79, %73, %67, %61
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* @action_right_mainmenu, align 4
  %124 = call i32 @BIND_ACTION_RIGHT(i32* %122, i32 %123)
  br label %134

125:                                              ; preds = %115
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* @action_right_scroll, align 4
  %128 = call i32 @BIND_ACTION_RIGHT(i32* %126, i32 %127)
  br label %134

129:                                              ; preds = %55, %55
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* @action_right_mainmenu, align 4
  %132 = call i32 @BIND_ACTION_RIGHT(i32* %130, i32 %131)
  br label %134

133:                                              ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %139

134:                                              ; preds = %129, %125, %121, %57
  br label %135

135:                                              ; preds = %134, %51
  br label %136

136:                                              ; preds = %135, %39
  br label %137

137:                                              ; preds = %136, %27
  br label %138

138:                                              ; preds = %137, %15
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %133
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @BIND_ACTION_RIGHT(i32*, i32) #1

declare dso_local i32 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
