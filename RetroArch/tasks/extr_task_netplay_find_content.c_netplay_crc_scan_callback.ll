; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_netplay_find_content.c_netplay_crc_scan_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_netplay_find_content.c_netplay_crc_scan_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i32*, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.string_list = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.retro_system_info = type { i8* }

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@CORE_TYPE_PLAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"[Lobby] Subsystem not found in implementation\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"[Lobby] Loading core %s with content file %s\0A\00", align 1
@CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"[Lobby] Loading contentless core %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"[Lobby] Loading core %s with current content\0A\00", align 1
@CMD_EVENT_NETPLAY_INIT_DIRECT = common dso_local global i32 0, align 4
@CMD_EVENT_RESUME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"[Lobby] Couldn't find a suitable %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"content file\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@MENU_ENUM_LABEL_VALUE_NETPLAY_LOAD_CONTENT_MANUALLY = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*)* @netplay_crc_scan_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netplay_crc_scan_callback(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.retro_system_info*, align 8
  %15 = alloca %struct.TYPE_11__, align 4
  %16 = alloca %struct.retro_system_info*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %9, align 8
  %19 = bitcast %struct.TYPE_11__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %239

23:                                               ; preds = %4
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @fflush(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @string_is_empty(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %81, label %31

31:                                               ; preds = %23
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @string_is_equal(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %81, label %37

37:                                               ; preds = %31
  %38 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 4, i1 false)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.string_list* @string_split(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct.string_list* %42, %struct.string_list** %12, align 8
  store i32 0, i32* %13, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %47 = call i32 @task_push_load_new_core(i8* %45, i32* null, %struct.TYPE_11__* %11, i32 %46, i32* null, i32* null)
  %48 = call i32 (...) @content_clear_subsystem()
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @content_set_subsystem_by_name(i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %37
  %55 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %37
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %73, %56
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.string_list*, %struct.string_list** %12, align 8
  %60 = getelementptr inbounds %struct.string_list, %struct.string_list* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.string_list*, %struct.string_list** %12, align 8
  %65 = getelementptr inbounds %struct.string_list, %struct.string_list* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @content_add_subsystem(i32 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %13, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %78 = call i32 @task_push_load_subsystem_with_core_from_menu(i32* null, %struct.TYPE_11__* %11, i32 %77, i32* null, i32* null)
  %79 = load %struct.string_list*, %struct.string_list** %12, align 8
  %80 = call i32 @string_list_free(%struct.string_list* %79)
  br label %239

81:                                               ; preds = %31, %23
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @string_is_empty(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %146, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @string_is_empty(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %146, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %146, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %146, label %103

103:                                              ; preds = %98
  %104 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %104, %struct.retro_system_info** %14, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %107, i8* %110)
  %112 = load i32, i32* @CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @command_event(i32 %112, i32* %115)
  %117 = load %struct.retro_system_info*, %struct.retro_system_info** %14, align 8
  %118 = icmp ne %struct.retro_system_info* %117, null
  br i1 %118, label %119, label %134

119:                                              ; preds = %103
  %120 = load %struct.retro_system_info*, %struct.retro_system_info** %14, align 8
  %121 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @string_is_equal(i8* %122, i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %119
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %133 = call i32 @task_push_load_content_with_core_from_menu(i8* %131, %struct.TYPE_11__* %10, i32 %132, i32* null, i32* null)
  br label %145

134:                                              ; preds = %119, %103
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %139 = call i32 @task_push_load_new_core(i8* %137, i32* null, %struct.TYPE_11__* %10, i32 %138, i32* null, i32* null)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %144 = call i32 @task_push_load_content_with_core_from_menu(i8* %142, %struct.TYPE_11__* %10, i32 %143, i32* null, i32* null)
  br label %145

145:                                              ; preds = %134, %128
  br label %236

146:                                              ; preds = %98, %93, %87, %81
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @string_is_empty(i8* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %191, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @string_is_empty(i8* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %191, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %191

163:                                              ; preds = %158
  %164 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %164, i8 0, i64 4, i1 false)
  %165 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %165, %struct.retro_system_info** %16, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %168)
  %170 = load i32, i32* @CMD_EVENT_NETPLAY_INIT_DIRECT_DEFERRED, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @command_event(i32 %170, i32* %173)
  %175 = load %struct.retro_system_info*, %struct.retro_system_info** %16, align 8
  %176 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @string_is_equal(i8* %177, i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %163
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %188 = call i32 @task_push_load_new_core(i8* %186, i32* null, %struct.TYPE_11__* %15, i32 %187, i32* null, i32* null)
  br label %189

189:                                              ; preds = %183, %163
  %190 = call i32 @task_push_start_current_core(%struct.TYPE_11__* %15)
  br label %235

191:                                              ; preds = %158, %152, %146
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = call i64 @string_is_empty(i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %220, label %197

197:                                              ; preds = %191
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = call i64 @string_is_empty(i8* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %220, label %203

203:                                              ; preds = %197
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 5
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %211)
  %213 = load i32, i32* @CMD_EVENT_NETPLAY_INIT_DIRECT, align 4
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @command_event(i32 %213, i32* %216)
  %218 = load i32, i32* @CMD_EVENT_RESUME, align 4
  %219 = call i32 @command_event(i32 %218, i32* null)
  br label %234

220:                                              ; preds = %203, %197, %191
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = call i64 @string_is_empty(i8* %223)
  %225 = icmp ne i64 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %228 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %227)
  %229 = load i32, i32* @MENU_ENUM_LABEL_VALUE_NETPLAY_LOAD_CONTENT_MANUALLY, align 4
  %230 = call i32 @msg_hash_to_str(i32 %229)
  %231 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %232 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %233 = call i32 @runloop_msg_queue_push(i32 %230, i32 1, i32 480, i32 1, i32* null, i32 %231, i32 %232)
  br label %234

234:                                              ; preds = %220, %208
  br label %235

235:                                              ; preds = %234, %189
  br label %236

236:                                              ; preds = %235, %145
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %238 = call i32 @free(%struct.TYPE_10__* %237)
  br label %239

239:                                              ; preds = %236, %76, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fflush(i32) #2

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i64 @string_is_equal(i8*, i8*) #2

declare dso_local %struct.string_list* @string_split(i8*, i8*) #2

declare dso_local i32 @task_push_load_new_core(i8*, i32*, %struct.TYPE_11__*, i32, i32*, i32*) #2

declare dso_local i32 @content_clear_subsystem(...) #2

declare dso_local i32 @content_set_subsystem_by_name(i8*) #2

declare dso_local i32 @RARCH_LOG(i8*, ...) #2

declare dso_local i32 @content_add_subsystem(i32) #2

declare dso_local i32 @task_push_load_subsystem_with_core_from_menu(i32*, %struct.TYPE_11__*, i32, i32*, i32*) #2

declare dso_local i32 @string_list_free(%struct.string_list*) #2

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #2

declare dso_local i32 @command_event(i32, i32*) #2

declare dso_local i32 @task_push_load_content_with_core_from_menu(i8*, %struct.TYPE_11__*, i32, i32*, i32*) #2

declare dso_local i32 @task_push_start_current_core(%struct.TYPE_11__*) #2

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

declare dso_local i32 @free(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
