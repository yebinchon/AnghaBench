; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_vid_mmsp2_finish.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_vid_mmsp2_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gp2x_screenaddr_old = common dso_local global i32* null, align 8
@memregs = common dso_local global i32* null, align 8
@gp2x_screens = common dso_local global i32* null, align 8
@FRAMEBUFF_WHOLESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vid_mmsp2_finish() #0 {
  %1 = call i32 @gp2x_video_RGB_setscaling_(i32 0, i32 320, i32 240)
  %2 = call i32 @gp2x_video_changemode_ll_(i32 16, i32 0)
  %3 = load i32*, i32** @gp2x_screenaddr_old, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32*, i32** @memregs, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 5255
  store i32 %5, i32* %7, align 4
  %8 = load i32*, i32** @gp2x_screenaddr_old, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @memregs, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 5256
  store i32 %10, i32* %12, align 4
  %13 = load i32*, i32** @gp2x_screenaddr_old, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @memregs, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 5257
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** @gp2x_screenaddr_old, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** @memregs, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 5258
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** @gp2x_screens, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FRAMEBUFF_WHOLESIZE, align 4
  %27 = call i32 @munmap(i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @gp2x_video_RGB_setscaling_(i32, i32, i32) #1

declare dso_local i32 @gp2x_video_changemode_ll_(i32, i32) #1

declare dso_local i32 @munmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
