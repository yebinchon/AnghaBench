; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_deferred_push.c_general_push.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_deferred_push.c_general_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.retro_system_info = type { i8*, i32 }
%struct.string_list = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }
%union.string_list_elem_attr = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@FILE_TYPE_PLAIN = common dso_local global i32 0, align 4
@ST_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32)* @general_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @general_push(%struct.TYPE_16__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.retro_system_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.retro_system_info*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.string_list*, align 8
  %21 = alloca %union.string_list_elem_attr, align 4
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.string_list*, align 8
  %25 = alloca %struct.retro_system_info*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.string_list*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.string_list*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.string_list*, align 8
  %33 = alloca %struct.retro_system_info, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  %34 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %10, align 8
  %35 = call %struct.TYPE_15__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %11, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %3
  %39 = call i32 (...) @menu_cbs_exit()
  store i32 %39, i32* %4, align 4
  br label %379

40:                                               ; preds = %3
  %41 = call i32 @core_info_get_list(%struct.TYPE_17__** %9)
  %42 = load i32, i32* %6, align 4
  switch i32 %42, label %44 [
    i32 129, label %43
    i32 128, label %43
  ]

43:                                               ; preds = %40, %40
  br label %99

44:                                               ; preds = %40
  %45 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %12, align 8
  %48 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %13, align 8
  %49 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %50 = zext i32 %49 to i64
  %51 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %14, align 8
  %52 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %52, align 16
  %53 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 0, i8* %53, align 16
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = trunc i64 %46 to i32
  %61 = call i32 @fill_pathname_join(i8* %48, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = trunc i64 %50 to i32
  %69 = call i32 @fill_pathname_join(i8* %51, i32 %64, i32 %67, i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @string_is_empty(i8* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %44
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %75, %44
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @string_is_empty(i8* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @free(i8* %89)
  br label %91

91:                                               ; preds = %86, %80
  %92 = call i8* @strdup(i8* %48)
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = call i8* @strdup(i8* %51)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %98)
  br label %99

99:                                               ; preds = %91, %43
  %100 = load i32, i32* @FILE_TYPE_PLAIN, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %6, align 4
  switch i32 %103, label %111 [
    i32 130, label %104
    i32 131, label %104
    i32 129, label %104
  ]

104:                                              ; preds = %99, %99, %99
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @menu_setting_find_enum(i32 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  br label %112

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %104
  %113 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 1
  %116 = trunc i64 %115 to i32
  %117 = call i64 @malloc(i32 %116)
  %118 = inttoptr i64 %117 to i8*
  store i8* %118, i8** %8, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 0, i8* %120, align 1
  %121 = load i32, i32* %6, align 4
  switch i32 %121, label %339 [
    i32 131, label %122
    i32 129, label %144
    i32 130, label %207
    i32 128, label %207
  ]

122:                                              ; preds = %112
  %123 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %123, %struct.retro_system_info** %15, align 8
  %124 = load %struct.retro_system_info*, %struct.retro_system_info** %15, align 8
  %125 = icmp ne %struct.retro_system_info* %124, null
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load %struct.retro_system_info*, %struct.retro_system_info** %15, align 8
  %128 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @string_is_empty(i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %126
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.retro_system_info*, %struct.retro_system_info** %15, align 8
  %135 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 1
  %140 = trunc i64 %139 to i32
  %141 = call i32 @strlcpy(i8* %133, i8* %136, i32 %140)
  br label %142

142:                                              ; preds = %132, %126
  br label %143

143:                                              ; preds = %142, %122
  br label %339

144:                                              ; preds = %112
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @menu_setting_get_browser_selection_type(i32 %147)
  %149 = load i32, i32* @ST_DIR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %168

152:                                              ; preds = %144
  %153 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %153, %struct.retro_system_info** %18, align 8
  %154 = load %struct.retro_system_info*, %struct.retro_system_info** %18, align 8
  %155 = icmp ne %struct.retro_system_info* %154, null
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = load %struct.retro_system_info*, %struct.retro_system_info** %18, align 8
  %158 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @string_is_empty(i8* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %156
  %163 = load %struct.retro_system_info*, %struct.retro_system_info** %18, align 8
  %164 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = call i8* @strdup(i8* %165)
  store i8* %166, i8** %17, align 8
  store i32 1, i32* %16, align 4
  br label %167

167:                                              ; preds = %162, %156, %152
  br label %168

168:                                              ; preds = %167, %151
  %169 = load i8*, i8** %17, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %168
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %17, align 8
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i8*, i8** %17, align 8
  %177 = call i32 @string_is_empty(i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 1
  store i64 %182, i64* %19, align 8
  %183 = load i8*, i8** %17, align 8
  %184 = call %struct.string_list* @string_split(i8* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %184, %struct.string_list** %20, align 8
  %185 = load i8*, i8** %8, align 8
  %186 = load i64, i64* %19, align 8
  %187 = load %struct.string_list*, %struct.string_list** %20, align 8
  %188 = call i32 @string_list_join_concat(i8* %185, i64 %186, %struct.string_list* %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %189 = load %struct.string_list*, %struct.string_list** %20, align 8
  %190 = call i32 @string_list_free(%struct.string_list* %189)
  br label %191

191:                                              ; preds = %179, %175
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load i8*, i8** %17, align 8
  %196 = call i32 @free(i8* %195)
  %197 = load i8*, i8** %17, align 8
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = icmp eq i8* %197, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  store i8* null, i8** %204, align 8
  br label %205

205:                                              ; preds = %202, %194
  br label %206

206:                                              ; preds = %205, %191
  br label %339

207:                                              ; preds = %112, %112
  %208 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 1
  store i64 %210, i64* %22, align 8
  %211 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 1
  %214 = trunc i64 %213 to i32
  %215 = call i64 @malloc(i32 %214)
  %216 = inttoptr i64 %215 to i8*
  store i8* %216, i8** %23, align 8
  %217 = call %struct.string_list* (...) @string_list_new()
  store %struct.string_list* %217, %struct.string_list** %24, align 8
  %218 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %218, %struct.retro_system_info** %25, align 8
  %219 = load i8*, i8** %23, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 0
  store i8 0, i8* %220, align 1
  %221 = bitcast %union.string_list_elem_attr* %21 to i32*
  store i32 0, i32* %221, align 4
  %222 = load %struct.retro_system_info*, %struct.retro_system_info** %25, align 8
  %223 = icmp ne %struct.retro_system_info* %222, null
  br i1 %223, label %224, label %262

224:                                              ; preds = %207
  %225 = load %struct.retro_system_info*, %struct.retro_system_info** %25, align 8
  %226 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @string_is_empty(i8* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %261, label %230

230:                                              ; preds = %224
  %231 = load %struct.retro_system_info*, %struct.retro_system_info** %25, align 8
  %232 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = call %struct.string_list* @string_split(i8* %233, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %234, %struct.string_list** %27, align 8
  store i32 0, i32* %26, align 4
  br label %235

235:                                              ; preds = %255, %230
  %236 = load i32, i32* %26, align 4
  %237 = load %struct.string_list*, %struct.string_list** %27, align 8
  %238 = getelementptr inbounds %struct.string_list, %struct.string_list* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp ult i32 %236, %239
  br i1 %240, label %241, label %258

241:                                              ; preds = %235
  %242 = load %struct.string_list*, %struct.string_list** %27, align 8
  %243 = getelementptr inbounds %struct.string_list, %struct.string_list* %242, i32 0, i32 1
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  %245 = load i32, i32* %26, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  store i8* %249, i8** %28, align 8
  %250 = load %struct.string_list*, %struct.string_list** %24, align 8
  %251 = load i8*, i8** %28, align 8
  %252 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %21, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @string_list_append(%struct.string_list* %250, i8* %251, i32 %253)
  br label %255

255:                                              ; preds = %241
  %256 = load i32, i32* %26, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %26, align 4
  br label %235

258:                                              ; preds = %235
  %259 = load %struct.string_list*, %struct.string_list** %27, align 8
  %260 = call i32 @string_list_free(%struct.string_list* %259)
  br label %261

261:                                              ; preds = %258, %224
  br label %262

262:                                              ; preds = %261, %207
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %322, label %268

268:                                              ; preds = %262
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %270 = icmp ne %struct.TYPE_17__* %269, null
  br i1 %270, label %271, label %321

271:                                              ; preds = %268
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @string_is_empty(i8* %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %321, label %277

277:                                              ; preds = %271
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call %struct.string_list* @string_split(i8* %280, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %281, %struct.string_list** %30, align 8
  store i32 0, i32* %29, align 4
  br label %282

282:                                              ; preds = %315, %277
  %283 = load i32, i32* %29, align 4
  %284 = load %struct.string_list*, %struct.string_list** %30, align 8
  %285 = getelementptr inbounds %struct.string_list, %struct.string_list* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp ult i32 %283, %286
  br i1 %287, label %288, label %318

288:                                              ; preds = %282
  %289 = load %struct.string_list*, %struct.string_list** %24, align 8
  %290 = load %struct.string_list*, %struct.string_list** %30, align 8
  %291 = getelementptr inbounds %struct.string_list, %struct.string_list* %290, i32 0, i32 1
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %291, align 8
  %293 = load i32, i32* %29, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i32 @string_list_find_elem(%struct.string_list* %289, i8* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %314, label %300

300:                                              ; preds = %288
  %301 = load %struct.string_list*, %struct.string_list** %30, align 8
  %302 = getelementptr inbounds %struct.string_list, %struct.string_list* %301, i32 0, i32 1
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %302, align 8
  %304 = load i32, i32* %29, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  store i8* %308, i8** %31, align 8
  %309 = load %struct.string_list*, %struct.string_list** %24, align 8
  %310 = load i8*, i8** %31, align 8
  %311 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %21, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @string_list_append(%struct.string_list* %309, i8* %310, i32 %312)
  br label %314

314:                                              ; preds = %300, %288
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %29, align 4
  %317 = add i32 %316, 1
  store i32 %317, i32* %29, align 4
  br label %282

318:                                              ; preds = %282
  %319 = load %struct.string_list*, %struct.string_list** %30, align 8
  %320 = call i32 @string_list_free(%struct.string_list* %319)
  br label %321

321:                                              ; preds = %318, %271, %268
  br label %322

322:                                              ; preds = %321, %262
  %323 = load i8*, i8** %23, align 8
  %324 = load i64, i64* %22, align 8
  %325 = load %struct.string_list*, %struct.string_list** %24, align 8
  %326 = call i32 @string_list_join_concat(i8* %323, i64 %324, %struct.string_list* %325, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %327 = load i8*, i8** %23, align 8
  %328 = call %struct.string_list* @string_split(i8* %327, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.string_list* %328, %struct.string_list** %32, align 8
  %329 = load i8*, i8** %8, align 8
  %330 = load i64, i64* %22, align 8
  %331 = load %struct.string_list*, %struct.string_list** %32, align 8
  %332 = call i32 @string_list_join_concat(i8* %329, i64 %330, %struct.string_list* %331, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %333 = load %struct.string_list*, %struct.string_list** %32, align 8
  %334 = call i32 @string_list_free(%struct.string_list* %333)
  %335 = load i8*, i8** %23, align 8
  %336 = call i32 @free(i8* %335)
  %337 = load %struct.string_list*, %struct.string_list** %24, align 8
  %338 = call i32 @string_list_free(%struct.string_list* %337)
  br label %339

339:                                              ; preds = %112, %322, %206, %143
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %351, label %345

345:                                              ; preds = %339
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %345, %339
  %352 = bitcast %struct.retro_system_info* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %352, i8 0, i64 16, i1 false)
  br label %353

353:                                              ; preds = %351, %345
  %354 = load i8*, i8** %8, align 8
  %355 = call i32 @string_is_empty(i8* %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %373, label %357

357:                                              ; preds = %353
  %358 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 2
  %360 = load i8*, i8** %359, align 8
  %361 = call i32 @string_is_empty(i8* %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %368, label %363

363:                                              ; preds = %357
  %364 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %364, i32 0, i32 2
  %366 = load i8*, i8** %365, align 8
  %367 = call i32 @free(i8* %366)
  br label %368

368:                                              ; preds = %363, %357
  %369 = load i8*, i8** %8, align 8
  %370 = call i8* @strdup(i8* %369)
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 2
  store i8* %370, i8** %372, align 8
  br label %373

373:                                              ; preds = %368, %353
  %374 = load i8*, i8** %8, align 8
  %375 = call i32 @free(i8* %374)
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %377 = load i32, i32* %7, align 4
  %378 = call i32 @deferred_push_dlist(%struct.TYPE_16__* %376, i32 %377)
  store i32 %378, i32* %4, align 4
  br label %379

379:                                              ; preds = %373, %38
  %380 = load i32, i32* %4, align 4
  ret i32 %380
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_15__* @menu_driver_get_ptr(...) #1

declare dso_local i32 @menu_cbs_exit(...) #1

declare dso_local i32 @core_info_get_list(%struct.TYPE_17__**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fill_pathname_join(i8*, i32, i32, i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @menu_setting_find_enum(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @menu_setting_get_browser_selection_type(i32) #1

declare dso_local %struct.string_list* @string_split(i8*, i8*) #1

declare dso_local i32 @string_list_join_concat(i8*, i64, %struct.string_list*, i8*) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local %struct.string_list* @string_list_new(...) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i32) #1

declare dso_local i32 @string_list_find_elem(%struct.string_list*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @deferred_push_dlist(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
