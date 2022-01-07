; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_DoNewGame.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_DoNewGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@demoplayback = common dso_local global i32 0, align 4
@netdemo = common dso_local global i32 0, align 4
@netgame = common dso_local global i32 0, align 4
@deathmatch = common dso_local global i32 0, align 4
@playeringame = common dso_local global i64* null, align 8
@respawnparm = common dso_local global i32 0, align 4
@fastparm = common dso_local global i32 0, align 4
@nomonsters = common dso_local global i32 0, align 4
@consoleplayer = common dso_local global i64 0, align 8
@d_skill = common dso_local global i32 0, align 4
@d_episode = common dso_local global i32 0, align 4
@d_map = common dso_local global i32 0, align 4
@ga_nothing = common dso_local global i32 0, align 4
@gameaction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_DoNewGame() #0 {
  store i32 0, i32* @demoplayback, align 4
  store i32 0, i32* @netdemo, align 4
  store i32 0, i32* @netgame, align 4
  store i32 0, i32* @deathmatch, align 4
  %1 = load i64*, i64** @playeringame, align 8
  %2 = getelementptr inbounds i64, i64* %1, i64 3
  store i64 0, i64* %2, align 8
  %3 = load i64*, i64** @playeringame, align 8
  %4 = getelementptr inbounds i64, i64* %3, i64 2
  store i64 0, i64* %4, align 8
  %5 = load i64*, i64** @playeringame, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 1
  store i64 0, i64* %6, align 8
  store i32 0, i32* @respawnparm, align 4
  store i32 0, i32* @fastparm, align 4
  store i32 0, i32* @nomonsters, align 4
  store i64 0, i64* @consoleplayer, align 8
  %7 = load i32, i32* @d_skill, align 4
  %8 = load i32, i32* @d_episode, align 4
  %9 = load i32, i32* @d_map, align 4
  %10 = call i32 @G_InitNew(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @ga_nothing, align 4
  store i32 %11, i32* @gameaction, align 4
  ret void
}

declare dso_local i32 @G_InitNew(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
