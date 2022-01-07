; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_updateLightLev.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_updateLightLev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AM_updateLightLev.nexttic = internal global i32 0, align 4
@AM_updateLightLev.litelevels = internal global [8 x i32] [i32 0, i32 4, i32 7, i32 10, i32 12, i32 14, i32 15, i32 15], align 16
@AM_updateLightLev.litelevelscnt = internal global i32 0, align 4
@amclock = common dso_local global i32 0, align 4
@lightlev = common dso_local global i32 0, align 4
@nexttic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_updateLightLev() #0 {
  %1 = load i32, i32* @amclock, align 4
  %2 = load i32, i32* @AM_updateLightLev.nexttic, align 4
  %3 = icmp sgt i32 %1, %2
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = load i32, i32* @AM_updateLightLev.litelevelscnt, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @AM_updateLightLev.litelevelscnt, align 4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* @AM_updateLightLev.litelevels, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @lightlev, align 4
  %10 = load i32, i32* @AM_updateLightLev.litelevelscnt, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* @AM_updateLightLev.litelevelscnt, align 4
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i32, i32* @amclock, align 4
  %16 = add nsw i32 %15, 6
  %17 = load i32, i32* @amclock, align 4
  %18 = srem i32 %17, 6
  %19 = sub nsw i32 %16, %18
  store i32 %19, i32* @AM_updateLightLev.nexttic, align 4
  br label %20

20:                                               ; preds = %14, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
