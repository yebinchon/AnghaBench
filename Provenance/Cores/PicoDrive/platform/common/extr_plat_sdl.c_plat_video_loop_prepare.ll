; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_plat_video_loop_prepare.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_plat_video_loop_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@g_screen_width = common dso_local global i32 0, align 4
@g_screen_height = common dso_local global i32 0, align 4
@plat_sdl_overlay = common dso_local global i32* null, align 8
@plat_sdl_gl_active = common dso_local global i64 0, align 8
@shadow_fb = common dso_local global i32 0, align 4
@g_screen_ptr = common dso_local global i32 0, align 4
@plat_sdl_screen = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_video_loop_prepare() #0 {
  %1 = load i32, i32* @g_screen_width, align 4
  %2 = load i32, i32* @g_screen_height, align 4
  %3 = call i32 @plat_sdl_change_video_mode(i32 %1, i32 %2, i32 0)
  %4 = load i32*, i32** @plat_sdl_overlay, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @plat_sdl_gl_active, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @shadow_fb, align 4
  store i32 %10, i32* @g_screen_ptr, align 4
  br label %22

11:                                               ; preds = %6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plat_sdl_screen, align 8
  %13 = call i64 @SDL_MUSTLOCK(%struct.TYPE_4__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plat_sdl_screen, align 8
  %17 = call i32 @SDL_LockSurface(%struct.TYPE_4__* %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plat_sdl_screen, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @g_screen_ptr, align 4
  br label %22

22:                                               ; preds = %18, %9
  %23 = load i32, i32* @g_screen_ptr, align 4
  %24 = load i32, i32* @g_screen_width, align 4
  %25 = mul nsw i32 %24, 2
  %26 = call i32 @PicoDrawSetOutBuf(i32 %23, i32 %25)
  ret void
}

declare dso_local i32 @plat_sdl_change_video_mode(i32, i32, i32) #1

declare dso_local i64 @SDL_MUSTLOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @SDL_LockSurface(%struct.TYPE_4__*) #1

declare dso_local i32 @PicoDrawSetOutBuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
