; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_playlists.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_playlists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.string_list = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@FILE_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_GOTO_FAVORITES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_GOTO_FAVORITES = common dso_local global i32 0, align 4
@MENU_SETTING_ACTION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_GOTO_IMAGES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_GOTO_IMAGES = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_GOTO_MUSIC = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_GOTO_MUSIC = common dso_local global i32 0, align 4
@FILE_TYPE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"lpl\00", align 1
@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_MUSIC_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_VIDEO_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_IMAGE_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@FILE_TYPE_PLAYLIST_COLLECTION = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PLAYLIST_COLLECTION_ENTRY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_GOTO_VIDEO = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SCAN_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SCAN_FILE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_GOTO_VIDEO = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SCAN_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SCAN_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32)* @menu_displaylist_parse_playlists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_playlists(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.string_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.string_list* null, %struct.string_list** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %10, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @string_is_empty(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @frontend_driver_parse_drive_list(i32 %26, i32 1)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %45

33:                                               ; preds = %23
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MSG_UNKNOWN, align 4
  %38 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %39 = call i64 @menu_entries_append_enum(i32 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 0, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %3, align 4
  br label %242

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %117, label %50

50:                                               ; preds = %47
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MENU_ENUM_LABEL_VALUE_GOTO_FAVORITES, align 4
  %61 = call i8* @msg_hash_to_str(i32 %60)
  %62 = load i32, i32* @MENU_ENUM_LABEL_GOTO_FAVORITES, align 4
  %63 = call i8* @msg_hash_to_str(i32 %62)
  %64 = load i32, i32* @MENU_ENUM_LABEL_GOTO_FAVORITES, align 4
  %65 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %66 = call i64 @menu_entries_append_enum(i32 %59, i8* %61, i8* %63, i32 %64, i32 %65, i32 0, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %56
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MENU_ENUM_LABEL_VALUE_GOTO_IMAGES, align 4
  %83 = call i8* @msg_hash_to_str(i32 %82)
  %84 = load i32, i32* @MENU_ENUM_LABEL_GOTO_IMAGES, align 4
  %85 = call i8* @msg_hash_to_str(i32 %84)
  %86 = load i32, i32* @MENU_ENUM_LABEL_GOTO_IMAGES, align 4
  %87 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %88 = call i64 @menu_entries_append_enum(i32 %81, i8* %83, i8* %85, i32 %86, i32 %87, i32 0, i32 0)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32, i32* %9, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %78
  br label %94

94:                                               ; preds = %93, %72
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %94
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MENU_ENUM_LABEL_VALUE_GOTO_MUSIC, align 4
  %105 = call i8* @msg_hash_to_str(i32 %104)
  %106 = load i32, i32* @MENU_ENUM_LABEL_GOTO_MUSIC, align 4
  %107 = call i8* @msg_hash_to_str(i32 %106)
  %108 = load i32, i32* @MENU_ENUM_LABEL_GOTO_MUSIC, align 4
  %109 = load i32, i32* @MENU_SETTING_ACTION, align 4
  %110 = call i64 @menu_entries_append_enum(i32 %103, i8* %105, i8* %107, i32 %108, i32 %109, i32 0, i32 0)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load i32, i32* %9, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %112, %100
  br label %116

116:                                              ; preds = %115, %94
  br label %117

117:                                              ; preds = %116, %47
  %118 = load i8*, i8** %11, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call %struct.string_list* @dir_list_new(i8* %118, i32* null, i32 1, i32 %122, i32 1, i32 0)
  store %struct.string_list* %123, %struct.string_list** %8, align 8
  %124 = load %struct.string_list*, %struct.string_list** %8, align 8
  %125 = icmp ne %struct.string_list* %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %3, align 4
  br label %242

128:                                              ; preds = %117
  %129 = load %struct.string_list*, %struct.string_list** %8, align 8
  %130 = call i32 @dir_list_sort(%struct.string_list* %129, i32 1)
  %131 = load %struct.string_list*, %struct.string_list** %8, align 8
  %132 = getelementptr inbounds %struct.string_list, %struct.string_list* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %134

134:                                              ; preds = %235, %128
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* %7, align 8
  %137 = icmp ult i64 %135, %136
  br i1 %137, label %138, label %238

138:                                              ; preds = %134
  %139 = load %struct.string_list*, %struct.string_list** %8, align 8
  %140 = getelementptr inbounds %struct.string_list, %struct.string_list* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  store i8* %145, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %146 = load i32, i32* @FILE_TYPE_NONE, align 4
  store i32 %146, i32* %15, align 4
  %147 = load %struct.string_list*, %struct.string_list** %8, align 8
  %148 = getelementptr inbounds %struct.string_list, %struct.string_list* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %158 [
    i32 129, label %155
    i32 128, label %157
  ]

155:                                              ; preds = %138
  %156 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  store i32 %156, i32* %15, align 4
  br label %162

157:                                              ; preds = %138
  br label %158

158:                                              ; preds = %138, %157
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %158, %155
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %235

167:                                              ; preds = %162
  %168 = load i8*, i8** %13, align 8
  %169 = call i64 @string_is_empty(i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %235

172:                                              ; preds = %167
  %173 = load i8*, i8** %13, align 8
  %174 = call i8* @path_basename(i8* %173)
  store i8* %174, i8** %14, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = call i64 @string_is_empty(i8* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %235

179:                                              ; preds = %172
  %180 = load i8*, i8** %14, align 8
  %181 = call i32 @path_get_extension(i8* %180)
  %182 = call i32 @string_is_equal_noncase(i32 %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  br label %235

185:                                              ; preds = %179
  %186 = load i8*, i8** %14, align 8
  %187 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %188 = call i32 @file_path_str(i32 %187)
  %189 = call i64 @string_is_equal(i8* %186, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %215, label %191

191:                                              ; preds = %185
  %192 = load i8*, i8** %14, align 8
  %193 = load i32, i32* @FILE_PATH_CONTENT_MUSIC_HISTORY, align 4
  %194 = call i32 @file_path_str(i32 %193)
  %195 = call i64 @string_is_equal(i8* %192, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %215, label %197

197:                                              ; preds = %191
  %198 = load i8*, i8** %14, align 8
  %199 = load i32, i32* @FILE_PATH_CONTENT_VIDEO_HISTORY, align 4
  %200 = call i32 @file_path_str(i32 %199)
  %201 = call i64 @string_is_equal(i8* %198, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %197
  %204 = load i8*, i8** %14, align 8
  %205 = load i32, i32* @FILE_PATH_CONTENT_IMAGE_HISTORY, align 4
  %206 = call i32 @file_path_str(i32 %205)
  %207 = call i64 @string_is_equal(i8* %204, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load i8*, i8** %14, align 8
  %211 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %212 = call i32 @file_path_str(i32 %211)
  %213 = call i64 @string_is_equal(i8* %210, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209, %203, %197, %191, %185
  br label %235

216:                                              ; preds = %209
  %217 = load i32, i32* @FILE_TYPE_PLAYLIST_COLLECTION, align 4
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = load i8*, i8** %14, align 8
  store i8* %221, i8** %13, align 8
  br label %222

222:                                              ; preds = %220, %216
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i8*, i8** %13, align 8
  %227 = load i32, i32* @MENU_ENUM_LABEL_PLAYLIST_COLLECTION_ENTRY, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i64 @menu_entries_append_enum(i32 %225, i8* %226, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %227, i32 %228, i32 0, i32 0)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %222
  %232 = load i32, i32* %9, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %231, %222
  br label %235

235:                                              ; preds = %234, %215, %184, %178, %171, %166
  %236 = load i64, i64* %6, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %6, align 8
  br label %134

238:                                              ; preds = %134
  %239 = load %struct.string_list*, %struct.string_list** %8, align 8
  %240 = call i32 @string_list_free(%struct.string_list* %239)
  %241 = load i32, i32* %9, align 4
  store i32 %241, i32* %3, align 4
  br label %242

242:                                              ; preds = %238, %126, %45
  %243 = load i32, i32* %3, align 4
  ret i32 %243
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @frontend_driver_parse_drive_list(i32, i32) #1

declare dso_local i64 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local %struct.string_list* @dir_list_new(i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dir_list_sort(%struct.string_list*, i32) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i32 @string_is_equal_noncase(i32, i8*) #1

declare dso_local i32 @path_get_extension(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i32 @file_path_str(i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
