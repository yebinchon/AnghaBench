; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_menu.c_gp2x_menu_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_menu.c_gp2x_menu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e_menu_adv_options = common dso_local global i32 0, align 4
@MA_OPT_ARM940_SOUND = common dso_local global i32 0, align 4
@e_menu_gfx_options = common dso_local global i32 0, align 4
@MA_OPT_TEARING_FIX = common dso_local global i32 0, align 4
@MA_OPT2_GAMMA = common dso_local global i32 0, align 4
@MA_OPT2_A_SN_GAMMA = common dso_local global i32 0, align 4
@gp2x_dev_id = common dso_local global i32 0, align 4
@men_scaling_opts = common dso_local global i32** null, align 8
@e_menu_keyconfig = common dso_local global i32 0, align 4
@MA_CTRL_DEADZONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gp2x_menu_init() #0 {
  %1 = load i32, i32* @e_menu_adv_options, align 4
  %2 = load i32, i32* @MA_OPT_ARM940_SOUND, align 4
  %3 = call i32 @me_enable(i32 %1, i32 %2, i32 0)
  %4 = load i32, i32* @e_menu_gfx_options, align 4
  %5 = load i32, i32* @MA_OPT_TEARING_FIX, align 4
  %6 = call i32 @me_enable(i32 %4, i32 %5, i32 0)
  %7 = load i32, i32* @e_menu_gfx_options, align 4
  %8 = load i32, i32* @MA_OPT2_GAMMA, align 4
  %9 = call i32 @me_enable(i32 %7, i32 %8, i32 0)
  %10 = load i32, i32* @e_menu_gfx_options, align 4
  %11 = load i32, i32* @MA_OPT2_A_SN_GAMMA, align 4
  %12 = call i32 @me_enable(i32 %10, i32 %11, i32 0)
  %13 = load i32, i32* @gp2x_dev_id, align 4
  switch i32 %13, label %29 [
    i32 129, label %14
    i32 128, label %24
    i32 130, label %28
  ]

14:                                               ; preds = %0
  %15 = load i32, i32* @e_menu_adv_options, align 4
  %16 = load i32, i32* @MA_OPT_ARM940_SOUND, align 4
  %17 = call i32 @me_enable(i32 %15, i32 %16, i32 1)
  %18 = load i32, i32* @e_menu_gfx_options, align 4
  %19 = load i32, i32* @MA_OPT2_GAMMA, align 4
  %20 = call i32 @me_enable(i32 %18, i32 %19, i32 1)
  %21 = load i32, i32* @e_menu_gfx_options, align 4
  %22 = load i32, i32* @MA_OPT2_A_SN_GAMMA, align 4
  %23 = call i32 @me_enable(i32 %21, i32 %22, i32 1)
  br label %30

24:                                               ; preds = %0
  %25 = load i32, i32* @e_menu_gfx_options, align 4
  %26 = load i32, i32* @MA_OPT_TEARING_FIX, align 4
  %27 = call i32 @me_enable(i32 %25, i32 %26, i32 1)
  br label %30

28:                                               ; preds = %0
  br label %30

29:                                               ; preds = %0
  br label %30

30:                                               ; preds = %29, %28, %24, %14
  %31 = load i32, i32* @gp2x_dev_id, align 4
  %32 = icmp ne i32 %31, 129
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32**, i32*** @men_scaling_opts, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 2
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @gp2x_dev_id, align 4
  %38 = icmp ne i32 %37, 130
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @e_menu_keyconfig, align 4
  %41 = load i32, i32* @MA_CTRL_DEADZONE, align 4
  %42 = call i32 @me_enable(i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @me_enable(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
