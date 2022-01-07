; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_config.c_get_sdl_joystick_name.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-input-sdl/src/extr_config.c_get_sdl_joystick_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_sdl_joystick_name.JoyName = internal global [256 x i8] zeroinitializer, align 16
@SDL_INIT_JOYSTICK = common dso_local global i32 0, align 4
@M64MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Couldn't init SDL joystick subsystem: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @get_sdl_joystick_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_sdl_joystick_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @SDL_INIT_JOYSTICK, align 4
  %7 = call i32 @SDL_WasInit(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @SDL_INIT_JOYSTICK, align 4
  %12 = call i32 @SDL_InitSubSystem(i32 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @M64MSG_ERROR, align 4
  %16 = call i32 (...) @SDL_GetError()
  %17 = call i32 @DebugMessage(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* null, i8** %2, align 8
  br label %38

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* %3, align 4
  %21 = call i8* @SDL_JoystickName(i32 %20)
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_sdl_joystick_name.JoyName, i64 0, i64 0), i8* %25, i32 255)
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_sdl_joystick_name.JoyName, i64 0, i64 255), align 1
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @SDL_INIT_JOYSTICK, align 4
  %32 = call i32 @SDL_QuitSubSystem(i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* null, i8** %2, align 8
  br label %38

37:                                               ; preds = %33
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @get_sdl_joystick_name.JoyName, i64 0, i64 0), i8** %2, align 8
  br label %38

38:                                               ; preds = %37, %36, %14
  %39 = load i8*, i8** %2, align 8
  ret i8* %39
}

declare dso_local i32 @SDL_WasInit(i32) #1

declare dso_local i32 @SDL_InitSubSystem(i32) #1

declare dso_local i32 @DebugMessage(i32, i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i8* @SDL_JoystickName(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @SDL_QuitSubSystem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
