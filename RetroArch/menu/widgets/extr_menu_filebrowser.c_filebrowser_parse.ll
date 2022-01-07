; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_filebrowser.c_filebrowser_parse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/widgets/extr_menu_filebrowser.c_filebrowser_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_subsystem_info = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_19__ = type { i8*, i64, i32, i32*, i32 }
%struct.string_list = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i64, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.retro_subsystem_info* }

@subsystem_data = common dso_local global %struct.retro_subsystem_info* null, align 8
@FILE_TYPE_SHADER_PRESET = common dso_local global i64 0, align 8
@FILE_TYPE_SHADER = common dso_local global i64 0, align 8
@MENU_ENUM_LABEL_SCAN_FILE = common dso_local global i32 0, align 4
@filebrowser_types = common dso_local global i32 0, align 4
@FILEBROWSER_SELECT_FILE_SUBSYSTEM = common dso_local global i32 0, align 4
@subsystem_current_count = common dso_local global i64 0, align 8
@MENU_ENUM_LABEL_VALUE_USE_THIS_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_USE_THIS_DIRECTORY = common dso_local global i32 0, align 4
@FILE_TYPE_USE_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_UNABLE_TO_READ_COMPRESSED_FILE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@FILE_TYPE_NONE = common dso_local global i32 0, align 4
@FILE_TYPE_CARCHIVE = common dso_local global i32 0, align 4
@FILE_TYPE_IN_CARCHIVE = common dso_local global i32 0, align 4
@FILEBROWSER_SELECT_FONT = common dso_local global i32 0, align 4
@FILE_TYPE_FONT = common dso_local global i32 0, align 4
@FILEBROWSER_SELECT_COLLECTION = common dso_local global i32 0, align 4
@FILE_TYPE_PLAYLIST_COLLECTION = common dso_local global i32 0, align 4
@RARCH_CONTENT_MUSIC = common dso_local global i32 0, align 4
@FILEBROWSER_SELECT_IMAGE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FILE_BROWSER_MOVIE_OPEN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FILE_BROWSER_MUSIC_OPEN = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FILE_BROWSER_IMAGE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FILE_BROWSER_IMAGE_OPEN_WITH_VIEWER = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NO_ITEMS = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_NO_ITEMS = common dso_local global i32 0, align 4
@MENU_SETTING_NO_ITEM = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PARENT_DIRECTORY = common dso_local global i32 0, align 4
@FILE_TYPE_PARENT_DIRECTORY = common dso_local global i32 0, align 4
@DISPLAYLIST_IMAGES = common dso_local global i32 0, align 4
@FILE_TYPE_SCAN_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FILE_BROWSER_PLAIN_FILE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SCAN_THIS_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_SCAN_THIS_DIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @filebrowser_parse(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.retro_subsystem_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [64 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.string_list* null, %struct.string_list** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = call %struct.TYPE_17__* (...) @config_get_ptr()
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %11, align 8
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %27 = icmp ne %struct.TYPE_19__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %33

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i8* [ %31, %28 ], [ null, %32 ]
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @string_is_empty(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @path_is_compressed_file(i8* %39)
  br label %42

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  store i32 %43, i32* %14, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %15, align 4
  %48 = call %struct.TYPE_18__* (...) @runloop_get_system_info()
  store %struct.TYPE_18__* %48, %struct.TYPE_18__** %16, align 8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %51, align 8
  %53 = icmp ne %struct.retro_subsystem_info* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %57, align 8
  %59 = call i32 (...) @content_get_subsystem()
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %58, i64 %60
  store %struct.retro_subsystem_info* %61, %struct.retro_subsystem_info** %17, align 8
  br label %67

62:                                               ; preds = %42
  %63 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** @subsystem_data, align 8
  %64 = call i32 (...) @content_get_subsystem()
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %63, i64 %65
  store %struct.retro_subsystem_info* %66, %struct.retro_subsystem_info** %17, align 8
  br label %67

67:                                               ; preds = %62, %54
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %69 = icmp ne %struct.TYPE_19__* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FILE_TYPE_SHADER_PRESET, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FILE_TYPE_SHADER, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %70
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %76, %67
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %85 = icmp ne %struct.TYPE_19__* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MENU_ENUM_LABEL_SCAN_FILE, align 4
  %91 = call i8* @msg_hash_to_str(i32 %90)
  %92 = call i64 @string_is_equal(i32 %89, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  store i32 0, i32* %15, align 4
  br label %95

95:                                               ; preds = %94, %86, %83
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = icmp ne %struct.TYPE_19__* %96, null
  br i1 %97, label %98, label %129

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %129

101:                                              ; preds = %98
  %102 = load i32, i32* @filebrowser_types, align 4
  %103 = load i32, i32* @FILEBROWSER_SELECT_FILE_SUBSYSTEM, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i8*, i8** %13, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = call %struct.string_list* @file_archive_get_file_list(i8* %106, i32* %109)
  store %struct.string_list* %110, %struct.string_list** %7, align 8
  br label %128

111:                                              ; preds = %101
  %112 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %113 = icmp ne %struct.retro_subsystem_info* %112, null
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load i64, i64* @subsystem_current_count, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i8*, i8** %13, align 8
  %119 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %120 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %119, i32 0, i32 1
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = call i64 (...) @content_get_subsystem_rom_id()
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call %struct.string_list* @file_archive_get_file_list(i8* %118, i32* %125)
  store %struct.string_list* %126, %struct.string_list** %7, align 8
  br label %127

127:                                              ; preds = %117, %114, %111
  br label %128

128:                                              ; preds = %127, %105
  br label %194

129:                                              ; preds = %98, %95
  %130 = load i8*, i8** %13, align 8
  %131 = call i32 @string_is_empty(i8* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %193, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @filebrowser_types, align 4
  %135 = load i32, i32* @FILEBROWSER_SELECT_FILE_SUBSYSTEM, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %173

137:                                              ; preds = %133
  %138 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %139 = icmp ne %struct.retro_subsystem_info* %138, null
  br i1 %139, label %140, label %172

140:                                              ; preds = %137
  %141 = load i64, i64* @subsystem_current_count, align 8
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %172

143:                                              ; preds = %140
  %144 = call i64 (...) @content_get_subsystem_rom_id()
  %145 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %146 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ult i64 %144, %147
  br i1 %148, label %149, label %172

149:                                              ; preds = %143
  %150 = load i8*, i8** %13, align 8
  %151 = load i32, i32* %15, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %155 = icmp ne %struct.TYPE_19__* %154, null
  br i1 %155, label %156, label %164

156:                                              ; preds = %153
  %157 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %17, align 8
  %158 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %157, i32 0, i32 1
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = call i64 (...) @content_get_subsystem_rom_id()
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  br label %165

164:                                              ; preds = %153, %149
  br label %165

165:                                              ; preds = %164, %156
  %166 = phi i32* [ %163, %156 ], [ null, %164 ]
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call %struct.string_list* @dir_list_new(i8* %150, i32* %166, i32 1, i32 %170, i32 1, i32 0)
  store %struct.string_list* %171, %struct.string_list** %7, align 8
  br label %172

172:                                              ; preds = %165, %143, %140, %137
  br label %192

173:                                              ; preds = %133
  %174 = load i8*, i8** %13, align 8
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %173
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %179 = icmp ne %struct.TYPE_19__* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  br label %185

184:                                              ; preds = %177, %173
  br label %185

185:                                              ; preds = %184, %180
  %186 = phi i32* [ %183, %180 ], [ null, %184 ]
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call %struct.string_list* @dir_list_new(i8* %174, i32* %186, i32 1, i32 %190, i32 1, i32 0)
  store %struct.string_list* %191, %struct.string_list** %7, align 8
  br label %192

192:                                              ; preds = %185, %172
  br label %193

193:                                              ; preds = %192, %129
  br label %194

194:                                              ; preds = %193, %128
  %195 = load i32, i32* @filebrowser_types, align 4
  switch i32 %195, label %212 [
    i32 141, label %196
    i32 140, label %197
  ]

196:                                              ; preds = %194
  br label %213

197:                                              ; preds = %194
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %199 = icmp ne %struct.TYPE_19__* %198, null
  br i1 %199, label %200, label %211

200:                                              ; preds = %197
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @MENU_ENUM_LABEL_VALUE_USE_THIS_DIRECTORY, align 4
  %205 = call i8* @msg_hash_to_str(i32 %204)
  %206 = load i32, i32* @MENU_ENUM_LABEL_USE_THIS_DIRECTORY, align 4
  %207 = call i8* @msg_hash_to_str(i32 %206)
  %208 = load i32, i32* @MENU_ENUM_LABEL_USE_THIS_DIRECTORY, align 4
  %209 = load i32, i32* @FILE_TYPE_USE_DIRECTORY, align 4
  %210 = call i32 @menu_entries_prepend(i32 %203, i8* %205, i8* %207, i32 %208, i32 %209, i32 0, i32 0)
  br label %211

211:                                              ; preds = %200, %197
  br label %213

212:                                              ; preds = %194
  br label %213

213:                                              ; preds = %212, %211, %196
  %214 = load %struct.string_list*, %struct.string_list** %7, align 8
  %215 = icmp ne %struct.string_list* %214, null
  br i1 %215, label %237, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %14, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* @MENU_ENUM_LABEL_VALUE_UNABLE_TO_READ_COMPRESSED_FILE, align 4
  %221 = call i8* @msg_hash_to_str(i32 %220)
  br label %225

222:                                              ; preds = %216
  %223 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND, align 4
  %224 = call i8* @msg_hash_to_str(i32 %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = phi i8* [ %221, %219 ], [ %224, %222 ]
  store i8* %226, i8** %18, align 8
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %228 = icmp ne %struct.TYPE_19__* %227, null
  br i1 %228, label %229, label %236

229:                                              ; preds = %225
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i8*, i8** %18, align 8
  %234 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND, align 4
  %235 = call i32 @menu_entries_append_enum(i32 %232, i8* %233, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %234, i32 0, i32 0, i32 0)
  br label %236

236:                                              ; preds = %229, %225
  br label %440

237:                                              ; preds = %213
  %238 = load %struct.string_list*, %struct.string_list** %7, align 8
  %239 = call i32 @dir_list_sort(%struct.string_list* %238, i32 1)
  %240 = load %struct.string_list*, %struct.string_list** %7, align 8
  %241 = getelementptr inbounds %struct.string_list, %struct.string_list* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %6, align 8
  %243 = load i64, i64* %6, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %237
  %246 = load %struct.string_list*, %struct.string_list** %7, align 8
  %247 = call i32 @string_list_free(%struct.string_list* %246)
  store %struct.string_list* null, %struct.string_list** %7, align 8
  br label %414

248:                                              ; preds = %237
  store i64 0, i64* %5, align 8
  br label %249

249:                                              ; preds = %410, %248
  %250 = load i64, i64* %5, align 8
  %251 = load i64, i64* %6, align 8
  %252 = icmp ult i64 %250, %251
  br i1 %252, label %253, label %413

253:                                              ; preds = %249
  store i32 0, i32* %20, align 4
  %254 = load i32, i32* @MSG_UNKNOWN, align 4
  store i32 %254, i32* %21, align 4
  %255 = load i32, i32* @FILE_TYPE_NONE, align 4
  store i32 %255, i32* %22, align 4
  %256 = load %struct.string_list*, %struct.string_list** %7, align 8
  %257 = getelementptr inbounds %struct.string_list, %struct.string_list* %256, i32 0, i32 1
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %257, align 8
  %259 = load i64, i64* %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  store i8* %262, i8** %23, align 8
  %263 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %263, align 16
  %264 = load %struct.string_list*, %struct.string_list** %7, align 8
  %265 = getelementptr inbounds %struct.string_list, %struct.string_list* %264, i32 0, i32 1
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %265, align 8
  %267 = load i64, i64* %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  switch i32 %271, label %278 [
    i32 129, label %272
    i32 133, label %273
    i32 132, label %275
    i32 128, label %277
  ]

272:                                              ; preds = %253
  store i32 139, i32* %22, align 4
  br label %300

273:                                              ; preds = %253
  %274 = load i32, i32* @FILE_TYPE_CARCHIVE, align 4
  store i32 %274, i32* %22, align 4
  br label %300

275:                                              ; preds = %253
  %276 = load i32, i32* @FILE_TYPE_IN_CARCHIVE, align 4
  store i32 %276, i32* %22, align 4
  br label %300

277:                                              ; preds = %253
  br label %278

278:                                              ; preds = %253, %277
  %279 = load i32, i32* @filebrowser_types, align 4
  %280 = load i32, i32* @FILEBROWSER_SELECT_FONT, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %278
  %283 = load i32, i32* @FILE_TYPE_FONT, align 4
  store i32 %283, i32* %22, align 4
  br label %289

284:                                              ; preds = %278
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %22, align 4
  br label %289

289:                                              ; preds = %284, %282
  %290 = load i32, i32* %12, align 4
  switch i32 %290, label %298 [
    i32 142, label %291
  ]

291:                                              ; preds = %289
  %292 = load i8*, i8** %23, align 8
  %293 = call i32 @path_is_compressed_file(i8* %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = load i32, i32* @FILE_TYPE_CARCHIVE, align 4
  store i32 %296, i32* %22, align 4
  br label %297

297:                                              ; preds = %295, %291
  br label %299

298:                                              ; preds = %289
  br label %299

299:                                              ; preds = %298, %297
  br label %300

300:                                              ; preds = %299, %275, %273, %272
  %301 = load i32, i32* %22, align 4
  %302 = icmp eq i32 %301, 139
  %303 = zext i1 %302 to i32
  store i32 %303, i32* %20, align 4
  %304 = load i32, i32* %20, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %315, label %306

306:                                              ; preds = %300
  %307 = load i32, i32* @filebrowser_types, align 4
  %308 = icmp eq i32 %307, 140
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  br label %410

310:                                              ; preds = %306
  %311 = load i32, i32* @filebrowser_types, align 4
  %312 = icmp eq i32 %311, 141
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %410

314:                                              ; preds = %310
  br label %315

315:                                              ; preds = %314, %300
  %316 = load i8*, i8** %23, align 8
  %317 = call i32 @string_is_empty(i8* %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %315
  %320 = load i32, i32* %14, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load i8*, i8** %23, align 8
  %324 = call i8* @path_basename(i8* %323)
  store i8* %324, i8** %23, align 8
  br label %325

325:                                              ; preds = %322, %319, %315
  %326 = load i32, i32* @filebrowser_types, align 4
  %327 = load i32, i32* @FILEBROWSER_SELECT_COLLECTION, align 4
  %328 = icmp eq i32 %326, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %325
  %330 = load i32, i32* %20, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  store i32 139, i32* %22, align 4
  br label %335

333:                                              ; preds = %329
  %334 = load i32, i32* @FILE_TYPE_PLAYLIST_COLLECTION, align 4
  store i32 %334, i32* %22, align 4
  br label %335

335:                                              ; preds = %333, %332
  br label %336

336:                                              ; preds = %335, %325
  %337 = load i32, i32* %20, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %345, label %339

339:                                              ; preds = %336
  %340 = load i8*, i8** %23, align 8
  %341 = call i32 @path_is_media_type(i8* %340)
  %342 = load i32, i32* @RARCH_CONTENT_MUSIC, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %339
  store i32 135, i32* %22, align 4
  br label %373

345:                                              ; preds = %339, %336
  %346 = load i32, i32* %20, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %372, label %348

348:                                              ; preds = %345
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %360, label %354

354:                                              ; preds = %348
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %372

360:                                              ; preds = %354, %348
  %361 = load i8*, i8** %23, align 8
  %362 = call i32 @path_is_media_type(i8* %361)
  switch i32 %362, label %370 [
    i32 130, label %363
    i32 131, label %364
  ]

363:                                              ; preds = %360
  br label %371

364:                                              ; preds = %360
  %365 = load i32, i32* @filebrowser_types, align 4
  %366 = load i32, i32* @FILEBROWSER_SELECT_IMAGE, align 4
  %367 = icmp eq i32 %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %364
  store i32 138, i32* %22, align 4
  br label %369

369:                                              ; preds = %368, %364
  br label %371

370:                                              ; preds = %360
  br label %371

371:                                              ; preds = %370, %369, %363
  br label %372

372:                                              ; preds = %371, %354, %345
  br label %373

373:                                              ; preds = %372, %344
  %374 = load i32, i32* %22, align 4
  switch i32 %374, label %398 [
    i32 134, label %375
    i32 136, label %378
    i32 135, label %382
    i32 138, label %386
    i32 137, label %390
    i32 139, label %394
  ]

375:                                              ; preds = %373
  %376 = load i32, i32* %9, align 4
  %377 = add i32 %376, 1
  store i32 %377, i32* %9, align 4
  br label %399

378:                                              ; preds = %373
  %379 = load i32, i32* @MENU_ENUM_LABEL_FILE_BROWSER_MOVIE_OPEN, align 4
  store i32 %379, i32* %21, align 4
  %380 = load i32, i32* %9, align 4
  %381 = add i32 %380, 1
  store i32 %381, i32* %9, align 4
  br label %399

382:                                              ; preds = %373
  %383 = load i32, i32* @MENU_ENUM_LABEL_FILE_BROWSER_MUSIC_OPEN, align 4
  store i32 %383, i32* %21, align 4
  %384 = load i32, i32* %9, align 4
  %385 = add i32 %384, 1
  store i32 %385, i32* %9, align 4
  br label %399

386:                                              ; preds = %373
  %387 = load i32, i32* @MENU_ENUM_LABEL_FILE_BROWSER_IMAGE, align 4
  store i32 %387, i32* %21, align 4
  %388 = load i32, i32* %9, align 4
  %389 = add i32 %388, 1
  store i32 %389, i32* %9, align 4
  br label %399

390:                                              ; preds = %373
  %391 = load i32, i32* @MENU_ENUM_LABEL_FILE_BROWSER_IMAGE_OPEN_WITH_VIEWER, align 4
  store i32 %391, i32* %21, align 4
  %392 = load i32, i32* %9, align 4
  %393 = add i32 %392, 1
  store i32 %393, i32* %9, align 4
  br label %399

394:                                              ; preds = %373
  %395 = load i32, i32* @MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY, align 4
  store i32 %395, i32* %21, align 4
  %396 = load i32, i32* %10, align 4
  %397 = add i32 %396, 1
  store i32 %397, i32* %10, align 4
  br label %399

398:                                              ; preds = %373
  br label %399

399:                                              ; preds = %398, %394, %390, %386, %382, %378, %375
  %400 = load i32, i32* %8, align 4
  %401 = add i32 %400, 1
  store i32 %401, i32* %8, align 4
  %402 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = load i8*, i8** %23, align 8
  %406 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %407 = load i32, i32* %21, align 4
  %408 = load i32, i32* %22, align 4
  %409 = call i32 @menu_entries_append_enum(i32 %404, i8* %405, i8* %406, i32 %407, i32 %408, i32 0, i32 0)
  br label %410

410:                                              ; preds = %399, %313, %309
  %411 = load i64, i64* %5, align 8
  %412 = add i64 %411, 1
  store i64 %412, i64* %5, align 8
  br label %249

413:                                              ; preds = %249
  br label %414

414:                                              ; preds = %413, %245
  %415 = load %struct.string_list*, %struct.string_list** %7, align 8
  %416 = icmp ne %struct.string_list* %415, null
  br i1 %416, label %417, label %425

417:                                              ; preds = %414
  %418 = load %struct.string_list*, %struct.string_list** %7, align 8
  %419 = getelementptr inbounds %struct.string_list, %struct.string_list* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = icmp ugt i64 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %417
  %423 = load %struct.string_list*, %struct.string_list** %7, align 8
  %424 = call i32 @string_list_free(%struct.string_list* %423)
  br label %425

425:                                              ; preds = %422, %417, %414
  %426 = load i32, i32* %8, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %439

428:                                              ; preds = %425
  %429 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NO_ITEMS, align 4
  %433 = call i8* @msg_hash_to_str(i32 %432)
  %434 = load i32, i32* @MENU_ENUM_LABEL_NO_ITEMS, align 4
  %435 = call i8* @msg_hash_to_str(i32 %434)
  %436 = load i32, i32* @MENU_ENUM_LABEL_NO_ITEMS, align 4
  %437 = load i32, i32* @MENU_SETTING_NO_ITEM, align 4
  %438 = call i32 @menu_entries_append_enum(i32 %431, i8* %433, i8* %435, i32 %436, i32 %437, i32 0, i32 0)
  br label %439

439:                                              ; preds = %428, %425
  br label %440

440:                                              ; preds = %439, %236
  %441 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %442 = icmp ne %struct.TYPE_19__* %441, null
  br i1 %442, label %443, label %456

443:                                              ; preds = %440
  %444 = load i32, i32* %14, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %456, label %446

446:                                              ; preds = %443
  %447 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %448 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %447, i32 0, i32 2
  %449 = load i32, i32* %448, align 8
  %450 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY, align 4
  %451 = call i8* @msg_hash_to_str(i32 %450)
  %452 = load i8*, i8** %13, align 8
  %453 = load i32, i32* @MENU_ENUM_LABEL_PARENT_DIRECTORY, align 4
  %454 = load i32, i32* @FILE_TYPE_PARENT_DIRECTORY, align 4
  %455 = call i32 @menu_entries_prepend(i32 %449, i8* %451, i8* %452, i32 %453, i32 %454, i32 0, i32 0)
  br label %456

456:                                              ; preds = %446, %443, %440
  ret void
}

declare dso_local %struct.TYPE_17__* @config_get_ptr(...) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @path_is_compressed_file(i8*) #1

declare dso_local %struct.TYPE_18__* @runloop_get_system_info(...) #1

declare dso_local i32 @content_get_subsystem(...) #1

declare dso_local i64 @string_is_equal(i32, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local %struct.string_list* @file_archive_get_file_list(i8*, i32*) #1

declare dso_local i64 @content_get_subsystem_rom_id(...) #1

declare dso_local %struct.string_list* @dir_list_new(i8*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @menu_entries_prepend(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dir_list_sort(%struct.string_list*, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i32 @path_is_media_type(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
