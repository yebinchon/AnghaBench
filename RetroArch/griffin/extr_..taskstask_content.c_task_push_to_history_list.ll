; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_task_push_to_history_list.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_content.c_task_push_to_history_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32*, i32*, i32* }
%struct.retro_system_info = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_17__ = type { i8* }
%struct.playlist_entry = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.string_list*, i32 }
%struct.string_list = type { i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@RARCH_PATH_CONTENT = common dso_local global i32 0, align 4
@g_defaults = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"musicplayer\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@RARCH_PATH_SUBSYSTEM = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PENDING_QUICK_MENU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @task_push_to_history_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_push_to_history_list(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.retro_system_info*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_14__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.playlist_entry, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %23 = call i32 @content_get_status(i32* %5, i32* %6)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %160

29:                                               ; preds = %26, %2
  %30 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 1
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @malloc(i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %8, align 8
  %36 = load i32, i32* @RARCH_PATH_CONTENT, align 4
  %37 = call i8* @path_get(i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = call %struct.retro_system_info* (...) @runloop_get_libretro_system_info()
  store %struct.retro_system_info* %38, %struct.retro_system_info** %10, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @string_is_empty(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %29
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @strlcpy(i8* %45, i8* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %29
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @string_is_empty(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @path_resolve_realpath(i8* %57, i64 %58, i32 1)
  br label %60

60:                                               ; preds = %56, %52, %49
  %61 = load %struct.retro_system_info*, %struct.retro_system_info** %10, align 8
  %62 = icmp ne %struct.retro_system_info* %61, null
  br i1 %62, label %63, label %157

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @string_is_empty(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %157, label %67

67:                                               ; preds = %63
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @g_defaults, i32 0, i32 3), align 8
  store i32* %68, i32** %16, align 8
  %69 = call %struct.TYPE_14__* (...) @config_get_ptr()
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %17, align 8
  %70 = call %struct.TYPE_16__* (...) @global_get_ptr()
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %18, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @path_is_media_type(i8* %71)
  switch i32 %72, label %77 [
    i32 129, label %73
    i32 128, label %74
    i32 130, label %76
  ]

73:                                               ; preds = %67
  br label %96

74:                                               ; preds = %67
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @g_defaults, i32 0, i32 1), align 8
  store i32* %75, i32** %16, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %96

76:                                               ; preds = %67
  br label %96

77:                                               ; preds = %67
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %19, align 8
  %78 = call i32 @core_info_get_current_core(%struct.TYPE_17__** %19)
  %79 = load i32, i32* @RARCH_PATH_CORE, align 4
  %80 = call i8* @path_get(i32 %79)
  store i8* %80, i8** %11, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %82 = icmp ne %struct.TYPE_17__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %12, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i8*, i8** %12, align 8
  %89 = call i64 @string_is_empty(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.retro_system_info*, %struct.retro_system_info** %10, align 8
  %93 = getelementptr inbounds %struct.retro_system_info, %struct.retro_system_info* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %76, %74, %73
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %98 = icmp ne %struct.TYPE_16__* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @string_is_empty(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %99
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %13, align 8
  br label %111

111:                                              ; preds = %106, %99, %96
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %113 = icmp ne %struct.TYPE_14__* %112, null
  br i1 %113, label %114, label %156

114:                                              ; preds = %111
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %114
  %121 = load i32*, i32** %16, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %156

123:                                              ; preds = %120
  %124 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %125 = zext i32 %124 to i64
  %126 = call i8* @llvm.stacksave()
  store i8* %126, i8** %20, align 8
  %127 = alloca i8, i64 %125, align 16
  store i64 %125, i64* %21, align 8
  %128 = bitcast %struct.playlist_entry* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %128, i8 0, i64 80, i1 false)
  %129 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 0, i8* %129, align 16
  %130 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %131 = call i8* @path_get(i32 %130)
  %132 = trunc i64 %125 to i32
  %133 = call i32 @content_get_subsystem_friendly_name(i8* %131, i8* %127, i32 %132)
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 0
  store i8* %134, i8** %135, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 1
  store i8* %136, i8** %137, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 2
  store i8* %138, i8** %139, align 8
  %140 = load i8*, i8** %12, align 8
  %141 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 3
  store i8* %140, i8** %141, align 8
  %142 = load i8*, i8** %14, align 8
  %143 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 4
  store i8* %142, i8** %143, align 8
  %144 = load i8*, i8** %15, align 8
  %145 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 5
  store i8* %144, i8** %145, align 8
  %146 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %147 = call i8* @path_get(i32 %146)
  %148 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 6
  store i8* %147, i8** %148, align 8
  %149 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 7
  store i8* %127, i8** %149, align 8
  %150 = call i64 (...) @path_get_subsystem_list()
  %151 = inttoptr i64 %150 to %struct.string_list*
  %152 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 8
  store %struct.string_list* %151, %struct.string_list** %152, align 8
  %153 = load i32*, i32** %16, align 8
  %154 = call i32 @command_playlist_push_write(i32* %153, %struct.playlist_entry* %22)
  %155 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %155)
  br label %156

156:                                              ; preds = %123, %120, %114, %111
  br label %157

157:                                              ; preds = %156, %63, %60
  %158 = load i8*, i8** %8, align 8
  %159 = call i32 @free(i8* %158)
  br label %160

160:                                              ; preds = %157, %26
  ret void
}

declare dso_local i32 @content_get_status(i32*, i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i8* @path_get(i32) #1

declare dso_local %struct.retro_system_info* @runloop_get_libretro_system_info(...) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @path_resolve_realpath(i8*, i64, i32) #1

declare dso_local %struct.TYPE_14__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_16__* @global_get_ptr(...) #1

declare dso_local i32 @path_is_media_type(i8*) #1

declare dso_local i32 @core_info_get_current_core(%struct.TYPE_17__**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @content_get_subsystem_friendly_name(i8*, i8*, i32) #1

declare dso_local i64 @path_get_subsystem_list(...) #1

declare dso_local i32 @command_playlist_push_write(i32*, %struct.playlist_entry*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
