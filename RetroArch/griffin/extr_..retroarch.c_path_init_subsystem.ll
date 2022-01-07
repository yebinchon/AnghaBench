; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_path_init_subsystem.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_path_init_subsystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i8* }
%struct.retro_subsystem_info = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32* }
%union.string_list_elem_attr = type { i32 }
%struct.retro_subsystem_memory_info = type { i8*, i32 }
%struct.string_list = type { i32 }

@g_extern = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@runloop_system = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@RARCH_PATH_SUBSYSTEM = common dso_local global i32 0, align 4
@subsystem_fullpaths = common dso_local global %struct.TYPE_16__* null, align 8
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@RARCH_DIR_CURRENT_SAVEFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s \22%s\22.\0A\00", align 1
@MSG_REDIRECTING_SAVEFILE_TO = common dso_local global i32 0, align 4
@RARCH_OVERRIDE_SETTING_SAVE_PATH = common dso_local global i32 0, align 4
@path_main_basename = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c".srm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @path_init_subsystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_init_subsystem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.retro_subsystem_info*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.string_list_elem_attr, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.retro_subsystem_memory_info*, align 8
  store %struct.retro_subsystem_info* null, %struct.retro_subsystem_info** %4, align 8
  store %struct.TYPE_15__* @g_extern, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* @runloop_system, %struct.TYPE_14__** %6, align 8
  %16 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %17 = call i32 @path_is_empty(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %0
  store i32 0, i32* %1, align 4
  br label %196

24:                                               ; preds = %20
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %34 = call i32 @path_get(i32 %33)
  %35 = call %struct.retro_subsystem_info* @libretro_find_subsystem_info(i32 %28, i32 %32, i32 %34)
  store %struct.retro_subsystem_info* %35, %struct.retro_subsystem_info** %4, align 8
  %36 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %4, align 8
  %37 = icmp ne %struct.retro_subsystem_info* %36, null
  br i1 %37, label %38, label %159

38:                                               ; preds = %24
  %39 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %4, align 8
  %40 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** @subsystem_fullpaths, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %45, %44
  %51 = phi i32 [ 0, %44 ], [ %49, %45 ]
  %52 = call i32 @MIN(i32 %41, i32 %51)
  store i32 %52, i32* %8, align 4
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %155, %50
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %158

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %151, %57
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %4, align 8
  %61 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i32, i32* %2, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ult i32 %59, %67
  br i1 %68, label %69, label %154

69:                                               ; preds = %58
  %70 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %11, align 8
  %73 = alloca i8, i64 %71, align 16
  store i64 %71, i64* %12, align 8
  %74 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 1
  store i64 %76, i64* %13, align 8
  %77 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 1
  %80 = trunc i64 %79 to i32
  %81 = call i64 @malloc(i32 %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %14, align 8
  %83 = load %struct.retro_subsystem_info*, %struct.retro_subsystem_info** %4, align 8
  %84 = getelementptr inbounds %struct.retro_subsystem_info, %struct.retro_subsystem_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i32, i32* %2, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %3, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = bitcast i32* %93 to %struct.retro_subsystem_memory_info*
  store %struct.retro_subsystem_memory_info* %94, %struct.retro_subsystem_memory_info** %15, align 8
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %95, align 16
  %96 = load i8*, i8** %14, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 0, i8* %97, align 1
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %99 = load %struct.retro_subsystem_memory_info*, %struct.retro_subsystem_memory_info** %15, align 8
  %100 = getelementptr inbounds %struct.retro_subsystem_memory_info, %struct.retro_subsystem_memory_info* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @snprintf(i8* %98, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %101)
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** @subsystem_fullpaths, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = load i32, i32* %2, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strlcpy(i8* %73, i8* %110, i64 %71)
  %112 = call i32 @path_remove_extension(i8* %73)
  %113 = load i32, i32* @RARCH_DIR_CURRENT_SAVEFILE, align 4
  %114 = call i8* @dir_get(i32 %113)
  %115 = call i64 @path_is_directory(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %69
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* @RARCH_DIR_CURRENT_SAVEFILE, align 4
  %120 = call i8* @dir_get(i32 %119)
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @strlcpy(i8* %118, i8* %120, i64 %121)
  %123 = load i8*, i8** %14, align 8
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %125 = load i64, i64* %13, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @fill_pathname_dir(i8* %123, i8* %73, i8* %124, i32 %126)
  br label %133

128:                                              ; preds = %69
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @fill_pathname(i8* %129, i8* %73, i8* %130, i64 %131)
  br label %133

133:                                              ; preds = %128, %117
  %134 = load i32, i32* @MSG_REDIRECTING_SAVEFILE_TO, align 4
  %135 = call i32 @msg_hash_to_str(i32 %134)
  %136 = load i8*, i8** %14, align 8
  %137 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %135, i8* %136)
  %138 = load %struct.retro_subsystem_memory_info*, %struct.retro_subsystem_memory_info** %15, align 8
  %139 = getelementptr inbounds %struct.retro_subsystem_memory_info, %struct.retro_subsystem_memory_info* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = bitcast %union.string_list_elem_attr* %9 to i32*
  store i32 %140, i32* %141, align 4
  %142 = call i64 (...) @savefile_ptr_get()
  %143 = inttoptr i64 %142 to %struct.string_list*
  %144 = load i8*, i8** %14, align 8
  %145 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %9, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @string_list_append(%struct.string_list* %143, i8* %144, i32 %146)
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %150)
  br label %151

151:                                              ; preds = %133
  %152 = load i32, i32* %3, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %3, align 4
  br label %58

154:                                              ; preds = %58
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %2, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %2, align 4
  br label %53

158:                                              ; preds = %53
  br label %159

159:                                              ; preds = %158, %24
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %161 = icmp ne %struct.TYPE_15__* %160, null
  br i1 %161, label %162, label %195

162:                                              ; preds = %159
  %163 = load i32, i32* @RARCH_OVERRIDE_SETTING_SAVE_PATH, align 4
  %164 = call i32 @retroarch_override_setting_is_set(i32 %163, i32* null)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %162
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i8*, i8** @path_main_basename, align 8
  %172 = call i32 @fill_pathname_noext(i8* %170, i8* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 8)
  br label %173

173:                                              ; preds = %166, %162
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @path_is_directory(i8* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %173
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** @path_main_basename, align 8
  %186 = call i32 @fill_pathname_dir(i8* %184, i8* %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %187 = load i32, i32* @MSG_REDIRECTING_SAVEFILE_TO, align 4
  %188 = call i32 @msg_hash_to_str(i32 %187)
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %188, i8* %192)
  br label %194

194:                                              ; preds = %180, %173
  br label %195

195:                                              ; preds = %194, %159
  store i32 1, i32* %1, align 4
  br label %196

196:                                              ; preds = %195, %23
  %197 = load i32, i32* %1, align 4
  ret i32 %197
}

declare dso_local i32 @path_is_empty(i32) #1

declare dso_local %struct.retro_subsystem_info* @libretro_find_subsystem_info(i32, i32, i32) #1

declare dso_local i32 @path_get(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @path_remove_extension(i8*) #1

declare dso_local i64 @path_is_directory(i8*) #1

declare dso_local i8* @dir_get(i32) #1

declare dso_local i32 @fill_pathname_dir(i8*, i8*, i8*, i32) #1

declare dso_local i32 @fill_pathname(i8*, i8*, i8*, i64) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i8*) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i32) #1

declare dso_local i64 @savefile_ptr_get(...) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @retroarch_override_setting_is_set(i32, i32*) #1

declare dso_local i32 @fill_pathname_noext(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
