; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_plat.c_plat_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_plat.c_plat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gp2x_dev_id = common dso_local global i32 0, align 4
@g_menuscreen_w = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@gp2x_screens = common dso_local global i32* null, align 8
@g_menubg_ptr = common dso_local global i32 0, align 4
@flip_after_sync = common dso_local global i32 0, align 4
@gp2x_evdev_pdata = common dso_local global i32 0, align 4
@in_gp2x_defbinds = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_init() #0 {
  %1 = call i32 (...) @warm_init()
  %2 = load i32, i32* @gp2x_dev_id, align 4
  switch i32 %2, label %8 [
    i32 129, label %3
    i32 128, label %6
    i32 130, label %6
  ]

3:                                                ; preds = %0
  %4 = call i32 (...) @sharedmem940_init()
  %5 = call i32 (...) @vid_mmsp2_init()
  br label %8

6:                                                ; preds = %0, %0
  %7 = call i32 (...) @vid_pollux_init()
  br label %8

8:                                                ; preds = %0, %6, %3
  store i32 320, i32* @g_menuscreen_w, align 4
  store i32 240, i32* @g_menuscreen_h, align 4
  %9 = call i32 @gp2x_memset_all_buffers(i32 0, i32 0, i32 153600)
  %10 = call i32 @gp2x_make_fb_bufferable(i32 1)
  %11 = load i32*, i32** @gp2x_screens, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @g_menubg_ptr, align 4
  store i32 1, i32* @flip_after_sync, align 4
  %14 = call i32 (...) @gp2x_menu_init()
  %15 = call i32 @in_evdev_init(i32* @gp2x_evdev_pdata)
  %16 = load i32, i32* @in_gp2x_defbinds, align 4
  %17 = call i32 @in_gp2x_init(i32 %16)
  %18 = call i32 (...) @in_probe()
  %19 = call i32 (...) @plat_target_setup_input()
  ret void
}

declare dso_local i32 @warm_init(...) #1

declare dso_local i32 @sharedmem940_init(...) #1

declare dso_local i32 @vid_mmsp2_init(...) #1

declare dso_local i32 @vid_pollux_init(...) #1

declare dso_local i32 @gp2x_memset_all_buffers(i32, i32, i32) #1

declare dso_local i32 @gp2x_make_fb_bufferable(i32) #1

declare dso_local i32 @gp2x_menu_init(...) #1

declare dso_local i32 @in_evdev_init(i32*) #1

declare dso_local i32 @in_gp2x_init(i32) #1

declare dso_local i32 @in_probe(...) #1

declare dso_local i32 @plat_target_setup_input(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
