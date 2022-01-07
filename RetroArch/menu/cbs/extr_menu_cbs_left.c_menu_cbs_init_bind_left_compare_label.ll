; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_menu_cbs_init_bind_left_compare_label.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_left.c_menu_cbs_init_bind_left_compare_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@MENU_ENUM_LABEL_MAIN_MENU = common dso_local global i32 0, align 4
@ST_GROUP = common dso_local global i64 0, align 8
@action_left_mainmenu = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"input_player\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"_joypad_index\00", align 1
@MAX_USERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"input_player%d_joypad_index\00", align 1
@bind_left_generic = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"rdb_entry\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"content_info\00", align 1
@action_left_scroll = common dso_local global i32 0, align 4
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@action_left_cheat_num_passes = common dso_local global i32 0, align 4
@action_left_video_resolution = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HISTORY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MUSIC_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_IMAGES_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETPLAY_TAB = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SETTINGS_TAB = common dso_local global i32 0, align 4
@action_left_video_gpu_index = common dso_local global i32 0, align 4
@playlist_association_left = common dso_local global i32 0, align 4
@playlist_label_display_mode_left = common dso_local global i32 0, align 4
@playlist_right_thumbnail_mode_left = common dso_local global i32 0, align 4
@playlist_left_thumbnail_mode_left = common dso_local global i32 0, align 4
@action_left_shader_filter_default = common dso_local global i32 0, align 4
@action_left_shader_filter_pass = common dso_local global i32 0, align 4
@action_left_shader_num_passes = common dso_local global i32 0, align 4
@action_left_shader_scale_pass = common dso_local global i32 0, align 4
@action_left_shader_watch_for_changes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64, i8*)* @menu_cbs_init_bind_left_compare_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_cbs_init_bind_left_compare_label(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8* %3) #0 {
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
  %38 = load i32, i32* @action_left_mainmenu, align 4
  %39 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %37, i32 %38)
  store i32 0, i32* %5, align 4
  br label %274

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
  %68 = load i32, i32* @bind_left_generic, align 4
  %69 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %274

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
  %82 = load i32, i32* @action_left_mainmenu, align 4
  %83 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %81, i32 %82)
  store i32 0, i32* %5, align 4
  br label %274

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
  %94 = load i32, i32* @action_left_scroll, align 4
  %95 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %93, i32 %94)
  br label %273

96:                                               ; preds = %88
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MSG_UNKNOWN, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %271

102:                                              ; preds = %96
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %269 [
    i32 135, label %106
    i32 134, label %106
    i32 147, label %106
    i32 128, label %110
    i32 130, label %111
    i32 131, label %112
    i32 137, label %113
    i32 129, label %114
    i32 148, label %115
    i32 138, label %119
    i32 143, label %123
    i32 146, label %123
    i32 145, label %127
    i32 144, label %127
    i32 136, label %184
    i32 133, label %184
    i32 132, label %249
    i32 142, label %253
    i32 141, label %257
    i32 139, label %261
    i32 140, label %265
  ]

106:                                              ; preds = %102, %102, %102
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = load i32, i32* @action_left_mainmenu, align 4
  %109 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %107, i32 %108)
  br label %270

110:                                              ; preds = %102
  br label %270

111:                                              ; preds = %102
  br label %270

112:                                              ; preds = %102
  br label %270

113:                                              ; preds = %102
  br label %270

114:                                              ; preds = %102
  br label %270

115:                                              ; preds = %102
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = load i32, i32* @action_left_cheat_num_passes, align 4
  %118 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %116, i32 %117)
  br label %270

119:                                              ; preds = %102
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = load i32, i32* @action_left_video_resolution, align 4
  %122 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %120, i32 %121)
  br label %270

123:                                              ; preds = %102, %102
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = load i32, i32* @action_left_scroll, align 4
  %126 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %124, i32 %125)
  br label %270

127:                                              ; preds = %102, %102
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %130 = call i32 @msg_hash_to_str(i32 %129)
  %131 = call i64 @string_is_equal(i8* %128, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %175, label %133

133:                                              ; preds = %127
  %134 = load i8*, i8** %9, align 8
  %135 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %136 = call i32 @msg_hash_to_str(i32 %135)
  %137 = call i64 @string_is_equal(i8* %134, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %175, label %139

139:                                              ; preds = %133
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* @MENU_ENUM_LABEL_MAIN_MENU, align 4
  %142 = call i32 @msg_hash_to_str(i32 %141)
  %143 = call i64 @string_is_equal(i8* %140, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %175, label %145

145:                                              ; preds = %139
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %148 = call i32 @msg_hash_to_str(i32 %147)
  %149 = call i64 @string_is_equal(i8* %146, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %175, label %151

151:                                              ; preds = %145
  %152 = load i8*, i8** %9, align 8
  %153 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %154 = call i32 @msg_hash_to_str(i32 %153)
  %155 = call i64 @string_is_equal(i8* %152, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %175, label %157

157:                                              ; preds = %151
  %158 = load i8*, i8** %9, align 8
  %159 = load i32, i32* @MENU_ENUM_LABEL_IMAGES_TAB, align 4
  %160 = call i32 @msg_hash_to_str(i32 %159)
  %161 = call i64 @string_is_equal(i8* %158, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %157
  %164 = load i8*, i8** %9, align 8
  %165 = load i32, i32* @MENU_ENUM_LABEL_VIDEO_TAB, align 4
  %166 = call i32 @msg_hash_to_str(i32 %165)
  %167 = call i64 @string_is_equal(i8* %164, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %172 = call i32 @msg_hash_to_str(i32 %171)
  %173 = call i64 @string_is_equal(i8* %170, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169, %163, %157, %151, %145, %139, %133, %127
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %177 = load i32, i32* @action_left_mainmenu, align 4
  %178 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %176, i32 %177)
  br label %183

179:                                              ; preds = %169
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %181 = load i32, i32* @action_left_scroll, align 4
  %182 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %175
  br label %270

184:                                              ; preds = %102, %102
  %185 = load i8*, i8** %9, align 8
  %186 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %187 = call i32 @msg_hash_to_str(i32 %186)
  %188 = call i64 @string_is_equal(i8* %185, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %244, label %190

190:                                              ; preds = %184
  %191 = load i8*, i8** %9, align 8
  %192 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %193 = call i32 @msg_hash_to_str(i32 %192)
  %194 = call i64 @string_is_equal(i8* %191, i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %244, label %196

196:                                              ; preds = %190
  %197 = load i8*, i8** %9, align 8
  %198 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %199 = call i32 @msg_hash_to_str(i32 %198)
  %200 = call i64 @string_is_equal(i8* %197, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %244, label %202

202:                                              ; preds = %196
  %203 = load i8*, i8** %9, align 8
  %204 = load i32, i32* @MENU_ENUM_LABEL_ADD_TAB, align 4
  %205 = call i32 @msg_hash_to_str(i32 %204)
  %206 = call i64 @string_is_equal(i8* %203, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %244, label %208

208:                                              ; preds = %202
  %209 = load i8*, i8** %9, align 8
  %210 = load i32, i32* @MENU_ENUM_LABEL_NETPLAY_TAB, align 4
  %211 = call i32 @msg_hash_to_str(i32 %210)
  %212 = call i64 @string_is_equal(i8* %209, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %244, label %214

214:                                              ; preds = %208
  %215 = load i8*, i8** %9, align 8
  %216 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %217 = call i32 @msg_hash_to_str(i32 %216)
  %218 = call i64 @string_is_equal(i8* %215, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %244, label %220

220:                                              ; preds = %214
  %221 = load i8*, i8** %9, align 8
  %222 = load i32, i32* @MENU_ENUM_LABEL_IMAGES_TAB, align 4
  %223 = call i32 @msg_hash_to_str(i32 %222)
  %224 = call i64 @string_is_equal(i8* %221, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %244, label %226

226:                                              ; preds = %220
  %227 = load i8*, i8** %9, align 8
  %228 = load i32, i32* @MENU_ENUM_LABEL_VIDEO_TAB, align 4
  %229 = call i32 @msg_hash_to_str(i32 %228)
  %230 = call i64 @string_is_equal(i8* %227, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %244, label %232

232:                                              ; preds = %226
  %233 = load i8*, i8** %9, align 8
  %234 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %235 = call i32 @msg_hash_to_str(i32 %234)
  %236 = call i64 @string_is_equal(i8* %233, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %232
  %239 = load i8*, i8** %9, align 8
  %240 = load i32, i32* @MENU_ENUM_LABEL_SETTINGS_TAB, align 4
  %241 = call i32 @msg_hash_to_str(i32 %240)
  %242 = call i64 @string_is_equal(i8* %239, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %238, %232, %226, %220, %214, %208, %202, %196, %190, %184
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %246 = load i32, i32* @action_left_mainmenu, align 4
  %247 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %245, i32 %246)
  br label %270

248:                                              ; preds = %238
  br label %249

249:                                              ; preds = %102, %248
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %251 = load i32, i32* @action_left_video_gpu_index, align 4
  %252 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %250, i32 %251)
  br label %270

253:                                              ; preds = %102
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %255 = load i32, i32* @playlist_association_left, align 4
  %256 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %254, i32 %255)
  br label %270

257:                                              ; preds = %102
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %259 = load i32, i32* @playlist_label_display_mode_left, align 4
  %260 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %258, i32 %259)
  br label %270

261:                                              ; preds = %102
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %263 = load i32, i32* @playlist_right_thumbnail_mode_left, align 4
  %264 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %262, i32 %263)
  br label %270

265:                                              ; preds = %102
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %267 = load i32, i32* @playlist_left_thumbnail_mode_left, align 4
  %268 = call i32 @BIND_ACTION_LEFT(%struct.TYPE_5__* %266, i32 %267)
  br label %270

269:                                              ; preds = %102
  store i32 -1, i32* %5, align 4
  br label %274

270:                                              ; preds = %265, %261, %257, %253, %249, %244, %183, %123, %119, %115, %114, %113, %112, %111, %110, %106
  br label %272

271:                                              ; preds = %96
  store i32 -1, i32* %5, align 4
  br label %274

272:                                              ; preds = %270
  br label %273

273:                                              ; preds = %272, %92
  store i32 0, i32* %5, align 4
  br label %274

274:                                              ; preds = %273, %271, %269, %80, %66, %36
  %275 = load i32, i32* %5, align 4
  ret i32 %275
}

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @setting_get_type(%struct.TYPE_6__*) #1

declare dso_local i32 @BIND_ACTION_LEFT(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @msg_hash_calculate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
