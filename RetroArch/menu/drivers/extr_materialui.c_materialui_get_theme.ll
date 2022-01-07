; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_get_theme.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_materialui.c_materialui_get_theme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@materialui_theme_blue = common dso_local global i32 0, align 4
@materialui_theme_blue_grey = common dso_local global i32 0, align 4
@materialui_theme_dark_blue = common dso_local global i32 0, align 4
@materialui_theme_green = common dso_local global i32 0, align 4
@materialui_theme_red = common dso_local global i32 0, align 4
@materialui_theme_yellow = common dso_local global i32 0, align 4
@materialui_theme_nvidia_shield = common dso_local global i32 0, align 4
@materialui_theme_materialui = common dso_local global i32 0, align 4
@materialui_theme_materialui_dark = common dso_local global i32 0, align 4
@materialui_theme_ozone_dark = common dso_local global i32 0, align 4
@materialui_theme_nord = common dso_local global i32 0, align 4
@materialui_theme_gruvbox_dark = common dso_local global i32 0, align 4
@materialui_theme_solarized_dark = common dso_local global i32 0, align 4
@materialui_theme_cutie_blue = common dso_local global i32 0, align 4
@materialui_theme_cutie_cyan = common dso_local global i32 0, align 4
@materialui_theme_cutie_green = common dso_local global i32 0, align 4
@materialui_theme_cutie_orange = common dso_local global i32 0, align 4
@materialui_theme_cutie_pink = common dso_local global i32 0, align 4
@materialui_theme_cutie_purple = common dso_local global i32 0, align 4
@materialui_theme_cutie_red = common dso_local global i32 0, align 4
@materialui_theme_virtual_boy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @materialui_get_theme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @materialui_get_theme(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %26 [
    i32 148, label %5
    i32 147, label %6
    i32 139, label %7
    i32 138, label %8
    i32 131, label %9
    i32 128, label %10
    i32 133, label %11
    i32 136, label %12
    i32 135, label %13
    i32 132, label %14
    i32 134, label %15
    i32 137, label %16
    i32 130, label %17
    i32 146, label %18
    i32 145, label %19
    i32 144, label %20
    i32 143, label %21
    i32 142, label %22
    i32 141, label %23
    i32 140, label %24
    i32 129, label %25
  ]

5:                                                ; preds = %1
  store i32* @materialui_theme_blue, i32** %2, align 8
  br label %28

6:                                                ; preds = %1
  store i32* @materialui_theme_blue_grey, i32** %2, align 8
  br label %28

7:                                                ; preds = %1
  store i32* @materialui_theme_dark_blue, i32** %2, align 8
  br label %28

8:                                                ; preds = %1
  store i32* @materialui_theme_green, i32** %2, align 8
  br label %28

9:                                                ; preds = %1
  store i32* @materialui_theme_red, i32** %2, align 8
  br label %28

10:                                               ; preds = %1
  store i32* @materialui_theme_yellow, i32** %2, align 8
  br label %28

11:                                               ; preds = %1
  store i32* @materialui_theme_nvidia_shield, i32** %2, align 8
  br label %28

12:                                               ; preds = %1
  store i32* @materialui_theme_materialui, i32** %2, align 8
  br label %28

13:                                               ; preds = %1
  store i32* @materialui_theme_materialui_dark, i32** %2, align 8
  br label %28

14:                                               ; preds = %1
  store i32* @materialui_theme_ozone_dark, i32** %2, align 8
  br label %28

15:                                               ; preds = %1
  store i32* @materialui_theme_nord, i32** %2, align 8
  br label %28

16:                                               ; preds = %1
  store i32* @materialui_theme_gruvbox_dark, i32** %2, align 8
  br label %28

17:                                               ; preds = %1
  store i32* @materialui_theme_solarized_dark, i32** %2, align 8
  br label %28

18:                                               ; preds = %1
  store i32* @materialui_theme_cutie_blue, i32** %2, align 8
  br label %28

19:                                               ; preds = %1
  store i32* @materialui_theme_cutie_cyan, i32** %2, align 8
  br label %28

20:                                               ; preds = %1
  store i32* @materialui_theme_cutie_green, i32** %2, align 8
  br label %28

21:                                               ; preds = %1
  store i32* @materialui_theme_cutie_orange, i32** %2, align 8
  br label %28

22:                                               ; preds = %1
  store i32* @materialui_theme_cutie_pink, i32** %2, align 8
  br label %28

23:                                               ; preds = %1
  store i32* @materialui_theme_cutie_purple, i32** %2, align 8
  br label %28

24:                                               ; preds = %1
  store i32* @materialui_theme_cutie_red, i32** %2, align 8
  br label %28

25:                                               ; preds = %1
  store i32* @materialui_theme_virtual_boy, i32** %2, align 8
  br label %28

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26
  store i32* @materialui_theme_blue, i32** %2, align 8
  br label %28

28:                                               ; preds = %27, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %29 = load i32*, i32** %2, align 8
  ret i32* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
