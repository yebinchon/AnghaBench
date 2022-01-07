; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_plat_sdl.c_plat_sdl_event_handler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_plat_sdl.c_plat_sdl_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@plat_sdl_event_handler.was_active = internal global i32 0, align 4
@plat_target = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@old_fullscreen = common dso_local global i32 0, align 4
@window_w = common dso_local global i32 0, align 4
@window_h = common dso_local global i32 0, align 4
@plat_sdl_overlay = common dso_local global i32* null, align 8
@plat_sdl_screen = common dso_local global %struct.TYPE_13__* null, align 8
@plat_sdl_gl_active = common dso_local global i32 0, align 4
@gl_quirks = common dso_local global i32 0, align 4
@GL_QUIRK_ACTIVATE_RECREATE = common dso_local global i32 0, align 4
@display = common dso_local global i32 0, align 4
@window = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plat_sdl_event_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %81 [
    i32 128, label %10
    i32 130, label %30
    i32 129, label %79
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @plat_target, i32 0, i32 1), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @plat_target, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @old_fullscreen, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @window_w, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @window_h, align 4
  %28 = call i32 @plat_sdl_change_video_mode(i32 0, i32 0, i32 1)
  br label %29

29:                                               ; preds = %19, %16, %13, %10
  br label %81

30:                                               ; preds = %1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %30
  %37 = load i32, i32* @plat_sdl_event_handler.was_active, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %74, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** @plat_sdl_overlay, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** @plat_sdl_screen, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %45, align 4
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @plat_sdl_screen, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %49, align 4
  %53 = load i32*, i32** @plat_sdl_overlay, align 8
  %54 = call i32 @SDL_DisplayYUVOverlay(i32* %53, %struct.TYPE_10__* %4)
  br label %73

55:                                               ; preds = %39
  %56 = load i32, i32* @plat_sdl_gl_active, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load i32, i32* @gl_quirks, align 4
  %60 = load i32, i32* @GL_QUIRK_ACTIVATE_RECREATE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = call i32 (...) @gl_finish()
  %65 = load i32, i32* @display, align 4
  %66 = load i32, i32* @window, align 4
  %67 = call i32 @gl_init(i32 %65, i32 %66, i32* @gl_quirks)
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* @plat_sdl_gl_active, align 4
  br label %70

70:                                               ; preds = %63, %58
  %71 = call i32 @gl_flip(i32* null, i32 0, i32 0)
  br label %72

72:                                               ; preds = %70, %55
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %36, %30
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* @plat_sdl_event_handler.was_active, align 4
  br label %81

79:                                               ; preds = %1
  %80 = call i32 (...) @plat_sdl_quit_cb()
  br label %81

81:                                               ; preds = %1, %79, %74, %29
  ret void
}

declare dso_local i32 @plat_sdl_change_video_mode(i32, i32, i32) #1

declare dso_local i32 @SDL_DisplayYUVOverlay(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @gl_finish(...) #1

declare dso_local i32 @gl_init(i32, i32, i32*) #1

declare dso_local i32 @gl_flip(i32*, i32, i32) #1

declare dso_local i32 @plat_sdl_quit_cb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
