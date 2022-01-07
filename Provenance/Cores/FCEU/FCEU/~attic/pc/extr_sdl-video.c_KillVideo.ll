; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_KillVideo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_KillVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IconSurface = common dso_local global i64 0, align 8
@inited = common dso_local global i32 0, align 4
@curbpp = common dso_local global i32 0, align 4
@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@usingogl = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @KillVideo() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @IconSurface, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @IconSurface, align 8
  %6 = call i32 @SDL_FreeSurface(i64 %5)
  store i64 0, i64* @IconSurface, align 8
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @inited, align 4
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i32, i32* @curbpp, align 4
  %13 = icmp sgt i32 %12, 8
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (...) @KillBlitToHigh()
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %18 = call i32 @SDL_QuitSubSystem(i32 %17)
  %19 = load i32, i32* @inited, align 4
  %20 = and i32 %19, -2
  store i32 %20, i32* @inited, align 4
  store i32 1, i32* %1, align 4
  br label %22

21:                                               ; preds = %7
  store i32 0, i32* @inited, align 4
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @SDL_FreeSurface(i64) #1

declare dso_local i32 @KillBlitToHigh(...) #1

declare dso_local i32 @SDL_QuitSubSystem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
