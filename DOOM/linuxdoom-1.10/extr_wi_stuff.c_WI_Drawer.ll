; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_Drawer.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_Drawer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = common dso_local global i32 0, align 4
@deathmatch = common dso_local global i32 0, align 4
@netgame = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_Drawer() #0 {
  %1 = load i32, i32* @state, align 4
  switch i32 %1, label %20 [
    i32 128, label %2
    i32 129, label %16
    i32 130, label %18
  ]

2:                                                ; preds = %0
  %3 = load i32, i32* @deathmatch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = call i32 (...) @WI_drawDeathmatchStats()
  br label %15

7:                                                ; preds = %2
  %8 = load i32, i32* @netgame, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @WI_drawNetgameStats()
  br label %14

12:                                               ; preds = %7
  %13 = call i32 (...) @WI_drawStats()
  br label %14

14:                                               ; preds = %12, %10
  br label %15

15:                                               ; preds = %14, %5
  br label %20

16:                                               ; preds = %0
  %17 = call i32 (...) @WI_drawShowNextLoc()
  br label %20

18:                                               ; preds = %0
  %19 = call i32 (...) @WI_drawNoState()
  br label %20

20:                                               ; preds = %0, %18, %16, %15
  ret void
}

declare dso_local i32 @WI_drawDeathmatchStats(...) #1

declare dso_local i32 @WI_drawNetgameStats(...) #1

declare dso_local i32 @WI_drawStats(...) #1

declare dso_local i32 @WI_drawShowNextLoc(...) #1

declare dso_local i32 @WI_drawNoState(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
