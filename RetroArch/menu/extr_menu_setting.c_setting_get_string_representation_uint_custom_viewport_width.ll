; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_uint_custom_viewport_width.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_setting.c_setting_get_string_representation_uint_custom_viewport_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.retro_game_geometry = type { i32, i32 }
%struct.retro_system_av_info = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%u (%ux)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i64)* @setting_get_string_representation_uint_custom_viewport_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setting_get_string_representation_uint_custom_viewport_width(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.retro_game_geometry*, align 8
  %8 = alloca %struct.retro_system_av_info*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.retro_game_geometry* null, %struct.retro_game_geometry** %7, align 8
  store %struct.retro_system_av_info* null, %struct.retro_system_av_info** %8, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %99

12:                                               ; preds = %3
  %13 = call %struct.retro_system_av_info* (...) @video_viewport_get_system_av_info()
  store %struct.retro_system_av_info* %13, %struct.retro_system_av_info** %8, align 8
  %14 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %8, align 8
  %15 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.retro_game_geometry*
  store %struct.retro_game_geometry* %16, %struct.retro_game_geometry** %7, align 8
  %17 = call i32 (...) @retroarch_get_rotation()
  %18 = srem i32 %17, 2
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %12
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %7, align 8
  %28 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = srem i32 %26, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %20
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %7, align 8
  %48 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %46, %49
  %51 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %50)
  br label %99

52:                                               ; preds = %20, %12
  %53 = call i32 (...) @retroarch_get_rotation()
  %54 = srem i32 %53, 2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %88

56:                                               ; preds = %52
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %7, align 8
  %64 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %62, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %56
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.retro_game_geometry*, %struct.retro_game_geometry** %7, align 8
  %84 = getelementptr inbounds %struct.retro_game_geometry, %struct.retro_game_geometry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %82, %85
  %87 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %69, i64 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %86)
  br label %98

88:                                               ; preds = %56, %52
  %89 = load i8*, i8** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %89, i64 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %88, %68
  br label %99

99:                                               ; preds = %11, %98, %32
  ret void
}

declare dso_local %struct.retro_system_av_info* @video_viewport_get_system_av_info(...) #1

declare dso_local i32 @retroarch_get_rotation(...) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
