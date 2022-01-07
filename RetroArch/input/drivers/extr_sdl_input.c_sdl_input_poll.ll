; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_sdl_input.c_sdl_input_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_sdl_input.c_sdl_input_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (...)* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@SDL_GETEVENT = common dso_local global i32 0, align 4
@SDL_KEYEVENTMASK = common dso_local global i32 0, align 4
@SDL_KEYDOWN = common dso_local global i64 0, align 8
@SDL_KEYUP = common dso_local global i64 0, align 8
@KMOD_SHIFT = common dso_local global i32 0, align 4
@RETROKMOD_SHIFT = common dso_local global i32 0, align 4
@KMOD_CTRL = common dso_local global i32 0, align 4
@RETROKMOD_CTRL = common dso_local global i32 0, align 4
@KMOD_ALT = common dso_local global i32 0, align 4
@RETROKMOD_ALT = common dso_local global i32 0, align 4
@KMOD_NUM = common dso_local global i32 0, align 4
@RETROKMOD_NUMLOCK = common dso_local global i32 0, align 4
@KMOD_CAPS = common dso_local global i32 0, align 4
@RETROKMOD_CAPSLOCK = common dso_local global i32 0, align 4
@RETRO_DEVICE_KEYBOARD = common dso_local global i32 0, align 4
@SDL_MOUSEWHEEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sdl_input_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdl_input_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  %9 = call i32 (...) @SDL_PumpEvents()
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32 (...)*, i32 (...)** %18, align 8
  %20 = call i32 (...) %19()
  br label %21

21:                                               ; preds = %14, %1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = call i32 @sdl_poll_mouse(%struct.TYPE_13__* %22)
  br label %24

24:                                               ; preds = %116, %21
  %25 = load i32, i32* @SDL_GETEVENT, align 4
  %26 = load i32, i32* @SDL_KEYEVENTMASK, align 4
  %27 = sext i32 %26 to i64
  %28 = call i64 (%struct.TYPE_14__*, i32, i32, i64, ...) @SDL_PeepEvents(%struct.TYPE_14__* %4, i32 1, i32 %25, i64 %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %117

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SDL_KEYDOWN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SDL_KEYUP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %116

40:                                               ; preds = %35, %30
  store i32 0, i32* %5, align 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @input_keymaps_translate_keysym_to_rk(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @KMOD_SHIFT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i32, i32* @RETROKMOD_SHIFT, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %40
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @KMOD_CTRL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i32, i32* @RETROKMOD_CTRL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %57
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @KMOD_ALT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i32, i32* @RETROKMOD_ALT, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %69
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @KMOD_NUM, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* @RETROKMOD_NUMLOCK, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %81
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @KMOD_CAPS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i32, i32* @RETROKMOD_CAPSLOCK, align 4
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %93
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SDL_KEYDOWN, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @RETRO_DEVICE_KEYBOARD, align 4
  %115 = call i32 @input_keyboard_event(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %105, %35
  br label %24

117:                                              ; preds = %24
  ret void
}

declare dso_local i32 @SDL_PumpEvents(...) #1

declare dso_local i32 @sdl_poll_mouse(%struct.TYPE_13__*) #1

declare dso_local i64 @SDL_PeepEvents(%struct.TYPE_14__*, i32, i32, i64, ...) #1

declare dso_local i32 @input_keymaps_translate_keysym_to_rk(i32) #1

declare dso_local i32 @input_keyboard_event(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
