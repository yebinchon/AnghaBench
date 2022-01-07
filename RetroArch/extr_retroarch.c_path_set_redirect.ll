; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_path_set_redirect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_path_set_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.TYPE_12__ = type { %struct.retro_system_info }
%struct.retro_system_info = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@g_extern = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@RARCH_DIR_SAVEFILE = common dso_local global i32 0, align 4
@RARCH_DIR_SAVESTATE = common dso_local global i32 0, align 4
@runloop_system = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@configuration_settings = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@MSG_REVERTING_SAVEFILE_DIRECTORY_TO = common dso_local global i32 0, align 4
@MSG_REVERTING_SAVESTATE_DIRECTORY_TO = common dso_local global i32 0, align 4
@path_main_basename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".srm\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s \22%s\22.\0A\00", align 1
@MSG_REDIRECTING_SAVEFILE_TO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c".state\00", align 1
@MSG_REDIRECTING_SAVESTATE_TO = common dso_local global i32 0, align 4
@MSG_REDIRECTING_CHEATFILE_TO = common dso_local global i32 0, align 4
@RARCH_DIR_CURRENT_SAVEFILE = common dso_local global i32 0, align 4
@RARCH_DIR_CURRENT_SAVESTATE = common dso_local global i32 0, align 4
@MENU_ENUM_LABEL_VALUE_NO_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @path_set_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_set_redirect() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.retro_system_info*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 1
  store i64 %11, i64* %1, align 8
  %12 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = call i64 @malloc(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %2, align 8
  %18 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 1
  %21 = trunc i64 %20 to i32
  %22 = call i64 @malloc(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %3, align 8
  store %struct.TYPE_11__* @g_extern, %struct.TYPE_11__** %4, align 8
  %24 = load i32, i32* @RARCH_DIR_SAVEFILE, align 4
  %25 = call i8* @dir_get(i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i32, i32* @RARCH_DIR_SAVESTATE, align 4
  %27 = call i8* @dir_get(i32 %26)
  store i8* %27, i8** %6, align 8
  store %struct.retro_system_info* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @runloop_system, i32 0, i32 0), %struct.retro_system_info** %7, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @configuration_settings, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %8, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %2, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %1, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @strlcpy(i8* %33, i8* %34, i32 %36)
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %1, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @strlcpy(i8* %38, i8* %39, i32 %41)
  %43 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %44 = icmp ne %struct.retro_system_info* %43, null
  br i1 %44, label %45, label %126

45:                                               ; preds = %0
  %46 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %47 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @string_is_empty(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %126, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @string_is_empty(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %2, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %65 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @fill_pathname_join(i8* %62, i8* %63, i8* %66, i64 %67)
  %69 = load i8*, i8** %2, align 8
  %70 = call i64 @path_is_directory(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %61
  %73 = load i8*, i8** %2, align 8
  %74 = call i32 @path_mkdir(i8* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @MSG_REVERTING_SAVEFILE_DIRECTORY_TO, align 4
  %78 = call i32 @msg_hash_to_str(i32 %77)
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %78, i8* %79)
  %81 = load i8*, i8** %2, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %1, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @strlcpy(i8* %81, i8* %82, i32 %84)
  br label %86

86:                                               ; preds = %76, %72
  br label %87

87:                                               ; preds = %86, %61
  br label %88

88:                                               ; preds = %87, %57, %51
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %125

94:                                               ; preds = %88
  %95 = load i8*, i8** %6, align 8
  %96 = call i64 @string_is_empty(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %3, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %102 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %1, align 8
  %105 = call i32 @fill_pathname_join(i8* %99, i8* %100, i8* %103, i64 %104)
  %106 = load i8*, i8** %3, align 8
  %107 = call i64 @path_is_directory(i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %98
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @path_mkdir(i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %123, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @MSG_REVERTING_SAVESTATE_DIRECTORY_TO, align 4
  %115 = call i32 @msg_hash_to_str(i32 %114)
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %115, i8* %116)
  %118 = load i8*, i8** %3, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = load i64, i64* %1, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @strlcpy(i8* %118, i8* %119, i32 %121)
  br label %123

123:                                              ; preds = %113, %109
  br label %124

124:                                              ; preds = %123, %98
  br label %125

125:                                              ; preds = %124, %94, %88
  br label %126

126:                                              ; preds = %125, %45, %0
  %127 = load i8*, i8** %2, align 8
  %128 = call i64 @string_is_empty(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %130, %126
  %137 = load i8*, i8** %2, align 8
  %138 = load i8*, i8** @path_main_basename, align 8
  %139 = load i64, i64* %1, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 @strlcpy(i8* %137, i8* %138, i32 %140)
  %142 = load i8*, i8** %2, align 8
  %143 = call i32 @path_basedir(i8* %142)
  br label %144

144:                                              ; preds = %136, %130
  %145 = load i8*, i8** %3, align 8
  %146 = call i64 @string_is_empty(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %144
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %148, %144
  %155 = load i8*, i8** %3, align 8
  %156 = load i8*, i8** @path_main_basename, align 8
  %157 = load i64, i64* %1, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i32 @strlcpy(i8* %155, i8* %156, i32 %158)
  %160 = load i8*, i8** %3, align 8
  %161 = call i32 @path_basedir(i8* %160)
  br label %162

162:                                              ; preds = %154, %148
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = icmp ne %struct.TYPE_11__* %163, null
  br i1 %164, label %165, label %302

165:                                              ; preds = %162
  %166 = load i8*, i8** %2, align 8
  %167 = call i64 @path_is_directory(i8* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %2, align 8
  %175 = call i32 @strlcpy(i8* %173, i8* %174, i32 8)
  br label %176

176:                                              ; preds = %169, %165
  %177 = load i8*, i8** %3, align 8
  %178 = call i64 @path_is_directory(i8* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 @strlcpy(i8* %184, i8* %185, i32 8)
  br label %187

187:                                              ; preds = %180, %176
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @path_is_directory(i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %230

194:                                              ; preds = %187
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i8*, i8** @path_main_basename, align 8
  %200 = call i64 @string_is_empty(i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %194
  %203 = load i8*, i8** @path_main_basename, align 8
  br label %220

204:                                              ; preds = %194
  %205 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %206 = icmp ne %struct.retro_system_info* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %204
  %208 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %209 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i64 @string_is_empty(i8* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %207
  %214 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %215 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  br label %218

217:                                              ; preds = %207, %204
  br label %218

218:                                              ; preds = %217, %213
  %219 = phi i8* [ %216, %213 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %217 ]
  br label %220

220:                                              ; preds = %218, %202
  %221 = phi i8* [ %203, %202 ], [ %219, %218 ]
  %222 = call i32 @fill_pathname_dir(i8* %198, i8* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %223 = load i32, i32* @MSG_REDIRECTING_SAVEFILE_TO, align 4
  %224 = call i32 @msg_hash_to_str(i32 %223)
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %224, i8* %228)
  br label %230

230:                                              ; preds = %220, %187
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = call i64 @path_is_directory(i8* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %273

237:                                              ; preds = %230
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = load i8*, i8** @path_main_basename, align 8
  %243 = call i64 @string_is_empty(i8* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %237
  %246 = load i8*, i8** @path_main_basename, align 8
  br label %263

247:                                              ; preds = %237
  %248 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %249 = icmp ne %struct.retro_system_info* %248, null
  br i1 %249, label %250, label %260

250:                                              ; preds = %247
  %251 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %252 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = call i64 @string_is_empty(i8* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %250
  %257 = load %struct.retro_system_info*, %struct.retro_system_info** %7, align 8
  %258 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  br label %261

260:                                              ; preds = %250, %247
  br label %261

261:                                              ; preds = %260, %256
  %262 = phi i8* [ %259, %256 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %260 ]
  br label %263

263:                                              ; preds = %261, %245
  %264 = phi i8* [ %246, %245 ], [ %262, %261 ]
  %265 = call i32 @fill_pathname_dir(i8* %241, i8* %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %266 = load i32, i32* @MSG_REDIRECTING_SAVESTATE_TO, align 4
  %267 = call i32 @msg_hash_to_str(i32 %266)
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %267, i8* %271)
  br label %273

273:                                              ; preds = %263, %230
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 2
  %277 = load i8*, i8** %276, align 8
  %278 = call i64 @path_is_directory(i8* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %301

280:                                              ; preds = %273
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 2
  %284 = load i8*, i8** %283, align 8
  %285 = load i8*, i8** @path_main_basename, align 8
  %286 = call i64 @string_is_empty(i8* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %280
  %289 = load i8*, i8** @path_main_basename, align 8
  br label %291

290:                                              ; preds = %280
  br label %291

291:                                              ; preds = %290, %288
  %292 = phi i8* [ %289, %288 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %290 ]
  %293 = call i32 @fill_pathname_dir(i8* %284, i8* %292, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %294 = load i32, i32* @MSG_REDIRECTING_CHEATFILE_TO, align 4
  %295 = call i32 @msg_hash_to_str(i32 %294)
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 2
  %299 = load i8*, i8** %298, align 8
  %300 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %295, i8* %299)
  br label %301

301:                                              ; preds = %291, %273
  br label %302

302:                                              ; preds = %301, %162
  %303 = load i32, i32* @RARCH_DIR_CURRENT_SAVEFILE, align 4
  %304 = load i8*, i8** %2, align 8
  %305 = call i32 @dir_set(i32 %303, i8* %304)
  %306 = load i32, i32* @RARCH_DIR_CURRENT_SAVESTATE, align 4
  %307 = load i8*, i8** %3, align 8
  %308 = call i32 @dir_set(i32 %306, i8* %307)
  %309 = load i8*, i8** %2, align 8
  %310 = call i32 @free(i8* %309)
  %311 = load i8*, i8** %3, align 8
  %312 = call i32 @free(i8* %311)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @dir_get(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i64) #1

declare dso_local i64 @path_is_directory(i8*) #1

declare dso_local i32 @path_mkdir(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @path_basedir(i8*) #1

declare dso_local i32 @fill_pathname_dir(i8*, i8*, i8*, i32) #1

declare dso_local i32 @dir_set(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
