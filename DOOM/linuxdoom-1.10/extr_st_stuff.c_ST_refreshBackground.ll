; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_refreshBackground.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_refreshBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@st_statusbaron = common dso_local global i64 0, align 8
@ST_X = common dso_local global i32 0, align 4
@BG = common dso_local global i32 0, align 4
@sbar = common dso_local global i32 0, align 4
@netgame = common dso_local global i64 0, align 8
@ST_FX = common dso_local global i32 0, align 4
@faceback = common dso_local global i32 0, align 4
@ST_WIDTH = common dso_local global i32 0, align 4
@ST_HEIGHT = common dso_local global i32 0, align 4
@ST_Y = common dso_local global i32 0, align 4
@FG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_refreshBackground() #0 {
  %1 = load i64, i64* @st_statusbaron, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = load i32, i32* @ST_X, align 4
  %5 = load i32, i32* @BG, align 4
  %6 = load i32, i32* @sbar, align 4
  %7 = call i32 @V_DrawPatch(i32 %4, i32 0, i32 %5, i32 %6)
  %8 = load i64, i64* @netgame, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* @ST_FX, align 4
  %12 = load i32, i32* @BG, align 4
  %13 = load i32, i32* @faceback, align 4
  %14 = call i32 @V_DrawPatch(i32 %11, i32 0, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %10, %3
  %16 = load i32, i32* @ST_X, align 4
  %17 = load i32, i32* @BG, align 4
  %18 = load i32, i32* @ST_WIDTH, align 4
  %19 = load i32, i32* @ST_HEIGHT, align 4
  %20 = load i32, i32* @ST_X, align 4
  %21 = load i32, i32* @ST_Y, align 4
  %22 = load i32, i32* @FG, align 4
  %23 = call i32 @V_CopyRect(i32 %16, i32 0, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %0
  ret void
}

declare dso_local i32 @V_DrawPatch(i32, i32, i32, i32) #1

declare dso_local i32 @V_CopyRect(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
