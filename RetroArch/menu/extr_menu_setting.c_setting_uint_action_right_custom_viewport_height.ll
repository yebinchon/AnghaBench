; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_uint_action_right_custom_viewport_height.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_uint_action_right_custom_viewport_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float }
%struct.TYPE_9__ = type { i32, i64 }
%struct.retro_system_av_info = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.retro_game_geometry = type { i64, i64 }

@aspectratio_lut = common dso_local global %struct.TYPE_11__* null, align 8
@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @setting_uint_action_right_custom_viewport_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setting_uint_action_right_custom_viewport_height(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__, align 8
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
  br label %74

23:                                               ; preds = %19
  %24 = call i32 @video_driver_get_viewport_info(%struct.TYPE_9__* %6)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = call i32 (...) @retroarch_get_rotation()
  %32 = srem i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %10, align 8
  %36 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 8
  br label %54

44:                                               ; preds = %30
  %45 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %10, align 8
  %46 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  br label %54

54:                                               ; preds = %44, %34
  br label %60

55:                                               ; preds = %23
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sitofp i64 %63 to float
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sitofp i32 %67 to float
  %69 = fdiv float %64, %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aspectratio_lut, align 8
  %71 = load i64, i64* @ASPECT_RATIO_CUSTOM, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store float %69, float* %73, align 4
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %60, %22
  %75 = load i32, i32* %3, align 4
  ret i32 %75
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
