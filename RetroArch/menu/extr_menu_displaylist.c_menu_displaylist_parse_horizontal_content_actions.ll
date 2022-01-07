; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_horizontal_content_actions.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_horizontal_content_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.playlist_entry = type { i8* }

@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@RARCH_CTL_IS_DUMMY_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_RUN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RUN = common dso_local global i32 0, align 4
@FILE_TYPE_PLAYLIST_ENTRY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_RENAME_ENTRY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RENAME_ENTRY = common dso_local global i32 0, align 4
@PLAYLIST_ENTRY_REMOVE_ENABLE_ALL = common dso_local global i64 0, align 8
@PLAYLIST_ENTRY_REMOVE_ENABLE_HIST_FAV = common dso_local global i64 0, align 8
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"favorites\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"images_history\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"music_history\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"video_history\00", align 1
@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DELETE_ENTRY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DELETE_ENTRY = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_DELETE_ENTRY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ADD_TO_FAVORITES_PLAYLIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TO_FAVORITES_PLAYLIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SET_CORE_ASSOCIATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SET_CORE_ASSOCIATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_RESET_CORE_ASSOCIATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RESET_CORE_ASSOCIATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_INFORMATION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_INFORMATION = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TO_MIXER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TO_MIXER_AND_PLAY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_DOWNLOAD_PL_ENTRY_THUMBNAILS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ADD_TO_MIXER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_ADD_TO_MIXER_AND_PLAY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DOWNLOAD_PL_ENTRY_THUMBNAILS = common dso_local global i32 0, align 4
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* @menu_displaylist_parse_horizontal_content_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_horizontal_content_actions(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.playlist_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %5, align 4
  %16 = call i32* (...) @playlist_get_cached()
  store i32* %16, i32** %6, align 8
  %17 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  %18 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %19 = call i8* @path_get(i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  store %struct.playlist_entry* null, %struct.playlist_entry** %10, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @playlist_get_index(i32* %26, i32 %27, %struct.playlist_entry** %10)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* @RARCH_CTL_IS_DUMMY_CORE, align 4
  %31 = call i32 @rarch_ctl(i32 %30, i32* null)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @string_is_equal(i8* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %33, %29
  %41 = phi i1 [ false, %29 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = call i32 @menu_displaylist_parse_load_content_settings(%struct.TYPE_14__* %46, %struct.TYPE_15__* %47)
  br label %270

49:                                               ; preds = %40
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MENU_ENUM_LABEL_VALUE_RUN, align 4
  %54 = call i32 @msg_hash_to_str(i32 %53)
  %55 = load i32, i32* @MENU_ENUM_LABEL_RUN, align 4
  %56 = call i32 @msg_hash_to_str(i32 %55)
  %57 = load i32, i32* @MENU_ENUM_LABEL_RUN, align 4
  %58 = load i32, i32* @FILE_TYPE_PLAYLIST_ENTRY, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @menu_entries_append_enum(i32 %52, i32 %54, i32 %56, i32 %57, i32 %58, i32 0, i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %49
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MENU_ENUM_LABEL_VALUE_RENAME_ENTRY, align 4
  %77 = call i32 @msg_hash_to_str(i32 %76)
  %78 = load i32, i32* @MENU_ENUM_LABEL_RENAME_ENTRY, align 4
  %79 = call i32 @msg_hash_to_str(i32 %78)
  %80 = load i32, i32* @MENU_ENUM_LABEL_RENAME_ENTRY, align 4
  %81 = load i32, i32* @FILE_TYPE_PLAYLIST_ENTRY, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @menu_entries_append_enum(i32 %75, i32 %77, i32 %79, i32 %80, i32 %81, i32 0, i32 %82)
  br label %84

84:                                               ; preds = %72, %66, %49
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %189, label %90

90:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PLAYLIST_ENTRY_REMOVE_ENABLE_ALL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 1, i32* %11, align 4
  br label %174

98:                                               ; preds = %90
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PLAYLIST_ENTRY_REMOVE_ENABLE_HIST_FAV, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %173

105:                                              ; preds = %98
  %106 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %107 = zext i32 %106 to i64
  %108 = call i8* @llvm.stacksave()
  store i8* %108, i8** %12, align 8
  %109 = alloca i8, i64 %107, align 16
  store i64 %107, i64* %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  store i8 0, i8* %110, align 16
  %111 = trunc i64 %107 to i32
  %112 = call i32 @menu_driver_get_thumbnail_system(i8* %109, i32 %111)
  %113 = call i32 @string_is_empty(i8* %109)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %133, label %115

115:                                              ; preds = %105
  %116 = call i64 @string_is_equal(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %115
  %119 = call i64 @string_is_equal(i8* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %118
  %122 = call i64 @string_is_equal(i8* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121
  %125 = call i64 @string_is_equal(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = call i64 @string_is_equal(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %127, %124, %121, %118, %115
  %131 = phi i1 [ true, %124 ], [ true, %121 ], [ true, %118 ], [ true, %115 ], [ %129, %127 ]
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %130, %105
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %171, label %136

136:                                              ; preds = %133
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %171

142:                                              ; preds = %136
  %143 = load i32*, i32** %6, align 8
  %144 = call i8* @playlist_get_conf_path(i32* %143)
  store i8* %144, i8** %14, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = call i32 @string_is_empty(i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %170, label %148

148:                                              ; preds = %142
  %149 = load i8*, i8** %14, align 8
  %150 = call i8* @path_basename(i8* %149)
  store i8* %150, i8** %15, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = call i32 @string_is_empty(i8* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %169, label %154

154:                                              ; preds = %148
  %155 = load i8*, i8** %15, align 8
  %156 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %157 = call i8* @file_path_str(i32 %156)
  %158 = call i64 @string_is_equal(i8* %155, i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %154
  %161 = load i8*, i8** %15, align 8
  %162 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %163 = call i8* @file_path_str(i32 %162)
  %164 = call i64 @string_is_equal(i8* %161, i8* %163)
  %165 = icmp ne i64 %164, 0
  br label %166

166:                                              ; preds = %160, %154
  %167 = phi i1 [ true, %154 ], [ %165, %160 ]
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %166, %148
  br label %170

170:                                              ; preds = %169, %142
  br label %171

171:                                              ; preds = %170, %136, %133
  %172 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %172)
  br label %173

173:                                              ; preds = %171, %98
  br label %174

174:                                              ; preds = %173, %97
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DELETE_ENTRY, align 4
  %182 = call i32 @msg_hash_to_str(i32 %181)
  %183 = load i32, i32* @MENU_ENUM_LABEL_DELETE_ENTRY, align 4
  %184 = call i32 @msg_hash_to_str(i32 %183)
  %185 = load i32, i32* @MENU_ENUM_LABEL_DELETE_ENTRY, align 4
  %186 = load i32, i32* @MENU_SETTING_ACTION_DELETE_ENTRY, align 4
  %187 = call i32 @menu_entries_append_enum(i32 %180, i32 %182, i32 %184, i32 %185, i32 %186, i32 0, i32 0)
  br label %188

188:                                              ; preds = %177, %174
  br label %189

189:                                              ; preds = %188, %84
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %189
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @MENU_ENUM_LABEL_VALUE_ADD_TO_FAVORITES_PLAYLIST, align 4
  %200 = call i32 @msg_hash_to_str(i32 %199)
  %201 = load i32, i32* @MENU_ENUM_LABEL_ADD_TO_FAVORITES_PLAYLIST, align 4
  %202 = call i32 @msg_hash_to_str(i32 %201)
  %203 = load i32, i32* @MENU_ENUM_LABEL_ADD_TO_FAVORITES_PLAYLIST, align 4
  %204 = load i32, i32* @FILE_TYPE_PLAYLIST_ENTRY, align 4
  %205 = call i32 @menu_entries_append_enum(i32 %198, i32 %200, i32 %202, i32 %203, i32 %204, i32 0, i32 0)
  br label %206

206:                                              ; preds = %195, %189
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %229

212:                                              ; preds = %206
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %229, label %218

218:                                              ; preds = %212
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @MENU_ENUM_LABEL_VALUE_SET_CORE_ASSOCIATION, align 4
  %223 = call i32 @msg_hash_to_str(i32 %222)
  %224 = load i32, i32* @MENU_ENUM_LABEL_SET_CORE_ASSOCIATION, align 4
  %225 = call i32 @msg_hash_to_str(i32 %224)
  %226 = load i32, i32* @MENU_ENUM_LABEL_SET_CORE_ASSOCIATION, align 4
  %227 = load i32, i32* @FILE_TYPE_PLAYLIST_ENTRY, align 4
  %228 = call i32 @menu_entries_append_enum(i32 %221, i32 %223, i32 %225, i32 %226, i32 %227, i32 0, i32 0)
  br label %229

229:                                              ; preds = %218, %212, %206
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %252

235:                                              ; preds = %229
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %252, label %241

241:                                              ; preds = %235
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @MENU_ENUM_LABEL_VALUE_RESET_CORE_ASSOCIATION, align 4
  %246 = call i32 @msg_hash_to_str(i32 %245)
  %247 = load i32, i32* @MENU_ENUM_LABEL_RESET_CORE_ASSOCIATION, align 4
  %248 = call i32 @msg_hash_to_str(i32 %247)
  %249 = load i32, i32* @MENU_ENUM_LABEL_RESET_CORE_ASSOCIATION, align 4
  %250 = load i32, i32* @FILE_TYPE_PLAYLIST_ENTRY, align 4
  %251 = call i32 @menu_entries_append_enum(i32 %244, i32 %246, i32 %248, i32 %249, i32 %250, i32 0, i32 0)
  br label %252

252:                                              ; preds = %241, %235, %229
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %252
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @MENU_ENUM_LABEL_VALUE_INFORMATION, align 4
  %263 = call i32 @msg_hash_to_str(i32 %262)
  %264 = load i32, i32* @MENU_ENUM_LABEL_INFORMATION, align 4
  %265 = call i32 @msg_hash_to_str(i32 %264)
  %266 = load i32, i32* @MENU_ENUM_LABEL_INFORMATION, align 4
  %267 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %268 = call i32 @menu_entries_append_enum(i32 %261, i32 %263, i32 %265, i32 %266, i32 %267, i32 0, i32 0)
  br label %269

269:                                              ; preds = %258, %252
  br label %270

270:                                              ; preds = %269, %45
  ret i32 0
}

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #1

declare dso_local i8* @path_get(i32) #1

declare dso_local i32 @playlist_get_index(i32*, i32, %struct.playlist_entry**) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @menu_displaylist_parse_load_content_settings(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @menu_entries_append_enum(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @menu_driver_get_thumbnail_system(i8*, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i8* @playlist_get_conf_path(i32*) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i8* @file_path_str(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
