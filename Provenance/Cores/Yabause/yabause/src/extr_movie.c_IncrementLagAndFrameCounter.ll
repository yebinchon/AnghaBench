; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_IncrementLagAndFrameCounter.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_movie.c_IncrementLagAndFrameCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LagFrameFlag = common dso_local global i32 0, align 4
@lagframecounter = common dso_local global i32 0, align 4
@framecounter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IncrementLagAndFrameCounter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IncrementLagAndFrameCounter() #0 {
  %1 = load i32, i32* @LagFrameFlag, align 4
  %2 = icmp eq i32 %1, 1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @lagframecounter, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @lagframecounter, align 4
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @framecounter, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @framecounter, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
