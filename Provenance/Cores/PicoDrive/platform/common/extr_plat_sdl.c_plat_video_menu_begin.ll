; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_plat_video_menu_begin.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_plat_video_menu_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@plat_sdl_overlay = common dso_local global i32* null, align 8
@plat_sdl_gl_active = common dso_local global i64 0, align 8
@shadow_fb = common dso_local global i32 0, align 4
@g_menuscreen_ptr = common dso_local global i32 0, align 4
@plat_sdl_screen = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_video_menu_begin() #0 {
  %1 = load i32*, i32** @plat_sdl_overlay, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @plat_sdl_gl_active, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @shadow_fb, align 4
  store i32 %7, i32* @g_menuscreen_ptr, align 4
  br label %19

8:                                                ; preds = %3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plat_sdl_screen, align 8
  %10 = call i64 @SDL_MUSTLOCK(%struct.TYPE_4__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plat_sdl_screen, align 8
  %14 = call i32 @SDL_LockSurface(%struct.TYPE_4__* %13)
  br label %15

15:                                               ; preds = %12, %8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plat_sdl_screen, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @g_menuscreen_ptr, align 4
  br label %19

19:                                               ; preds = %15, %6
  ret void
}

declare dso_local i64 @SDL_MUSTLOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @SDL_LockSurface(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
