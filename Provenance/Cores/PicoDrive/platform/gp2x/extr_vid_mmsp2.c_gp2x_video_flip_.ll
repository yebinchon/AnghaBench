; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_flip_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_flip_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gp2x_screenaddrs_use = common dso_local global i32* null, align 8
@screensel = common dso_local global i32 0, align 4
@memregs = common dso_local global i16* null, align 8
@gp2x_screens = common dso_local global i32* null, align 8
@g_screen_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gp2x_video_flip_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp2x_video_flip_() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i16, align 2
  %3 = load i32*, i32** @gp2x_screenaddrs_use, align 8
  %4 = load i32, i32* @screensel, align 4
  %5 = and i32 %4, 3
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %3, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, i16* %1, align 2
  %10 = load i32*, i32** @gp2x_screenaddrs_use, align 8
  %11 = load i32, i32* @screensel, align 4
  %12 = and i32 %11, 3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 16
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %2, align 2
  %18 = load i16, i16* %2, align 2
  %19 = load i16*, i16** @memregs, align 8
  %20 = getelementptr inbounds i16, i16* %19, i64 5256
  store i16 %18, i16* %20, align 2
  %21 = load i16, i16* %2, align 2
  %22 = load i16*, i16** @memregs, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 5258
  store i16 %21, i16* %23, align 2
  %24 = load i16, i16* %1, align 2
  %25 = load i16*, i16** @memregs, align 8
  %26 = getelementptr inbounds i16, i16* %25, i64 5255
  store i16 %24, i16* %26, align 2
  %27 = load i16, i16* %1, align 2
  %28 = load i16*, i16** @memregs, align 8
  %29 = getelementptr inbounds i16, i16* %28, i64 5257
  store i16 %27, i16* %29, align 2
  %30 = load i32*, i32** @gp2x_screens, align 8
  %31 = load i32, i32* @screensel, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @screensel, align 4
  %33 = and i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @g_screen_ptr, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
