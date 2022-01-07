; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_Draw2D.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_Draw2D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64*, i64* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@cg = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cg_draw2D = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@cgs = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@cg_drawStatus = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@cg_paused = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_Draw2D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Draw2D() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 4), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %75

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_draw2D, i32 0, i32 0), align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %75

8:                                                ; preds = %4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 2), align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PM_INTERMISSION, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 (...) @CG_DrawIntermission()
  br label %75

17:                                               ; preds = %8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 2), align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @PERS_TEAM, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TEAM_SPECTATOR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = call i32 (...) @CG_DrawSpectator()
  %29 = call i32 (...) @CG_DrawCrosshair()
  %30 = call i32 (...) @CG_DrawCrosshairNames()
  br label %58

31:                                               ; preds = %17
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 3), align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 2), align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @STAT_HEALTH, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = call i32 (...) @CG_DrawStatusBar()
  %45 = call i32 (...) @CG_DrawAmmoWarning()
  %46 = call i32 (...) @CG_DrawCrosshair()
  %47 = call i32 (...) @CG_DrawCrosshairNames()
  %48 = call i32 (...) @CG_DrawWeaponSelect()
  %49 = call i32 (...) @CG_DrawHoldableItem()
  %50 = call i32 (...) @CG_DrawReward()
  br label %51

51:                                               ; preds = %43, %34, %31
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgs, i32 0, i32 1), align 8
  %53 = load i64, i64* @GT_TEAM, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (...) @CG_DrawTeamInfo()
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %27
  %59 = call i32 (...) @CG_DrawVote()
  %60 = call i32 (...) @CG_DrawTeamVote()
  %61 = call i32 (...) @CG_DrawLagometer()
  %62 = call i32 (...) @CG_DrawUpperRight()
  %63 = call i32 (...) @CG_DrawLowerRight()
  %64 = call i32 (...) @CG_DrawLowerLeft()
  %65 = call i32 (...) @CG_DrawFollow()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %58
  %68 = call i32 (...) @CG_DrawWarmup()
  br label %69

69:                                               ; preds = %67, %58
  %70 = call i32 (...) @CG_DrawScoreboard()
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg, i32 0, i32 1), align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = call i32 (...) @CG_DrawCenterString()
  br label %75

75:                                               ; preds = %3, %7, %15, %73, %69
  ret void
}

declare dso_local i32 @CG_DrawIntermission(...) #1

declare dso_local i32 @CG_DrawSpectator(...) #1

declare dso_local i32 @CG_DrawCrosshair(...) #1

declare dso_local i32 @CG_DrawCrosshairNames(...) #1

declare dso_local i32 @CG_DrawStatusBar(...) #1

declare dso_local i32 @CG_DrawAmmoWarning(...) #1

declare dso_local i32 @CG_DrawWeaponSelect(...) #1

declare dso_local i32 @CG_DrawHoldableItem(...) #1

declare dso_local i32 @CG_DrawReward(...) #1

declare dso_local i32 @CG_DrawTeamInfo(...) #1

declare dso_local i32 @CG_DrawVote(...) #1

declare dso_local i32 @CG_DrawTeamVote(...) #1

declare dso_local i32 @CG_DrawLagometer(...) #1

declare dso_local i32 @CG_DrawUpperRight(...) #1

declare dso_local i32 @CG_DrawLowerRight(...) #1

declare dso_local i32 @CG_DrawLowerLeft(...) #1

declare dso_local i32 @CG_DrawFollow(...) #1

declare dso_local i32 @CG_DrawWarmup(...) #1

declare dso_local i32 @CG_DrawScoreboard(...) #1

declare dso_local i32 @CG_DrawCenterString(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
