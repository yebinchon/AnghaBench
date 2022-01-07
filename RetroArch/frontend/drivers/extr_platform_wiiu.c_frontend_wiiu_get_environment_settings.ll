; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_wiiu.c_frontend_wiiu_get_environment_settings.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_wiiu.c_frontend_wiiu_get_environment_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@g_defaults = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DEFAULT_DIR_PORT = common dso_local global i64 0, align 8
@elf_path_cst = common dso_local global i32 0, align 4
@DEFAULT_DIR_CORE_ASSETS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"downloads\00", align 1
@DEFAULT_DIR_ASSETS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@DEFAULT_DIR_CORE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"cores\00", align 1
@DEFAULT_DIR_CORE_INFO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@DEFAULT_DIR_SAVESTATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"savestates\00", align 1
@DEFAULT_DIR_SRAM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"savefiles\00", align 1
@DEFAULT_DIR_SYSTEM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@DEFAULT_DIR_PLAYLIST = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"playlists\00", align 1
@DEFAULT_DIR_MENU_CONFIG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@DEFAULT_DIR_REMAP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"config/remaps\00", align 1
@DEFAULT_DIR_VIDEO_FILTER = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"filters\00", align 1
@DEFAULT_DIR_DATABASE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"database/rdb\00", align 1
@DEFAULT_DIR_CURSOR = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"database/cursors\00", align 1
@DEFAULT_DIR_LOGS = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"logs\00", align 1
@FILE_PATH_MAIN_CONFIG = common dso_local global i32 0, align 4
@DEFAULT_DIR_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8**, i8*, i8*)* @frontend_wiiu_get_environment_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_wiiu_get_environment_settings(i32* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %13 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @elf_path_cst, align 4
  %17 = call i32 @fill_pathname_basedir(i8* %15, i32 %16, i32 8)
  %18 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %19 = load i64, i64* @DEFAULT_DIR_CORE_ASSETS, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %23 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %24 = getelementptr inbounds i8*, i8** %22, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @fill_pathname_join(i8* %21, i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 8)
  %27 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %28 = load i64, i64* @DEFAULT_DIR_ASSETS, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %32 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %33 = getelementptr inbounds i8*, i8** %31, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @fill_pathname_join(i8* %30, i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %36 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %37 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %41 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @fill_pathname_join(i8* %39, i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %45 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %46 = load i64, i64* @DEFAULT_DIR_CORE_INFO, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %50 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @fill_pathname_join(i8* %48, i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %54 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %55 = load i64, i64* @DEFAULT_DIR_SAVESTATE, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %59 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @fill_pathname_join(i8* %57, i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %63 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %64 = load i64, i64* @DEFAULT_DIR_SRAM, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %68 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @fill_pathname_join(i8* %66, i8* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %72 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %73 = load i64, i64* @DEFAULT_DIR_SYSTEM, align 8
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %77 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @fill_pathname_join(i8* %75, i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %81 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %82 = load i64, i64* @DEFAULT_DIR_PLAYLIST, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %86 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @fill_pathname_join(i8* %84, i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %90 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %91 = load i64, i64* @DEFAULT_DIR_MENU_CONFIG, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %95 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @fill_pathname_join(i8* %93, i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %99 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %100 = load i64, i64* @DEFAULT_DIR_REMAP, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %104 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @fill_pathname_join(i8* %102, i8* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 8)
  %108 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %109 = load i64, i64* @DEFAULT_DIR_VIDEO_FILTER, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %113 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %114 = getelementptr inbounds i8*, i8** %112, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @fill_pathname_join(i8* %111, i8* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 8)
  %117 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %118 = load i64, i64* @DEFAULT_DIR_DATABASE, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %122 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @fill_pathname_join(i8* %120, i8* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %126 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %127 = load i64, i64* @DEFAULT_DIR_CURSOR, align 8
  %128 = getelementptr inbounds i8*, i8** %126, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %131 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @fill_pathname_join(i8* %129, i8* %133, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 8)
  %135 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %136 = load i64, i64* @DEFAULT_DIR_LOGS, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %140 = load i64, i64* @DEFAULT_DIR_CORE, align 8
  %141 = getelementptr inbounds i8*, i8** %139, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @fill_pathname_join(i8* %138, i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 8)
  %144 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 1, i32 0), align 8
  %145 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %146 = load i64, i64* @DEFAULT_DIR_PORT, align 8
  %147 = getelementptr inbounds i8*, i8** %145, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* @FILE_PATH_MAIN_CONFIG, align 4
  %150 = call i8* @file_path_str(i32 %149)
  %151 = call i32 @fill_pathname_join(i8* %144, i8* %148, i8* %150, i32 8)
  store i32 0, i32* %9, align 4
  br label %152

152:                                              ; preds = %169, %4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @DEFAULT_DIR_LAST, align 4
  %155 = icmp ult i32 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_defaults, i32 0, i32 0), align 8
  %158 = load i32, i32* %9, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %10, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = call i32 @string_is_empty(i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %156
  %166 = load i8*, i8** %10, align 8
  %167 = call i32 @path_mkdir(i8* %166)
  br label %168

168:                                              ; preds = %165, %156
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %9, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %152

172:                                              ; preds = %152
  ret void
}

declare dso_local i32 @fill_pathname_basedir(i8*, i32, i32) #1

declare dso_local i32 @fill_pathname_join(i8*, i8*, i8*, i32) #1

declare dso_local i8* @file_path_str(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @path_mkdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
