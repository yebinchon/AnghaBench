; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_playlist_manager_settings.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_playlist_manager_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_MUSIC_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_VIDEO_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_IMAGE_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_DEFAULT_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLIST_MANAGER_DEFAULT_CORE = common dso_local global i32 0, align 4
@MENU_SETTING_PLAYLIST_MANAGER_DEFAULT_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_RESET_CORES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLIST_MANAGER_RESET_CORES = common dso_local global i32 0, align 4
@FILE_TYPE_PLAYLIST_ENTRY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE = common dso_local global i32 0, align 4
@MENU_SETTING_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"rgui\00", align 1
@MENU_ENUM_LABEL_VALUE_THUMBNAILS_RGUI = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_RGUI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ozone\00", align 1
@MENU_ENUM_LABEL_VALUE_THUMBNAILS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_OZONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"glui\00", align 1
@MENU_ENUM_LABEL_VALUE_THUMBNAILS_MATERIALUI = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_MATERIALUI = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@MENU_SETTING_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@MENU_SETTING_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DELETE_PLAYLIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DELETE_PLAYLIST = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_DELETE_PLAYLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i8*)* @menu_displaylist_parse_playlist_manager_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_playlist_manager_settings(i32* %0, %struct.TYPE_8__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %10, align 8
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %164

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @string_is_empty(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %164

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @path_basename(i8* %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @string_is_empty(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %164

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @menu_displaylist_set_new_playlist(i32* %30, i8* %31)
  %33 = call i32* (...) @playlist_get_cached()
  store i32* %33, i32** %12, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %164

37:                                               ; preds = %29
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %40 = call i8* @file_path_str(i32 %39)
  %41 = call i64 @string_is_equal(i8* %38, i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %78, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* @FILE_PATH_CONTENT_MUSIC_HISTORY, align 4
  %46 = call i8* @file_path_str(i32 %45)
  %47 = call i64 @string_is_equal(i8* %44, i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %78, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @FILE_PATH_CONTENT_VIDEO_HISTORY, align 4
  %52 = call i8* @file_path_str(i32 %51)
  %53 = call i64 @string_is_equal(i8* %50, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @FILE_PATH_CONTENT_IMAGE_HISTORY, align 4
  %58 = call i8* @file_path_str(i32 %57)
  %59 = call i64 @string_is_equal(i8* %56, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %64 = call i8* @file_path_str(i32 %63)
  %65 = call i64 @string_is_equal(i8* %62, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_DEFAULT_CORE, align 4
  %72 = call i32 @msg_hash_to_str(i32 %71)
  %73 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_DEFAULT_CORE, align 4
  %74 = call i32 @msg_hash_to_str(i32 %73)
  %75 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_DEFAULT_CORE, align 4
  %76 = load i32, i32* @MENU_SETTING_PLAYLIST_MANAGER_DEFAULT_CORE, align 4
  %77 = call i32 @menu_entries_append_enum(i32 %70, i32 %72, i32 %74, i32 %75, i32 %76, i32 0, i32 0)
  br label %78

78:                                               ; preds = %67, %61, %55, %49, %43, %37
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_RESET_CORES, align 4
  %83 = call i32 @msg_hash_to_str(i32 %82)
  %84 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_RESET_CORES, align 4
  %85 = call i32 @msg_hash_to_str(i32 %84)
  %86 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_RESET_CORES, align 4
  %87 = load i32, i32* @FILE_TYPE_PLAYLIST_ENTRY, align 4
  %88 = call i32 @menu_entries_append_enum(i32 %81, i32 %83, i32 %85, i32 %86, i32 %87, i32 0, i32 0)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE, align 4
  %93 = call i32 @msg_hash_to_str(i32 %92)
  %94 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE, align 4
  %95 = call i32 @msg_hash_to_str(i32 %94)
  %96 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE, align 4
  %97 = load i32, i32* @MENU_SETTING_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE, align 4
  %98 = call i32 @menu_entries_append_enum(i32 %91, i32 %93, i32 %95, i32 %96, i32 %97, i32 0, i32 0)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @string_is_equal(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %78
  %106 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAILS_RGUI, align 4
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* @MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_RGUI, align 4
  store i32 %107, i32* %9, align 4
  br label %133

108:                                              ; preds = %78
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @string_is_equal(i8* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAILS, align 4
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* @MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_OZONE, align 4
  store i32 %117, i32* %9, align 4
  br label %132

118:                                              ; preds = %108
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @string_is_equal(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAILS_MATERIALUI, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS_MATERIALUI, align 4
  store i32 %127, i32* %9, align 4
  br label %131

128:                                              ; preds = %118
  %129 = load i32, i32* @MENU_ENUM_LABEL_VALUE_THUMBNAILS, align 4
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @MENU_ENUM_LABEL_VALUE_LEFT_THUMBNAILS, align 4
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %115
  br label %133

133:                                              ; preds = %132, %105
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @msg_hash_to_str(i32 %137)
  %139 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE, align 4
  %140 = call i32 @msg_hash_to_str(i32 %139)
  %141 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE, align 4
  %142 = load i32, i32* @MENU_SETTING_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE, align 4
  %143 = call i32 @menu_entries_append_enum(i32 %136, i32 %138, i32 %140, i32 %141, i32 %142, i32 0, i32 0)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @msg_hash_to_str(i32 %147)
  %149 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE, align 4
  %150 = call i32 @msg_hash_to_str(i32 %149)
  %151 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE, align 4
  %152 = load i32, i32* @MENU_SETTING_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE, align 4
  %153 = call i32 @menu_entries_append_enum(i32 %146, i32 %148, i32 %150, i32 %151, i32 %152, i32 0, i32 0)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DELETE_PLAYLIST, align 4
  %158 = call i32 @msg_hash_to_str(i32 %157)
  %159 = load i32, i32* @MENU_ENUM_LABEL_DELETE_PLAYLIST, align 4
  %160 = call i32 @msg_hash_to_str(i32 %159)
  %161 = load i32, i32* @MENU_ENUM_LABEL_DELETE_PLAYLIST, align 4
  %162 = load i32, i32* @MENU_SETTING_ACTION_DELETE_PLAYLIST, align 4
  %163 = call i32 @menu_entries_append_enum(i32 %156, i32 %158, i32 %160, i32 %161, i32 %162, i32 0, i32 0)
  store i32 1, i32* %4, align 4
  br label %164

164:                                              ; preds = %133, %36, %28, %21, %16
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i32 @menu_displaylist_set_new_playlist(i32*, i8*) #1

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @file_path_str(i32) #1

declare dso_local i32 @menu_entries_append_enum(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
