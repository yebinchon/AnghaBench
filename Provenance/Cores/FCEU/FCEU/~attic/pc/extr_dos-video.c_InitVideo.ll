; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-video.c_InitVideo.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-video.c_InitVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vidready = common dso_local global i32 0, align 4
@FCEUDvmode = common dso_local global i32 0, align 4
@G320x200x256 = common dso_local global i32 0, align 4
@ScreenLoc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitVideo() #0 {
  store i32 0, i32* @vidready, align 4
  %1 = load i32, i32* @FCEUDvmode, align 4
  switch i32 %1, label %2 [
    i32 1, label %3
    i32 2, label %3
    i32 3, label %3
    i32 6, label %3
    i32 8, label %3
  ]

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %0, %0, %0, %0, %0, %2
  %4 = load i32, i32* @G320x200x256, align 4
  %5 = call i32 @vga_setmode(i32 %4)
  %6 = load i32, i32* @vidready, align 4
  %7 = or i32 %6, 1
  store i32 %7, i32* @vidready, align 4
  store i32 655360, i32* @ScreenLoc, align 4
  %8 = load i32, i32* @FCEUDvmode, align 4
  %9 = call i32 @TweakVGA(i32 %8)
  %10 = call i32 (...) @SetBorder()
  %11 = load i32, i32* @ScreenLoc, align 4
  %12 = call i32 @DOSMemSet(i32 %11, i32 128, i32 65536)
  br label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @vidready, align 4
  %15 = or i32 %14, 2
  store i32 %15, i32* @vidready, align 4
  %16 = call i32 (...) @FlushPalette()
  ret i32 1
}

declare dso_local i32 @vga_setmode(i32) #1

declare dso_local i32 @TweakVGA(i32) #1

declare dso_local i32 @SetBorder(...) #1

declare dso_local i32 @DOSMemSet(i32, i32, i32) #1

declare dso_local i32 @FlushPalette(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
