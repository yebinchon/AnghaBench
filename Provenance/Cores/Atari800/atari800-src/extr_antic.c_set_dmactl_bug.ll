; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_set_dmactl_bug.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_antic.c_set_dmactl_bug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@need_load = common dso_local global i32 0, align 4
@draw_antic_ptr = common dso_local global i32 0, align 4
@saved_draw_antic_ptr = common dso_local global i32 0, align 4
@draw_antic_ptr_changed = common dso_local global i32 0, align 4
@anticmode = common dso_local global i32 0, align 4
@draw_antic_2_dmactl_bug = common dso_local global i32 0, align 4
@antic_memory = common dso_local global i32* null, align 8
@ANTIC_margin = common dso_local global i32 0, align 4
@chars_read = common dso_local global i32* null, align 8
@md = common dso_local global i64 0, align 8
@dmactl_bug_chdata = common dso_local global i32 0, align 4
@draw_antic_0_dmactl_bug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_dmactl_bug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dmactl_bug() #0 {
  %1 = load i32, i32* @FALSE, align 4
  store i32 %1, i32* @need_load, align 4
  %2 = load i32, i32* @draw_antic_ptr, align 4
  store i32 %2, i32* @saved_draw_antic_ptr, align 4
  store i32 1, i32* @draw_antic_ptr_changed, align 4
  %3 = load i32, i32* @anticmode, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @anticmode, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @anticmode, align 4
  %10 = icmp eq i32 %9, 15
  br i1 %10, label %11, label %30

11:                                               ; preds = %8, %5, %0
  %12 = load i32, i32* @draw_antic_2_dmactl_bug, align 4
  store i32 %12, i32* @draw_antic_ptr, align 4
  %13 = load i32, i32* @anticmode, align 4
  %14 = icmp eq i32 %13, 15
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %28

16:                                               ; preds = %11
  %17 = load i32*, i32** @antic_memory, align 8
  %18 = load i32, i32* @ANTIC_margin, align 4
  %19 = load i32*, i32** @chars_read, align 8
  %20 = load i64, i64* @md, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %18, %22
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %17, i64 %25
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %16, %15
  %29 = phi i32 [ 0, %15 ], [ %27, %16 ]
  store i32 %29, i32* @dmactl_bug_chdata, align 4
  br label %32

30:                                               ; preds = %8
  %31 = load i32, i32* @draw_antic_0_dmactl_bug, align 4
  store i32 %31, i32* @draw_antic_ptr, align 4
  br label %32

32:                                               ; preds = %30, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
