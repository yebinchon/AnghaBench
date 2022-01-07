; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_playlist_manager_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_playlist_manager_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@DIR_LIST_COLLECTIONS = common dso_local global i32 0, align 4
@FILE_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_MUSIC_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_VIDEO_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_IMAGE_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MENU_ENUM_LABEL_PLAYLIST_MANAGER_SETTINGS = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION = common dso_local global i32 0, align 4
@g_defaults = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @menu_displaylist_parse_playlist_manager_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_playlist_manager_list(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %10 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.string_list* null, %struct.string_list** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %177

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DIR_LIST_COLLECTIONS, align 4
  %21 = call %struct.string_list* @dir_list_new_special(i32 %19, i32 %20, i32* null)
  store %struct.string_list* %21, %struct.string_list** %6, align 8
  %22 = load %struct.string_list*, %struct.string_list** %6, align 8
  %23 = icmp ne %struct.string_list* %22, null
  br i1 %23, label %24, label %122

24:                                               ; preds = %15
  %25 = load %struct.string_list*, %struct.string_list** %6, align 8
  %26 = getelementptr inbounds %struct.string_list, %struct.string_list* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %122

29:                                               ; preds = %24
  %30 = load %struct.string_list*, %struct.string_list** %6, align 8
  %31 = call i32 @dir_list_sort(%struct.string_list* %30, i32 1)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %118, %29
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.string_list*, %struct.string_list** %6, align 8
  %35 = getelementptr inbounds %struct.string_list, %struct.string_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %121

38:                                               ; preds = %32
  %39 = load %struct.string_list*, %struct.string_list** %6, align 8
  %40 = getelementptr inbounds %struct.string_list, %struct.string_list* %39, i32 0, i32 1
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %47 = load %struct.string_list*, %struct.string_list** %6, align 8
  %48 = getelementptr inbounds %struct.string_list, %struct.string_list* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @FILE_TYPE_DIRECTORY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %38
  br label %118

59:                                               ; preds = %38
  %60 = load i8*, i8** %8, align 8
  %61 = call i64 @string_is_empty(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %118

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = call i8* @path_basename(i8* %65)
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = call i64 @string_is_empty(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %118

71:                                               ; preds = %64
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @path_get_extension(i8* %72)
  %74 = call i32 @string_is_equal_noncase(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %118

77:                                               ; preds = %71
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %80 = call i32 @file_path_str(i32 %79)
  %81 = call i64 @string_is_equal(i8* %78, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %107, label %83

83:                                               ; preds = %77
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* @FILE_PATH_CONTENT_MUSIC_HISTORY, align 4
  %86 = call i32 @file_path_str(i32 %85)
  %87 = call i64 @string_is_equal(i8* %84, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %83
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* @FILE_PATH_CONTENT_VIDEO_HISTORY, align 4
  %92 = call i32 @file_path_str(i32 %91)
  %93 = call i64 @string_is_equal(i8* %90, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %89
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* @FILE_PATH_CONTENT_IMAGE_HISTORY, align 4
  %98 = call i32 @file_path_str(i32 %97)
  %99 = call i64 @string_is_equal(i8* %96, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %104 = call i32 @file_path_str(i32 %103)
  %105 = call i64 @string_is_equal(i8* %102, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101, %95, %89, %83, %77
  br label %118

108:                                              ; preds = %101
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_SETTINGS, align 4
  %114 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %115 = call i64 @menu_entries_append_enum(i32 %111, i8* %112, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %114, i32 0, i32 0)
  %116 = load i32, i32* %5, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %108, %107, %76, %70, %63, %58
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %32

121:                                              ; preds = %32
  br label %122

122:                                              ; preds = %121, %24, %15
  %123 = load %struct.string_list*, %struct.string_list** %6, align 8
  %124 = call i32 @string_list_free(%struct.string_list* %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %122
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_defaults, i32 0, i32 1), align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %130
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_defaults, i32 0, i32 1), align 8
  %135 = call i64 @playlist_size(i64 %134)
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_defaults, i32 0, i32 1), align 8
  %142 = call i8* @playlist_get_conf_path(i64 %141)
  %143 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_SETTINGS, align 4
  %144 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %145 = call i64 @menu_entries_append_enum(i32 %140, i8* %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %144, i32 0, i32 0)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i32, i32* %5, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %147, %137
  br label %151

151:                                              ; preds = %150, %133
  br label %152

152:                                              ; preds = %151, %130
  br label %153

153:                                              ; preds = %152, %122
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_defaults, i32 0, i32 0), align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_defaults, i32 0, i32 0), align 8
  %158 = call i64 @playlist_size(i64 %157)
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %156
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_defaults, i32 0, i32 0), align 8
  %165 = call i8* @playlist_get_conf_path(i64 %164)
  %166 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_MANAGER_SETTINGS, align 4
  %167 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %168 = call i64 @menu_entries_append_enum(i32 %163, i8* %165, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %166, i32 %167, i32 0, i32 0)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = load i32, i32* %5, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %170, %160
  br label %174

174:                                              ; preds = %173, %156
  br label %175

175:                                              ; preds = %174, %153
  %176 = load i32, i32* %5, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %175, %13
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local %struct.string_list* @dir_list_new_special(i32, i32, i32*) #1

declare dso_local i32 @dir_list_sort(%struct.string_list*, i32) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i32 @string_is_equal_noncase(i32, i8*) #1

declare dso_local i32 @path_get_extension(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @file_path_str(i32) #1

declare dso_local i64 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i64 @playlist_size(i64) #1

declare dso_local i8* @playlist_get_conf_path(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
