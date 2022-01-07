; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_playlist_manager.c_task_pl_manager_reset_cores_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_playlist_manager.c_task_pl_manager_reset_cores_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i8*, i32, i32 }
%struct.playlist_entry = type { i8*, i8*, i8*, i8*, i32 }

@COLLECTION_SIZE = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@MSG_PLAYLIST_MANAGER_RESETTING_CORES = common dso_local global i32 0, align 4
@MSG_PLAYLIST_MANAGER_CORES_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @task_pl_manager_reset_cores_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_pl_manager_reset_cores_handler(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.playlist_entry*, align 8
  %5 = alloca %struct.playlist_entry, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %224

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %3, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %224

25:                                               ; preds = %17
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = call i64 @task_get_cancelled(%struct.TYPE_10__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %224

30:                                               ; preds = %25
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %220 [
    i32 130, label %34
    i32 128, label %69
    i32 129, label %175
  ]

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @path_is_valid(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %224

41:                                               ; preds = %34
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @COLLECTION_SIZE, align 4
  %46 = call i32 @playlist_init(i32 %44, i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %224

54:                                               ; preds = %41
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @playlist_size(i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %224

66:                                               ; preds = %54
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 128, i32* %68, align 8
  br label %223

69:                                               ; preds = %30
  store %struct.playlist_entry* null, %struct.playlist_entry** %4, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @playlist_get_index(i32 %72, i32 %75, %struct.playlist_entry** %4)
  %77 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %78 = icmp ne %struct.playlist_entry* %77, null
  br i1 %78, label %79, label %159

79:                                               ; preds = %69
  %80 = bitcast %struct.playlist_entry* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %80, i8 0, i64 40, i1 false)
  %81 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %6, align 8
  %84 = alloca i8, i64 %82, align 16
  store i64 %82, i64* %7, align 8
  %85 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %86 = zext i32 %85 to i64
  %87 = alloca i8, i64 %86, align 16
  store i64 %86, i64* %8, align 8
  %88 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 0, i8* %88, align 16
  %89 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 0, i8* %89, align 16
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %91 = call i32 @task_free_title(%struct.TYPE_10__* %90)
  %92 = load i32, i32* @MSG_PLAYLIST_MANAGER_RESETTING_CORES, align 4
  %93 = call i32 @msg_hash_to_str(i32 %92)
  %94 = trunc i64 %82 to i32
  %95 = call i32 @strlcpy(i8* %84, i32 %93, i32 %94)
  %96 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %97 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @string_is_empty(i8* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %79
  %102 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %103 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = trunc i64 %82 to i32
  %106 = call i32 @strlcat(i8* %84, i8* %104, i32 %105)
  br label %128

107:                                              ; preds = %79
  %108 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %109 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @string_is_empty(i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %115 = zext i32 %114 to i64
  %116 = call i8* @llvm.stacksave()
  store i8* %116, i8** %9, align 8
  %117 = alloca i8, i64 %115, align 16
  store i64 %115, i64* %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  store i8 0, i8* %118, align 16
  %119 = load %struct.playlist_entry*, %struct.playlist_entry** %4, align 8
  %120 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = trunc i64 %115 to i32
  %123 = call i32 @fill_pathname_base_noext(i8* %117, i8* %121, i32 %122)
  %124 = trunc i64 %82 to i32
  %125 = call i32 @strlcat(i8* %84, i8* %117, i32 %124)
  %126 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %126)
  br label %127

127:                                              ; preds = %113, %107
  br label %128

128:                                              ; preds = %127, %101
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %130 = call i32 @strdup(i8* %84)
  %131 = call i32 @task_set_title(%struct.TYPE_10__* %129, i32 %130)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %135, 100
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %136, %139
  %141 = call i32 @task_set_progress(%struct.TYPE_10__* %132, i32 %140)
  %142 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 68, i8* %142, align 16
  %143 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 69, i8* %143, align 1
  %144 = getelementptr inbounds i8, i8* %87, i64 2
  store i8 84, i8* %144, align 2
  %145 = getelementptr inbounds i8, i8* %87, i64 3
  store i8 69, i8* %145, align 1
  %146 = getelementptr inbounds i8, i8* %87, i64 4
  store i8 67, i8* %146, align 4
  %147 = getelementptr inbounds i8, i8* %87, i64 5
  store i8 84, i8* %147, align 1
  %148 = getelementptr inbounds i8, i8* %87, i64 6
  store i8 0, i8* %148, align 2
  %149 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %5, i32 0, i32 2
  store i8* %87, i8** %149, align 8
  %150 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %5, i32 0, i32 3
  store i8* %87, i8** %150, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @playlist_update(i32 %153, i32 %156, %struct.playlist_entry* %5)
  %158 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %158)
  br label %159

159:                                              ; preds = %128, %69
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp sge i32 %166, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %159
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  store i32 129, i32* %173, align 8
  br label %174

174:                                              ; preds = %171, %159
  br label %223

175:                                              ; preds = %30
  %176 = call i32* (...) @playlist_get_cached()
  store i32* %176, i32** %11, align 8
  %177 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %178 = zext i32 %177 to i64
  %179 = call i8* @llvm.stacksave()
  store i8* %179, i8** %12, align 8
  %180 = alloca i8, i64 %178, align 16
  store i64 %178, i64* %13, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  store i8 0, i8* %181, align 16
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @playlist_write_file(i32 %184)
  %186 = load i32*, i32** %11, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %204

188:                                              ; preds = %175
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @playlist_get_conf_path(i32* %192)
  %194 = call i32 @string_is_equal(i32 %191, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %188
  %197 = call i32 (...) @playlist_free_cached()
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @COLLECTION_SIZE, align 4
  %202 = call i32 @playlist_init_cached(i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %196, %188
  br label %204

204:                                              ; preds = %203, %175
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %206 = call i32 @task_free_title(%struct.TYPE_10__* %205)
  %207 = load i32, i32* @MSG_PLAYLIST_MANAGER_CORES_RESET, align 4
  %208 = call i32 @msg_hash_to_str(i32 %207)
  %209 = trunc i64 %178 to i32
  %210 = call i32 @strlcpy(i8* %180, i32 %208, i32 %209)
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = trunc i64 %178 to i32
  %215 = call i32 @strlcat(i8* %180, i8* %213, i32 %214)
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %217 = call i32 @strdup(i8* %180)
  %218 = call i32 @task_set_title(%struct.TYPE_10__* %216, i32 %217)
  %219 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %219)
  br label %220

220:                                              ; preds = %30, %204
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %222 = call i32 @task_set_progress(%struct.TYPE_10__* %221, i32 100)
  br label %224

223:                                              ; preds = %174, %66
  br label %233

224:                                              ; preds = %220, %65, %53, %40, %29, %24, %16
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %226 = icmp ne %struct.TYPE_10__* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %229 = call i32 @task_set_finished(%struct.TYPE_10__* %228, i32 1)
  br label %230

230:                                              ; preds = %227, %224
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %232 = call i32 @free_pl_manager_handle(%struct.TYPE_11__* %231)
  br label %233

233:                                              ; preds = %230, %223
  ret void
}

declare dso_local i64 @task_get_cancelled(%struct.TYPE_10__*) #1

declare dso_local i32 @path_is_valid(i32) #1

declare dso_local i32 @playlist_init(i32, i32) #1

declare dso_local i32 @playlist_size(i32) #1

declare dso_local i32 @playlist_get_index(i32, i32, %struct.playlist_entry**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @task_free_title(%struct.TYPE_10__*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname_base_noext(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @task_set_title(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @task_set_progress(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @playlist_update(i32, i32, %struct.playlist_entry*) #1

declare dso_local i32* @playlist_get_cached(...) #1

declare dso_local i32 @playlist_write_file(i32) #1

declare dso_local i32 @string_is_equal(i32, i32) #1

declare dso_local i32 @playlist_get_conf_path(i32*) #1

declare dso_local i32 @playlist_free_cached(...) #1

declare dso_local i32 @playlist_init_cached(i32, i32) #1

declare dso_local i32 @task_set_finished(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @free_pl_manager_handle(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
