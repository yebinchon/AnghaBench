; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INPUT_key_code = common dso_local global i32 0, align 4
@menu_consol = common dso_local global i64 0, align 8
@INPUT_CONSOL_NONE = common dso_local global i64 0, align 8
@INPUT_key_consol = common dso_local global i64 0, align 8
@keyboard_consol = common dso_local global i64 0, align 8
@Atari800_display_screen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i8**, i8*** %5, align 8
  %7 = call i32 @Atari800_Initialise(i32* %4, i8** %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  ret i32 3

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %28, %10
  %12 = call i32 (...) @PLATFORM_Keyboard()
  store i32 %12, i32* @INPUT_key_code, align 4
  %13 = load i64, i64* @menu_consol, align 8
  %14 = load i64, i64* @INPUT_CONSOL_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i64, i64* @menu_consol, align 8
  store i64 %17, i64* @INPUT_key_consol, align 8
  %18 = load i64, i64* @INPUT_CONSOL_NONE, align 8
  store i64 %18, i64* @menu_consol, align 8
  br label %21

19:                                               ; preds = %11
  %20 = load i64, i64* @keyboard_consol, align 8
  store i64 %20, i64* @INPUT_key_consol, align 8
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 (...) @Atari_Mouse()
  %23 = call i32 (...) @Atari800_Frame()
  %24 = load i64, i64* @Atari800_display_screen, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @PLATFORM_DisplayScreen()
  br label %28

28:                                               ; preds = %26, %21
  br label %11
}

declare dso_local i32 @Atari800_Initialise(i32*, i8**) #1

declare dso_local i32 @PLATFORM_Keyboard(...) #1

declare dso_local i32 @Atari_Mouse(...) #1

declare dso_local i32 @Atari800_Frame(...) #1

declare dso_local i32 @PLATFORM_DisplayScreen(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
