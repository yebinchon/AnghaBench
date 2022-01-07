; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_config_unload_override.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..configuration.c_config_unload_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RARCH_PATH_CONFIG_APPEND = common dso_local global i32 0, align 4
@RARCH_OVERRIDE_SETTING_STATE_PATH = common dso_local global i32 0, align 4
@RARCH_OVERRIDE_SETTING_SAVE_PATH = common dso_local global i32 0, align 4
@RARCH_PATH_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"[Overrides] configuration overrides unloaded, original configuration restored.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_unload_override() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @RARCH_PATH_CONFIG_APPEND, align 4
  %3 = call i32 @path_clear(i32 %2)
  %4 = load i32, i32* @RARCH_OVERRIDE_SETTING_STATE_PATH, align 4
  %5 = call i32 @retroarch_override_setting_unset(i32 %4, i32* null)
  %6 = load i32, i32* @RARCH_OVERRIDE_SETTING_SAVE_PATH, align 4
  %7 = call i32 @retroarch_override_setting_unset(i32 %6, i32* null)
  %8 = call i32 (...) @global_get_ptr()
  %9 = load i32, i32* @RARCH_PATH_CONFIG, align 4
  %10 = call i32 @path_get(i32 %9)
  %11 = call i32 (...) @config_get_ptr()
  %12 = call i32 @config_load_file(i32 %8, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

15:                                               ; preds = %0
  %16 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @RARCH_OVERRIDE_SETTING_STATE_PATH, align 4
  %18 = call i32 @retroarch_override_setting_set(i32 %17, i32* null)
  %19 = load i32, i32* @RARCH_OVERRIDE_SETTING_SAVE_PATH, align 4
  %20 = call i32 @retroarch_override_setting_set(i32 %19, i32* null)
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %15, %14
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @path_clear(i32) #1

declare dso_local i32 @retroarch_override_setting_unset(i32, i32*) #1

declare dso_local i32 @config_load_file(i32, i32, i32) #1

declare dso_local i32 @global_get_ptr(...) #1

declare dso_local i32 @path_get(i32) #1

declare dso_local i32 @config_get_ptr(...) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @retroarch_override_setting_set(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
