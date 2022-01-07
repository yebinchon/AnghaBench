; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_plat_video_menu_end.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_plat_sdl.c_plat_video_menu_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@plat_sdl_overlay = common dso_local global %struct.TYPE_13__* null, align 8
@plat_sdl_screen = common dso_local global %struct.TYPE_12__* null, align 8
@shadow_fb = common dso_local global i32 0, align 4
@g_menuscreen_w = common dso_local global i32 0, align 4
@g_menuscreen_h = common dso_local global i32 0, align 4
@plat_sdl_gl_active = common dso_local global i64 0, align 8
@g_menuscreen_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_video_menu_end() #0 {
  %1 = alloca %struct.TYPE_11__, align 4
  %2 = load %struct.TYPE_13__*, %struct.TYPE_13__** @plat_sdl_overlay, align 8
  %3 = icmp ne %struct.TYPE_13__* %2, null
  br i1 %3, label %4, label %31

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 2
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** @plat_sdl_screen, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1, i32 0, i32 3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @plat_sdl_screen, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @plat_sdl_overlay, align 8
  %16 = call i32 @SDL_LockYUVOverlay(%struct.TYPE_13__* %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** @plat_sdl_overlay, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @shadow_fb, align 4
  %23 = load i32, i32* @g_menuscreen_w, align 4
  %24 = load i32, i32* @g_menuscreen_h, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @rgb565_to_uyvy(i32 %21, i32 %22, i32 %25)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @plat_sdl_overlay, align 8
  %28 = call i32 @SDL_UnlockYUVOverlay(%struct.TYPE_13__* %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @plat_sdl_overlay, align 8
  %30 = call i32 @SDL_DisplayYUVOverlay(%struct.TYPE_13__* %29, %struct.TYPE_11__* %1)
  br label %50

31:                                               ; preds = %0
  %32 = load i64, i64* @plat_sdl_gl_active, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32*, i32** @g_menuscreen_ptr, align 8
  %36 = load i32, i32* @g_menuscreen_w, align 4
  %37 = load i32, i32* @g_menuscreen_h, align 4
  %38 = call i32 @gl_flip(i32* %35, i32 %36, i32 %37)
  br label %49

39:                                               ; preds = %31
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @plat_sdl_screen, align 8
  %41 = call i64 @SDL_MUSTLOCK(%struct.TYPE_12__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @plat_sdl_screen, align 8
  %45 = call i32 @SDL_UnlockSurface(%struct.TYPE_12__* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @plat_sdl_screen, align 8
  %48 = call i32 @SDL_Flip(%struct.TYPE_12__* %47)
  br label %49

49:                                               ; preds = %46, %34
  br label %50

50:                                               ; preds = %49, %4
  store i32* null, i32** @g_menuscreen_ptr, align 8
  ret void
}

declare dso_local i32 @SDL_LockYUVOverlay(%struct.TYPE_13__*) #1

declare dso_local i32 @rgb565_to_uyvy(i32, i32, i32) #1

declare dso_local i32 @SDL_UnlockYUVOverlay(%struct.TYPE_13__*) #1

declare dso_local i32 @SDL_DisplayYUVOverlay(%struct.TYPE_13__*, %struct.TYPE_11__*) #1

declare dso_local i32 @gl_flip(i32*, i32, i32) #1

declare dso_local i64 @SDL_MUSTLOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @SDL_UnlockSurface(%struct.TYPE_12__*) #1

declare dso_local i32 @SDL_Flip(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
