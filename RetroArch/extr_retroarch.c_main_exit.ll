; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_main_exit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_main_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@configuration_settings = common dso_local global %struct.TYPE_8__* null, align 8
@cached_video_driver = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"[Video]: Restored video driver to \22%s\22.\0A\00", align 1
@CMD_EVENT_MENU_SAVE_CURRENT_CONFIG = common dso_local global i32 0, align 4
@RARCH_CTL_MAIN_DEINIT = common dso_local global i32 0, align 4
@RARCH_PATH_CORE = common dso_local global i32 0, align 4
@has_set_username = common dso_local global i32 0, align 4
@rarch_is_inited = common dso_local global i32 0, align 4
@rarch_error_on_init = common dso_local global i32 0, align 4
@rarch_block_config_read = common dso_local global i32 0, align 4
@DRIVERS_CMD_ALL = common dso_local global i32 0, align 4
@CMD_EVENT_LOG_FILE_DEINIT = common dso_local global i32 0, align 4
@RARCH_CTL_STATE_FREE = common dso_local global i32 0, align 4
@RARCH_CTL_DATA_DEINIT = common dso_local global i32 0, align 4
@RARCH_DRIVER_CTL_DEINIT = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_UNSET_OWN_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_exit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @configuration_settings, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %3, align 8
  %5 = load i64*, i64** @cached_video_driver, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i64*, i64** @cached_video_driver, align 8
  %15 = call i32 @strcpy(i32 %13, i64* %14)
  %16 = load i64*, i64** @cached_video_driver, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %9, %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @CMD_EVENT_MENU_SAVE_CURRENT_CONFIG, align 4
  %31 = call i32 @command_event(i32 %30, i32* null)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* @RARCH_CTL_MAIN_DEINIT, align 4
  %34 = call i32 @rarch_ctl(i32 %33, i32* null)
  %35 = call i32 (...) @rarch_perf_log()
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @frontend_driver_deinit(i8* %36)
  %38 = load i32, i32* @RARCH_PATH_CORE, align 4
  %39 = call i32 @path_get_ptr(i32 %38)
  %40 = load i32, i32* @RARCH_PATH_CORE, align 4
  %41 = call i32 @path_get_realsize(i32 %40)
  %42 = call i32 @frontend_driver_exitspawn(i32 %39, i32 %41)
  store i32 0, i32* @has_set_username, align 4
  store i32 0, i32* @rarch_is_inited, align 4
  store i32 0, i32* @rarch_error_on_init, align 4
  store i32 0, i32* @rarch_block_config_read, align 4
  %43 = call i32 (...) @retroarch_msg_queue_deinit()
  %44 = load i32, i32* @DRIVERS_CMD_ALL, align 4
  %45 = call i32 @driver_uninit(i32 %44)
  %46 = load i32, i32* @CMD_EVENT_LOG_FILE_DEINIT, align 4
  %47 = call i32 @command_event(i32 %46, i32* null)
  %48 = load i32, i32* @RARCH_CTL_STATE_FREE, align 4
  %49 = call i32 @rarch_ctl(i32 %48, i32* null)
  %50 = call i32 (...) @global_free()
  %51 = load i32, i32* @RARCH_CTL_DATA_DEINIT, align 4
  %52 = call i32 @rarch_ctl(i32 %51, i32* null)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @configuration_settings, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @configuration_settings, align 8
  %57 = call i32 @free(%struct.TYPE_8__* %56)
  br label %58

58:                                               ; preds = %55, %32
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @configuration_settings, align 8
  %59 = call i32 (...) @ui_companion_driver_deinit()
  %60 = call i32 @frontend_driver_shutdown(i32 0)
  %61 = load i32, i32* @RARCH_DRIVER_CTL_DEINIT, align 4
  %62 = call i32 @driver_ctl(i32 %61, i32* null)
  %63 = call i32 (...) @ui_companion_driver_free()
  %64 = call i32 (...) @frontend_driver_free()
  ret void
}

declare dso_local i32 @strcpy(i32, i64*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @rarch_perf_log(...) #1

declare dso_local i32 @frontend_driver_deinit(i8*) #1

declare dso_local i32 @frontend_driver_exitspawn(i32, i32) #1

declare dso_local i32 @path_get_ptr(i32) #1

declare dso_local i32 @path_get_realsize(i32) #1

declare dso_local i32 @retroarch_msg_queue_deinit(...) #1

declare dso_local i32 @driver_uninit(i32) #1

declare dso_local i32 @global_free(...) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @ui_companion_driver_deinit(...) #1

declare dso_local i32 @frontend_driver_shutdown(i32) #1

declare dso_local i32 @driver_ctl(i32, i32*) #1

declare dso_local i32 @ui_companion_driver_free(...) #1

declare dso_local i32 @frontend_driver_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
