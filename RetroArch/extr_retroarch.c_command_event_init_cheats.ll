; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_init_cheats.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_retroarch.c_command_event_init_cheats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@configuration_settings = common dso_local global %struct.TYPE_5__* null, align 8
@bsv_movie_state_handle = common dso_local global i32* null, align 8
@RARCH_NETPLAY_CTL_IS_DATA_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @command_event_init_cheats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_event_init_cheats() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @configuration_settings, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  store i32 1, i32* %2, align 4
  %4 = load i32*, i32** @bsv_movie_state_handle, align 8
  %5 = icmp ne i32* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %26

13:                                               ; preds = %0
  %14 = call i32 (...) @cheat_manager_alloc_if_empty()
  %15 = call i32 (...) @cheat_manager_load_game_specific_cheats()
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (...) @cheat_manager_apply_cheats()
  br label %26

26:                                               ; preds = %12, %24, %18, %13
  ret void
}

declare dso_local i32 @cheat_manager_alloc_if_empty(...) #1

declare dso_local i32 @cheat_manager_load_game_specific_cheats(...) #1

declare dso_local i32 @cheat_manager_apply_cheats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
