; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_PLATFORM_PORT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_PLATFORM_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keypad_mode = common dso_local global i32 0, align 4
@keypad_stick = common dso_local global i32 0, align 4
@INPUT_mouse_mode = common dso_local global i64 0, align 8
@INPUT_MOUSE_OFF = common dso_local global i64 0, align 8
@xmouse_mode = common dso_local global i32 0, align 4
@mouse_stick = common dso_local global i32 0, align 4
@js0 = common dso_local global i32 0, align 4
@js0_centre_x = common dso_local global i32 0, align 4
@js0_centre_y = common dso_local global i32 0, align 4
@js0_mode = common dso_local global i32 0, align 4
@js1 = common dso_local global i32 0, align 4
@js1_centre_x = common dso_local global i32 0, align 4
@js1_centre_y = common dso_local global i32 0, align 4
@js1_mode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_PORT(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 15, i32* %3, align 4
  store i32 15, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = load i32, i32* @keypad_mode, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @keypad_stick, align 4
  store i32 %11, i32* %3, align 4
  br label %18

12:                                               ; preds = %7
  %13 = load i32, i32* @keypad_mode, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @keypad_stick, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %15, %12
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i64, i64* @INPUT_mouse_mode, align 8
  %20 = load i64, i64* @INPUT_MOUSE_OFF, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32, i32* @xmouse_mode, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @xmouse_mode, align 4
  %27 = call i32 @mouse_joystick(i32 %26)
  %28 = load i32, i32* @mouse_stick, align 4
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %22
  %30 = load i32, i32* @xmouse_mode, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @xmouse_mode, align 4
  %34 = call i32 @mouse_joystick(i32 %33)
  %35 = load i32, i32* @mouse_stick, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37, %18
  br label %71

39:                                               ; preds = %1
  %40 = load i32, i32* @keypad_mode, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @keypad_stick, align 4
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %39
  %45 = load i32, i32* @keypad_mode, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @keypad_stick, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i64, i64* @INPUT_mouse_mode, align 8
  %52 = load i64, i64* @INPUT_MOUSE_OFF, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32, i32* @xmouse_mode, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* @xmouse_mode, align 4
  %59 = call i32 @mouse_joystick(i32 %58)
  %60 = load i32, i32* @mouse_stick, align 4
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %54
  %62 = load i32, i32* @xmouse_mode, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @xmouse_mode, align 4
  %66 = call i32 @mouse_joystick(i32 %65)
  %67 = load i32, i32* @mouse_stick, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %61
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %38
  %72 = load i32, i32* %4, align 4
  %73 = shl i32 %72, 4
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %73, %74
  ret i32 %75
}

declare dso_local i32 @mouse_joystick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
