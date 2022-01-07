; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_menu_cbs_init_bind_right_compare_label.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_right.c_menu_cbs_init_bind_right_compare_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@MENU_ENUM_LABEL_MAIN_MENU = common dso_local global i32 0, align 4
@ST_GROUP = common dso_local global i64 0, align 8
@action_right_scroll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"input_player\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"_joypad_index\00", align 1
@MAX_USERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"input_player%d_joypad_index\00", align 1
@bind_right_generic = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@action_right_mainmenu = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"rdb_entry\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"content_info\00", align 1
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@action_right_cheat_delete_all = common dso_local global i32 0, align 4
@action_right_cheat_num_passes = common dso_local global i32 0, align 4
@action_right_video_resolution = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HISTORY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MUSIC_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_IMAGES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETPLAY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SETTINGS_TAB = common dso_local global i32 0, align 4
@action_right_video_gpu_index = common dso_local global i32 0, align 4
@playlist_association_right = common dso_local global i32 0, align 4
@playlist_label_display_mode_right = common dso_local global i32 0, align 4
@playlist_right_thumbnail_mode_right = common dso_local global i32 0, align 4
@playlist_left_thumbnail_mode_right = common dso_local global i32 0, align 4
@action_right_shader_filter_default = common dso_local global i32 0, align 4
@action_right_shader_filter_pass = common dso_local global i32 0, align 4
@action_right_shader_num_passes = common dso_local global i32 0, align 4
@action_right_shader_scale_pass = common dso_local global i32 0, align 4
@action_right_shader_watch_for_changes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64, i8*)* @menu_cbs_init_bind_right_compare_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_cbs_init_bind_right_compare_label(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [128 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %26 = call i32 @msg_hash_to_str(i32 %25)
  %27 = call i64 @string_is_equal(i8* %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i64 @setting_get_type(%struct.TYPE_6__* %32)
  %34 = load i64, i64* @ST_GROUP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = load i32, i32* @action_right_scroll, align 4
  %39 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %37, i32 %38)
  store i32 0, i32* %5, align 4
  br label %278

40:                                               ; preds = %29, %18
  br label %41

41:                                               ; preds = %40, %4
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strstr(i8* %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strstr(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %70, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @MAX_USERS, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %55, align 16
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  %59 = call i32 @snprintf(i8* %56, i32 128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %61 = call i64 @msg_hash_calculate(i8* %60)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %70

66:                                               ; preds = %54
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = load i32, i32* @bind_right_generic, align 4
  %69 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %278

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %50

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %45, %41
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %77 = call i32 @msg_hash_to_str(i32 %76)
  %78 = call i64 @string_is_equal(i8* %75, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load i32, i32* @action_right_mainmenu, align 4
  %83 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %81, i32 %82)
  store i32 0, i32* %5, align 4
  br label %278

84:                                               ; preds = %74
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @strstr(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8*, i8** %7, align 8
  %90 = call i64 @strstr(i8* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88, %84
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = load i32, i32* @action_right_scroll, align 4
  %95 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %93, i32 %94)
  br label %277

96:                                               ; preds = %88
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MSG_UNKNOWN, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %275

102:                                              ; preds = %96
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %273 [
    i32 135, label %106
    i32 134, label %106
    i32 147, label %106
    i32 149, label %110
    i32 128, label %114
    i32 130, label %115
    i32 131, label %116
    i32 137, label %117
    i32 129, label %118
    i32 148, label %119
    i32 138, label %123
    i32 143, label %127
    i32 146, label %127
    i32 145, label %131
    i32 144, label %131
    i32 136, label %188
    i32 133, label %188
    i32 132, label %253
    i32 142, label %257
    i32 141, label %261
    i32 139, label %265
    i32 140, label %269
  ]

106:                                              ; preds = %102, %102, %102
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = load i32, i32* @action_right_mainmenu, align 4
  %109 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %107, i32 %108)
  br label %274

110:                                              ; preds = %102
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = load i32, i32* @action_right_cheat_delete_all, align 4
  %113 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %111, i32 %112)
  br label %274

114:                                              ; preds = %102
  br label %274

115:                                              ; preds = %102
  br label %274

116:                                              ; preds = %102
  br label %274

117:                                              ; preds = %102
  br label %274

118:                                              ; preds = %102
  br label %274

119:                                              ; preds = %102
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = load i32, i32* @action_right_cheat_num_passes, align 4
  %122 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %120, i32 %121)
  br label %274

123:                                              ; preds = %102
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = load i32, i32* @action_right_video_resolution, align 4
  %126 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %124, i32 %125)
  br label %274

127:                                              ; preds = %102, %102
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = load i32, i32* @action_right_scroll, align 4
  %130 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %128, i32 %129)
  br label %274

131:                                              ; preds = %102, %102
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %134 = call i32 @msg_hash_to_str(i32 %133)
  %135 = call i64 @string_is_equal(i8* %132, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %179, label %137

137:                                              ; preds = %131
  %138 = load i8*, i8** %9, align 8
  %139 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %140 = call i32 @msg_hash_to_str(i32 %139)
  %141 = call i64 @string_is_equal(i8* %138, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %179, label %143

143:                                              ; preds = %137
  %144 = load i8*, i8** %9, align 8
  %145 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %146 = call i32 @msg_hash_to_str(i32 %145)
  %147 = call i64 @string_is_equal(i8* %144, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %179, label %149

149:                                              ; preds = %143
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %152 = call i32 @msg_hash_to_str(i32 %151)
  %153 = call i64 @string_is_equal(i8* %150, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %179, label %155

155:                                              ; preds = %149
  %156 = load i8*, i8** %9, align 8
  %157 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %158 = call i32 @msg_hash_to_str(i32 %157)
  %159 = call i64 @string_is_equal(i8* %156, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %179, label %161

161:                                              ; preds = %155
  %162 = load i8*, i8** %9, align 8
  %163 = load i32, i32* @MENU_ENUM_LABEL_IMAGES_TAB, align 4
  %164 = call i32 @msg_hash_to_str(i32 %163)
  %165 = call i64 @string_is_equal(i8* %162, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %161
  %168 = load i8*, i8** %9, align 8
  %169 = load i32, i32* @MENU_ENUM_LABEL_VIDEO_TAB, align 4
  %170 = call i32 @msg_hash_to_str(i32 %169)
  %171 = call i64 @string_is_equal(i8* %168, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %167
  %174 = load i8*, i8** %9, align 8
  %175 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %176 = call i32 @msg_hash_to_str(i32 %175)
  %177 = call i64 @string_is_equal(i8* %174, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %173, %167, %161, %155, %149, %143, %137, %131
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %181 = load i32, i32* @action_right_mainmenu, align 4
  %182 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %180, i32 %181)
  br label %187

183:                                              ; preds = %173
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %185 = load i32, i32* @action_right_scroll, align 4
  %186 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %184, i32 %185)
  br label %187

187:                                              ; preds = %183, %179
  br label %274

188:                                              ; preds = %102, %102
  %189 = load i8*, i8** %9, align 8
  %190 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %191 = call i32 @msg_hash_to_str(i32 %190)
  %192 = call i64 @string_is_equal(i8* %189, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %248, label %194

194:                                              ; preds = %188
  %195 = load i8*, i8** %9, align 8
  %196 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %197 = call i32 @msg_hash_to_str(i32 %196)
  %198 = call i64 @string_is_equal(i8* %195, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %248, label %200

200:                                              ; preds = %194
  %201 = load i8*, i8** %9, align 8
  %202 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %203 = call i32 @msg_hash_to_str(i32 %202)
  %204 = call i64 @string_is_equal(i8* %201, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %248, label %206

206:                                              ; preds = %200
  %207 = load i8*, i8** %9, align 8
  %208 = load i32, i32* @MENU_ENUM_LABEL_ADD_TAB, align 4
  %209 = call i32 @msg_hash_to_str(i32 %208)
  %210 = call i64 @string_is_equal(i8* %207, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %248, label %212

212:                                              ; preds = %206
  %213 = load i8*, i8** %9, align 8
  %214 = load i32, i32* @MENU_ENUM_LABEL_NETPLAY_TAB, align 4
  %215 = call i32 @msg_hash_to_str(i32 %214)
  %216 = call i64 @string_is_equal(i8* %213, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %248, label %218

218:                                              ; preds = %212
  %219 = load i8*, i8** %9, align 8
  %220 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %221 = call i32 @msg_hash_to_str(i32 %220)
  %222 = call i64 @string_is_equal(i8* %219, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %248, label %224

224:                                              ; preds = %218
  %225 = load i8*, i8** %9, align 8
  %226 = load i32, i32* @MENU_ENUM_LABEL_IMAGES_TAB, align 4
  %227 = call i32 @msg_hash_to_str(i32 %226)
  %228 = call i64 @string_is_equal(i8* %225, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %248, label %230

230:                                              ; preds = %224
  %231 = load i8*, i8** %9, align 8
  %232 = load i32, i32* @MENU_ENUM_LABEL_VIDEO_TAB, align 4
  %233 = call i32 @msg_hash_to_str(i32 %232)
  %234 = call i64 @string_is_equal(i8* %231, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %248, label %236

236:                                              ; preds = %230
  %237 = load i8*, i8** %9, align 8
  %238 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %239 = call i32 @msg_hash_to_str(i32 %238)
  %240 = call i64 @string_is_equal(i8* %237, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %236
  %243 = load i8*, i8** %9, align 8
  %244 = load i32, i32* @MENU_ENUM_LABEL_SETTINGS_TAB, align 4
  %245 = call i32 @msg_hash_to_str(i32 %244)
  %246 = call i64 @string_is_equal(i8* %243, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %242, %236, %230, %224, %218, %212, %206, %200, %194, %188
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %250 = load i32, i32* @action_right_mainmenu, align 4
  %251 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %249, i32 %250)
  br label %274

252:                                              ; preds = %242
  br label %253

253:                                              ; preds = %102, %252
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %255 = load i32, i32* @action_right_video_gpu_index, align 4
  %256 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %254, i32 %255)
  br label %274

257:                                              ; preds = %102
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %259 = load i32, i32* @playlist_association_right, align 4
  %260 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %258, i32 %259)
  br label %274

261:                                              ; preds = %102
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %263 = load i32, i32* @playlist_label_display_mode_right, align 4
  %264 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %262, i32 %263)
  br label %274

265:                                              ; preds = %102
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %267 = load i32, i32* @playlist_right_thumbnail_mode_right, align 4
  %268 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %266, i32 %267)
  br label %274

269:                                              ; preds = %102
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %271 = load i32, i32* @playlist_left_thumbnail_mode_right, align 4
  %272 = call i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__* %270, i32 %271)
  br label %274

273:                                              ; preds = %102
  store i32 -1, i32* %5, align 4
  br label %278

274:                                              ; preds = %269, %265, %261, %257, %253, %248, %187, %127, %123, %119, %118, %117, %116, %115, %114, %110, %106
  br label %276

275:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %278

276:                                              ; preds = %274
  br label %277

277:                                              ; preds = %276, %92
  store i32 0, i32* %5, align 4
  br label %278

278:                                              ; preds = %277, %275, %273, %80, %66, %36
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @setting_get_type(%struct.TYPE_6__*) #1

declare dso_local i32 @BIND_ACTION_RIGHT(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @msg_hash_calculate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
