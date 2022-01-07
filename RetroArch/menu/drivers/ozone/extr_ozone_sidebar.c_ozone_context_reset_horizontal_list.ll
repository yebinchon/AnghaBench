; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_context_reset_horizontal_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/ozone/extr_ozone_sidebar.c_ozone_context_reset_horizontal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i8*, i32, i32 }
%struct.texture_image = type { i32*, i32, i64, i64 }

@MENU_LIST_HORIZONTAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".lpl\00", align 1
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@TEXTURE_FILTER_MIPMAP_LINEAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"content.png\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ozone_context_reset_horizontal_list(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [255 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.texture_image, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %17 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = load i32, i32* @MENU_LIST_HORIZONTAL, align 4
  %20 = call i64 @ozone_list_get_size(%struct.TYPE_12__* %18, i32 %19)
  store i64 %20, i64* %9, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %284, %1
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %287

26:                                               ; preds = %21
  store i8* null, i8** %10, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @file_list_get_userdata_at_offset(i32 %29, i32 %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %11, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = call %struct.TYPE_11__* (...) @ozone_alloc_node()
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %11, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %284

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @file_list_get_at_offset(i32 %44, i32 %45, i8** %10, i32* null, i32* null, i32* null)
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %284

50:                                               ; preds = %41
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @strstr(i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %284

55:                                               ; preds = %50
  %56 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = call i64 @malloc(i32 %59)
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %13, align 8
  %62 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 1
  %65 = trunc i64 %64 to i32
  %66 = call i64 @malloc(i32 %65)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %14, align 8
  %68 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i64 @malloc(i32 %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %15, align 8
  %74 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 1
  %77 = trunc i64 %76 to i32
  %78 = call i64 @malloc(i32 %77)
  %79 = inttoptr i64 %78 to i8*
  store i8* %79, i8** %16, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = call i32 @strlcpy(i8* %80, i32 %83, i32 %87)
  %89 = load i8*, i8** %15, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %13, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %13, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = call i32 @fill_pathname_base_noext(i8* %95, i8* %96, i32 %100)
  %102 = load i8*, i8** %14, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 1
  %108 = trunc i64 %107 to i32
  %109 = call i32 @fill_pathname_join_concat(i8* %102, i8* %103, i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i8*, i8** %14, align 8
  %111 = call i32 @path_is_valid(i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %55
  %114 = load i8*, i8** %14, align 8
  %115 = load i8*, i8** %16, align 8
  %116 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 1
  %119 = trunc i64 %118 to i32
  %120 = call i32 @fill_pathname_join_concat(i8* %114, i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %113, %55
  %122 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %12, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %12, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %12, i32 0, i32 0
  store i32* null, i32** %124, align 8
  %125 = call i32 (...) @video_driver_supports_rgba()
  %126 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %12, i32 0, i32 1
  store i32 %125, i32* %126, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = call i64 @image_texture_load(%struct.texture_image* %12, i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %12, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = call i32 @video_driver_texture_unload(i32* %136)
  %138 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = call i32 @video_driver_texture_load(%struct.texture_image* %12, i32 %138, i32* %140)
  br label %142

142:                                              ; preds = %134, %130
  %143 = call i32 @image_texture_free(%struct.texture_image* %12)
  br label %144

144:                                              ; preds = %142, %121
  %145 = load i8*, i8** %13, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 1
  %150 = trunc i64 %149 to i32
  %151 = call i32 @fill_pathname_join_delim(i8* %145, i8* %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8 signext 45, i32 %150)
  %152 = load i8*, i8** %15, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 1
  %157 = trunc i64 %156 to i32
  %158 = call i32 @strlcat(i8* %152, i8* %153, i32 %157)
  %159 = load i8*, i8** %15, align 8
  %160 = call i8* (...) @path_default_slash()
  %161 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 1
  %164 = trunc i64 %163 to i32
  %165 = call i32 @strlcat(i8* %159, i8* %160, i32 %164)
  %166 = load i8*, i8** %15, align 8
  %167 = load i8*, i8** %13, align 8
  %168 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %169 = sext i32 %168 to i64
  %170 = mul i64 %169, 1
  %171 = trunc i64 %170 to i32
  %172 = call i32 @strlcat(i8* %166, i8* %167, i32 %171)
  %173 = load i8*, i8** %15, align 8
  %174 = call i32 @path_is_valid(i8* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %197, label %176

176:                                              ; preds = %144
  %177 = load i8*, i8** %16, align 8
  %178 = call i8* (...) @path_default_slash()
  %179 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 1
  %182 = trunc i64 %181 to i32
  %183 = call i32 @strlcat(i8* %177, i8* %178, i32 %182)
  %184 = load i8*, i8** %16, align 8
  %185 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 1
  %188 = trunc i64 %187 to i32
  %189 = call i32 @strlcat(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  %190 = load i8*, i8** %15, align 8
  %191 = load i8*, i8** %16, align 8
  %192 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 1
  %195 = trunc i64 %194 to i32
  %196 = call i32 @fill_pathname_join_delim(i8* %190, i8* %191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8 signext 45, i32 %195)
  br label %197

197:                                              ; preds = %176, %144
  %198 = load i8*, i8** %15, align 8
  %199 = call i64 @image_texture_load(%struct.texture_image* %12, i8* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.texture_image, %struct.texture_image* %12, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %213

205:                                              ; preds = %201
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = call i32 @video_driver_texture_unload(i32* %207)
  %209 = load i32, i32* @TEXTURE_FILTER_MIPMAP_LINEAR, align 4
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = call i32 @video_driver_texture_load(%struct.texture_image* %12, i32 %209, i32* %211)
  br label %213

213:                                              ; preds = %205, %201
  %214 = call i32 @image_texture_free(%struct.texture_image* %12)
  br label %215

215:                                              ; preds = %213, %197
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %3, align 4
  %220 = call i32 @menu_entries_get_at_offset(i32 %218, i32 %219, i8** %4, i32* null, i32* null, i32* null, i32* null)
  %221 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  %222 = load i8*, i8** %4, align 8
  %223 = call i32 @fill_pathname_base_noext(i8* %221, i8* %222, i32 255)
  %224 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  store i8* %224, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %225

225:                                              ; preds = %250, %215
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %253

231:                                              ; preds = %225
  %232 = load i8*, i8** %6, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 45
  br i1 %235, label %236, label %243

236:                                              ; preds = %231
  %237 = load i8*, i8** %6, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 1
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp eq i32 %240, 32
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  store i32 1, i32* %7, align 4
  br label %253

243:                                              ; preds = %236, %231
  %244 = load i8*, i8** %6, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  br label %253

249:                                              ; preds = %243
  br label %250

250:                                              ; preds = %249
  %251 = load i8*, i8** %6, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %6, align 8
  br label %225

253:                                              ; preds = %248, %242, %225
  %254 = load i32, i32* %7, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %253
  %257 = load i8*, i8** %6, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 2
  store i8* %258, i8** %6, align 8
  br label %261

259:                                              ; preds = %253
  %260 = getelementptr inbounds [255 x i8], [255 x i8]* %5, i64 0, i64 0
  store i8* %260, i8** %6, align 8
  br label %261

261:                                              ; preds = %259, %256
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %271

266:                                              ; preds = %261
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @free(i8* %269)
  br label %271

271:                                              ; preds = %266, %261
  %272 = load i8*, i8** %6, align 8
  %273 = call i8* @strdup(i8* %272)
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  store i8* %273, i8** %275, align 8
  %276 = load i8*, i8** %13, align 8
  %277 = call i32 @free(i8* %276)
  %278 = load i8*, i8** %14, align 8
  %279 = call i32 @free(i8* %278)
  %280 = load i8*, i8** %15, align 8
  %281 = call i32 @free(i8* %280)
  %282 = load i8*, i8** %16, align 8
  %283 = call i32 @free(i8* %282)
  br label %284

284:                                              ; preds = %271, %54, %49, %39
  %285 = load i32, i32* %3, align 4
  %286 = add i32 %285, 1
  store i32 %286, i32* %3, align 4
  br label %21

287:                                              ; preds = %21
  ret void
}

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i64 @ozone_list_get_size(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32, i32) #1

declare dso_local %struct.TYPE_11__* @ozone_alloc_node(...) #1

declare dso_local i32 @file_list_get_at_offset(i32, i32, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @strstr(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @fill_pathname_base_noext(i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_join_concat(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @path_is_valid(i8*) #1

declare dso_local i32 @video_driver_supports_rgba(...) #1

declare dso_local i64 @image_texture_load(%struct.texture_image*, i8*) #1

declare dso_local i32 @video_driver_texture_unload(i32*) #1

declare dso_local i32 @video_driver_texture_load(%struct.texture_image*, i32, i32*) #1

declare dso_local i32 @image_texture_free(%struct.texture_image*) #1

declare dso_local i32 @fill_pathname_join_delim(i8*, i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i8* @path_default_slash(...) #1

declare dso_local i32 @menu_entries_get_at_offset(i32, i32, i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
