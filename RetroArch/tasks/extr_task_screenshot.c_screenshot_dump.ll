; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_screenshot.c_screenshot_dump.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_screenshot.c_screenshot_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.retro_system_info = type { i8* }
%struct.TYPE_13__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, i64, i32, i32, %struct.TYPE_13__*, i32, i32, i8*, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c".png\00", align 1
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"RetroArch\00", align 1
@IMG_EXT = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@TASK_TYPE_BLOCKING = common dso_local global i32 0, align 4
@task_screenshot_handler = common dso_local global i32 0, align 4
@MSG_TAKING_SCREENSHOT = common dso_local global i32 0, align 4
@task_screenshot_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32)* @screenshot_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @screenshot_dump(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.retro_system_info, align 8
  %31 = alloca %struct.TYPE_13__*, align 8
  %32 = alloca %struct.TYPE_14__*, align 8
  %33 = alloca %struct.TYPE_13__*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i8* %7, i8** %23, align 8
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %31, align 8
  %38 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %32, align 8
  %39 = call i64 @calloc(i32 1, i32 112)
  %40 = inttoptr i64 %39 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %33, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* %27, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %14
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 @strlcpy(i8* %50, i8* %51, i32 8)
  br label %53

53:                                               ; preds = %47, %14
  %54 = load i32, i32* %25, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %26, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %21, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load i8*, i8** %18, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 19
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %23, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 18
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 8
  store i32 0, i32* %79, align 8
  %80 = load i32, i32* %24, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 17
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %29, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %27, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %190, label %94

94:                                               ; preds = %53
  %95 = load i32, i32* %24, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = call i32 @strlcpy(i8* %100, i8* %101, i32 8)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strlcat(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8)
  br label %189

107:                                              ; preds = %94
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %141

113:                                              ; preds = %107
  store i8* null, i8** %34, align 8
  %114 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %115 = call i64 @path_is_empty(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = call i32 @core_get_system_info(%struct.retro_system_info* %30)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  store i32 0, i32* %15, align 4
  br label %243

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %30, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @string_is_empty(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  br label %130

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %30, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %34, align 8
  br label %130

130:                                              ; preds = %127, %126
  br label %134

131:                                              ; preds = %113
  %132 = load i8*, i8** %17, align 8
  %133 = call i8* @path_basename(i8* %132)
  store i8* %133, i8** %34, align 8
  br label %134

134:                                              ; preds = %131, %130
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8*, i8** %34, align 8
  %139 = load i32, i32* @IMG_EXT, align 4
  %140 = call i32 @fill_str_dated_filename(i8* %137, i8* %138, i32 %139, i32 8)
  br label %152

141:                                              ; preds = %107
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** %17, align 8
  %146 = call i8* @path_basename(i8* %145)
  %147 = call i32 @strlcpy(i8* %144, i8* %146, i32 8)
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @strlcat(i8* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 8)
  br label %152

152:                                              ; preds = %141, %134
  %153 = load i8*, i8** %16, align 8
  %154 = call i64 @string_is_empty(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %152
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %156, %152
  %163 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %164 = zext i32 %163 to i64
  %165 = call i8* @llvm.stacksave()
  store i8* %165, i8** %35, align 8
  %166 = alloca i8, i64 %164, align 16
  store i64 %164, i64* %36, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 0, i8* %167, align 16
  %168 = load i8*, i8** %17, align 8
  %169 = trunc i64 %164 to i32
  %170 = call i32 @fill_pathname_basedir(i8* %166, i8* %168, i32 %169)
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @fill_pathname_join(i8* %173, i8* %166, i8* %176, i32 8)
  %178 = load i8*, i8** %35, align 8
  call void @llvm.stackrestore(i8* %178)
  br label %188

179:                                              ; preds = %156
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @fill_pathname_join(i8* %182, i8* %183, i8* %186, i32 8)
  br label %188

188:                                              ; preds = %179, %162
  br label %189

189:                                              ; preds = %188, %97
  br label %190

190:                                              ; preds = %189, %53
  %191 = load i32, i32* %28, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %240

193:                                              ; preds = %190
  %194 = call %struct.TYPE_13__* (...) @task_init()
  store %struct.TYPE_13__* %194, %struct.TYPE_13__** %37, align 8
  %195 = load i32, i32* @TASK_TYPE_BLOCKING, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 16
  store i32 %195, i32* %197, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 15
  store %struct.TYPE_13__* %198, %struct.TYPE_13__** %200, align 8
  %201 = load i32, i32* @task_screenshot_handler, align 4
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 14
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %24, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %193
  %207 = load i32, i32* @MSG_TAKING_SCREENSHOT, align 4
  %208 = call i32 @msg_hash_to_str(i32 %207)
  %209 = call i64 @strdup(i32 %208)
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 12
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %206, %193
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %214 = call i64 @task_queue_push(%struct.TYPE_13__* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 1, i32* %15, align 4
  br label %243

217:                                              ; preds = %212
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 12
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %224 = call i32 @task_free_title(%struct.TYPE_13__* %223)
  br label %225

225:                                              ; preds = %222, %217
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %227 = call i32 @free(%struct.TYPE_13__* %226)
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 11
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = icmp ne %struct.TYPE_13__* %230, null
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 11
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %234, align 8
  %236 = call i32 @free(%struct.TYPE_13__* %235)
  br label %237

237:                                              ; preds = %232, %225
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %239 = call i32 @free(%struct.TYPE_13__* %238)
  store i32 0, i32* %15, align 4
  br label %243

240:                                              ; preds = %190
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %242 = call i32 @screenshot_dump_direct(%struct.TYPE_13__* %241)
  store i32 %242, i32* %15, align 4
  br label %243

243:                                              ; preds = %240, %237, %216, %120
  %244 = load i32, i32* %15, align 4
  ret i32 %244
}

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @path_is_empty(i32) #1

declare dso_local i32 @core_get_system_info(%struct.retro_system_info*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i32 @fill_str_dated_filename(i8*, i8*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fill_pathname_basedir(i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.TYPE_13__* @task_init(...) #1

declare dso_local i64 @strdup(i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i64 @task_queue_push(%struct.TYPE_13__*) #1

declare dso_local i32 @task_free_title(%struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local i32 @screenshot_dump_direct(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
