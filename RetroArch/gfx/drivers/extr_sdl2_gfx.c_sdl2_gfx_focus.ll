; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl2_gfx_focus.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_sdl2_gfx.c_sdl2_gfx_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SDL_WINDOW_INPUT_FOCUS = common dso_local global i32 0, align 4
@SDL_WINDOW_MOUSE_FOCUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdl2_gfx_focus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl2_gfx_focus(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = load i32, i32* @SDL_WINDOW_INPUT_FOCUS, align 4
  %8 = load i32, i32* @SDL_WINDOW_MOUSE_FOCUS, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SDL_GetWindowFlags(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local i32 @SDL_GetWindowFlags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
