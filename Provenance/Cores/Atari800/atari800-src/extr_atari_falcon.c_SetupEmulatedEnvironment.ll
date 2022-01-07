; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_SetupEmulatedEnvironment.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_falcon.c_SetupEmulatedEnvironment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reprogram_VIDEL = common dso_local global i64 0, align 8
@new_videoram = common dso_local global i32 0, align 4
@mode336x240_videl_settings = common dso_local global i64 0, align 8
@p_str_p = common dso_local global i32* null, align 8
@load_r = common dso_local global i32 0, align 4
@new_videl_mode_valid = common dso_local global i32 0, align 4
@init_kb = common dso_local global i32 0, align 4
@Screen_HEIGHT = common dso_local global i32 0, align 4
@Screen_WIDTH = common dso_local global i32 0, align 4
@Screen_atari_b = common dso_local global i32* null, align 8
@delta_screen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetupEmulatedEnvironment() #0 {
  %1 = load i64, i64* @reprogram_VIDEL, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i32, i32* @new_videoram, align 4
  %5 = load i32, i32* @new_videoram, align 4
  %6 = call i32 @VsetScreen(i32 %4, i32 %5, i32 -1, i32 -1)
  %7 = load i64, i64* @mode336x240_videl_settings, align 8
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** @p_str_p, align 8
  %9 = load i32, i32* @load_r, align 4
  %10 = call i32 @Supexec(i32 %9)
  store i32 1, i32* @new_videl_mode_valid, align 4
  br label %11

11:                                               ; preds = %3, %0
  %12 = call i32 (...) @set_new_colors()
  %13 = load i32, i32* @init_kb, align 4
  %14 = call i32 @Supexec(i32 %13)
  %15 = call i32 @Bconout(i32 4, i32 20)
  ret void
}

declare dso_local i32 @VsetScreen(i32, i32, i32, i32) #1

declare dso_local i32 @Supexec(i32) #1

declare dso_local i32 @set_new_colors(...) #1

declare dso_local i32 @Bconout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
