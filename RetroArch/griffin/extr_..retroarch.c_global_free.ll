; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_global_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..retroarch.c_global_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CMD_EVENT_RECORD_DEINIT = common dso_local global i32 0, align 4
@CMD_EVENT_LOG_FILE_DEINIT = common dso_local global i32 0, align 4
@rarch_block_config_read = common dso_local global i32 0, align 4
@rarch_is_sram_load_disabled = common dso_local global i32 0, align 4
@rarch_is_sram_save_disabled = common dso_local global i32 0, align 4
@rarch_use_sram = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_BPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_IPS_PREF = common dso_local global i32 0, align 4
@RARCH_CTL_UNSET_UPS_PREF = common dso_local global i32 0, align 4
@rarch_patch_blocked = common dso_local global i32 0, align 4
@runloop_overrides_active = common dso_local global i32 0, align 4
@runloop_remaps_core_active = common dso_local global i32 0, align 4
@runloop_remaps_game_active = common dso_local global i32 0, align 4
@runloop_remaps_content_dir_active = common dso_local global i32 0, align 4
@current_core = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@g_extern = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @global_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @global_free() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %1, align 8
  %2 = call i32 (...) @content_deinit()
  %3 = call i32 (...) @path_deinit_subsystem()
  %4 = load i32, i32* @CMD_EVENT_RECORD_DEINIT, align 4
  %5 = call i32 @command_event(i32 %4, i32* null)
  %6 = load i32, i32* @CMD_EVENT_LOG_FILE_DEINIT, align 4
  %7 = call i32 @command_event(i32 %6, i32* null)
  store i32 0, i32* @rarch_block_config_read, align 4
  store i32 0, i32* @rarch_is_sram_load_disabled, align 4
  store i32 0, i32* @rarch_is_sram_save_disabled, align 4
  store i32 0, i32* @rarch_use_sram, align 4
  %8 = load i32, i32* @RARCH_CTL_UNSET_BPS_PREF, align 4
  %9 = call i32 @rarch_ctl(i32 %8, i32* null)
  %10 = load i32, i32* @RARCH_CTL_UNSET_IPS_PREF, align 4
  %11 = call i32 @rarch_ctl(i32 %10, i32* null)
  %12 = load i32, i32* @RARCH_CTL_UNSET_UPS_PREF, align 4
  %13 = call i32 @rarch_ctl(i32 %12, i32* null)
  store i32 0, i32* @rarch_patch_blocked, align 4
  store i32 0, i32* @runloop_overrides_active, align 4
  store i32 0, i32* @runloop_remaps_core_active, align 4
  store i32 0, i32* @runloop_remaps_game_active, align 4
  store i32 0, i32* @runloop_remaps_content_dir_active, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @current_core, i32 0, i32 0), align 4
  store %struct.TYPE_7__* @g_extern, %struct.TYPE_7__** %1, align 8
  %14 = call i32 (...) @path_clear_all()
  %15 = call i32 (...) @dir_clear_all()
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @string_is_empty(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @free(i32 %29)
  br label %31

31:                                               ; preds = %25, %18
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %33 = call i32 @memset(%struct.TYPE_7__* %32, i32 0, i32 4)
  br label %34

34:                                               ; preds = %31, %0
  %35 = call i32 (...) @retroarch_override_setting_free_state()
  ret void
}

declare dso_local i32 @content_deinit(...) #1

declare dso_local i32 @path_deinit_subsystem(...) #1

declare dso_local i32 @command_event(i32, i32*) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @path_clear_all(...) #1

declare dso_local i32 @dir_clear_all(...) #1

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @retroarch_override_setting_free_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
