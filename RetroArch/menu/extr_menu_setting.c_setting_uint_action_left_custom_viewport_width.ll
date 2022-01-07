; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_uint_action_left_custom_viewport_width.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_uint_action_left_custom_viewport_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float }
%struct.TYPE_9__ = type { i32, float }
%struct.retro_system_av_info = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.retro_game_geometry = type { i32, i32 }

@aspectratio_lut = common dso_local global %struct.TYPE_11__* null, align 8
@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @setting_uint_action_left_custom_viewport_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setting_uint_action_left_custom_viewport_width(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca %struct.retro_system_av_info*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.retro_game_geometry*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call %struct.retro_system_av_info* (...) @video_viewport_get_system_av_info()
  store %struct.retro_system_av_info* %11, %struct.retro_system_av_info** %7, align 8
  %12 = call %struct.TYPE_9__* (...) @video_viewport_get_custom()
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %9, align 8
  %14 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %7, align 8
  %15 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.retro_game_geometry*
  store %struct.retro_game_geometry* %16, %struct.retro_game_geometry** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %7, align 8
  %21 = icmp ne %struct.retro_system_av_info* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  store i32 -1, i32* %3, align 4
  br label %96

23:                                               ; preds = %19
  %24 = call i32 @video_driver_get_viewport_info(%struct.TYPE_9__* %6)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %83

32:                                               ; preds = %23
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %32
  %39 = call i32 (...) @retroarch_get_rotation()
  %40 = srem i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %10, align 8
  %47 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %10, align 8
  %52 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %42
  br label %76

59:                                               ; preds = %38
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %10, align 8
  %64 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %10, align 8
  %69 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %67, %59
  br label %76

76:                                               ; preds = %75, %58
  br label %82

77:                                               ; preds = %32
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %76
  br label %83

83:                                               ; preds = %82, %29
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sitofp i32 %86 to float
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load float, float* %89, align 4
  %91 = fdiv float %87, %90
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aspectratio_lut, align 8
  %93 = load i64, i64* @ASPECT_RATIO_CUSTOM, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store float %91, float* %95, align 4
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %83, %22
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.retro_system_av_info* @video_viewport_get_system_av_info(...) #1

declare dso_local %struct.TYPE_9__* @video_viewport_get_custom(...) #1

declare dso_local %struct.TYPE_10__* @config_get_ptr(...) #1

declare dso_local i32 @video_driver_get_viewport_info(%struct.TYPE_9__*) #1

declare dso_local i32 @retroarch_get_rotation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
