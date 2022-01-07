; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_flip2_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_flip2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gp2x_screenaddrs_use = common dso_local global i32* null, align 8
@screensel = common dso_local global i32 0, align 4
@memregs = common dso_local global i16* null, align 8
@gp2x_screens = common dso_local global i32* null, align 8
@g_screen_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gp2x_video_flip2_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp2x_video_flip2_() #0 {
  %1 = alloca i16, align 2
  %2 = load i32*, i32** @gp2x_screenaddrs_use, align 8
  %3 = load i32, i32* @screensel, align 4
  %4 = and i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %2, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 16
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %1, align 2
  %10 = load i16, i16* %1, align 2
  %11 = load i16*, i16** @memregs, align 8
  %12 = getelementptr inbounds i16, i16* %11, i64 5256
  store i16 %10, i16* %12, align 2
  %13 = load i16, i16* %1, align 2
  %14 = load i16*, i16** @memregs, align 8
  %15 = getelementptr inbounds i16, i16* %14, i64 5258
  store i16 %13, i16* %15, align 2
  %16 = load i16*, i16** @memregs, align 8
  %17 = getelementptr inbounds i16, i16* %16, i64 5255
  store i16 0, i16* %17, align 2
  %18 = load i16*, i16** @memregs, align 8
  %19 = getelementptr inbounds i16, i16* %18, i64 5257
  store i16 0, i16* %19, align 2
  %20 = load i32*, i32** @gp2x_screens, align 8
  %21 = load i32, i32* @screensel, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @screensel, align 4
  %23 = and i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @g_screen_ptr, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
