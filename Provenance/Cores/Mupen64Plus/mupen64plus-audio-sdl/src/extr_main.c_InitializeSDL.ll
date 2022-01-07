; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_InitializeSDL.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-audio-sdl/src/extr_main.c_InitializeSDL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M64MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Initializing SDL audio subsystem...\00", align 1
@SDL_INIT_AUDIO = common dso_local global i32 0, align 4
@SDL_INIT_TIMER = common dso_local global i32 0, align 4
@M64MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Failed to initialize SDL audio subsystem; forcing exit.\0A\00", align 1
@critical_failure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @InitializeSDL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitializeSDL() #0 {
  %1 = load i32, i32* @M64MSG_INFO, align 4
  %2 = call i32 @DebugMessage(i32 %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @SDL_INIT_AUDIO, align 4
  %4 = load i32, i32* @SDL_INIT_TIMER, align 4
  %5 = or i32 %3, %4
  %6 = call i64 @SDL_Init(i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @M64MSG_ERROR, align 4
  %10 = call i32 @DebugMessage(i32 %9, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @critical_failure, align 4
  br label %12

11:                                               ; preds = %0
  store i32 0, i32* @critical_failure, align 4
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @DebugMessage(i32, i8*) #1

declare dso_local i64 @SDL_Init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
