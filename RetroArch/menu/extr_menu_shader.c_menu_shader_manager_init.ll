; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i8* }

@RARCH_SHADER_NONE = common dso_local global i32 0, align 4
@menu_driver_shader_modified = common dso_local global i32 0, align 4
@menu_driver_shader = common dso_local global %struct.video_shader* null, align 8
@CMD_EVENT_SHADER_PRESET_LOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_shader_manager_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.video_shader*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32*, align 8
  %8 = load i32, i32* @RARCH_SHADER_NONE, align 4
  store i32 %8, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store %struct.video_shader* null, %struct.video_shader** %5, align 8
  %9 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = call i32 @video_shader_driver_get_current_shader(%struct.TYPE_9__* %6)
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %4, align 8
  br label %21

19:                                               ; preds = %0
  %20 = call i8* (...) @retroarch_get_shader_preset()
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %19, %14
  %22 = call i32 (...) @menu_shader_manager_free()
  %23 = call i64 @calloc(i32 1, i32 16)
  %24 = inttoptr i64 %23 to %struct.video_shader*
  store %struct.video_shader* %24, %struct.video_shader** %5, align 8
  %25 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %26 = icmp ne %struct.video_shader* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %75

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @string_is_empty(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %75

33:                                               ; preds = %28
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @path_get_extension(i8* %34)
  %36 = call i32 @video_shader_get_type_from_ext(i32 %35, i32* %3)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @video_shader_is_supported(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %75

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  store i32* null, i32** %7, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32* @video_shader_read_preset(i8* %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %75

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %53 = call i64 @video_shader_read_conf_preset(i32* %51, %struct.video_shader* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %58 = call i32 @video_shader_resolve_parameters(i32* %56, %struct.video_shader* %57)
  br label %59

59:                                               ; preds = %55, %50
  store i32 0, i32* @menu_driver_shader_modified, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @config_file_free(i32* %60)
  br label %74

62:                                               ; preds = %41
  %63 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %64 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = call i32 @strlcpy(i32 %69, i8* %70, i32 4)
  %72 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  %73 = getelementptr inbounds %struct.video_shader, %struct.video_shader* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %62, %59
  br label %75

75:                                               ; preds = %74, %49, %40, %32, %27
  %76 = load %struct.video_shader*, %struct.video_shader** %5, align 8
  store %struct.video_shader* %76, %struct.video_shader** @menu_driver_shader, align 8
  %77 = load i32, i32* @CMD_EVENT_SHADER_PRESET_LOADED, align 4
  %78 = call i32 @command_event(i32 %77, i32* null)
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @video_shader_driver_get_current_shader(%struct.TYPE_9__*) #2

declare dso_local i8* @retroarch_get_shader_preset(...) #2

declare dso_local i32 @menu_shader_manager_free(...) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @video_shader_get_type_from_ext(i32, i32*) #2

declare dso_local i32 @path_get_extension(i8*) #2

declare dso_local i32 @video_shader_is_supported(i32) #2

declare dso_local i32* @video_shader_read_preset(i8*) #2

declare dso_local i64 @video_shader_read_conf_preset(i32*, %struct.video_shader*) #2

declare dso_local i32 @video_shader_resolve_parameters(i32*, %struct.video_shader*) #2

declare dso_local i32 @config_file_free(i32*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @command_event(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
