; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_frontend_ctr_get_environment_settings.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_ctr.c_frontend_ctr_get_environment_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@g_defaults = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DEFAULT_DIR_PORT = common dso_local global i64 0, align 8
@elf_path_cst = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"port dir: [%s]\0A\00", align 1
@DEFAULT_DIR_CORE_ASSETS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"downloads\00", align 1
@DEFAULT_DIR_ASSETS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@DEFAULT_DIR_CORE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"cores\00", align 1
@DEFAULT_DIR_CORE_INFO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@DEFAULT_DIR_SAVESTATE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"savestates\00", align 1
@DEFAULT_DIR_SRAM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"savefiles\00", align 1
@DEFAULT_DIR_SYSTEM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@DEFAULT_DIR_PLAYLIST = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"playlists\00", align 1
@DEFAULT_DIR_MENU_CONFIG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@DEFAULT_DIR_REMAP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"config/remaps\00", align 1
@DEFAULT_DIR_VIDEO_FILTER = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@DEFAULT_DIR_DATABASE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"database/rdb\00", align 1
@DEFAULT_DIR_CURSOR = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [17 x i8] c"database/cursors\00", align 1
@DEFAULT_DIR_LOGS = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"logs\00", align 1
@FILE_PATH_MAIN_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i8*, i8*)* @frontend_ctr_get_environment_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_ctr_get_environment_settings(i32* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %11 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @elf_path_cst, align 4
  %15 = call i32 @fill_pathname_basedir(i32 %13, i32 %14, i32 4)
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %17 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %22 = load i64, i64* @DEFAULT_DIR_CORE_ASSETS, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %26 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fill_pathname_join(i32 %24, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %31 = load i64, i64* @DEFAULT_DIR_ASSETS, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %35 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fill_pathname_join(i32 %33, i32 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %40 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %44 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @fill_pathname_join(i32 %42, i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %49 = load i64, i64* @DEFAULT_DIR_CORE_INFO, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %53 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @fill_pathname_join(i32 %51, i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %58 = load i64, i64* @DEFAULT_DIR_SAVESTATE, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %62 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @fill_pathname_join(i32 %60, i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %67 = load i64, i64* @DEFAULT_DIR_SRAM, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %71 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @fill_pathname_join(i32 %69, i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %76 = load i64, i64* @DEFAULT_DIR_SYSTEM, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %80 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fill_pathname_join(i32 %78, i32 %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %85 = load i64, i64* @DEFAULT_DIR_PLAYLIST, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %89 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @fill_pathname_join(i32 %87, i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %93 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %94 = load i64, i64* @DEFAULT_DIR_MENU_CONFIG, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %98 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @fill_pathname_join(i32 %96, i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %102 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %103 = load i64, i64* @DEFAULT_DIR_REMAP, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %107 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @fill_pathname_join(i32 %105, i32 %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %111 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %112 = load i64, i64* @DEFAULT_DIR_VIDEO_FILTER, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %116 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @fill_pathname_join(i32 %114, i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %121 = load i64, i64* @DEFAULT_DIR_DATABASE, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %125 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @fill_pathname_join(i32 %123, i32 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %129 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %130 = load i64, i64* @DEFAULT_DIR_CURSOR, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %134 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @fill_pathname_join(i32 %132, i32 %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %139 = load i64, i64* @DEFAULT_DIR_LOGS, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %143 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @fill_pathname_join(i32 %141, i32 %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 4)
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1, i32 0), align 8
  %148 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %149 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @FILE_PATH_MAIN_CONFIG, align 4
  %153 = call i8* @file_path_str(i32 %152)
  %154 = call i32 @fill_pathname_join(i32 %147, i32 %151, i8* %153, i32 4)
  ret void
}

declare dso_local i32 @fill_pathname_basedir(i32, i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i32 @fill_pathname_join(i32, i32, i8*, i32) #1

declare dso_local i8* @file_path_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
