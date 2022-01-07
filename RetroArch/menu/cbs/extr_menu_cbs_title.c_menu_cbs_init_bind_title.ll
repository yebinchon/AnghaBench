; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_menu_cbs_init_bind_title.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_title.c_menu_cbs_init_bind_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@action_get_title_default = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLIST_ENTRY = common dso_local global i64 0, align 8
@MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_SAVE_LIST = common dso_local global i32 0, align 4
@action_get_title_video_shader_preset_save_list = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_REMOVE_LIST = common dso_local global i32 0, align 4
@action_get_title_video_shader_preset_remove = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST = common dso_local global i32 0, align 4
@action_get_title_dropdown_item = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION = common dso_local global i32 0, align 4
@action_get_title_dropdown_resolution_item = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE = common dso_local global i32 0, align 4
@action_get_title_dropdown_playlist_default_core_item = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE = common dso_local global i32 0, align 4
@action_get_title_dropdown_playlist_label_display_mode_item = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@action_get_title_dropdown_playlist_right_thumbnail_mode_item = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@action_get_title_dropdown_playlist_left_thumbnail_mode_item = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS = common dso_local global i32 0, align 4
@action_get_quick_menu_views_settings_list = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST = common dso_local global i32 0, align 4
@action_get_title_deferred_playlist_list = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_PLAYLIST_MANAGER_SETTINGS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL = common dso_local global i32 0, align 4
@action_get_title_list_rdb_entry_database_info = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@action_get_title_collection = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DEFERRED_MIXER_STREAM_SETTINGS_LIST = common dso_local global i32 0, align 4
@action_get_title_mixer_stream_actions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_cbs_init_bind_title(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %180

17:                                               ; preds = %6
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = load i32, i32* @action_get_title_default, align 4
  %20 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %18, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MENU_ENUM_LABEL_PLAYLIST_ENTRY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @menu_cbs_init_bind_title_compare_label(%struct.TYPE_6__* %27, i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %180

33:                                               ; preds = %26, %17
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i64 @menu_cbs_init_bind_title_compare_type(%struct.TYPE_6__* %34, i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %180

39:                                               ; preds = %33
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_SAVE_LIST, align 4
  %42 = call i32 @msg_hash_to_str(i32 %41)
  %43 = call i64 @string_is_equal(i8* %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = load i32, i32* @action_get_title_video_shader_preset_save_list, align 4
  %48 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %46, i32 %47)
  store i32 0, i32* %7, align 4
  br label %180

49:                                               ; preds = %39
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_REMOVE_LIST, align 4
  %52 = call i32 @msg_hash_to_str(i32 %51)
  %53 = call i64 @string_is_equal(i8* %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = load i32, i32* @action_get_title_video_shader_preset_remove, align 4
  %58 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %56, i32 %57)
  store i32 0, i32* %7, align 4
  br label %180

59:                                               ; preds = %49
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST, align 4
  %62 = call i32 @msg_hash_to_str(i32 %61)
  %63 = call i64 @string_is_equal(i8* %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = load i32, i32* @action_get_title_dropdown_item, align 4
  %68 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %66, i32 %67)
  store i32 0, i32* %7, align 4
  br label %180

69:                                               ; preds = %59
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL, align 4
  %72 = call i32 @msg_hash_to_str(i32 %71)
  %73 = call i64 @string_is_equal(i8* %70, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = load i32, i32* @action_get_title_dropdown_item, align 4
  %78 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %76, i32 %77)
  store i32 0, i32* %7, align 4
  br label %180

79:                                               ; preds = %69
  %80 = load i8*, i8** %10, align 8
  %81 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION, align 4
  %82 = call i32 @msg_hash_to_str(i32 %81)
  %83 = call i64 @string_is_equal(i8* %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = load i32, i32* @action_get_title_dropdown_resolution_item, align 4
  %88 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %86, i32 %87)
  store i32 0, i32* %7, align 4
  br label %180

89:                                               ; preds = %79
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE, align 4
  %92 = call i32 @msg_hash_to_str(i32 %91)
  %93 = call i64 @string_is_equal(i8* %90, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %97 = load i32, i32* @action_get_title_dropdown_playlist_default_core_item, align 4
  %98 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %96, i32 %97)
  store i32 0, i32* %7, align 4
  br label %180

99:                                               ; preds = %89
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE, align 4
  %102 = call i32 @msg_hash_to_str(i32 %101)
  %103 = call i64 @string_is_equal(i8* %100, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = load i32, i32* @action_get_title_dropdown_playlist_label_display_mode_item, align 4
  %108 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %106, i32 %107)
  store i32 0, i32* %7, align 4
  br label %180

109:                                              ; preds = %99
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE, align 4
  %112 = call i32 @msg_hash_to_str(i32 %111)
  %113 = call i64 @string_is_equal(i8* %110, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %117 = load i32, i32* @action_get_title_dropdown_playlist_right_thumbnail_mode_item, align 4
  %118 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %116, i32 %117)
  store i32 0, i32* %7, align 4
  br label %180

119:                                              ; preds = %109
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE, align 4
  %122 = call i32 @msg_hash_to_str(i32 %121)
  %123 = call i64 @string_is_equal(i8* %120, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = load i32, i32* @action_get_title_dropdown_playlist_left_thumbnail_mode_item, align 4
  %128 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %126, i32 %127)
  store i32 0, i32* %7, align 4
  br label %180

129:                                              ; preds = %119
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS, align 4
  %132 = call i32 @msg_hash_to_str(i32 %131)
  %133 = call i64 @string_is_equal(i8* %130, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %137 = load i32, i32* @action_get_quick_menu_views_settings_list, align 4
  %138 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %136, i32 %137)
  store i32 0, i32* %7, align 4
  br label %180

139:                                              ; preds = %129
  %140 = load i8*, i8** %10, align 8
  %141 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST, align 4
  %142 = call i32 @msg_hash_to_str(i32 %141)
  %143 = call i64 @string_is_equal(i8* %140, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = load i32, i32* @action_get_title_deferred_playlist_list, align 4
  %148 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %146, i32 %147)
  store i32 0, i32* %7, align 4
  br label %180

149:                                              ; preds = %139
  %150 = load i8*, i8** %10, align 8
  %151 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_PLAYLIST_MANAGER_SETTINGS, align 4
  %152 = call i32 @msg_hash_to_str(i32 %151)
  %153 = call i64 @string_is_equal(i8* %150, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %157 = load i32, i32* @action_get_title_deferred_playlist_list, align 4
  %158 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %156, i32 %157)
  store i32 0, i32* %7, align 4
  br label %180

159:                                              ; preds = %149
  %160 = load i8*, i8** %10, align 8
  %161 = load i32, i32* @MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL, align 4
  %162 = call i32 @msg_hash_to_str(i32 %161)
  %163 = call i64 @strstr(i8* %160, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %167 = load i32, i32* @action_get_title_list_rdb_entry_database_info, align 4
  %168 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %166, i32 %167)
  store i32 0, i32* %7, align 4
  br label %180

169:                                              ; preds = %159
  %170 = load i8*, i8** %10, align 8
  %171 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %172 = call i32 @msg_hash_to_str(i32 %171)
  %173 = call i64 @string_is_equal(i8* %170, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %177 = load i32, i32* @action_get_title_collection, align 4
  %178 = call i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__* %176, i32 %177)
  store i32 0, i32* %7, align 4
  br label %180

179:                                              ; preds = %169
  store i32 -1, i32* %7, align 4
  br label %180

180:                                              ; preds = %179, %175, %165, %155, %145, %135, %125, %115, %105, %95, %85, %75, %65, %55, %45, %38, %32, %16
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

declare dso_local i32 @BIND_ACTION_GET_TITLE(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @menu_cbs_init_bind_title_compare_label(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @menu_cbs_init_bind_title_compare_type(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @strstr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
