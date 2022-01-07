; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_playlist_entry_collection.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/cbs/extr_menu_cbs_ok.c_action_ok_playlist_entry_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i8*, i8*, i8*, i8*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@COLLECTION_SIZE = common dso_local global i32 0, align 4
@CORE_TYPE_PLAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"[playlist] subsystem not found in implementation\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DETECT\00", align 1
@PLAYLIST_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"File could not be loaded from playlist.\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @action_ok_playlist_entry_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_ok_playlist_entry_collection(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.playlist_entry*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_14__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_16__, align 4
  %24 = alloca %struct.TYPE_15__, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.playlist_entry, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %30 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %12, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %13, align 8
  %34 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %19, align 8
  store i32 0, i32* %20, align 4
  %37 = call %struct.TYPE_14__* (...) @menu_driver_get_ptr()
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %21, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %5
  %41 = call i32 (...) @menu_cbs_exit()
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %221

42:                                               ; preds = %5
  %43 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %43, align 16
  %44 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %44, align 16
  %45 = call i32* (...) @playlist_get_cached()
  store i32* %45, i32** %18, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %59, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @COLLECTION_SIZE, align 4
  %53 = call i32* @playlist_init(i32 %51, i32 %52)
  store i32* %53, i32** %18, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = call i32 (...) @menu_cbs_exit()
  store i32 %57, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %221

58:                                               ; preds = %48
  store i32 1, i32* %16, align 4
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32*, i32** %18, align 8
  store i32* %60, i32** %17, align 8
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %15, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load i64, i64* %15, align 8
  %64 = call i32 @playlist_get_index(i32* %62, i64 %63, %struct.playlist_entry** %19)
  %65 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %66 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @string_is_empty(i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %112, label %70

70:                                               ; preds = %59
  %71 = bitcast %struct.TYPE_16__* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %71, i8 0, i64 4, i1 false)
  %72 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %73 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %76 = call i32 @task_push_load_new_core(i8* %74, i32* null, %struct.TYPE_16__* %23, i32 %75, i32* null, i32* null)
  %77 = call i32 (...) @content_clear_subsystem()
  %78 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %79 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @content_set_subsystem_by_name(i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %70
  %84 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %221

85:                                               ; preds = %70
  store i32 0, i32* %20, align 4
  br label %86

86:                                               ; preds = %106, %85
  %87 = load i32, i32* %20, align 4
  %88 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %89 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %88, i32 0, i32 6
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ult i32 %87, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %86
  %95 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %96 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %95, i32 0, i32 6
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = load i32, i32* %20, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @content_add_subsystem(i32 %104)
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %20, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %20, align 4
  br label %86

109:                                              ; preds = %86
  %110 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %111 = call i32 @task_push_load_subsystem_with_core_from_menu(i32* null, %struct.TYPE_16__* %23, i32 %110, i32* null, i32* null)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %221

112:                                              ; preds = %59
  %113 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %114 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @string_is_equal(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %177

118:                                              ; preds = %112
  %119 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %120 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @string_is_equal(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %177

124:                                              ; preds = %118
  store i8* null, i8** %25, align 8
  %125 = load i32*, i32** %17, align 8
  %126 = call i8* @playlist_get_default_core_path(i32* %125)
  store i8* %126, i8** %26, align 8
  store i32 0, i32* %27, align 4
  %127 = load i8*, i8** %26, align 8
  %128 = call i32 @string_is_empty(i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %124
  %131 = load i8*, i8** %26, align 8
  %132 = trunc i64 %35 to i32
  %133 = call i32 @strlcpy(i8* %36, i8* %131, i32 %132)
  %134 = load i32, i32* @PLAYLIST_LOAD, align 4
  %135 = trunc i64 %35 to i32
  %136 = call i32 @playlist_resolve_path(i32 %134, i8* %36, i32 %135)
  store i32 1, i32* %27, align 4
  br label %137

137:                                              ; preds = %130, %124
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store i8* %36, i8** %139, align 8
  %140 = call i32 @core_info_find(%struct.TYPE_15__* %24, i8* %36)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  store i32 0, i32* %27, align 4
  br label %143

143:                                              ; preds = %142, %137
  %144 = load i32, i32* %27, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %160, label %146

146:                                              ; preds = %143
  %147 = load i8*, i8** %25, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @action_ok_file_load_with_detect_core_collection(i8* %147, i8* %148, i32 %149, i64 %150, i64 %151)
  store i32 %152, i32* %28, align 4
  %153 = load i32, i32* %16, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load i32*, i32** %18, align 8
  %157 = call i32 @playlist_free(i32* %156)
  br label %158

158:                                              ; preds = %155, %146
  %159 = load i32, i32* %28, align 4
  store i32 %159, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %221

160:                                              ; preds = %143
  %161 = call i32* (...) @playlist_get_cached()
  store i32* %161, i32** %18, align 8
  %162 = load i32*, i32** %18, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %176

164:                                              ; preds = %160
  %165 = bitcast %struct.playlist_entry* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %165, i8 0, i64 48, i1 false)
  %166 = load i8*, i8** %26, align 8
  %167 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %29, i32 0, i32 1
  store i8* %166, i8** %167, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %29, i32 0, i32 2
  store i8* %171, i8** %172, align 8
  %173 = load i32*, i32** %18, align 8
  %174 = load i64, i64* %15, align 8
  %175 = call i32 @command_playlist_update_write(i32* %173, i64 %174, %struct.playlist_entry* %29)
  br label %176

176:                                              ; preds = %164, %160
  br label %186

177:                                              ; preds = %118, %112
  %178 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %179 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = trunc i64 %35 to i32
  %182 = call i32 @strlcpy(i8* %36, i8* %180, i32 %181)
  %183 = load i32, i32* @PLAYLIST_LOAD, align 4
  %184 = trunc i64 %35 to i32
  %185 = call i32 @playlist_resolve_path(i32 %183, i8* %36, i32 %184)
  br label %186

186:                                              ; preds = %177, %176
  %187 = load i32*, i32** %17, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32*, i32** %17, align 8
  %191 = load i64, i64* %15, align 8
  %192 = call i32 @menu_content_playlist_load(i32* %190, i64 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %189, %186
  %195 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %196 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %197 = call i32 @runloop_msg_queue_push(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 100, i32 1, i32* null, i32 %195, i32 %196)
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load i32*, i32** %18, align 8
  %202 = call i32 @playlist_free(i32* %201)
  br label %203

203:                                              ; preds = %200, %194
  %204 = call i32 (...) @menu_cbs_exit()
  store i32 %204, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %221

205:                                              ; preds = %189
  %206 = load i32*, i32** %17, align 8
  %207 = load i64, i64* %15, align 8
  %208 = call i32 @playlist_get_index(i32* %206, i64 %207, %struct.playlist_entry** %19)
  %209 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %210 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %209, i32 0, i32 3
  %211 = load i8*, i8** %210, align 8
  %212 = trunc i64 %31 to i32
  %213 = call i32 @strlcpy(i8* %33, i8* %211, i32 %212)
  %214 = load i32, i32* @PLAYLIST_LOAD, align 4
  %215 = trunc i64 %31 to i32
  %216 = call i32 @playlist_resolve_path(i32 %214, i8* %33, i32 %215)
  %217 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %218 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @default_action_ok_load_content_from_playlist_from_menu(i8* %36, i8* %33, i32 %219)
  store i32 %220, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %221

221:                                              ; preds = %205, %203, %158, %109, %83, %56, %40
  %222 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_14__* @menu_driver_get_ptr(...) #2

declare dso_local i32 @menu_cbs_exit(...) #2

declare dso_local i32* @playlist_get_cached(...) #2

declare dso_local i32* @playlist_init(i32, i32) #2

declare dso_local i32 @playlist_get_index(i32*, i64, %struct.playlist_entry**) #2

declare dso_local i32 @string_is_empty(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @task_push_load_new_core(i8*, i32*, %struct.TYPE_16__*, i32, i32*, i32*) #2

declare dso_local i32 @content_clear_subsystem(...) #2

declare dso_local i32 @content_set_subsystem_by_name(i8*) #2

declare dso_local i32 @RARCH_LOG(i8*) #2

declare dso_local i32 @content_add_subsystem(i32) #2

declare dso_local i32 @task_push_load_subsystem_with_core_from_menu(i32*, %struct.TYPE_16__*, i32, i32*, i32*) #2

declare dso_local i64 @string_is_equal(i8*, i8*) #2

declare dso_local i8* @playlist_get_default_core_path(i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @playlist_resolve_path(i32, i8*, i32) #2

declare dso_local i32 @core_info_find(%struct.TYPE_15__*, i8*) #2

declare dso_local i32 @action_ok_file_load_with_detect_core_collection(i8*, i8*, i32, i64, i64) #2

declare dso_local i32 @playlist_free(i32*) #2

declare dso_local i32 @command_playlist_update_write(i32*, i64, %struct.playlist_entry*) #2

declare dso_local i32 @menu_content_playlist_load(i32*, i64) #2

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @default_action_ok_load_content_from_playlist_from_menu(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
