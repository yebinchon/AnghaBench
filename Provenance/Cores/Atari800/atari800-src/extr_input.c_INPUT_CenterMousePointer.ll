; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_INPUT_CenterMousePointer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_input.c_INPUT_CenterMousePointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INPUT_mouse_mode = common dso_local global i32 0, align 4
@MOUSE_SHIFT = common dso_local global i32 0, align 4
@mouse_x = common dso_local global i32 0, align 4
@mouse_y = common dso_local global i32 0, align 4
@mouse_move_x = common dso_local global i32 0, align 4
@mouse_move_y = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @INPUT_CenterMousePointer() #0 {
  %1 = load i32, i32* @INPUT_mouse_mode, align 4
  switch i32 %1, label %13 [
    i32 132, label %2
    i32 129, label %2
    i32 133, label %2
    i32 131, label %7
    i32 135, label %7
    i32 136, label %12
    i32 130, label %12
    i32 128, label %12
    i32 134, label %12
  ]

2:                                                ; preds = %0, %0, %0
  %3 = load i32, i32* @MOUSE_SHIFT, align 4
  %4 = shl i32 114, %3
  store i32 %4, i32* @mouse_x, align 4
  %5 = load i32, i32* @MOUSE_SHIFT, align 4
  %6 = shl i32 114, %5
  store i32 %6, i32* @mouse_y, align 4
  br label %13

7:                                                ; preds = %0, %0
  %8 = load i32, i32* @MOUSE_SHIFT, align 4
  %9 = shl i32 84, %8
  store i32 %9, i32* @mouse_x, align 4
  %10 = load i32, i32* @MOUSE_SHIFT, align 4
  %11 = shl i32 60, %10
  store i32 %11, i32* @mouse_y, align 4
  br label %13

12:                                               ; preds = %0, %0, %0, %0
  store i32 0, i32* @mouse_move_x, align 4
  store i32 0, i32* @mouse_move_y, align 4
  br label %13

13:                                               ; preds = %0, %12, %7, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
