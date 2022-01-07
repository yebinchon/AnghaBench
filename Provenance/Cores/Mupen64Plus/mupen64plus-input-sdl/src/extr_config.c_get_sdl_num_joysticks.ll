; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_config.c_get_sdl_num_joysticks.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_config.c_get_sdl_num_joysticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDL_INIT_JOYSTICK = common dso_local global i32 0, align 4
@M64MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Couldn't init SDL joystick subsystem: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_sdl_num_joysticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sdl_num_joysticks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i32, i32* @SDL_INIT_JOYSTICK, align 4
  %5 = call i32 @SDL_WasInit(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @SDL_INIT_JOYSTICK, align 4
  %10 = call i32 @SDL_InitSubSystem(i32 %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* @M64MSG_ERROR, align 4
  %14 = call i32 (...) @SDL_GetError()
  %15 = call i32 @DebugMessage(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %1, align 4
  br label %26

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %0
  %18 = call i32 (...) @SDL_NumJoysticks()
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @SDL_INIT_JOYSTICK, align 4
  %23 = call i32 @SDL_QuitSubSystem(i32 %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %24, %12
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @SDL_WasInit(i32) #1

declare dso_local i32 @SDL_InitSubSystem(i32) #1

declare dso_local i32 @DebugMessage(i32, i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @SDL_NumJoysticks(...) #1

declare dso_local i32 @SDL_QuitSubSystem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
