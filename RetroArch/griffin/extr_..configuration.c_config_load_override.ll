; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_config_load_override.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_config_load_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RARCH_PATH_BASENAME = common dso_local global i32 0, align 4
@APPLICATION_SPECIAL_DIRECTORY_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".cfg\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"[Overrides] core-specific overrides found at %s.\0A\00", align 1
@RARCH_PATH_CONFIG_APPEND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"[Overrides] no core-specific overrides found at %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"[Overrides] content-dir-specific overrides found at %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"[Overrides] content-dir-specific overrides stacking on top of previous overrides.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"[Overrides] no content-dir-specific overrides found at %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"[Overrides] game-specific overrides found at %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"[Overrides] game-specific overrides stacking on top of previous overrides\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"[Overrides] no game-specific overrides found at %s.\0A\00", align 1
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@RARCH_OVERRIDE_SETTING_STATE_PATH = common dso_local global i32 0, align 4
@RARCH_OVERRIDE_SETTING_SAVE_PATH = common dso_local global i32 0, align 4
@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@MSG_CONFIG_OVERRIDE_LOADED = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_load_override() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 1
  store i64 %20, i64* %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %21 = call %struct.TYPE_5__* (...) @runloop_get_system_info()
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %9, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = icmp ne %struct.TYPE_5__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %0
  br label %30

30:                                               ; preds = %29, %24
  %31 = phi i8* [ %28, %24 ], [ null, %29 ]
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* @RARCH_PATH_BASENAME, align 4
  %33 = call i8* @path_get(i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @path_basename(i8* %34)
  store i8* %35, i8** %12, align 8
  %36 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %13, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %14, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @string_is_empty(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %30
  %44 = load i8*, i8** %11, align 8
  %45 = trunc i64 %37 to i32
  %46 = call i32 @fill_pathname_parent_dir_name(i8* %39, i8* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %30
  %48 = load i8*, i8** %10, align 8
  %49 = call i64 @string_is_empty(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @string_is_empty(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47
  store i32 0, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %273

56:                                               ; preds = %51
  %57 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 1
  %60 = trunc i64 %59 to i32
  %61 = call i64 @malloc(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %5, align 8
  %63 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = call i64 @malloc(i32 %66)
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %4, align 8
  %69 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = call i64 @malloc(i32 %72)
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %6, align 8
  %75 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 1
  %78 = trunc i64 %77 to i32
  %79 = call i64 @malloc(i32 %78)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %3, align 8
  %81 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 1
  %84 = trunc i64 %83 to i32
  %85 = call i64 @malloc(i32 %84)
  %86 = inttoptr i64 %85 to i8*
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 0, i8* %88, align 1
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* %2, align 8
  %95 = load i32, i32* @APPLICATION_SPECIAL_DIRECTORY_CONFIG, align 4
  %96 = call i32 @fill_pathname_application_special(i8* %93, i64 %94, i32 %95)
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i64, i64* %2, align 8
  %102 = call i32 @fill_pathname_join_special_ext(i8* %97, i8* %98, i8* %99, i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %101)
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i64, i64* %2, align 8
  %107 = call i32 @fill_pathname_join_special_ext(i8* %103, i8* %104, i8* %105, i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %106)
  %108 = load i8*, i8** %4, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load i64, i64* %2, align 8
  %113 = call i32 @fill_pathname_join_special_ext(i8* %108, i8* %109, i8* %110, i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @free(i8* %114)
  %116 = load i8*, i8** %4, align 8
  %117 = call i64 @config_file_exists(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %56
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* @RARCH_PATH_CONFIG_APPEND, align 4
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 @path_set(i32 %122, i8* %123)
  store i32 1, i32* %8, align 4
  br label %128

125:                                              ; preds = %56
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %126)
  br label %128

128:                                              ; preds = %125, %119
  %129 = load i8*, i8** %6, align 8
  %130 = call i64 @config_file_exists(i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %170

132:                                              ; preds = %128
  %133 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 1
  %136 = trunc i64 %135 to i32
  %137 = call i64 @malloc(i32 %136)
  %138 = inttoptr i64 %137 to i8*
  store i8* %138, i8** %16, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 0, i8* %140, align 1
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %132
  %146 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0))
  %147 = load i8*, i8** %16, align 8
  %148 = load i32, i32* @RARCH_PATH_CONFIG_APPEND, align 4
  %149 = call i8* @path_get(i32 %148)
  %150 = load i64, i64* %2, align 8
  %151 = call i32 @strlcpy(i8* %147, i8* %149, i64 %150)
  %152 = load i8*, i8** %16, align 8
  %153 = load i64, i64* %2, align 8
  %154 = call i32 @strlcat(i8* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %153)
  %155 = load i8*, i8** %16, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %2, align 8
  %158 = call i32 @strlcat(i8* %155, i8* %156, i64 %157)
  br label %164

159:                                              ; preds = %132
  %160 = load i8*, i8** %16, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = load i64, i64* %2, align 8
  %163 = call i32 @strlcpy(i8* %160, i8* %161, i64 %162)
  br label %164

164:                                              ; preds = %159, %145
  %165 = load i32, i32* @RARCH_PATH_CONFIG_APPEND, align 4
  %166 = load i8*, i8** %16, align 8
  %167 = call i32 @path_set(i32 %165, i8* %166)
  %168 = load i8*, i8** %16, align 8
  %169 = call i32 @free(i8* %168)
  store i32 1, i32* %8, align 4
  br label %173

170:                                              ; preds = %128
  %171 = load i8*, i8** %6, align 8
  %172 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %170, %164
  %174 = load i8*, i8** %5, align 8
  %175 = call i64 @config_file_exists(i8* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %215

177:                                              ; preds = %173
  %178 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 1
  %181 = trunc i64 %180 to i32
  %182 = call i64 @malloc(i32 %181)
  %183 = inttoptr i64 %182 to i8*
  store i8* %183, i8** %17, align 8
  %184 = load i8*, i8** %17, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 0
  store i8 0, i8* %185, align 1
  %186 = load i8*, i8** %5, align 8
  %187 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8* %186)
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %177
  %191 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  %192 = load i8*, i8** %17, align 8
  %193 = load i32, i32* @RARCH_PATH_CONFIG_APPEND, align 4
  %194 = call i8* @path_get(i32 %193)
  %195 = load i64, i64* %2, align 8
  %196 = call i32 @strlcpy(i8* %192, i8* %194, i64 %195)
  %197 = load i8*, i8** %17, align 8
  %198 = load i64, i64* %2, align 8
  %199 = call i32 @strlcat(i8* %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 %198)
  %200 = load i8*, i8** %17, align 8
  %201 = load i8*, i8** %5, align 8
  %202 = load i64, i64* %2, align 8
  %203 = call i32 @strlcat(i8* %200, i8* %201, i64 %202)
  br label %209

204:                                              ; preds = %177
  %205 = load i8*, i8** %17, align 8
  %206 = load i8*, i8** %5, align 8
  %207 = load i64, i64* %2, align 8
  %208 = call i32 @strlcpy(i8* %205, i8* %206, i64 %207)
  br label %209

209:                                              ; preds = %204, %190
  %210 = load i32, i32* @RARCH_PATH_CONFIG_APPEND, align 4
  %211 = load i8*, i8** %17, align 8
  %212 = call i32 @path_set(i32 %210, i8* %211)
  %213 = load i8*, i8** %17, align 8
  %214 = call i32 @free(i8* %213)
  store i32 1, i32* %8, align 4
  br label %218

215:                                              ; preds = %173
  %216 = load i8*, i8** %5, align 8
  %217 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8* %216)
  br label %218

218:                                              ; preds = %215, %209
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %218
  br label %264

222:                                              ; preds = %218
  %223 = load i8*, i8** %3, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  store i8 0, i8* %224, align 1
  %225 = load i8*, i8** %3, align 8
  %226 = load i32, i32* @RARCH_PATH_CORE, align 4
  %227 = call i8* @path_get(i32 %226)
  %228 = load i64, i64* %2, align 8
  %229 = call i32 @strlcpy(i8* %225, i8* %227, i64 %228)
  %230 = load i32, i32* @RARCH_OVERRIDE_SETTING_STATE_PATH, align 4
  %231 = call i32 @retroarch_override_setting_unset(i32 %230, i32* null)
  %232 = load i32, i32* @RARCH_OVERRIDE_SETTING_SAVE_PATH, align 4
  %233 = call i32 @retroarch_override_setting_unset(i32 %232, i32* null)
  %234 = call i32 (...) @global_get_ptr()
  %235 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %236 = call i8* @path_get(i32 %235)
  %237 = call i32 (...) @config_get_ptr()
  %238 = call i32 @config_load_file(i32 %234, i8* %236, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %222
  br label %264

241:                                              ; preds = %222
  %242 = load i32, i32* @RARCH_PATH_CORE, align 4
  %243 = load i8*, i8** %3, align 8
  %244 = call i32 @path_set(i32 %242, i8* %243)
  %245 = load i32, i32* @MSG_CONFIG_OVERRIDE_LOADED, align 4
  %246 = call i32 @msg_hash_to_str(i32 %245)
  %247 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %248 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %249 = call i32 @runloop_msg_queue_push(i32 %246, i32 1, i32 100, i32 1, i32* null, i32 %247, i32 %248)
  %250 = load i32, i32* @RARCH_OVERRIDE_SETTING_STATE_PATH, align 4
  %251 = call i32 @retroarch_override_setting_set(i32 %250, i32* null)
  %252 = load i32, i32* @RARCH_OVERRIDE_SETTING_SAVE_PATH, align 4
  %253 = call i32 @retroarch_override_setting_set(i32 %252, i32* null)
  %254 = load i32, i32* @RARCH_PATH_CONFIG_APPEND, align 4
  %255 = call i32 @path_clear(i32 %254)
  %256 = load i8*, i8** %3, align 8
  %257 = call i32 @free(i8* %256)
  %258 = load i8*, i8** %4, align 8
  %259 = call i32 @free(i8* %258)
  %260 = load i8*, i8** %6, align 8
  %261 = call i32 @free(i8* %260)
  %262 = load i8*, i8** %5, align 8
  %263 = call i32 @free(i8* %262)
  store i32 1, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %273

264:                                              ; preds = %240, %221
  %265 = load i8*, i8** %3, align 8
  %266 = call i32 @free(i8* %265)
  %267 = load i8*, i8** %4, align 8
  %268 = call i32 @free(i8* %267)
  %269 = load i8*, i8** %6, align 8
  %270 = call i32 @free(i8* %269)
  %271 = load i8*, i8** %5, align 8
  %272 = call i32 @free(i8* %271)
  store i32 0, i32* %1, align 4
  store i32 1, i32* %15, align 4
  br label %273

273:                                              ; preds = %264, %241, %55
  %274 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %274)
  %275 = load i32, i32* %1, align 4
  ret i32 %275
}

declare dso_local %struct.TYPE_5__* @runloop_get_system_info(...) #1

declare dso_local i8* @path_get(i32) #1

declare dso_local i8* @path_basename(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @fill_pathname_parent_dir_name(i8*, i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fill_pathname_application_special(i8*, i64, i32) #1

declare dso_local i32 @fill_pathname_join_special_ext(i8*, i8*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @config_file_exists(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @path_set(i32, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @strlcat(i8*, i8*, i64) #1

declare dso_local i32 @retroarch_override_setting_unset(i32, i32*) #1

declare dso_local i32 @config_load_file(i32, i8*, i32) #1

declare dso_local i32 @global_get_ptr(...) #1

declare dso_local i32 @config_get_ptr(...) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @retroarch_override_setting_set(i32, i32*) #1

declare dso_local i32 @path_clear(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
