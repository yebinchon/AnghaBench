; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_event_save_files.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..taskstask_save.c_event_save_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@task_save_files = common dso_local global %struct.TYPE_2__* null, align 8
@RARCH_CTL_IS_SRAM_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_save_files() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @cheat_manager_save_game_specific_cheats()
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @task_save_files, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @RARCH_CTL_IS_SRAM_USED, align 4
  %8 = call i32 @rarch_ctl(i32 %7, i32* null)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %25

11:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %21, %11
  %13 = load i32, i32* %2, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @task_save_files, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @content_save_ram_file(i32 %19)
  br label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %2, align 4
  br label %12

24:                                               ; preds = %12
  store i32 1, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %10
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @cheat_manager_save_game_specific_cheats(...) #1

declare dso_local i32 @rarch_ctl(i32, i32*) #1

declare dso_local i32 @content_save_ram_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
