; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_RedoPalette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_sdl-video.c_RedoPalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curbpp = common dso_local global i32 0, align 4
@psdl = common dso_local global i64 0, align 8
@screen = common dso_local global i32 0, align 4
@SDL_PHYSPAL = common dso_local global i32 0, align 4
@usingogl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RedoPalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RedoPalette() #0 {
  %1 = load i32, i32* @curbpp, align 4
  %2 = icmp sgt i32 %1, 8
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i64, i64* @psdl, align 8
  %5 = inttoptr i64 %4 to i32*
  %6 = call i32 @SetPaletteBlitToHigh(i32* %5)
  br label %12

7:                                                ; preds = %0
  %8 = load i32, i32* @screen, align 4
  %9 = load i32, i32* @SDL_PHYSPAL, align 4
  %10 = load i64, i64* @psdl, align 8
  %11 = call i32 @SDL_SetPalette(i32 %8, i32 %9, i64 %10, i32 0, i32 256)
  br label %12

12:                                               ; preds = %7, %3
  ret void
}

declare dso_local i32 @SetPaletteBlitToHigh(i32*) #1

declare dso_local i32 @SDL_SetPalette(i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
