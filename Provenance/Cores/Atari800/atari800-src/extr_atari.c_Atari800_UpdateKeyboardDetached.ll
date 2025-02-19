; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_UpdateKeyboardDetached.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_UpdateKeyboardDetached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_XLXE = common dso_local global i64 0, align 8
@Atari800_keyboard_detached = common dso_local global i64 0, align 8
@GTIA_TRIG = common dso_local global i32* null, align 8
@GTIA_GRACTL = common dso_local global i32 0, align 4
@GTIA_TRIG_latch = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Atari800_UpdateKeyboardDetached() #0 {
  %1 = load i64, i64* @Atari800_machine_type, align 8
  %2 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  %5 = load i64, i64* @Atari800_keyboard_detached, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = load i32*, i32** @GTIA_TRIG, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  store i32 %8, i32* %10, align 4
  %11 = load i64, i64* @Atari800_keyboard_detached, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* @GTIA_GRACTL, align 4
  %15 = and i32 %14, 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64*, i64** @GTIA_TRIG_latch, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 2
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %13, %4
  br label %21

21:                                               ; preds = %20, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
