; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_window.c_getAsyncKeyMods.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_window.c_getAsyncKeyMods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VK_SHIFT = common dso_local global i32 0, align 4
@GLFW_MOD_SHIFT = common dso_local global i32 0, align 4
@VK_CONTROL = common dso_local global i32 0, align 4
@GLFW_MOD_CONTROL = common dso_local global i32 0, align 4
@VK_MENU = common dso_local global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@VK_LWIN = common dso_local global i32 0, align 4
@VK_RWIN = common dso_local global i32 0, align 4
@GLFW_MOD_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getAsyncKeyMods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getAsyncKeyMods() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @VK_SHIFT, align 4
  %3 = call i32 @GetAsyncKeyState(i32 %2)
  %4 = and i32 %3, -2147483648
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @GLFW_MOD_SHIFT, align 4
  %8 = load i32, i32* %1, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @VK_CONTROL, align 4
  %12 = call i32 @GetAsyncKeyState(i32 %11)
  %13 = and i32 %12, -2147483648
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @GLFW_MOD_CONTROL, align 4
  %17 = load i32, i32* %1, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = load i32, i32* @VK_MENU, align 4
  %21 = call i32 @GetAsyncKeyState(i32 %20)
  %22 = and i32 %21, -2147483648
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @GLFW_MOD_ALT, align 4
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @VK_LWIN, align 4
  %30 = call i32 @GetAsyncKeyState(i32 %29)
  %31 = load i32, i32* @VK_RWIN, align 4
  %32 = call i32 @GetAsyncKeyState(i32 %31)
  %33 = or i32 %30, %32
  %34 = and i32 %33, -2147483648
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @GLFW_MOD_SUPER, align 4
  %38 = load i32, i32* %1, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @GetAsyncKeyState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
