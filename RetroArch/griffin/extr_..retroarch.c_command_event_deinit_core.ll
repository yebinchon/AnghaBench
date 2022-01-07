; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_deinit_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_command_event_deinit_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (...)*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Unloading game..\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unloading core..\0A\00", align 1
@current_core = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Unloading core symbols..\0A\00", align 1
@DRIVERS_CMD_ALL = common dso_local global i32 0, align 4
@runloop_remaps_core_active = common dso_local global i64 0, align 8
@runloop_remaps_content_dir_active = common dso_local global i64 0, align 8
@runloop_remaps_game_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @command_event_deinit_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_deinit_core(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @core_unload_game()
  %5 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @video_driver_set_cached_frame_ptr(i32* null)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_core, i32 0, i32 2), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_core, i32 0, i32 1), align 8
  %11 = call i32 (...) %10()
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @uninit_libretro_symbols(%struct.TYPE_3__* @current_core)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_core, i32 0, i32 0), align 8
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @DRIVERS_CMD_ALL, align 4
  %19 = call i32 @driver_uninit(i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = call i32 (...) @command_event_disable_overrides()
  %22 = call i32 (...) @retroarch_unset_runtime_shader_preset()
  %23 = load i64, i64* @runloop_remaps_core_active, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* @runloop_remaps_content_dir_active, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @runloop_remaps_game_active, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28, %25, %20
  %32 = call i32 @input_remapping_set_defaults(i32 1)
  br label %33

33:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @core_unload_game(...) #1

declare dso_local i32 @video_driver_set_cached_frame_ptr(i32*) #1

declare dso_local i32 @uninit_libretro_symbols(%struct.TYPE_3__*) #1

declare dso_local i32 @driver_uninit(i32) #1

declare dso_local i32 @command_event_disable_overrides(...) #1

declare dso_local i32 @retroarch_unset_runtime_shader_preset(...) #1

declare dso_local i32 @input_remapping_set_defaults(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
