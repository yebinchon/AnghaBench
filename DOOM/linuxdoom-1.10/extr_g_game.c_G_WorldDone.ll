; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_WorldDone.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_WorldDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ga_worlddone = common dso_local global i32 0, align 4
@gameaction = common dso_local global i32 0, align 4
@secretexit = common dso_local global i64 0, align 8
@players = common dso_local global %struct.TYPE_2__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@gamemap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_WorldDone() #0 {
  %1 = load i32, i32* @ga_worlddone, align 4
  store i32 %1, i32* @gameaction, align 4
  %2 = load i64, i64* @secretexit, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @players, align 8
  %6 = load i64, i64* @consoleplayer, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i64, i64* @gamemode, align 8
  %11 = load i64, i64* @commercial, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i32, i32* @gamemap, align 4
  switch i32 %14, label %22 [
    i32 15, label %15
    i32 31, label %15
    i32 6, label %20
    i32 11, label %20
    i32 20, label %20
    i32 30, label %20
  ]

15:                                               ; preds = %13, %13
  %16 = load i64, i64* @secretexit, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %22

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %13, %13, %13, %13, %19
  %21 = call i32 (...) @F_StartFinale()
  br label %22

22:                                               ; preds = %13, %20, %18
  br label %23

23:                                               ; preds = %22, %9
  ret void
}

declare dso_local i32 @F_StartFinale(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
