; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_task_save_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_task_save_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i8*, i32, i32, i64, i64, i64, i64 }

@RETRO_VFS_FILE_ACCESS_WRITE = common dso_local global i32 0, align 4
@RETRO_VFS_FILE_ACCESS_HINT_NONE = common dso_local global i32 0, align 4
@SAVE_STATE_CHUNK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s \22%s\22.\0A\00", align 1
@MSG_FAILED_TO_UNDO_SAVE_STATE = common dso_local global i32 0, align 4
@undo_save_buf = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s \22%s\22.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"RAM\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@MSG_FAILED_TO_SAVE_STATE_TO = common dso_local global i32 0, align 4
@MSG_RESTORED_OLD_SAVE_STATE = common dso_local global i32 0, align 4
@MSG_SAVED_STATE_TO_SLOT_AUTO = common dso_local global i32 0, align 4
@MSG_SAVED_STATE_TO_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @task_save_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_save_handler(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca [8192 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [128 x i8], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @RETRO_VFS_FILE_ACCESS_WRITE, align 4
  %22 = load i32, i32* @RETRO_VFS_FILE_ACCESS_HINT_NONE, align 4
  %23 = call i64 @intfstream_open_file(i8* %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 6
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %198

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @get_serialized_data(i8* %40, i32 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %37, %32
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = load i32, i32* @SAVE_STATE_CHUNK, align 4
  %56 = call i32 @MIN(i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %47
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %4, align 4
  %75 = call i64 @intfstream_write(i64 %64, i32* %73, i32 %74)
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to float
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sitofp i32 %91 to float
  %93 = fdiv float %88, %92
  %94 = fmul float %93, 1.000000e+02
  %95 = call i32 @task_set_progress(%struct.TYPE_14__* %84, float %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = call i64 @task_get_cancelled(%struct.TYPE_14__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %78
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %136

103:                                              ; preds = %99, %78
  %104 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %104, align 16
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i32, i32* @MSG_FAILED_TO_UNDO_SAVE_STATE, align 4
  %111 = call i8* @msg_hash_to_str(i32 %110)
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @undo_save_buf, i32 0, i32 0), align 4
  %113 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %111, i32 %112)
  %114 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %115 = load i32, i32* @MSG_FAILED_TO_UNDO_SAVE_STATE, align 4
  %116 = call i8* @msg_hash_to_str(i32 %115)
  %117 = ptrtoint i8* %116 to i64
  %118 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %114, i32 8192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %128

119:                                              ; preds = %103
  %120 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %121 = load i32, i32* @MSG_FAILED_TO_SAVE_STATE_TO, align 4
  %122 = call i8* @msg_hash_to_str(i32 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %120, i32 8192, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %123, i8* %126)
  br label %128

128:                                              ; preds = %119, %109
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %130 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %131 = call i8* @strdup(i8* %130)
  %132 = call i32 @task_set_error(%struct.TYPE_14__* %129, i8* %131)
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = call i32 @task_save_handler_finished(%struct.TYPE_14__* %133, %struct.TYPE_13__* %134)
  br label %198

136:                                              ; preds = %99
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %144, label %198

144:                                              ; preds = %136
  store i8* null, i8** %7, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %146 = call i32 @task_free_title(%struct.TYPE_14__* %145)
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @MSG_RESTORED_OLD_SAVE_STATE, align 4
  %153 = call i8* @msg_hash_to_str(i32 %152)
  %154 = call i8* @strdup(i8* %153)
  store i8* %154, i8** %7, align 8
  br label %176

155:                                              ; preds = %144
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i32, i32* @MSG_SAVED_STATE_TO_SLOT_AUTO, align 4
  %162 = call i8* @msg_hash_to_str(i32 %161)
  %163 = call i8* @strdup(i8* %162)
  store i8* %163, i8** %7, align 8
  br label %175

164:                                              ; preds = %155
  %165 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %165, align 16
  %166 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %167 = load i32, i32* @MSG_SAVED_STATE_TO_SLOT, align 4
  %168 = call i8* @msg_hash_to_str(i32 %167)
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %166, i32 128, i8* %168, i64 %171)
  %173 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %174 = call i8* @strdup(i8* %173)
  store i8* %174, i8** %7, align 8
  br label %175

175:                                              ; preds = %164, %160
  br label %176

176:                                              ; preds = %175, %151
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %178 = call i32 @task_get_mute(%struct.TYPE_14__* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %176
  %181 = load i8*, i8** %7, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @task_set_title(%struct.TYPE_14__* %184, i8* %185)
  store i8* null, i8** %7, align 8
  br label %187

187:                                              ; preds = %183, %180, %176
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %190 = call i32 @task_save_handler_finished(%struct.TYPE_14__* %188, %struct.TYPE_13__* %189)
  %191 = load i8*, i8** %7, align 8
  %192 = call i32 @string_is_empty(i8* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %187
  %195 = load i8*, i8** %7, align 8
  %196 = call i32 @free(i8* %195)
  br label %197

197:                                              ; preds = %194, %187
  br label %198

198:                                              ; preds = %30, %128, %197, %136
  ret void
}

declare dso_local i64 @intfstream_open_file(i8*, i32, i32) #1

declare dso_local i64 @get_serialized_data(i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @intfstream_write(i64, i32*, i32) #1

declare dso_local i32 @task_set_progress(%struct.TYPE_14__*, float) #1

declare dso_local i64 @task_get_cancelled(%struct.TYPE_14__*) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i32 @task_set_error(%struct.TYPE_14__*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @task_save_handler_finished(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @task_free_title(%struct.TYPE_14__*) #1

declare dso_local i32 @task_get_mute(%struct.TYPE_14__*) #1

declare dso_local i32 @task_set_title(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
