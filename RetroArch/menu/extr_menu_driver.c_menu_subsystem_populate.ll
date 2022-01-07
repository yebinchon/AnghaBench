; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_subsystem_populate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_subsystem_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_subsystem_info = type { i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@menu_subsystem_populate.utf8_star_char = internal constant [4 x i8] c"\E2\98\85\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"rgui\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@subsystem_current_count = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Load %s %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s [%s %s]\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Current Content:\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Menu subsystem entry: Description label truncated.\0A\00", align 1
@MENU_ENUM_LABEL_SUBSYSTEM_ADD = common dso_local global i32 0, align 4
@MENU_SETTINGS_SUBSYSTEM_ADD = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"Start %s %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"%s [%s]\00", align 1
@MENU_ENUM_LABEL_SUBSYSTEM_LOAD = common dso_local global i32 0, align 4
@MENU_SETTINGS_SUBSYSTEM_LOAD = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"Load %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_subsystem_populate(%struct.retro_subsystem_info* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.retro_subsystem_info*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.retro_subsystem_info* %0, %struct.retro_subsystem_info** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %20 = call %struct.TYPE_11__* (...) @config_get_ptr()
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @string_is_equal(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %9, align 4
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @menu_subsystem_populate.utf8_star_char, i64 0, i64 0)
  %31 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %3, align 8
  %33 = icmp ne %struct.retro_subsystem_info* %32, null
  br i1 %33, label %34, label %261

34:                                               ; preds = %2
  %35 = load i32, i32* @subsystem_current_count, align 4
  %36 = icmp ugt i32 %35, 0
  br i1 %36, label %37, label %261

37:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %255, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @subsystem_current_count, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %260

42:                                               ; preds = %38
  %43 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %10, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %11, align 8
  %47 = call i32 (...) @content_get_subsystem()
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %192

50:                                               ; preds = %42
  %51 = call i32 (...) @content_get_subsystem_rom_id()
  %52 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %3, align 8
  %53 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %114

56:                                               ; preds = %50
  %57 = trunc i64 %44 to i32
  %58 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %3, align 8
  %59 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %62 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %46, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %60, i8* %61)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %56
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %102, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %12, align 8
  %75 = alloca i8, i64 %73, align 16
  store i64 %73, i64* %13, align 8
  %76 = trunc i64 %73 to i32
  %77 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %3, align 8
  %78 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i32 (...) @content_get_subsystem_rom_id()
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %75, i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %71
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88, %71
  %93 = call i64 (...) @verbosity_is_enabled()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %92
  br label %98

98:                                               ; preds = %97, %88
  %99 = trunc i64 %44 to i32
  %100 = call i32 @strlcpy(i8* %46, i8* %75, i32 %99)
  %101 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %101)
  br label %102

102:                                              ; preds = %98, %65, %56
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_ADD, align 4
  %107 = call i32 @msg_hash_to_str(i32 %106)
  %108 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_ADD, align 4
  %109 = load i64, i64* @MENU_SETTINGS_SUBSYSTEM_ADD, align 8
  %110 = load i32, i32* %7, align 4
  %111 = zext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = call i32 @menu_entries_append_enum(i32 %105, i8* %46, i32 %107, i32 %108, i64 %112, i32 0, i32 0)
  br label %191

114:                                              ; preds = %50
  %115 = trunc i64 %44 to i32
  %116 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %3, align 8
  %117 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %120 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %46, i32 %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* %118, i8* %119)
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %182

123:                                              ; preds = %114
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %182, label %129

129:                                              ; preds = %123
  store i32 0, i32* %14, align 4
  %130 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %131 = zext i32 %130 to i64
  %132 = call i8* @llvm.stacksave()
  store i8* %132, i8** %15, align 8
  %133 = alloca i8, i64 %131, align 16
  store i64 %131, i64* %16, align 8
  %134 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %135 = zext i32 %134 to i64
  %136 = alloca i8, i64 %135, align 16
  store i64 %135, i64* %17, align 8
  %137 = getelementptr inbounds i8, i8* %133, i64 0
  store i8 0, i8* %137, align 16
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %156, %129
  %139 = load i32, i32* %14, align 4
  %140 = call i32 (...) @content_get_subsystem_rom_id()
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @content_get_subsystem_rom(i32 %143)
  %145 = call i8* @path_basename(i32 %144)
  %146 = trunc i64 %131 to i32
  %147 = call i32 @strlcat(i8* %133, i8* %145, i32 %146)
  %148 = load i32, i32* %14, align 4
  %149 = call i32 (...) @content_get_subsystem_rom_id()
  %150 = sub nsw i32 %149, 1
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %142
  %153 = trunc i64 %131 to i32
  %154 = call i32 @strlcat(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %152, %142
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %14, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %138

159:                                              ; preds = %138
  %160 = call i32 @string_is_empty(i8* %133)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %180, label %162

162:                                              ; preds = %159
  %163 = trunc i64 %135 to i32
  %164 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %136, i32 %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %46, i8* %133)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %170 = icmp sge i32 %168, %169
  br i1 %170, label %171, label %177

171:                                              ; preds = %167, %162
  %172 = call i64 (...) @verbosity_is_enabled()
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %171
  br label %177

177:                                              ; preds = %176, %167
  %178 = trunc i64 %44 to i32
  %179 = call i32 @strlcpy(i8* %46, i8* %136, i32 %178)
  br label %180

180:                                              ; preds = %177, %159
  %181 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %181)
  br label %182

182:                                              ; preds = %180, %123, %114
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_LOAD, align 4
  %187 = call i32 @msg_hash_to_str(i32 %186)
  %188 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_LOAD, align 4
  %189 = load i64, i64* @MENU_SETTINGS_SUBSYSTEM_LOAD, align 8
  %190 = call i32 @menu_entries_append_enum(i32 %185, i8* %46, i32 %187, i32 %188, i64 %189, i32 0, i32 0)
  br label %191

191:                                              ; preds = %182, %102
  br label %253

192:                                              ; preds = %42
  %193 = trunc i64 %44 to i32
  %194 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %3, align 8
  %195 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %46, i32 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %196)
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %241

200:                                              ; preds = %192
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %241, label %206

206:                                              ; preds = %200
  %207 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %3, align 8
  %208 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %240

211:                                              ; preds = %206
  %212 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %213 = zext i32 %212 to i64
  %214 = call i8* @llvm.stacksave()
  store i8* %214, i8** %18, align 8
  %215 = alloca i8, i64 %213, align 16
  store i64 %213, i64* %19, align 8
  %216 = trunc i64 %213 to i32
  %217 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %3, align 8
  %218 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %217, i32 0, i32 2
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %215, i32 %216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %222)
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* %8, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %211
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %229 = icmp sge i32 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %226, %211
  %231 = call i64 (...) @verbosity_is_enabled()
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %230
  br label %236

236:                                              ; preds = %235, %226
  %237 = trunc i64 %44 to i32
  %238 = call i32 @strlcpy(i8* %46, i8* %215, i32 %237)
  %239 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %239)
  br label %240

240:                                              ; preds = %236, %206
  br label %241

241:                                              ; preds = %240, %200, %192
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_ADD, align 4
  %246 = call i32 @msg_hash_to_str(i32 %245)
  %247 = load i32, i32* @MENU_ENUM_LABEL_SUBSYSTEM_ADD, align 4
  %248 = load i64, i64* @MENU_SETTINGS_SUBSYSTEM_ADD, align 8
  %249 = load i32, i32* %7, align 4
  %250 = zext i32 %249 to i64
  %251 = add nsw i64 %248, %250
  %252 = call i32 @menu_entries_append_enum(i32 %244, i8* %46, i32 %246, i32 %247, i64 %251, i32 0, i32 0)
  br label %253

253:                                              ; preds = %241, %191
  %254 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %254)
  br label %255

255:                                              ; preds = %253
  %256 = load i32, i32* %7, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %7, align 4
  %258 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %3, align 8
  %259 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %258, i32 1
  store %struct.retro_subsystem_info* %259, %struct.retro_subsystem_info** %3, align 8
  br label %38

260:                                              ; preds = %38
  br label %261

261:                                              ; preds = %260, %34, %2
  ret void
}

declare dso_local %struct.TYPE_11__* @config_get_ptr(...) #1

declare dso_local i32 @string_is_equal(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @content_get_subsystem(...) #1

declare dso_local i32 @content_get_subsystem_rom_id(...) #1

declare dso_local i64 @verbosity_is_enabled(...) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @menu_entries_append_enum(i32, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i8* @path_basename(i32) #1

declare dso_local i32 @content_get_subsystem_rom(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
