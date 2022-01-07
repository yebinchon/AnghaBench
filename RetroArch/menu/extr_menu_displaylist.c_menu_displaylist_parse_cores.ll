; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_cores.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, i32, i32, i32 }
%struct.string_list = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MSG_UNKNOWN = common dso_local global i32 0, align 4
@FILE_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_PARENT_DIRECTORY = common dso_local global i32 0, align 4
@FILE_TYPE_PARENT_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CORE_LIST = common dso_local global i32 0, align 4
@FILE_TYPE_NONE = common dso_local global i32 0, align 4
@FILE_TYPE_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_SIDELOAD_CORE_LIST = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FILE_BROWSER_SIDELOAD_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_FILE_BROWSER_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*)* @menu_displaylist_parse_cores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_cores(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
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
  %16 = alloca [64 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.string_list* null, %struct.string_list** %8, align 8
  store i32 0, i32* %9, align 4
  %30 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %10, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @string_is_empty(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @frontend_driver_parse_drive_list(i32 %40, i32 1)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MSG_UNKNOWN, align 4
  %48 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %49 = call i32 @menu_entries_append_enum(i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 0, i32 0)
  br label %50

50:                                               ; preds = %43, %37
  %51 = load i32, i32* %9, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %311

54:                                               ; preds = %2
  %55 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %55, %struct.string_list** %8, align 8
  %56 = load %struct.string_list*, %struct.string_list** %8, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dir_list_append(%struct.string_list* %56, i8* %57, i32 %60, i32 1, i32 %64, i32 0, i32 0)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %54
  %69 = load %struct.string_list*, %struct.string_list** %8, align 8
  %70 = call i32 @string_list_free(%struct.string_list* %69)
  store %struct.string_list* null, %struct.string_list** %8, align 8
  br label %71

71:                                               ; preds = %68, %54
  %72 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 1
  %75 = call i64 @malloc(i64 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %13, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %13, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = call i32 @fill_pathname_parent_dir(i8* %79, i8* %80, i32 %84)
  %86 = load i8*, i8** %13, align 8
  %87 = call i64 @string_is_empty(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %71
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MENU_ENUM_LABEL_VALUE_PARENT_DIRECTORY, align 4
  %94 = call i8* @msg_hash_to_str(i32 %93)
  %95 = load i8*, i8** %11, align 8
  %96 = load i32, i32* @MENU_ENUM_LABEL_PARENT_DIRECTORY, align 4
  %97 = load i32, i32* @FILE_TYPE_PARENT_DIRECTORY, align 4
  %98 = call i32 @menu_entries_prepend(i32 %92, i8* %94, i8* %95, i32 %96, i32 %97, i32 0, i32 0)
  br label %99

99:                                               ; preds = %89, %71
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load %struct.string_list*, %struct.string_list** %8, align 8
  %103 = icmp ne %struct.string_list* %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND, align 4
  %106 = call i8* @msg_hash_to_str(i32 %105)
  store i8* %106, i8** %14, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* @MENU_ENUM_LABEL_VALUE_DIRECTORY_NOT_FOUND, align 4
  %112 = call i32 @menu_entries_append_enum(i32 %109, i8* %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 0, i32 0, i32 0)
  %113 = load i32, i32* %9, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %311

116:                                              ; preds = %99
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @MENU_ENUM_LABEL_CORE_LIST, align 4
  %121 = call i8* @msg_hash_to_str(i32 %120)
  %122 = call i64 @string_is_equal(i32 %119, i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %116
  %128 = load %struct.string_list*, %struct.string_list** %8, align 8
  %129 = call i32 @dir_list_sort(%struct.string_list* %128, i32 1)
  %130 = load %struct.string_list*, %struct.string_list** %8, align 8
  %131 = getelementptr inbounds %struct.string_list, %struct.string_list* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %7, align 8
  %133 = load i64, i64* %7, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %127
  %136 = load %struct.string_list*, %struct.string_list** %8, align 8
  %137 = call i32 @string_list_free(%struct.string_list* %136)
  store i32 0, i32* %3, align 4
  br label %311

138:                                              ; preds = %127
  store i64 0, i64* %6, align 8
  br label %139

139:                                              ; preds = %237, %138
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* %7, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %240

143:                                              ; preds = %139
  store i8* null, i8** %17, align 8
  %144 = load i32, i32* @MSG_UNKNOWN, align 4
  store i32 %144, i32* %18, align 4
  %145 = load i32, i32* @FILE_TYPE_NONE, align 4
  store i32 %145, i32* %19, align 4
  %146 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %146, align 16
  %147 = load %struct.string_list*, %struct.string_list** %8, align 8
  %148 = getelementptr inbounds %struct.string_list, %struct.string_list* %147, i32 0, i32 1
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %159 [
    i32 129, label %155
    i32 131, label %157
    i32 130, label %157
    i32 128, label %158
  ]

155:                                              ; preds = %143
  %156 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  store i32 %156, i32* %19, align 4
  br label %161

157:                                              ; preds = %143, %143
  br label %237

158:                                              ; preds = %143
  br label %159

159:                                              ; preds = %143, %158
  %160 = load i32, i32* @FILE_TYPE_CORE, align 4
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %159, %155
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  %164 = icmp eq i32 %162, %163
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %15, align 4
  %166 = load %struct.string_list*, %struct.string_list** %8, align 8
  %167 = getelementptr inbounds %struct.string_list, %struct.string_list* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load i64, i64* %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %17, align 8
  %173 = load i8*, i8** %17, align 8
  %174 = call i64 @string_is_empty(i8* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %161
  %177 = load i8*, i8** %17, align 8
  %178 = call i8* @path_basename(i8* %177)
  store i8* %178, i8** %17, align 8
  br label %179

179:                                              ; preds = %176, %161
  %180 = call i64 (...) @frontend_driver_has_fork()
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %206

182:                                              ; preds = %179
  %183 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %184 = zext i32 %183 to i64
  %185 = call i8* @llvm.stacksave()
  store i8* %185, i8** %20, align 8
  %186 = alloca i8, i64 %184, align 16
  store i64 %184, i64* %21, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 0
  store i8 0, i8* %187, align 16
  %188 = trunc i64 %184 to i32
  %189 = call i64 @frontend_driver_get_salamander_basename(i8* %186, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %182
  %192 = load i8*, i8** %17, align 8
  %193 = call i64 @string_is_equal_noncase(i8* %192, i8* %186)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  store i32 4, i32* %22, align 4
  br label %202

196:                                              ; preds = %191
  br label %197

197:                                              ; preds = %196, %182
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 4, i32* %22, align 4
  br label %202

201:                                              ; preds = %197
  store i32 0, i32* %22, align 4
  br label %202

202:                                              ; preds = %201, %200, %195
  %203 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %22, align 4
  switch i32 %204, label %313 [
    i32 0, label %205
    i32 4, label %237
  ]

205:                                              ; preds = %202
  br label %206

206:                                              ; preds = %205, %179
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* @FILE_TYPE_DIRECTORY, align 4
  store i32 %210, i32* %19, align 4
  %211 = load i32, i32* @MENU_ENUM_LABEL_FILE_BROWSER_DIRECTORY, align 4
  store i32 %211, i32* %18, align 4
  br label %226

212:                                              ; preds = %206
  %213 = load i32, i32* @FILE_TYPE_CORE, align 4
  store i32 %213, i32* %19, align 4
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @MENU_ENUM_LABEL_SIDELOAD_CORE_LIST, align 4
  %218 = call i8* @msg_hash_to_str(i32 %217)
  %219 = call i64 @string_is_equal(i32 %216, i8* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %212
  %222 = load i32, i32* @MENU_ENUM_LABEL_FILE_BROWSER_SIDELOAD_CORE, align 4
  store i32 %222, i32* %18, align 4
  br label %225

223:                                              ; preds = %212
  %224 = load i32, i32* @MENU_ENUM_LABEL_FILE_BROWSER_CORE, align 4
  store i32 %224, i32* %18, align 4
  br label %225

225:                                              ; preds = %223, %221
  br label %226

226:                                              ; preds = %225, %209
  %227 = load i32, i32* %9, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %9, align 4
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = load i8*, i8** %17, align 8
  %233 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %234 = load i32, i32* %18, align 4
  %235 = load i32, i32* %19, align 4
  %236 = call i32 @menu_entries_append_enum(i32 %231, i8* %232, i8* %233, i32 %234, i32 %235, i32 0, i32 0)
  br label %237

237:                                              ; preds = %226, %202, %157
  %238 = load i64, i64* %6, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %6, align 8
  br label %139

240:                                              ; preds = %139
  %241 = load %struct.string_list*, %struct.string_list** %8, align 8
  %242 = call i32 @string_list_free(%struct.string_list* %241)
  %243 = load i32, i32* %9, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  store i32 0, i32* %3, align 4
  br label %311

246:                                              ; preds = %240
  store i32* null, i32** %23, align 8
  store i8* null, i8** %24, align 8
  %247 = call i32 @core_info_get_list(i32** %23)
  %248 = call i32 @menu_entries_get_last_stack(i8** %24, i32* null, i32* null, i32* null, i32* null)
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @file_list_get_size(i32 %251)
  store i64 %252, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %253

253:                                              ; preds = %304, %246
  %254 = load i64, i64* %6, align 8
  %255 = load i64, i64* %7, align 8
  %256 = icmp ult i64 %254, %255
  br i1 %256, label %257, label %307

257:                                              ; preds = %253
  store i32 0, i32* %25, align 4
  store i8* null, i8** %26, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = load i64, i64* %6, align 8
  %262 = call i32 @menu_entries_get_at_offset(i32 %260, i64 %261, i8** %26, i32* null, i32* %25, i32* null, i32* null)
  %263 = load i32, i32* %25, align 4
  %264 = load i32, i32* @FILE_TYPE_CORE, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %303

266:                                              ; preds = %257
  %267 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %268 = sext i32 %267 to i64
  %269 = mul i64 %268, 1
  store i64 %269, i64* %27, align 8
  %270 = load i64, i64* %27, align 8
  %271 = call i64 @malloc(i64 %270)
  %272 = inttoptr i64 %271 to i8*
  store i8* %272, i8** %28, align 8
  %273 = load i64, i64* %27, align 8
  %274 = call i64 @malloc(i64 %273)
  %275 = inttoptr i64 %274 to i8*
  store i8* %275, i8** %29, align 8
  %276 = load i8*, i8** %29, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 0
  store i8 0, i8* %277, align 1
  %278 = load i8*, i8** %28, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 0
  store i8 0, i8* %279, align 1
  %280 = load i8*, i8** %28, align 8
  %281 = load i8*, i8** %24, align 8
  %282 = load i8*, i8** %26, align 8
  %283 = load i64, i64* %27, align 8
  %284 = call i32 @fill_pathname_join(i8* %280, i8* %281, i8* %282, i64 %283)
  %285 = load i32*, i32** %23, align 8
  %286 = load i8*, i8** %28, align 8
  %287 = load i8*, i8** %29, align 8
  %288 = load i64, i64* %27, align 8
  %289 = call i64 @core_info_list_get_display_name(i32* %285, i8* %286, i8* %287, i64 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %266
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = load i64, i64* %6, align 8
  %296 = load i8*, i8** %29, align 8
  %297 = call i32 @file_list_set_alt_at_offset(i32 %294, i64 %295, i8* %296)
  br label %298

298:                                              ; preds = %291, %266
  %299 = load i8*, i8** %28, align 8
  %300 = call i32 @free(i8* %299)
  %301 = load i8*, i8** %29, align 8
  %302 = call i32 @free(i8* %301)
  br label %303

303:                                              ; preds = %298, %257
  br label %304

304:                                              ; preds = %303
  %305 = load i64, i64* %6, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %6, align 8
  br label %253

307:                                              ; preds = %253
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 2
  store i32 1, i32* %309, align 4
  %310 = load i32, i32* %9, align 4
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %307, %245, %135, %104, %50
  %312 = load i32, i32* %3, align 4
  ret i32 %312

313:                                              ; preds = %202
  unreachable
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @frontend_driver_parse_drive_list(i32, i32) #1

declare dso_local i32 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @dir_list_append(%struct.string_list*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fill_pathname_parent_dir(i8*, i8*, i32) #1

declare dso_local i32 @menu_entries_prepend(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @string_is_equal(i32, i8*) #1

declare dso_local i32 @dir_list_sort(%struct.string_list*, i32) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i64 @frontend_driver_has_fork(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @frontend_driver_get_salamander_basename(i8*, i32) #1

declare dso_local i64 @string_is_equal_noncase(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @core_info_get_list(i32**) #1

declare dso_local i32 @menu_entries_get_last_stack(i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @file_list_get_size(i32) #1

declare dso_local i32 @menu_entries_get_at_offset(i32, i64, i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i64 @core_info_list_get_display_name(i32*, i8*, i8*, i64) #1

declare dso_local i32 @file_list_set_alt_at_offset(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
