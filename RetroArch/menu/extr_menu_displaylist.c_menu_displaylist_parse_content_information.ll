; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_content_information.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_displaylist.c_menu_displaylist_parse_content_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.playlist_entry = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_20__ = type { i8*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }

@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RARCH_CTL_IS_DUMMY_CORE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CONTENT_INFO_LABEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@MENU_ENUM_LABEL_CONTENT_INFO_LABEL = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CONTENT_INFO_PATH = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONTENT_INFO_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@MENU_ENUM_LABEL_VALUE_CONTENT_INFO_CORE_NAME = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONTENT_INFO_CORE_NAME = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_CONTENT_INFO_DATABASE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONTENT_INFO_DATABASE = common dso_local global i32 0, align 4
@PLAYLIST_RUNTIME_PER_CORE = common dso_local global i64 0, align 8
@PLAYLIST_RUNTIME_AGGREGATE = common dso_local global i64 0, align 8
@MENU_ENUM_LABEL_CONTENT_INFO_RUNTIME = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_CONTENT_INFO_LAST_PLAYED = common dso_local global i32 0, align 4
@FILE_TYPE_RDB_ENTRY = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_RDB_ENTRY_DETAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* @menu_displaylist_parse_content_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_displaylist_parse_content_information(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.playlist_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca [8192 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_20__, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %29 = call %struct.TYPE_17__* (...) @config_get_ptr()
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %6, align 8
  %30 = call i32* (...) @playlist_get_cached()
  store i32* %30, i32** %7, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %8, align 4
  store %struct.playlist_entry* null, %struct.playlist_entry** %9, align 8
  %34 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %35 = call i8* @path_get(i32 %34)
  store i8* %35, i8** %10, align 8
  %36 = load i32, i32* @RARCH_PATH_CORE, align 4
  %37 = call i8* @path_get(i32 %36)
  store i8* %37, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %38 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %20, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %21, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 0, i8* %42, align 16
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %395

47:                                               ; preds = %2
  %48 = load i32, i32* @RARCH_CTL_IS_DUMMY_CORE, align 4
  %49 = call i32 @rarch_ctl(i32 %48, i32* null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @string_is_equal(i8* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %51, %47
  %59 = phi i1 [ false, %47 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @string_is_empty(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @string_is_empty(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @playlist_index_is_valid(i32* %72, i32 %73, i8* %74, i8* %75)
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %71, %67, %63
  br label %83

78:                                               ; preds = %58
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %17, align 4
  br label %82

82:                                               ; preds = %81, %78
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %83
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @playlist_get_index(i32* %87, i32 %88, %struct.playlist_entry** %9)
  %90 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %91 = icmp ne %struct.playlist_entry* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %86
  %93 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %94 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %12, align 8
  %96 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %97 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %13, align 8
  %99 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %100 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %14, align 8
  %102 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %103 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %15, align 8
  %105 = load %struct.playlist_entry*, %struct.playlist_entry** %9, align 8
  %106 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %105, i32 0, i32 4
  %107 = load i8*, i8** %106, align 8
  %108 = trunc i64 %39 to i32
  %109 = call i32 @strlcpy(i8* %41, i8* %107, i32 %108)
  br label %110

110:                                              ; preds = %92, %86
  br label %136

111:                                              ; preds = %83
  %112 = load i8*, i8** %10, align 8
  store i8* %112, i8** %13, align 8
  %113 = load i8*, i8** %11, align 8
  store i8* %113, i8** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %114, align 8
  %115 = load i8*, i8** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  store i8* %115, i8** %116, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = call i64 @core_info_find(%struct.TYPE_20__* %24, i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @string_is_empty(i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = trunc i64 %39 to i32
  %133 = call i32 @strlcpy(i8* %41, i8* %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %120
  br label %135

135:                                              ; preds = %134, %111
  br label %136

136:                                              ; preds = %135, %110
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @string_is_empty(i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %172, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  store i8 0, i8* %141, align 16
  %142 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %143 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CONTENT_INFO_LABEL, align 4
  %144 = call i8* @msg_hash_to_str(i32 %143)
  %145 = call i32 @strlcpy(i8* %142, i8* %144, i32 8192)
  store i32 %145, i32* %19, align 4
  %146 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %147 = call i32 @strlcat(i8* %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 8192)
  %148 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @strlcat(i8* %148, i8* %149, i32 8192)
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %19, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %140
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %156 = icmp sge i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153, %140
  store i32 0, i32* %19, align 4
  br label %158

158:                                              ; preds = %157, %153
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %163 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_LABEL, align 4
  %164 = call i8* @msg_hash_to_str(i32 %163)
  %165 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_LABEL, align 4
  %166 = call i64 @menu_entries_append_enum(i32 %161, i8* %162, i8* %164, i32 %165, i32 0, i32 0, i32 0)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %158
  %169 = load i32, i32* %18, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %18, align 4
  br label %171

171:                                              ; preds = %168, %158
  br label %172

172:                                              ; preds = %171, %136
  %173 = load i8*, i8** %13, align 8
  %174 = call i32 @string_is_empty(i8* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %208, label %176

176:                                              ; preds = %172
  %177 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  store i8 0, i8* %177, align 16
  %178 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %179 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CONTENT_INFO_PATH, align 4
  %180 = call i8* @msg_hash_to_str(i32 %179)
  %181 = call i32 @strlcpy(i8* %178, i8* %180, i32 8192)
  store i32 %181, i32* %19, align 4
  %182 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %183 = call i32 @strlcat(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 8192)
  store i32 %183, i32* %19, align 4
  %184 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %185 = load i8*, i8** %13, align 8
  %186 = call i32 @strlcat(i8* %184, i8* %185, i32 8192)
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %19, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %176
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189, %176
  store i32 0, i32* %19, align 4
  br label %194

194:                                              ; preds = %193, %189
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %199 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_PATH, align 4
  %200 = call i8* @msg_hash_to_str(i32 %199)
  %201 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_PATH, align 4
  %202 = call i64 @menu_entries_append_enum(i32 %197, i8* %198, i8* %200, i32 %201, i32 0, i32 0, i32 0)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %194
  %205 = load i32, i32* %18, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %18, align 4
  br label %207

207:                                              ; preds = %204, %194
  br label %208

208:                                              ; preds = %207, %172
  %209 = call i32 @string_is_empty(i8* %41)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %245, label %211

211:                                              ; preds = %208
  %212 = call i64 @string_is_equal(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %245, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  store i8 0, i8* %215, align 16
  %216 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %217 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CONTENT_INFO_CORE_NAME, align 4
  %218 = call i8* @msg_hash_to_str(i32 %217)
  %219 = call i32 @strlcpy(i8* %216, i8* %218, i32 8192)
  store i32 %219, i32* %19, align 4
  %220 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %221 = call i32 @strlcat(i8* %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 8192)
  store i32 %221, i32* %19, align 4
  %222 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %223 = call i32 @strlcat(i8* %222, i8* %41, i32 8192)
  store i32 %223, i32* %19, align 4
  %224 = load i32, i32* %19, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %214
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %229 = icmp sge i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %226, %214
  store i32 0, i32* %19, align 4
  br label %231

231:                                              ; preds = %230, %226
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %236 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_CORE_NAME, align 4
  %237 = call i8* @msg_hash_to_str(i32 %236)
  %238 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_CORE_NAME, align 4
  %239 = call i64 @menu_entries_append_enum(i32 %234, i8* %235, i8* %237, i32 %238, i32 0, i32 0, i32 0)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %231
  %242 = load i32, i32* %18, align 4
  %243 = add i32 %242, 1
  store i32 %243, i32* %18, align 4
  br label %244

244:                                              ; preds = %241, %231
  br label %245

245:                                              ; preds = %244, %211, %208
  %246 = load i8*, i8** %15, align 8
  %247 = call i32 @string_is_empty(i8* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %296, label %249

249:                                              ; preds = %245
  store i8* null, i8** %25, align 8
  %250 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %251 = zext i32 %250 to i64
  %252 = call i8* @llvm.stacksave()
  store i8* %252, i8** %26, align 8
  %253 = alloca i8, i64 %251, align 16
  store i64 %251, i64* %27, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 0
  store i8 0, i8* %254, align 16
  %255 = load i8*, i8** %15, align 8
  %256 = trunc i64 %251 to i32
  %257 = call i32 @strlcpy(i8* %253, i8* %255, i32 %256)
  %258 = call i8* @path_remove_extension(i8* %253)
  store i8* %258, i8** %25, align 8
  %259 = load i8*, i8** %25, align 8
  %260 = call i32 @string_is_empty(i8* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %294, label %262

262:                                              ; preds = %249
  %263 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  store i8 0, i8* %263, align 16
  %264 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %265 = load i32, i32* @MENU_ENUM_LABEL_VALUE_CONTENT_INFO_DATABASE, align 4
  %266 = call i8* @msg_hash_to_str(i32 %265)
  %267 = call i32 @strlcpy(i8* %264, i8* %266, i32 8192)
  store i32 %267, i32* %19, align 4
  %268 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %269 = call i32 @strlcat(i8* %268, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 8192)
  store i32 %269, i32* %19, align 4
  %270 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %271 = load i8*, i8** %25, align 8
  %272 = call i32 @strlcat(i8* %270, i8* %271, i32 8192)
  store i32 %272, i32* %19, align 4
  %273 = load i32, i32* %19, align 4
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %262
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %278 = icmp sge i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %275, %262
  store i32 0, i32* %19, align 4
  br label %280

280:                                              ; preds = %279, %275
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %285 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_DATABASE, align 4
  %286 = call i8* @msg_hash_to_str(i32 %285)
  %287 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_DATABASE, align 4
  %288 = call i64 @menu_entries_append_enum(i32 %283, i8* %284, i8* %286, i32 %287, i32 0, i32 0, i32 0)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %280
  %291 = load i32, i32* %18, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %18, align 4
  br label %293

293:                                              ; preds = %290, %280
  br label %294

294:                                              ; preds = %293, %249
  %295 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %295)
  br label %296

296:                                              ; preds = %294, %245
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @PLAYLIST_RUNTIME_PER_CORE, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %309

303:                                              ; preds = %296
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %322, label %309

309:                                              ; preds = %303, %296
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @PLAYLIST_RUNTIME_AGGREGATE, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %393

316:                                              ; preds = %309
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %393, label %322

322:                                              ; preds = %316, %303
  %323 = load i8*, i8** %13, align 8
  %324 = load i8*, i8** %14, align 8
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @PLAYLIST_RUNTIME_PER_CORE, align 8
  %330 = icmp eq i64 %328, %329
  %331 = zext i1 %330 to i32
  %332 = call i32* @runtime_log_init(i8* %323, i8* %324, i32 %331)
  store i32* %332, i32** %28, align 8
  %333 = load i32*, i32** %28, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %335, label %392

335:                                              ; preds = %322
  %336 = load i32*, i32** %28, align 8
  %337 = call i64 @runtime_log_has_runtime(i32* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %389

339:                                              ; preds = %335
  %340 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  store i8 0, i8* %340, align 16
  %341 = load i32*, i32** %28, align 8
  %342 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %343 = call i32 @runtime_log_get_runtime_str(i32* %341, i8* %342, i32 8192)
  %344 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %345 = call i32 @string_is_empty(i8* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %361, label %347

347:                                              ; preds = %339
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %352 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_RUNTIME, align 4
  %353 = call i8* @msg_hash_to_str(i32 %352)
  %354 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_RUNTIME, align 4
  %355 = call i64 @menu_entries_append_enum(i32 %350, i8* %351, i8* %353, i32 %354, i32 0, i32 0, i32 0)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %347
  %358 = load i32, i32* %18, align 4
  %359 = add i32 %358, 1
  store i32 %359, i32* %18, align 4
  br label %360

360:                                              ; preds = %357, %347
  br label %361

361:                                              ; preds = %360, %339
  %362 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  store i8 0, i8* %362, align 16
  %363 = load i32*, i32** %28, align 8
  %364 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = call i32 @runtime_log_get_last_played_str(i32* %363, i8* %364, i32 8192, i32 %369)
  %371 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %372 = call i32 @string_is_empty(i8* %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %388, label %374

374:                                              ; preds = %361
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = getelementptr inbounds [8192 x i8], [8192 x i8]* %22, i64 0, i64 0
  %379 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_LAST_PLAYED, align 4
  %380 = call i8* @msg_hash_to_str(i32 %379)
  %381 = load i32, i32* @MENU_ENUM_LABEL_CONTENT_INFO_LAST_PLAYED, align 4
  %382 = call i64 @menu_entries_append_enum(i32 %377, i8* %378, i8* %380, i32 %381, i32 0, i32 0, i32 0)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %374
  %385 = load i32, i32* %18, align 4
  %386 = add i32 %385, 1
  store i32 %386, i32* %18, align 4
  br label %387

387:                                              ; preds = %384, %374
  br label %388

388:                                              ; preds = %387, %361
  br label %389

389:                                              ; preds = %388, %335
  %390 = load i32*, i32** %28, align 8
  %391 = call i32 @free(i32* %390)
  br label %392

392:                                              ; preds = %389, %322
  br label %393

393:                                              ; preds = %392, %316, %309
  %394 = load i32, i32* %18, align 4
  store i32 %394, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %395

395:                                              ; preds = %393, %45
  %396 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %396)
  %397 = load i32, i32* %3, align 4
  ret i32 %397
}

declare dso_local %struct.TYPE_17__* @config_get_ptr(...) #1

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i8* @path_get(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @playlist_index_is_valid(i32*, i32, i8*, i8*) #1

declare dso_local i32 @playlist_get_index(i32*, i32, %struct.playlist_entry**) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @core_info_find(%struct.TYPE_20__*, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @menu_entries_append_enum(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @path_remove_extension(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @runtime_log_init(i8*, i8*, i32) #1

declare dso_local i64 @runtime_log_has_runtime(i32*) #1

declare dso_local i32 @runtime_log_get_runtime_str(i32*, i8*, i32) #1

declare dso_local i32 @runtime_log_get_last_played_str(i32*, i8*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
