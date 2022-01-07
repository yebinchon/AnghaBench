; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_set_preset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_shader.c_menu_shader_manager_set_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_shader = type { i32 }

@CMD_EVENT_SHADER_PRESET_LOADED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Setting Menu shader: %s.\0A\00", align 1
@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menu_shader_manager_set_preset(%struct.video_shader* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_shader*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.video_shader* %0, %struct.video_shader** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @retroarch_apply_shader(i32 %16, i8* %17, i32 1)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %22 = call i32 @menu_shader_manager_clear_num_passes(%struct.video_shader* %21)
  %23 = load i32, i32* @CMD_EVENT_SHADER_PRESET_LOADED, align 4
  %24 = call i32 @command_event(i32 %23, i32* null)
  store i32 0, i32* %5, align 4
  br label %65

25:                                               ; preds = %15, %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @string_is_empty(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %31 = call i32 @menu_shader_manager_clear_num_passes(%struct.video_shader* %30)
  %32 = load i32, i32* @CMD_EVENT_SHADER_PRESET_LOADED, align 4
  %33 = call i32 @command_event(i32 %32, i32* null)
  store i32 1, i32* %5, align 4
  br label %65

34:                                               ; preds = %25
  %35 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %36 = icmp ne %struct.video_shader* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %61

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = call i32* @video_shader_read_preset(i8* %39)
  store i32* %40, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %61

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %48 = call i64 @video_shader_read_conf_preset(i32* %46, %struct.video_shader* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.video_shader*, %struct.video_shader** %6, align 8
  %53 = call i32 @video_shader_resolve_parameters(i32* %51, %struct.video_shader* %52)
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @config_file_free(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  store i32 1, i32* %12, align 4
  br label %61

61:                                               ; preds = %60, %42, %37
  %62 = load i32, i32* @CMD_EVENT_SHADER_PRESET_LOADED, align 4
  %63 = call i32 @command_event(i32 %62, i32* null)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %29, %20
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @retroarch_apply_shader(i32, i8*, i32) #1

declare dso_local i32 @menu_shader_manager_clear_num_passes(%struct.video_shader*) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i32* @video_shader_read_preset(i8*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i64 @video_shader_read_conf_preset(i32*, %struct.video_shader*) #1

declare dso_local i32 @video_shader_resolve_parameters(i32*, %struct.video_shader*) #1

declare dso_local i32 @config_file_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
