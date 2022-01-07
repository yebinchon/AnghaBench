; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_rarch_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_rarch_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 (...)*, i32 (...)* }
%struct.TYPE_7__ = type { i32, i8**, i32, i8* }

@runloop_system = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@CMD_EVENT_HISTORY_DEINIT = common dso_local global i32 0, align 4
@configuration_settings = common dso_local global i32* null, align 8
@RARCH_DRIVER_CTL_DEINIT = common dso_local global i32 0, align 4
@RARCH_CTL_STATE_FREE = common dso_local global i32 0, align 4
@rarch_is_inited = common dso_local global i64 0, align 8
@DRIVERS_CMD_ALL = common dso_local global i32 0, align 4
@video_driver_active = common dso_local global i32 0, align 4
@audio_driver_active = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i64 0, align 8
@RETRO_DEVICE_JOYPAD = common dso_local global i32 0, align 4
@CORE_TYPE_PLAIN = common dso_local global i32 0, align 4
@MAGIC_POINTER = common dso_local global i32 0, align 4
@rarch_tls = common dso_local global i32 0, align 4
@ui_companion_qt = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rarch_main(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = call i32 @libretro_free_system_info(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @runloop_system, i32 0, i32 0))
  %13 = load i32, i32* @CMD_EVENT_HISTORY_DEINIT, align 4
  %14 = call i32 @command_event(i32 %13, i32* null)
  %15 = call i32 (...) @rarch_favorites_deinit()
  %16 = call i64 @calloc(i32 1, i32 4)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** @configuration_settings, align 8
  %18 = load i32, i32* @RARCH_DRIVER_CTL_DEINIT, align 4
  %19 = call i32 @driver_ctl(i32 %18, i32* null)
  %20 = load i32, i32* @RARCH_CTL_STATE_FREE, align 4
  %21 = call i32 @rarch_ctl(i32 %20, i32* null)
  %22 = call i32 (...) @global_free()
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @frontend_driver_init_first(i8* %23)
  %25 = load i64, i64* @rarch_is_inited, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @DRIVERS_CMD_ALL, align 4
  %29 = call i32 @driver_uninit(i32 %28)
  br label %30

30:                                               ; preds = %27, %3
  store i32 1, i32* @video_driver_active, align 4
  store i32 1, i32* @audio_driver_active, align 4
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %39, %30
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @MAX_USERS, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @RETRO_DEVICE_JOYPAD, align 4
  %38 = call i32 @input_config_set_device(i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %31

42:                                               ; preds = %31
  %43 = call i32 (...) @retroarch_msg_queue_init()
  %44 = call i64 (...) @frontend_driver_is_inited()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i8**, i8*** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  store i8** %49, i8*** %50, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i8* %51, i8** %52, align 8
  %53 = call i32 (...) @frontend_driver_environment_get_ptr()
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  store i32 %53, i32* %54, align 8
  %55 = load i32, i32* @CORE_TYPE_PLAIN, align 4
  %56 = call i32 @task_push_load_content_from_cli(i32* null, i32* null, %struct.TYPE_7__* %9, i32 %55, i32* null, i32* null)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %76

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %42
  %61 = call i32 (...) @ui_companion_driver_init_first()
  br label %62

62:                                               ; preds = %72, %60
  store i32 0, i32* %11, align 4
  %63 = call i32 (...) @runloop_iterate()
  store i32 %63, i32* %10, align 4
  %64 = call i32 (...) @task_queue_check()
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67, %62
  br label %73

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  br i1 true, label %62, label %73

73:                                               ; preds = %72, %70
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @main_exit(i8* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %58
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @libretro_free_system_info(i32*) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i32 @rarch_favorites_deinit(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @driver_ctl(i32, i32*) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @global_free(...) #1

declare dso_local i32 @frontend_driver_init_first(i8*) #1

declare dso_local i32 @driver_uninit(i32) #1

declare dso_local i32 @input_config_set_device(i64, i32) #1

declare dso_local i32 @retroarch_msg_queue_init(...) #1

declare dso_local i64 @frontend_driver_is_inited(...) #1

declare dso_local i32 @frontend_driver_environment_get_ptr(...) #1

declare dso_local i32 @task_push_load_content_from_cli(i32*, i32*, %struct.TYPE_7__*, i32, i32*, i32*) #1

declare dso_local i32 @ui_companion_driver_init_first(...) #1

declare dso_local i32 @runloop_iterate(...) #1

declare dso_local i32 @task_queue_check(...) #1

declare dso_local i32 @main_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
