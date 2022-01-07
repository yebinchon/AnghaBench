; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_Kill_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_Kill_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@FL_GODMODE = common dso_local global i32 0, align 4
@STAT_HEALTH = common dso_local global i64 0, align 8
@MOD_SUICIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Kill_f(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TEAM_SPECTATOR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %40

18:                                               ; preds = %12
  %19 = load i32, i32* @FL_GODMODE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 -999, i32* %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @STAT_HEALTH, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 -999, i32* %34, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = load i32, i32* @MOD_SUICIDE, align 4
  %39 = call i32 @player_die(%struct.TYPE_12__* %35, %struct.TYPE_12__* %36, %struct.TYPE_12__* %37, i32 100000, i32 %38)
  br label %40

40:                                               ; preds = %18, %17, %11
  ret void
}

declare dso_local i32 @player_die(%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
