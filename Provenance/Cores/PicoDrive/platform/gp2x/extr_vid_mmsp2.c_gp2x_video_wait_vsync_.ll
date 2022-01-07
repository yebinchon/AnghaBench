; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_wait_vsync_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_wait_vsync_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memregs = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gp2x_video_wait_vsync_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp2x_video_wait_vsync_() #0 {
  %1 = alloca i16, align 2
  %2 = load i16*, i16** @memregs, align 8
  %3 = getelementptr inbounds i16, i16* %2, i64 2241
  %4 = load i16, i16* %3, align 2
  store i16 %4, i16* %1, align 2
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i16, i16* %1, align 2
  %7 = zext i16 %6 to i32
  %8 = load i16*, i16** @memregs, align 8
  %9 = getelementptr inbounds i16, i16* %8, i64 2241
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  %12 = xor i32 %7, %11
  %13 = and i32 %12, 16
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = call i32 @spend_cycles(i32 1024)
  br label %5

18:                                               ; preds = %5
  ret void
}

declare dso_local i32 @spend_cycles(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
