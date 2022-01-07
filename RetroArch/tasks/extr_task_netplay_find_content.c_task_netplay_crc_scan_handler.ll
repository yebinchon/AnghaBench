; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_netplay_find_content.c_task_netplay_crc_scan_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_netplay_find_content.c_task_netplay_crc_scan_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i8*, i8*, i32, i8*, i8*, i32, %struct.string_list* }
%struct.string_list = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }
%struct.playlist_entry = type { i8*, i8* }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Looking for compatible content...\00", align 1
@MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Playlist directory not found\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"There are no playlists available; cannot execute search\00", align 1
@CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"00000000|crc\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"[Lobby] Testing CRC matching for: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%X|crc\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"[Lobby] Current content crc: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"[Lobby] CRC match %s with currently loaded content\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".lpl\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"[Lobby] Searching playlist: %s\0A\00", align 1
@COLLECTION_SIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"[Lobby] CRC match %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"[Lobby] Filename match %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"[Lobby] Searching content %d/%d (%s) in playlist: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"[Lobby] filename match %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"[Lobby] Subsystem matching set found %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [61 x i8] c"Failed to locate matching content by either CRC or filename.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @task_netplay_crc_scan_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_netplay_crc_scan_handler(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.playlist_entry*, align 8
  %19 = alloca [100 x i32], align 16
  %20 = alloca %struct.string_list*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca %struct.playlist_entry*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %25 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %6, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %9, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = call i32 @begin_task(%struct.TYPE_13__* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = call i64 @core_requires_content(%struct.TYPE_14__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = call i32 @task_set_data(%struct.TYPE_13__* %43, %struct.TYPE_14__* %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %47 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND, align 4
  %48 = call i8* @msg_hash_to_str(i32 %47)
  %49 = call i32 @finish_task(%struct.TYPE_13__* %46, i8* %48)
  store i32 1, i32* %10, align 4
  br label %519

50:                                               ; preds = %1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 8
  %53 = load %struct.string_list*, %struct.string_list** %52, align 8
  %54 = icmp ne %struct.string_list* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %57 = call i32 @finish_task(%struct.TYPE_13__* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = call i32 @free(%struct.TYPE_14__* %58)
  store i32 1, i32* %10, align 4
  br label %519

60:                                               ; preds = %50
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 8
  %63 = load %struct.string_list*, %struct.string_list** %62, align 8
  %64 = getelementptr inbounds %struct.string_list, %struct.string_list* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %60
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = call i64 @core_requires_content(%struct.TYPE_14__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 8
  %74 = load %struct.string_list*, %struct.string_list** %73, align 8
  %75 = call i32 @string_list_free(%struct.string_list* %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %77 = call i32 @finish_task(%struct.TYPE_13__* %76, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @command_event(i32 %78, i32 %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = call i32 @free(%struct.TYPE_14__* %83)
  store i32 1, i32* %10, align 4
  br label %519

85:                                               ; preds = %67, %60
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @string_is_equal(i8* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %142

95:                                               ; preds = %85
  %96 = call i32 (...) @content_get_crc()
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %142

98:                                               ; preds = %95
  %99 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %100 = zext i32 %99 to i64
  %101 = call i8* @llvm.stacksave()
  store i8* %101, i8** %11, align 8
  %102 = alloca i8, i64 %100, align 16
  store i64 %100, i64* %12, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %105)
  %107 = trunc i64 %100 to i32
  %108 = call i32 (...) @content_get_crc()
  %109 = call i32 @snprintf(i8* %102, i32 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  %110 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %102)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @string_is_equal(i8* %102, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %137

116:                                              ; preds = %98
  %117 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* %102)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strlcpy(i8* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 4
  store i32 1, i32* %125, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %128 = call i32 @task_set_data(%struct.TYPE_13__* %126, %struct.TYPE_14__* %127)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND, align 4
  %131 = call i8* @msg_hash_to_str(i32 %130)
  %132 = call i32 @finish_task(%struct.TYPE_13__* %129, i8* %131)
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 8
  %135 = load %struct.string_list*, %struct.string_list** %134, align 8
  %136 = call i32 @string_list_free(%struct.string_list* %135)
  store i32 1, i32* %10, align 4
  br label %138

137:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %137, %116
  %139 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %10, align 4
  switch i32 %140, label %519 [
    i32 0, label %141
  ]

141:                                              ; preds = %138
  br label %142

142:                                              ; preds = %141, %95, %85
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 5
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @string_is_empty(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 5
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @string_is_equal(i8* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %295

154:                                              ; preds = %148, %142
  store i64 0, i64* %3, align 8
  br label %155

155:                                              ; preds = %291, %154
  %156 = load i64, i64* %3, align 8
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 8
  %159 = load %struct.string_list*, %struct.string_list** %158, align 8
  %160 = getelementptr inbounds %struct.string_list, %struct.string_list* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ult i64 %156, %161
  br i1 %162, label %163, label %294

163:                                              ; preds = %155
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 8
  %166 = load %struct.string_list*, %struct.string_list** %165, align 8
  %167 = getelementptr inbounds %struct.string_list, %struct.string_list* %166, i32 0, i32 1
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load i64, i64* %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %15, align 8
  %173 = load i8*, i8** %15, align 8
  %174 = call i64 @strstr(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %163
  br label %291

177:                                              ; preds = %163
  %178 = load i8*, i8** %15, align 8
  %179 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %178)
  %180 = load i8*, i8** %15, align 8
  %181 = load i32, i32* @COLLECTION_SIZE, align 4
  %182 = call i32* @playlist_init(i8* %180, i32 %181)
  store i32* %182, i32** %13, align 8
  %183 = load i32*, i32** %13, align 8
  %184 = call i32 @playlist_get_size(i32* %183)
  store i32 %184, i32* %14, align 4
  store i64 0, i64* %4, align 8
  br label %185

185:                                              ; preds = %285, %177
  %186 = load i64, i64* %4, align 8
  %187 = load i32, i32* %14, align 4
  %188 = zext i32 %187 to i64
  %189 = icmp ult i64 %186, %188
  br i1 %189, label %190, label %288

190:                                              ; preds = %185
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %18, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i64, i64* %4, align 8
  %193 = call i32 @playlist_get_index(i32* %191, i64 %192, %struct.playlist_entry** %18)
  %194 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  %195 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  store i8* %196, i8** %16, align 8
  %197 = load %struct.playlist_entry*, %struct.playlist_entry** %18, align 8
  %198 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  store i8* %199, i8** %17, align 8
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %232

202:                                              ; preds = %190
  %203 = load i8*, i8** %17, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = call i64 @string_is_equal(i8* %203, i8* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %202
  %210 = load i8*, i8** %17, align 8
  %211 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %210)
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = load i8*, i8** %16, align 8
  %216 = call i32 @strlcpy(i8* %214, i8* %215, i32 8)
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %221 = call i32 @task_set_data(%struct.TYPE_13__* %219, %struct.TYPE_14__* %220)
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %223 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND, align 4
  %224 = call i8* @msg_hash_to_str(i32 %223)
  %225 = call i32 @finish_task(%struct.TYPE_13__* %222, i8* %224)
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 8
  %228 = load %struct.string_list*, %struct.string_list** %227, align 8
  %229 = call i32 @string_list_free(%struct.string_list* %228)
  %230 = load i32*, i32** %13, align 8
  %231 = call i32 @playlist_free(i32* %230)
  store i32 1, i32* %10, align 4
  br label %519

232:                                              ; preds = %202, %190
  %233 = trunc i64 %26 to i32
  %234 = load i8*, i8** %16, align 8
  %235 = call i32 @get_entry(i8* %28, i32 %233, i8* %234)
  %236 = call i64 @string_is_empty(i8* %28)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %275, label %238

238:                                              ; preds = %232
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 3
  %241 = load i8*, i8** %240, align 8
  %242 = call i64 @string_is_equal(i8* %28, i8* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %275

244:                                              ; preds = %238
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 6
  %247 = load i8*, i8** %246, align 8
  %248 = load i8*, i8** %16, align 8
  %249 = call i8* @path_get_extension(i8* %248)
  %250 = call i64 @strstr(i8* %247, i8* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %275

252:                                              ; preds = %244
  %253 = load i8*, i8** %16, align 8
  %254 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %253)
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 3
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** %16, align 8
  %259 = call i32 @strlcpy(i8* %257, i8* %258, i32 8)
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  store i32 1, i32* %261, align 8
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %264 = call i32 @task_set_data(%struct.TYPE_13__* %262, %struct.TYPE_14__* %263)
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %266 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND, align 4
  %267 = call i8* @msg_hash_to_str(i32 %266)
  %268 = call i32 @finish_task(%struct.TYPE_13__* %265, i8* %267)
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 8
  %271 = load %struct.string_list*, %struct.string_list** %270, align 8
  %272 = call i32 @string_list_free(%struct.string_list* %271)
  %273 = load i32*, i32** %13, align 8
  %274 = call i32 @playlist_free(i32* %273)
  store i32 1, i32* %10, align 4
  br label %519

275:                                              ; preds = %244, %238, %232
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %277 = load i64, i64* %4, align 8
  %278 = load i32, i32* %14, align 4
  %279 = zext i32 %278 to i64
  %280 = udiv i64 %277, %279
  %281 = uitofp i64 %280 to double
  %282 = fmul double %281, 1.000000e+02
  %283 = fptosi double %282 to i32
  %284 = call i32 @task_set_progress(%struct.TYPE_13__* %276, i32 %283)
  br label %285

285:                                              ; preds = %275
  %286 = load i64, i64* %4, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %4, align 8
  br label %185

288:                                              ; preds = %185
  %289 = load i32*, i32** %13, align 8
  %290 = call i32 @playlist_free(i32* %289)
  br label %291

291:                                              ; preds = %288, %176
  %292 = load i64, i64* %3, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %3, align 8
  br label %155

294:                                              ; preds = %155
  br label %505

295:                                              ; preds = %148
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 3
  %298 = load i8*, i8** %297, align 8
  %299 = call %struct.string_list* @string_split(i8* %298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  store %struct.string_list* %299, %struct.string_list** %20, align 8
  store i64 0, i64* %3, align 8
  br label %300

300:                                              ; preds = %457, %295
  %301 = load i64, i64* %3, align 8
  %302 = load %struct.string_list*, %struct.string_list** %20, align 8
  %303 = getelementptr inbounds %struct.string_list, %struct.string_list* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp ult i64 %301, %304
  br i1 %305, label %306, label %460

306:                                              ; preds = %300
  %307 = load i64, i64* %3, align 8
  %308 = getelementptr inbounds [100 x i32], [100 x i32]* %19, i64 0, i64 %307
  store i32 0, i32* %308, align 4
  store i64 0, i64* %4, align 8
  br label %309

309:                                              ; preds = %453, %306
  %310 = load i64, i64* %4, align 8
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 8
  %313 = load %struct.string_list*, %struct.string_list** %312, align 8
  %314 = getelementptr inbounds %struct.string_list, %struct.string_list* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp ult i64 %310, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %309
  %318 = load i64, i64* %3, align 8
  %319 = getelementptr inbounds [100 x i32], [100 x i32]* %19, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 0
  %322 = xor i1 %321, true
  br label %323

323:                                              ; preds = %317, %309
  %324 = phi i1 [ false, %309 ], [ %322, %317 ]
  br i1 %324, label %325, label %456

325:                                              ; preds = %323
  store i32* null, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 8
  %328 = load %struct.string_list*, %struct.string_list** %327, align 8
  %329 = getelementptr inbounds %struct.string_list, %struct.string_list* %328, i32 0, i32 1
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %329, align 8
  %331 = load i64, i64* %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  store i8* %334, i8** %23, align 8
  %335 = load i8*, i8** %23, align 8
  %336 = call i64 @strstr(i8* %335, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %325
  br label %453

339:                                              ; preds = %325
  %340 = load i64, i64* %3, align 8
  %341 = add i64 %340, 1
  %342 = load %struct.string_list*, %struct.string_list** %20, align 8
  %343 = getelementptr inbounds %struct.string_list, %struct.string_list* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.string_list*, %struct.string_list** %20, align 8
  %346 = getelementptr inbounds %struct.string_list, %struct.string_list* %345, i32 0, i32 1
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %346, align 8
  %348 = load i64, i64* %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = load i8*, i8** %23, align 8
  %353 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i64 %341, i64 %344, i8* %351, i8* %352)
  %354 = load i8*, i8** %23, align 8
  %355 = load i32, i32* @COLLECTION_SIZE, align 4
  %356 = call i32* @playlist_init(i8* %354, i32 %355)
  store i32* %356, i32** %21, align 8
  %357 = load i32*, i32** %21, align 8
  %358 = call i32 @playlist_get_size(i32* %357)
  store i32 %358, i32* %22, align 4
  store i64 0, i64* %5, align 8
  br label %359

359:                                              ; preds = %447, %339
  %360 = load i64, i64* %5, align 8
  %361 = load i32, i32* %22, align 4
  %362 = zext i32 %361 to i64
  %363 = icmp ult i64 %360, %362
  br i1 %363, label %364, label %370

364:                                              ; preds = %359
  %365 = load i64, i64* %3, align 8
  %366 = getelementptr inbounds [100 x i32], [100 x i32]* %19, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  %369 = xor i1 %368, true
  br label %370

370:                                              ; preds = %364, %359
  %371 = phi i1 [ false, %359 ], [ %369, %364 ]
  br i1 %371, label %372, label %450

372:                                              ; preds = %370
  store %struct.playlist_entry* null, %struct.playlist_entry** %24, align 8
  %373 = load i32*, i32** %21, align 8
  %374 = load i64, i64* %5, align 8
  %375 = call i32 @playlist_get_index(i32* %373, i64 %374, %struct.playlist_entry** %24)
  %376 = trunc i64 %26 to i32
  %377 = load %struct.playlist_entry*, %struct.playlist_entry** %24, align 8
  %378 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %377, i32 0, i32 0
  %379 = load i8*, i8** %378, align 8
  %380 = call i32 @get_entry(i8* %28, i32 %376, i8* %379)
  %381 = call i64 @string_is_empty(i8* %28)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %437, label %383

383:                                              ; preds = %372
  %384 = load %struct.string_list*, %struct.string_list** %20, align 8
  %385 = getelementptr inbounds %struct.string_list, %struct.string_list* %384, i32 0, i32 1
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %385, align 8
  %387 = load i64, i64* %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = load i8*, i8** %389, align 8
  %391 = call i64 @strstr(i8* %390, i8* %28)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %437

393:                                              ; preds = %383
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 6
  %396 = load i8*, i8** %395, align 8
  %397 = load %struct.playlist_entry*, %struct.playlist_entry** %24, align 8
  %398 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %397, i32 0, i32 0
  %399 = load i8*, i8** %398, align 8
  %400 = call i8* @path_get_extension(i8* %399)
  %401 = call i64 @strstr(i8* %396, i8* %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %437

403:                                              ; preds = %393
  %404 = load %struct.playlist_entry*, %struct.playlist_entry** %24, align 8
  %405 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %404, i32 0, i32 0
  %406 = load i8*, i8** %405, align 8
  %407 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %406)
  %408 = load i64, i64* %3, align 8
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %422

410:                                              ; preds = %403
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 3
  %413 = load i8*, i8** %412, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 0
  store i8 0, i8* %414, align 1
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 3
  %417 = load i8*, i8** %416, align 8
  %418 = load %struct.playlist_entry*, %struct.playlist_entry** %24, align 8
  %419 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %418, i32 0, i32 0
  %420 = load i8*, i8** %419, align 8
  %421 = call i32 @strlcpy(i8* %417, i8* %420, i32 8)
  br label %434

422:                                              ; preds = %403
  %423 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %424 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i32 0, i32 3
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 @strlcat(i8* %425, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 8)
  %427 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %428 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %427, i32 0, i32 3
  %429 = load i8*, i8** %428, align 8
  %430 = load %struct.playlist_entry*, %struct.playlist_entry** %24, align 8
  %431 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %430, i32 0, i32 0
  %432 = load i8*, i8** %431, align 8
  %433 = call i32 @strlcat(i8* %429, i8* %432, i32 8)
  br label %434

434:                                              ; preds = %422, %410
  %435 = load i64, i64* %3, align 8
  %436 = getelementptr inbounds [100 x i32], [100 x i32]* %19, i64 0, i64 %435
  store i32 1, i32* %436, align 4
  br label %437

437:                                              ; preds = %434, %393, %383, %372
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %439 = load i64, i64* %4, align 8
  %440 = load i32, i32* %22, align 4
  %441 = zext i32 %440 to i64
  %442 = udiv i64 %439, %441
  %443 = uitofp i64 %442 to double
  %444 = fmul double %443, 1.000000e+02
  %445 = fptosi double %444 to i32
  %446 = call i32 @task_set_progress(%struct.TYPE_13__* %438, i32 %445)
  br label %447

447:                                              ; preds = %437
  %448 = load i64, i64* %5, align 8
  %449 = add i64 %448, 1
  store i64 %449, i64* %5, align 8
  br label %359

450:                                              ; preds = %370
  %451 = load i32*, i32** %21, align 8
  %452 = call i32 @playlist_free(i32* %451)
  br label %453

453:                                              ; preds = %450, %338
  %454 = load i64, i64* %4, align 8
  %455 = add i64 %454, 1
  store i64 %455, i64* %4, align 8
  br label %309

456:                                              ; preds = %323
  br label %457

457:                                              ; preds = %456
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, 1
  store i64 %459, i64* %3, align 8
  br label %300

460:                                              ; preds = %300
  store i64 0, i64* %3, align 8
  br label %461

461:                                              ; preds = %478, %460
  %462 = load i64, i64* %3, align 8
  %463 = load %struct.string_list*, %struct.string_list** %20, align 8
  %464 = getelementptr inbounds %struct.string_list, %struct.string_list* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = icmp ult i64 %462, %465
  br i1 %466, label %467, label %481

467:                                              ; preds = %461
  %468 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 0
  store i32 1, i32* %469, align 8
  %470 = load i64, i64* %3, align 8
  %471 = getelementptr inbounds [100 x i32], [100 x i32]* %19, i64 0, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %477, label %474

474:                                              ; preds = %467
  %475 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %476 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %475, i32 0, i32 0
  store i32 0, i32* %476, align 8
  br label %481

477:                                              ; preds = %467
  br label %478

478:                                              ; preds = %477
  %479 = load i64, i64* %3, align 8
  %480 = add i64 %479, 1
  store i64 %480, i64* %3, align 8
  br label %461

481:                                              ; preds = %474, %461
  %482 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %498

486:                                              ; preds = %481
  %487 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %488 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %487, i32 0, i32 3
  %489 = load i8*, i8** %488, align 8
  %490 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i8* %489)
  %491 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %492 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %493 = call i32 @task_set_data(%struct.TYPE_13__* %491, %struct.TYPE_14__* %492)
  %494 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %495 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NETPLAY_COMPAT_CONTENT_FOUND, align 4
  %496 = call i8* @msg_hash_to_str(i32 %495)
  %497 = call i32 @finish_task(%struct.TYPE_13__* %494, i8* %496)
  br label %498

498:                                              ; preds = %486, %481
  %499 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %500 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %499, i32 0, i32 8
  %501 = load %struct.string_list*, %struct.string_list** %500, align 8
  %502 = call i32 @string_list_free(%struct.string_list* %501)
  %503 = load %struct.string_list*, %struct.string_list** %20, align 8
  %504 = call i32 @string_list_free(%struct.string_list* %503)
  store i32 1, i32* %10, align 4
  br label %519

505:                                              ; preds = %294
  %506 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %507 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %506, i32 0, i32 8
  %508 = load %struct.string_list*, %struct.string_list** %507, align 8
  %509 = call i32 @string_list_free(%struct.string_list* %508)
  %510 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %511 = call i32 @finish_task(%struct.TYPE_13__* %510, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.17, i64 0, i64 0))
  %512 = load i32, i32* @CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, align 4
  %513 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %514 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i32 0, i32 7
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @command_event(i32 %512, i32 %515)
  %517 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %518 = call i32 @free(%struct.TYPE_14__* %517)
  store i32 0, i32* %10, align 4
  br label %519

519:                                              ; preds = %505, %498, %252, %209, %138, %71, %55, %38
  %520 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %520)
  %521 = load i32, i32* %10, align 4
  switch i32 %521, label %523 [
    i32 0, label %522
    i32 1, label %522
  ]

522:                                              ; preds = %519, %519
  ret void

523:                                              ; preds = %519
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @begin_task(%struct.TYPE_13__*, i8*) #2

declare dso_local i64 @core_requires_content(%struct.TYPE_14__*) #2

declare dso_local i32 @task_set_data(%struct.TYPE_13__*, %struct.TYPE_14__*) #2

declare dso_local i32 @finish_task(%struct.TYPE_13__*, i8*) #2

declare dso_local i8* @msg_hash_to_str(i32) #2

declare dso_local i32 @free(%struct.TYPE_14__*) #2

declare dso_local i32 @string_list_free(%struct.string_list*) #2

declare dso_local i32 @command_event(i32, i32) #2

declare dso_local i64 @string_is_equal(i8*, i8*) #2

declare dso_local i32 @content_get_crc(...) #2

declare dso_local i32 @RARCH_LOG(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32* @playlist_init(i8*, i32) #2

declare dso_local i32 @playlist_get_size(i32*) #2

declare dso_local i32 @playlist_get_index(i32*, i64, %struct.playlist_entry**) #2

declare dso_local i32 @playlist_free(i32*) #2

declare dso_local i32 @get_entry(i8*, i32, i8*) #2

declare dso_local i8* @path_get_extension(i8*) #2

declare dso_local i32 @task_set_progress(%struct.TYPE_13__*, i32) #2

declare dso_local %struct.string_list* @string_split(i8*, i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
