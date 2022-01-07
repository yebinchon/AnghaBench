; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_setpalette_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_setpalette_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memregs = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @gp2x_video_setpalette_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp2x_video_setpalette_(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to i16*
  store i16* %8, i16** %5, align 8
  %9 = load i16*, i16** @memregs, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 5293
  store i16* %10, i16** %6, align 8
  %11 = load i16*, i16** @memregs, align 8
  %12 = getelementptr inbounds i16, i16* %11, i64 5292
  store i16 0, i16* %12, align 2
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 %13, 2
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %19, %2
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i16*, i16** %5, align 8
  %21 = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %21, i16** %5, align 8
  %22 = load i16, i16* %20, align 2
  %23 = load i16*, i16** %6, align 8
  store volatile i16 %22, i16* %23, align 2
  br label %15

24:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
