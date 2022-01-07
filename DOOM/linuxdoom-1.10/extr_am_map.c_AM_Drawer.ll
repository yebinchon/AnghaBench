; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_Drawer.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_am_map.c_AM_Drawer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@automapactive = common dso_local global i32 0, align 4
@BACKGROUND = common dso_local global i32 0, align 4
@grid = common dso_local global i64 0, align 8
@GRIDCOLORS = common dso_local global i32 0, align 4
@cheating = common dso_local global i32 0, align 4
@THINGCOLORS = common dso_local global i32 0, align 4
@THINGRANGE = common dso_local global i32 0, align 4
@XHAIRCOLORS = common dso_local global i32 0, align 4
@f_x = common dso_local global i32 0, align 4
@f_y = common dso_local global i32 0, align 4
@f_w = common dso_local global i32 0, align 4
@f_h = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AM_Drawer() #0 {
  %1 = load i32, i32* @automapactive, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %30

4:                                                ; preds = %0
  %5 = load i32, i32* @BACKGROUND, align 4
  %6 = call i32 @AM_clearFB(i32 %5)
  %7 = load i64, i64* @grid, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, i32* @GRIDCOLORS, align 4
  %11 = call i32 @AM_drawGrid(i32 %10)
  br label %12

12:                                               ; preds = %9, %4
  %13 = call i32 (...) @AM_drawWalls()
  %14 = call i32 (...) @AM_drawPlayers()
  %15 = load i32, i32* @cheating, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @THINGCOLORS, align 4
  %19 = load i32, i32* @THINGRANGE, align 4
  %20 = call i32 @AM_drawThings(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* @XHAIRCOLORS, align 4
  %23 = call i32 @AM_drawCrosshair(i32 %22)
  %24 = call i32 (...) @AM_drawMarks()
  %25 = load i32, i32* @f_x, align 4
  %26 = load i32, i32* @f_y, align 4
  %27 = load i32, i32* @f_w, align 4
  %28 = load i32, i32* @f_h, align 4
  %29 = call i32 @V_MarkRect(i32 %25, i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32 @AM_clearFB(i32) #1

declare dso_local i32 @AM_drawGrid(i32) #1

declare dso_local i32 @AM_drawWalls(...) #1

declare dso_local i32 @AM_drawPlayers(...) #1

declare dso_local i32 @AM_drawThings(i32, i32) #1

declare dso_local i32 @AM_drawCrosshair(i32) #1

declare dso_local i32 @AM_drawMarks(...) #1

declare dso_local i32 @V_MarkRect(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
