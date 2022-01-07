; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_action_start_custom_viewport_height.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_action_start_custom_viewport_height.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.retro_system_av_info = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.retro_game_geometry = type { i32, i32 }

@aspectratio_lut = common dso_local global %struct.TYPE_11__* null, align 8
@ASPECT_RATIO_CUSTOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @setting_action_start_custom_viewport_height to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setting_action_start_custom_viewport_height(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.retro_system_av_info*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.retro_game_geometry*, align 8
  store i32* %0, i32** %3, align 8
  %9 = call %struct.retro_system_av_info* (...) @video_viewport_get_system_av_info()
  store %struct.retro_system_av_info* %9, %struct.retro_system_av_info** %5, align 8
  %10 = call %struct.TYPE_9__* (...) @video_viewport_get_custom()
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = call %struct.TYPE_10__* (...) @config_get_ptr()
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %7, align 8
  %12 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %5, align 8
  %13 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.retro_game_geometry*
  store %struct.retro_game_geometry* %14, %struct.retro_game_geometry** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %5, align 8
  %19 = icmp ne %struct.retro_system_av_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %1
  store i32 -1, i32* %2, align 4
  br label %94

21:                                               ; preds = %17
  %22 = call i32 @video_driver_get_viewport_info(%struct.TYPE_9__* %4)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %71

28:                                               ; preds = %21
  %29 = call i32 (...) @retroarch_get_rotation()
  %30 = srem i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %8, align 8
  %37 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %8, align 8
  %42 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  %45 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %8, align 8
  %46 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %70

51:                                               ; preds = %28
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %8, align 8
  %56 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %8, align 8
  %61 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %59, %62
  %64 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %8, align 8
  %65 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %51, %32
  br label %80

71:                                               ; preds = %21
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %73, %76
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %71, %70
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = sitofp i64 %83 to float
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sitofp i32 %87 to float
  %89 = fdiv float %84, %88
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** @aspectratio_lut, align 8
  %91 = load i64, i64* @ASPECT_RATIO_CUSTOM, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store float %89, float* %93, align 4
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %80, %20
  %95 = load i32, i32* %2, align 4
  ret i32 %95
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
