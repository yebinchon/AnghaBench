; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_DoReborn.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_DoReborn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@netgame = common dso_local global i32 0, align 4
@ga_loadlevel = common dso_local global i32 0, align 4
@gameaction = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_8__* null, align 8
@deathmatch = common dso_local global i64 0, align 8
@playerstarts = common dso_local global %struct.TYPE_7__* null, align 8
@MAXPLAYERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_DoReborn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @netgame, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @ga_loadlevel, align 4
  store i32 %7, i32* @gameaction, align 4
  br label %78

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @players, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load i64, i64* @deathmatch, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @G_DeathMatchSpawnPlayer(i32 %19)
  br label %78

21:                                               ; preds = %8
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @playerstarts, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %25
  %27 = call i64 @G_CheckSpot(i32 %22, %struct.TYPE_7__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @playerstarts, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = call i32 @P_SpawnPlayer(%struct.TYPE_7__* %33)
  br label %78

35:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %69, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MAXPLAYERS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @playerstarts, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = call i64 @G_CheckSpot(i32 %41, %struct.TYPE_7__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %40
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** @playerstarts, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @playerstarts, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %58
  %60 = call i32 @P_SpawnPlayer(%struct.TYPE_7__* %59)
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @playerstarts, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %62, i32* %67, align 4
  br label %78

68:                                               ; preds = %40
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %36

72:                                               ; preds = %36
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @playerstarts, align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = call i32 @P_SpawnPlayer(%struct.TYPE_7__* %76)
  br label %78

78:                                               ; preds = %18, %29, %48, %72, %6
  ret void
}

declare dso_local i32 @G_DeathMatchSpawnPlayer(i32) #1

declare dso_local i64 @G_CheckSpot(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @P_SpawnPlayer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
