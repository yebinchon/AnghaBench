; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_task_load_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_task_load_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i8*, i32, i8*, i32, i32, i64, i64 }

@RETRO_VFS_FILE_ACCESS_READ = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SAVE_STATE_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s \22%s\22 %s.\00", align 1
@MSG_AUTOLOADING_SAVESTATE_FROM = common dso_local global i32 0, align 4
@MSG_FAILED = common dso_local global i32 0, align 4
@MSG_FAILED_TO_LOAD_STATE = common dso_local global i32 0, align 4
@MSG_SUCCEEDED = common dso_local global i32 0, align 4
@MSG_LOADED_STATE_FROM_SLOT_AUTO = common dso_local global i32 0, align 4
@MSG_LOADED_STATE_FROM_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @task_load_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_load_handler(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %70, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @RETRO_VFS_FILE_ACCESS_READ, align 4
  %22 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %23 = call i64 @intfstream_open_file(i8* %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 6
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %236

31:                                               ; preds = %17
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @SEEK_END, align 4
  %36 = call i64 @intfstream_seek(i64 %34, i32 0, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %236

39:                                               ; preds = %31
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @intfstream_tell(i64 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %236

51:                                               ; preds = %39
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @intfstream_rewind(i64 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = call i8* @malloc(i64 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %51
  br label %236

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = load i32, i32* @SAVE_STATE_CHUNK, align 4
  %79 = call i64 @MIN(i32 %77, i32 %78)
  store i64 %79, i64* %3, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i64, i64* %3, align 8
  %93 = call i64 @intfstream_read(i64 %82, i32* %91, i64 %92)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %4, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %94
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %70
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = sitofp i32 %109 to float
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sitofp i32 %113 to float
  %115 = fdiv float %110, %114
  %116 = fmul float %115, 1.000000e+02
  %117 = call i32 @task_set_progress(%struct.TYPE_13__* %106, float %116)
  br label %118

118:                                              ; preds = %105, %70
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %120 = call i64 @task_get_cancelled(%struct.TYPE_13__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* %3, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %166

126:                                              ; preds = %122, %118
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %126
  %132 = call i8* @malloc(i64 8192)
  store i8* %132, i8** %6, align 8
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 0
  store i8 0, i8* %134, align 1
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* @MSG_AUTOLOADING_SAVESTATE_FROM, align 4
  %137 = call i8* @msg_hash_to_str(i32 %136)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* @MSG_FAILED, align 4
  %142 = call i8* @msg_hash_to_str(i32 %141)
  %143 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %135, i64 8192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %137, i8* %140, i8* %142)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 @strdup(i8* %145)
  %147 = call i32 @task_set_error(%struct.TYPE_13__* %144, i32 %146)
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @free(i8* %148)
  br label %156

150:                                              ; preds = %126
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %152 = load i32, i32* @MSG_FAILED_TO_LOAD_STATE, align 4
  %153 = call i8* @msg_hash_to_str(i32 %152)
  %154 = call i32 @strdup(i8* %153)
  %155 = call i32 @task_set_error(%struct.TYPE_13__* %151, i32 %154)
  br label %156

156:                                              ; preds = %150, %131
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @free(i8* %159)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  store i8* null, i8** %162, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %165 = call i32 @task_load_handler_finished(%struct.TYPE_13__* %163, %struct.TYPE_12__* %164)
  br label %240

166:                                              ; preds = %122
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %169, %172
  br i1 %173, label %174, label %235

174:                                              ; preds = %166
  store i64 8192, i64* %7, align 8
  %175 = load i64, i64* %7, align 8
  %176 = mul i64 %175, 1
  %177 = call i8* @malloc(i64 %176)
  store i8* %177, i8** %8, align 8
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  store i8 0, i8* %179, align 1
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %181 = call i32 @task_free_title(%struct.TYPE_13__* %180)
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 5
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %174
  %187 = load i8*, i8** %8, align 8
  %188 = load i64, i64* %7, align 8
  %189 = load i32, i32* @MSG_AUTOLOADING_SAVESTATE_FROM, align 4
  %190 = call i8* @msg_hash_to_str(i32 %189)
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* @MSG_SUCCEEDED, align 4
  %195 = call i8* @msg_hash_to_str(i32 %194)
  %196 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %187, i64 %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %190, i8* %193, i8* %195)
  br label %220

197:                                              ; preds = %174
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = load i8*, i8** %8, align 8
  %204 = load i32, i32* @MSG_LOADED_STATE_FROM_SLOT_AUTO, align 4
  %205 = call i8* @msg_hash_to_str(i32 %204)
  %206 = load i64, i64* %7, align 8
  %207 = call i32 @strlcpy(i8* %203, i8* %205, i64 %206)
  br label %219

208:                                              ; preds = %197
  %209 = load i8*, i8** %8, align 8
  %210 = load i64, i64* %7, align 8
  %211 = load i32, i32* @MSG_LOADED_STATE_FROM_SLOT, align 4
  %212 = call i8* @msg_hash_to_str(i32 %211)
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to i8*
  %218 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %209, i64 %210, i8* %212, i8* %217)
  br label %219

219:                                              ; preds = %208, %202
  br label %220

220:                                              ; preds = %219, %186
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %222 = call i32 @task_get_mute(%struct.TYPE_13__* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %220
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = call i32 @strdup(i8* %226)
  %228 = call i32 @task_set_title(%struct.TYPE_13__* %225, i32 %227)
  br label %229

229:                                              ; preds = %224, %220
  %230 = load i8*, i8** %8, align 8
  %231 = call i32 @free(i8* %230)
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %234 = call i32 @task_load_handler_finished(%struct.TYPE_13__* %232, %struct.TYPE_12__* %233)
  br label %240

235:                                              ; preds = %166
  br label %240

236:                                              ; preds = %68, %50, %38, %30
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %239 = call i32 @task_load_handler_finished(%struct.TYPE_13__* %237, %struct.TYPE_12__* %238)
  br label %240

240:                                              ; preds = %236, %235, %229, %156
  ret void
}

declare dso_local i64 @intfstream_open_file(i8*, i32, i32) #1

declare dso_local i64 @intfstream_seek(i64, i32, i32) #1

declare dso_local i32 @intfstream_tell(i64) #1

declare dso_local i32 @intfstream_rewind(i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @intfstream_read(i64, i32*, i64) #1

declare dso_local i32 @task_set_progress(%struct.TYPE_13__*, float) #1

declare dso_local i64 @task_get_cancelled(%struct.TYPE_13__*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @task_set_error(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @task_load_handler_finished(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @task_free_title(%struct.TYPE_13__*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @task_get_mute(%struct.TYPE_13__*) #1

declare dso_local i32 @task_set_title(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
