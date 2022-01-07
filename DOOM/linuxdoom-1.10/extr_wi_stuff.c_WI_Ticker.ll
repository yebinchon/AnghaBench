; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_Ticker.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_Ticker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bcnt = common dso_local global i32 0, align 4
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@mus_dm2int = common dso_local global i32 0, align 4
@mus_inter = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@deathmatch = common dso_local global i32 0, align 4
@netgame = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_Ticker() #0 {
  %1 = load i32, i32* @bcnt, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @bcnt, align 4
  %3 = load i32, i32* @bcnt, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load i64, i64* @gamemode, align 8
  %7 = load i64, i64* @commercial, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load i32, i32* @mus_dm2int, align 4
  %11 = call i32 @S_ChangeMusic(i32 %10, i32 1)
  br label %15

12:                                               ; preds = %5
  %13 = load i32, i32* @mus_inter, align 4
  %14 = call i32 @S_ChangeMusic(i32 %13, i32 1)
  br label %15

15:                                               ; preds = %12, %9
  br label %16

16:                                               ; preds = %15, %0
  %17 = call i32 (...) @WI_checkForAccelerate()
  %18 = load i32, i32* @state, align 4
  switch i32 %18, label %37 [
    i32 128, label %19
    i32 129, label %33
    i32 130, label %35
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* @deathmatch, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @WI_updateDeathmatchStats()
  br label %32

24:                                               ; preds = %19
  %25 = load i32, i32* @netgame, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @WI_updateNetgameStats()
  br label %31

29:                                               ; preds = %24
  %30 = call i32 (...) @WI_updateStats()
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %22
  br label %37

33:                                               ; preds = %16
  %34 = call i32 (...) @WI_updateShowNextLoc()
  br label %37

35:                                               ; preds = %16
  %36 = call i32 (...) @WI_updateNoState()
  br label %37

37:                                               ; preds = %16, %35, %33, %32
  ret void
}

declare dso_local i32 @S_ChangeMusic(i32, i32) #1

declare dso_local i32 @WI_checkForAccelerate(...) #1

declare dso_local i32 @WI_updateDeathmatchStats(...) #1

declare dso_local i32 @WI_updateNetgameStats(...) #1

declare dso_local i32 @WI_updateStats(...) #1

declare dso_local i32 @WI_updateShowNextLoc(...) #1

declare dso_local i32 @WI_updateNoState(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
