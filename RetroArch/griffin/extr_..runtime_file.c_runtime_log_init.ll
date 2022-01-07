; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..runtime_file.c_runtime_log_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..runtime_file.c_runtime_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Runtime log directory is undefined - cannot save runtime log files.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"logs\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"[runtime] failed to create directory for runtime log: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"TyrQuake\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".lrtl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @runtime_log_init(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %31 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %12, align 8
  %34 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %13, align 8
  %37 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %38 = zext i32 %37 to i64
  %39 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %14, align 8
  %40 = call %struct.TYPE_16__* (...) @config_get_ptr()
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %17, align 8
  store i8* null, i8** %18, align 8
  %41 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %41, align 16
  %42 = getelementptr inbounds i8, i8* %30, i64 0
  store i8 0, i8* %42, align 16
  %43 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %43, align 16
  %44 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %44, align 16
  %45 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %45, align 16
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %47 = icmp ne %struct.TYPE_16__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

49:                                               ; preds = %3
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @string_is_empty(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %49
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @string_is_empty(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

65:                                               ; preds = %56, %49
  %66 = load i8*, i8** %6, align 8
  %67 = call i8* @path_basename(i8* %66)
  store i8* %67, i8** %18, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @string_is_empty(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load i8*, i8** %18, align 8
  %73 = call i64 @string_is_empty(i8* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %65
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

76:                                               ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @string_is_equal(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @string_is_equal(i8* %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %76
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

85:                                               ; preds = %80
  %86 = call i32 @core_info_get_list(%struct.TYPE_18__** %16)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %88 = icmp ne %struct.TYPE_18__* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

90:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %128, %90
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %91
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %20, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @path_basename(i8* %113)
  %115 = load i8*, i8** %18, align 8
  %116 = call i64 @string_is_equal(i8* %114, i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %97
  br label %128

119:                                              ; preds = %97
  %120 = load i8*, i8** %20, align 8
  %121 = call i64 @string_is_empty(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

124:                                              ; preds = %119
  %125 = load i8*, i8** %20, align 8
  %126 = trunc i64 %29 to i32
  %127 = call i32 @strlcpy(i8* %30, i8* %125, i32 %126)
  br label %131

128:                                              ; preds = %118
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %91

131:                                              ; preds = %124, %91
  %132 = call i64 @string_is_empty(i8* %30)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

135:                                              ; preds = %131
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @string_is_empty(i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = trunc i64 %38 to i32
  %148 = call i32 @fill_pathname_join(i8* %39, i8* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %147)
  br label %156

149:                                              ; preds = %135
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = trunc i64 %38 to i32
  %155 = call i32 @strlcpy(i8* %39, i8* %153, i32 %154)
  br label %156

156:                                              ; preds = %149, %142
  %157 = call i64 @string_is_empty(i8* %39)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

160:                                              ; preds = %156
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = trunc i64 %32 to i32
  %165 = call i32 @fill_pathname_join(i8* %33, i8* %39, i8* %30, i32 %164)
  br label %169

166:                                              ; preds = %160
  %167 = trunc i64 %32 to i32
  %168 = call i32 @strlcpy(i8* %33, i8* %39, i32 %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = call i64 @string_is_empty(i8* %33)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

173:                                              ; preds = %169
  %174 = call i32 @path_is_directory(i8* %33)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %173
  %177 = call i32 @path_mkdir(i8* %33)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %33)
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

181:                                              ; preds = %176
  br label %182

182:                                              ; preds = %181, %173
  %183 = call i64 @string_is_equal(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %214

185:                                              ; preds = %182
  %186 = load i8*, i8** %5, align 8
  %187 = call i8* @find_last_slash(i8* %186)
  store i8* %187, i8** %21, align 8
  %188 = load i8*, i8** %21, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %213

190:                                              ; preds = %185
  %191 = load i8*, i8** %21, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8*, i8** %5, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  store i64 %196, i64* %22, align 8
  %197 = load i64, i64* %22, align 8
  %198 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp ult i64 %197, %199
  br i1 %200, label %201, label %212

201:                                              ; preds = %190
  %202 = trunc i64 %38 to i32
  %203 = call i32 @memset(i8* %39, i32 0, i32 %202)
  %204 = load i8*, i8** %5, align 8
  %205 = load i64, i64* %22, align 8
  %206 = mul i64 %205, 1
  %207 = trunc i64 %206 to i32
  %208 = call i32 @strlcpy(i8* %39, i8* %204, i32 %207)
  %209 = call i8* @path_basename(i8* %39)
  %210 = trunc i64 %25 to i32
  %211 = call i32 @strlcpy(i8* %27, i8* %209, i32 %210)
  br label %212

212:                                              ; preds = %201, %190
  br label %213

213:                                              ; preds = %212, %185
  br label %229

214:                                              ; preds = %182
  store i8* null, i8** %23, align 8
  %215 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %215, align 16
  %216 = load i8*, i8** %5, align 8
  %217 = call i8* @path_basename(i8* %216)
  %218 = trunc i64 %38 to i32
  %219 = call i32 @strlcpy(i8* %39, i8* %217, i32 %218)
  %220 = call i8* @path_remove_extension(i8* %39)
  store i8* %220, i8** %23, align 8
  %221 = load i8*, i8** %23, align 8
  %222 = call i64 @string_is_empty(i8* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

225:                                              ; preds = %214
  %226 = load i8*, i8** %23, align 8
  %227 = trunc i64 %25 to i32
  %228 = call i32 @strlcpy(i8* %27, i8* %226, i32 %227)
  br label %229

229:                                              ; preds = %225, %213
  %230 = call i64 @string_is_empty(i8* %27)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

233:                                              ; preds = %229
  %234 = trunc i64 %35 to i32
  %235 = call i32 @fill_pathname_join(i8* %36, i8* %33, i8* %27, i32 %234)
  %236 = trunc i64 %35 to i32
  %237 = call i32 @strlcat(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %236)
  %238 = call i64 @string_is_empty(i8* %36)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

241:                                              ; preds = %233
  %242 = call i64 @calloc(i32 1, i32 80)
  %243 = inttoptr i64 %242 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %243, %struct.TYPE_17__** %17, align 8
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %245 = icmp ne %struct.TYPE_17__* %244, null
  br i1 %245, label %247, label %246

246:                                              ; preds = %241
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

247:                                              ; preds = %241
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 2
  store i64 0, i64* %250, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 1
  store i64 0, i64* %253, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  store i64 0, i64* %256, align 8
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 5
  store i64 0, i64* %259, align 8
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 4
  store i64 0, i64* %262, align 8
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 3
  store i64 0, i64* %265, align 8
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 2
  store i64 0, i64* %268, align 8
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  store i64 0, i64* %271, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  store i64 0, i64* %274, align 8
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @strlcpy(i8* %277, i8* %36, i32 8)
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = call i64 @path_is_valid(i8* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %247
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %286 = call i32 @runtime_log_read_file(%struct.TYPE_17__* %285)
  br label %287

287:                                              ; preds = %284, %247
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %288, %struct.TYPE_17__** %4, align 8
  store i32 1, i32* %19, align 4
  br label %289

289:                                              ; preds = %287, %246, %240, %232, %224, %179, %172, %159, %134, %123, %89, %84, %75, %63, %48
  %290 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %290)
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %291
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_16__* @config_get_ptr(...) #2

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i8* @path_basename(i8*) #2

declare dso_local i64 @string_is_equal(i8*, i8*) #2

declare dso_local i32 @core_info_get_list(%struct.TYPE_18__**) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #2

declare dso_local i32 @path_is_directory(i8*) #2

declare dso_local i32 @path_mkdir(i8*) #2

declare dso_local i8* @find_last_slash(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i8* @path_remove_extension(i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i64 @path_is_valid(i8*) #2

declare dso_local i32 @runtime_log_read_file(%struct.TYPE_17__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
