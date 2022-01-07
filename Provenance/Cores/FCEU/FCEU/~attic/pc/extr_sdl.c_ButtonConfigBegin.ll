; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl.c_ButtonConfigBegin.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl.c_ButtonConfigBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@bcpv = common dso_local global i32 0, align 4
@bcpj = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Button Config\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ButtonConfigBegin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %4 = call i32 @SDL_QuitSubSystem(i32 %3)
  %5 = call i32 (...) @KillVideo()
  store i32 %5, i32* @bcpv, align 4
  %6 = call i32 (...) @KillJoysticks()
  store i32 %6, i32* @bcpj, align 4
  %7 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %8 = call i32 @SDL_WasInit(i32 %7)
  %9 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %14 = call i32 @SDL_InitSubSystem(i32 %13)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = call i32 (...) @SDL_GetError()
  %18 = call i32 @FCEUD_Message(i32 %17)
  store i32 0, i32* %1, align 4
  br label %24

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19, %0
  %21 = call i32* @SDL_SetVideoMode(i32 300, i32 1, i32 8, i32 0)
  store i32* %21, i32** %2, align 8
  %22 = call i32 @SDL_WM_SetCaption(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  %23 = call i32 (...) @InitJoysticks()
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @SDL_QuitSubSystem(i32) #1

declare dso_local i32 @KillVideo(...) #1

declare dso_local i32 @KillJoysticks(...) #1

declare dso_local i32 @SDL_WasInit(i32) #1

declare dso_local i32 @SDL_InitSubSystem(i32) #1

declare dso_local i32 @FCEUD_Message(i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32* @SDL_SetVideoMode(i32, i32, i32, i32) #1

declare dso_local i32 @SDL_WM_SetCaption(i8*, i32) #1

declare dso_local i32 @InitJoysticks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
