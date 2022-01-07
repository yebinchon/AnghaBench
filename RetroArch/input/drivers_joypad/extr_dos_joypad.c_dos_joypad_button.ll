; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_dos_joypad.c_dos_joypad_button.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_dos_joypad.c_dos_joypad_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_MAX_PADS = common dso_local global i32 0, align 4
@DOSKEY_x = common dso_local global i64 0, align 8
@DOSKEY_z = common dso_local global i64 0, align 8
@DOSKEY_s = common dso_local global i64 0, align 8
@DOSKEY_a = common dso_local global i64 0, align 8
@DOSKEY_RSHIFT = common dso_local global i64 0, align 8
@DOSKEY_RETURN = common dso_local global i64 0, align 8
@DOSKEY_UP = common dso_local global i64 0, align 8
@DOSKEY_DOWN = common dso_local global i64 0, align 8
@DOSKEY_LEFT = common dso_local global i64 0, align 8
@DOSKEY_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dos_joypad_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_joypad_button(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32* @dos_keyboard_state_get(i32 %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @DEFAULT_MAX_PADS, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %65 [
    i32 137, label %15
    i32 136, label %20
    i32 129, label %25
    i32 128, label %30
    i32 132, label %35
    i32 131, label %40
    i32 130, label %45
    i32 135, label %50
    i32 134, label %55
    i32 133, label %60
  ]

15:                                               ; preds = %13
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* @DOSKEY_x, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = load i64, i64* @DOSKEY_z, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %13
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* @DOSKEY_s, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %13
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* @DOSKEY_a, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %66

35:                                               ; preds = %13
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* @DOSKEY_RSHIFT, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %13
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* @DOSKEY_RETURN, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %13
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* @DOSKEY_UP, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  br label %66

50:                                               ; preds = %13
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* @DOSKEY_DOWN, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  br label %66

55:                                               ; preds = %13
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* @DOSKEY_LEFT, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %13
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* @DOSKEY_RIGHT, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32* @dos_keyboard_state_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
