; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_win32.c_frontend_win32_environment_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_win32.c_frontend_win32_environment_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }

@g_defaults = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DEFAULT_DIR_ASSETS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c":\\assets\00", align 1
@DEFAULT_DIR_AUDIO_FILTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c":\\filters\\audio\00", align 1
@DEFAULT_DIR_VIDEO_FILTER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c":\\filters\\video\00", align 1
@DEFAULT_DIR_CHEATS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c":\\cheats\00", align 1
@DEFAULT_DIR_DATABASE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c":\\database\\rdb\00", align 1
@DEFAULT_DIR_CURSOR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c":\\database\\cursors\00", align 1
@DEFAULT_DIR_PLAYLIST = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c":\\playlists\00", align 1
@DEFAULT_DIR_RECORD_CONFIG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c":\\config\\record\00", align 1
@DEFAULT_DIR_RECORD_OUTPUT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c":\\recordings\00", align 1
@DEFAULT_DIR_MENU_CONFIG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c":\\config\00", align 1
@DEFAULT_DIR_REMAP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c":\\config\\remaps\00", align 1
@DEFAULT_DIR_WALLPAPERS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c":\\assets\\wallpapers\00", align 1
@DEFAULT_DIR_THUMBNAILS = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c":\\thumbnails\00", align 1
@DEFAULT_DIR_OVERLAY = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c":\\overlays\00", align 1
@DEFAULT_DIR_CORE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [8 x i8] c":\\cores\00", align 1
@DEFAULT_DIR_CORE_INFO = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [7 x i8] c":\\info\00", align 1
@DEFAULT_DIR_AUTOCONFIG = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c":\\autoconfig\00", align 1
@DEFAULT_DIR_SHADER = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [10 x i8] c":\\shaders\00", align 1
@DEFAULT_DIR_CORE_ASSETS = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c":\\downloads\00", align 1
@DEFAULT_DIR_SCREENSHOT = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [14 x i8] c":\\screenshots\00", align 1
@DEFAULT_DIR_SRAM = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c":\\saves\00", align 1
@DEFAULT_DIR_SAVESTATE = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c":\\states\00", align 1
@DEFAULT_DIR_SYSTEM = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c":\\system\00", align 1
@DEFAULT_DIR_LOGS = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c":\\logs\00", align 1
@DEFAULT_DIR_VIDEO_LAYOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i8*, i8*)* @frontend_win32_environment_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_win32_environment_get(i32* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = call i32 (...) @gfx_set_dwm()
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %11 = load i64, i64* @DEFAULT_DIR_ASSETS, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @fill_pathname_expand_special(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4)
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %16 = load i64, i64* @DEFAULT_DIR_AUDIO_FILTER, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fill_pathname_expand_special(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %21 = load i64, i64* @DEFAULT_DIR_VIDEO_FILTER, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @fill_pathname_expand_special(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %26 = load i64, i64* @DEFAULT_DIR_CHEATS, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fill_pathname_expand_special(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %31 = load i64, i64* @DEFAULT_DIR_DATABASE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fill_pathname_expand_special(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %36 = load i64, i64* @DEFAULT_DIR_CURSOR, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fill_pathname_expand_special(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %41 = load i64, i64* @DEFAULT_DIR_PLAYLIST, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @fill_pathname_expand_special(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %46 = load i64, i64* @DEFAULT_DIR_RECORD_CONFIG, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fill_pathname_expand_special(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %51 = load i64, i64* @DEFAULT_DIR_RECORD_OUTPUT, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fill_pathname_expand_special(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %56 = load i64, i64* @DEFAULT_DIR_MENU_CONFIG, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @fill_pathname_expand_special(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %61 = load i64, i64* @DEFAULT_DIR_REMAP, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fill_pathname_expand_special(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %66 = load i64, i64* @DEFAULT_DIR_WALLPAPERS, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fill_pathname_expand_special(i32 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %71 = load i64, i64* @DEFAULT_DIR_THUMBNAILS, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @fill_pathname_expand_special(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %76 = load i64, i64* @DEFAULT_DIR_OVERLAY, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @fill_pathname_expand_special(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %81 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @fill_pathname_expand_special(i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 4)
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %86 = load i64, i64* @DEFAULT_DIR_CORE_INFO, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @fill_pathname_expand_special(i32 %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 4)
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %91 = load i64, i64* @DEFAULT_DIR_AUTOCONFIG, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @fill_pathname_expand_special(i32 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %96 = load i64, i64* @DEFAULT_DIR_SHADER, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @fill_pathname_expand_special(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 4)
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %101 = load i64, i64* @DEFAULT_DIR_CORE_ASSETS, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @fill_pathname_expand_special(i32 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 4)
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %106 = load i64, i64* @DEFAULT_DIR_SCREENSHOT, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @fill_pathname_expand_special(i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 4)
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %111 = load i64, i64* @DEFAULT_DIR_SRAM, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @fill_pathname_expand_special(i32 %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 4)
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %116 = load i64, i64* @DEFAULT_DIR_SAVESTATE, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @fill_pathname_expand_special(i32 %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 4)
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %121 = load i64, i64* @DEFAULT_DIR_SYSTEM, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @fill_pathname_expand_special(i32 %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 4)
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1), align 8
  %126 = load i64, i64* @DEFAULT_DIR_LOGS, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @fill_pathname_expand_special(i32 %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 4)
  ret void
}

declare dso_local i32 @gfx_set_dwm(...) #1

declare dso_local i32 @fill_pathname_expand_special(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
