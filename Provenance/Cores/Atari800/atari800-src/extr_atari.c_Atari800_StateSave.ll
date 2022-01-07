; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_StateSave.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_StateSave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_tv_mode = common dso_local global i64 0, align 8
@Atari800_TV_PAL = common dso_local global i64 0, align 8
@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_XLXE = common dso_local global i64 0, align 8
@Atari800_builtin_basic = common dso_local global i32 0, align 4
@Atari800_keyboard_leds = common dso_local global i32 0, align 4
@Atari800_f_keys = common dso_local global i32 0, align 4
@Atari800_jumper = common dso_local global i32 0, align 4
@Atari800_builtin_game = common dso_local global i32 0, align 4
@Atari800_keyboard_detached = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Atari800_StateSave() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @Atari800_tv_mode, align 8
  %3 = load i64, i64* @Atari800_TV_PAL, align 8
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i32
  store i32 %5, i32* %1, align 4
  %6 = call i32 @StateSav_SaveUBYTE(i32* %1, i32 1)
  %7 = load i64, i64* @Atari800_machine_type, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %1, align 4
  %9 = call i32 @StateSav_SaveUBYTE(i32* %1, i32 1)
  %10 = load i64, i64* @Atari800_machine_type, align 8
  %11 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %0
  %14 = load i32, i32* @Atari800_builtin_basic, align 4
  store i32 %14, i32* %1, align 4
  %15 = call i32 @StateSav_SaveUBYTE(i32* %1, i32 1)
  %16 = load i32, i32* @Atari800_keyboard_leds, align 4
  store i32 %16, i32* %1, align 4
  %17 = call i32 @StateSav_SaveUBYTE(i32* %1, i32 1)
  %18 = load i32, i32* @Atari800_f_keys, align 4
  store i32 %18, i32* %1, align 4
  %19 = call i32 @StateSav_SaveUBYTE(i32* %1, i32 1)
  %20 = load i32, i32* @Atari800_jumper, align 4
  store i32 %20, i32* %1, align 4
  %21 = call i32 @StateSav_SaveUBYTE(i32* %1, i32 1)
  %22 = load i32, i32* @Atari800_builtin_game, align 4
  store i32 %22, i32* %1, align 4
  %23 = call i32 @StateSav_SaveUBYTE(i32* %1, i32 1)
  %24 = load i32, i32* @Atari800_keyboard_detached, align 4
  store i32 %24, i32* %1, align 4
  %25 = call i32 @StateSav_SaveUBYTE(i32* %1, i32 1)
  br label %26

26:                                               ; preds = %13, %0
  ret void
}

declare dso_local i32 @StateSav_SaveUBYTE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
