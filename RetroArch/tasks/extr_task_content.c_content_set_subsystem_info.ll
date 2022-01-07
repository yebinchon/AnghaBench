; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_set_subsystem_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_content.c_content_set_subsystem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pending_subsystem_init = common dso_local global i32 0, align 4
@RARCH_PATH_SUBSYSTEM = common dso_local global i32 0, align 4
@pending_subsystem_ident = common dso_local global i32 0, align 4
@pending_subsystem_roms = common dso_local global i32 0, align 4
@pending_subsystem_rom_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @content_set_subsystem_info() #0 {
  %1 = load i32, i32* @pending_subsystem_init, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @RARCH_PATH_SUBSYSTEM, align 4
  %6 = load i32, i32* @pending_subsystem_ident, align 4
  %7 = call i32 @path_set(i32 %5, i32 %6)
  %8 = load i32, i32* @pending_subsystem_roms, align 4
  %9 = load i32, i32* @pending_subsystem_rom_num, align 4
  %10 = call i32 @path_set_special(i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %4, %3
  ret void
}

declare dso_local i32 @path_set(i32, i32) #1

declare dso_local i32 @path_set_special(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
