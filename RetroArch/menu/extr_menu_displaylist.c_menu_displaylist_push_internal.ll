; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_push_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_push_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i8*, i32, i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@MENU_ENUM_LABEL_HISTORY_TAB = common dso_local global i32 0, align 4
@DISPLAYLIST_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FAVORITES_TAB = common dso_local global i32 0, align 4
@DISPLAYLIST_FAVORITES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SETTINGS_TAB = common dso_local global i32 0, align 4
@DISPLAYLIST_SETTINGS_ALL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CHEAT_SEARCH_SETTINGS = common dso_local global i32 0, align 4
@DISPLAYLIST_CHEAT_SEARCH_SETTINGS_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_MUSIC_TAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@MENU_ENUM_LABEL_PLAYLISTS_TAB = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_CLEAR = common dso_local global i32 0, align 4
@DISPLAYLIST_MUSIC_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VIDEO_TAB = common dso_local global i32 0, align 4
@DISPLAYLIST_VIDEO_HISTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_IMAGES_TAB = common dso_local global i32 0, align 4
@DISPLAYLIST_IMAGES_HISTORY = common dso_local global i32 0, align 4
@DISPLAYLIST_DATABASE_PLAYLISTS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_ADD_TAB = common dso_local global i32 0, align 4
@DISPLAYLIST_SCAN_DIRECTORY_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NETPLAY_TAB = common dso_local global i32 0, align 4
@DISPLAYLIST_NETPLAY_ROOM_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_HORIZONTAL_MENU = common dso_local global i32 0, align 4
@DISPLAYLIST_HORIZONTAL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_TAKE_SCREENSHOT = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_TAKE_SCREENSHOT = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION_SCREENSHOT = common dso_local global i32 0, align 4
@RARCH_CTL_IS_DUMMY_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_9__*)* @menu_displaylist_push_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_push_internal(i8* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @MENU_ENUM_LABEL_HISTORY_TAB, align 4
  %11 = call i8* @msg_hash_to_str(i32 %10)
  %12 = call i64 @string_is_equal(i8* %9, i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32, i32* @DISPLAYLIST_HISTORY, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = call i64 @menu_displaylist_ctl(i32 %15, %struct.TYPE_9__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %339

20:                                               ; preds = %14
  br label %338

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @MENU_ENUM_LABEL_FAVORITES_TAB, align 4
  %24 = call i8* @msg_hash_to_str(i32 %23)
  %25 = call i64 @string_is_equal(i8* %22, i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @DISPLAYLIST_FAVORITES, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = call i64 @menu_displaylist_ctl(i32 %28, %struct.TYPE_9__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %339

33:                                               ; preds = %27
  br label %337

34:                                               ; preds = %21
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* @MENU_ENUM_LABEL_SETTINGS_TAB, align 4
  %37 = call i8* @msg_hash_to_str(i32 %36)
  %38 = call i64 @string_is_equal(i8* %35, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load i32, i32* @DISPLAYLIST_SETTINGS_ALL, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = call i64 @menu_displaylist_ctl(i32 %41, %struct.TYPE_9__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %339

46:                                               ; preds = %40
  br label %336

47:                                               ; preds = %34
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @MENU_ENUM_LABEL_CHEAT_SEARCH_SETTINGS, align 4
  %50 = call i8* @msg_hash_to_str(i32 %49)
  %51 = call i64 @string_is_equal(i8* %48, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* @DISPLAYLIST_CHEAT_SEARCH_SETTINGS_LIST, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = call i64 @menu_displaylist_ctl(i32 %54, %struct.TYPE_9__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %339

59:                                               ; preds = %53
  br label %335

60:                                               ; preds = %47
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @MENU_ENUM_LABEL_MUSIC_TAB, align 4
  %63 = call i8* @msg_hash_to_str(i32 %62)
  %64 = call i64 @string_is_equal(i8* %61, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %60
  %67 = call i32 (...) @filebrowser_clear_type()
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 42, i32* %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @string_is_empty(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %66
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %75, %66
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @string_is_empty(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @free(i8* %89)
  br label %91

91:                                               ; preds = %86, %80
  %92 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %96 = call i8* @msg_hash_to_str(i32 %95)
  %97 = call i8* @strdup(i8* %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @menu_entries_ctl(i32 %100, i32 %103)
  %105 = load i32, i32* @DISPLAYLIST_MUSIC_HISTORY, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = call i64 @menu_displaylist_ctl(i32 %105, %struct.TYPE_9__* %106)
  store i32 1, i32* %4, align 4
  br label %339

108:                                              ; preds = %60
  %109 = load i8*, i8** %5, align 8
  %110 = load i32, i32* @MENU_ENUM_LABEL_VIDEO_TAB, align 4
  %111 = call i8* @msg_hash_to_str(i32 %110)
  %112 = call i64 @string_is_equal(i8* %109, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %156

114:                                              ; preds = %108
  %115 = call i32 (...) @filebrowser_clear_type()
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 42, i32* %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @string_is_empty(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %114
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %123, %114
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @string_is_empty(i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @free(i8* %137)
  br label %139

139:                                              ; preds = %134, %128
  %140 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %144 = call i8* @msg_hash_to_str(i32 %143)
  %145 = call i8* @strdup(i8* %144)
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @menu_entries_ctl(i32 %148, i32 %151)
  %153 = load i32, i32* @DISPLAYLIST_VIDEO_HISTORY, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %155 = call i64 @menu_displaylist_ctl(i32 %153, %struct.TYPE_9__* %154)
  store i32 1, i32* %4, align 4
  br label %339

156:                                              ; preds = %108
  %157 = load i8*, i8** %5, align 8
  %158 = load i32, i32* @MENU_ENUM_LABEL_IMAGES_TAB, align 4
  %159 = call i8* @msg_hash_to_str(i32 %158)
  %160 = call i64 @string_is_equal(i8* %157, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %204

162:                                              ; preds = %156
  %163 = call i32 (...) @filebrowser_clear_type()
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  store i32 42, i32* %165, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @string_is_empty(i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %162
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @free(i8* %174)
  br label %176

176:                                              ; preds = %171, %162
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i8*, i8** %178, align 8
  %180 = call i64 @string_is_empty(i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %176
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @free(i8* %185)
  br label %187

187:                                              ; preds = %182, %176
  %188 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %192 = call i8* @msg_hash_to_str(i32 %191)
  %193 = call i8* @strdup(i8* %192)
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @menu_entries_ctl(i32 %196, i32 %199)
  %201 = load i32, i32* @DISPLAYLIST_IMAGES_HISTORY, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %203 = call i64 @menu_displaylist_ctl(i32 %201, %struct.TYPE_9__* %202)
  store i32 1, i32* %4, align 4
  br label %339

204:                                              ; preds = %156
  %205 = load i8*, i8** %5, align 8
  %206 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %207 = call i8* @msg_hash_to_str(i32 %206)
  %208 = call i64 @string_is_equal(i8* %205, i8* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %289

210:                                              ; preds = %204
  %211 = call %struct.TYPE_8__* (...) @config_get_ptr()
  store %struct.TYPE_8__* %211, %struct.TYPE_8__** %8, align 8
  %212 = call i32 (...) @filebrowser_clear_type()
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  store i32 42, i32* %214, align 8
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @string_is_empty(i8* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %210
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @free(i8* %223)
  br label %225

225:                                              ; preds = %220, %210
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = call i64 @string_is_empty(i8* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %225
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 2
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @free(i8* %234)
  br label %236

236:                                              ; preds = %231, %225
  %237 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  %240 = load i32, i32* @MENU_ENUM_LABEL_PLAYLISTS_TAB, align 4
  %241 = call i8* @msg_hash_to_str(i32 %240)
  %242 = call i8* @strdup(i8* %241)
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  store i8* %242, i8** %244, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @string_is_empty(i8* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %236
  %252 = load i32, i32* @MENU_ENTRIES_CTL_CLEAR, align 4
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @menu_entries_ctl(i32 %252, i32 %255)
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 4
  store i32 1, i32* %258, align 4
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 3
  store i32 1, i32* %260, align 8
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 5
  store i32 1, i32* %262, align 8
  store i32 1, i32* %4, align 4
  br label %339

263:                                              ; preds = %236
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 6
  %266 = load i8*, i8** %265, align 8
  %267 = call i64 @string_is_empty(i8* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %263
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 6
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @free(i8* %272)
  br label %274

274:                                              ; preds = %269, %263
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = call i8* @strdup(i8* %278)
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 6
  store i8* %279, i8** %281, align 8
  %282 = load i32, i32* @DISPLAYLIST_DATABASE_PLAYLISTS, align 4
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %284 = call i64 @menu_displaylist_ctl(i32 %282, %struct.TYPE_9__* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %274
  store i32 1, i32* %4, align 4
  br label %339

287:                                              ; preds = %274
  br label %288

288:                                              ; preds = %287
  br label %331

289:                                              ; preds = %204
  %290 = load i8*, i8** %5, align 8
  %291 = load i32, i32* @MENU_ENUM_LABEL_ADD_TAB, align 4
  %292 = call i8* @msg_hash_to_str(i32 %291)
  %293 = call i64 @string_is_equal(i8* %290, i8* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %289
  %296 = load i32, i32* @DISPLAYLIST_SCAN_DIRECTORY_LIST, align 4
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %298 = call i64 @menu_displaylist_ctl(i32 %296, %struct.TYPE_9__* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  store i32 1, i32* %4, align 4
  br label %339

301:                                              ; preds = %295
  br label %330

302:                                              ; preds = %289
  %303 = load i8*, i8** %5, align 8
  %304 = load i32, i32* @MENU_ENUM_LABEL_NETPLAY_TAB, align 4
  %305 = call i8* @msg_hash_to_str(i32 %304)
  %306 = call i64 @string_is_equal(i8* %303, i8* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %315

308:                                              ; preds = %302
  %309 = load i32, i32* @DISPLAYLIST_NETPLAY_ROOM_LIST, align 4
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %311 = call i64 @menu_displaylist_ctl(i32 %309, %struct.TYPE_9__* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  store i32 1, i32* %4, align 4
  br label %339

314:                                              ; preds = %308
  br label %329

315:                                              ; preds = %302
  %316 = load i8*, i8** %5, align 8
  %317 = load i32, i32* @MENU_ENUM_LABEL_HORIZONTAL_MENU, align 4
  %318 = call i8* @msg_hash_to_str(i32 %317)
  %319 = call i64 @string_is_equal(i8* %316, i8* %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %315
  %322 = load i32, i32* @DISPLAYLIST_HORIZONTAL, align 4
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %324 = call i64 @menu_displaylist_ctl(i32 %322, %struct.TYPE_9__* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  store i32 1, i32* %4, align 4
  br label %339

327:                                              ; preds = %321
  br label %328

328:                                              ; preds = %327, %315
  br label %329

329:                                              ; preds = %328, %314
  br label %330

330:                                              ; preds = %329, %301
  br label %331

331:                                              ; preds = %330, %288
  br label %332

332:                                              ; preds = %331
  br label %333

333:                                              ; preds = %332
  br label %334

334:                                              ; preds = %333
  br label %335

335:                                              ; preds = %334, %59
  br label %336

336:                                              ; preds = %335, %46
  br label %337

337:                                              ; preds = %336, %33
  br label %338

338:                                              ; preds = %337, %20
  store i32 0, i32* %4, align 4
  br label %339

339:                                              ; preds = %338, %326, %313, %300, %286, %251, %187, %139, %91, %58, %45, %32, %19
  %340 = load i32, i32* %4, align 4
  ret i32 %340
}

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i64 @menu_displaylist_ctl(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @filebrowser_clear_type(...) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @menu_entries_ctl(i32, i32) #1

declare dso_local %struct.TYPE_8__* @config_get_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
