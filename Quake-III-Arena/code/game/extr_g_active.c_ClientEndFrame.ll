; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_active.c_ClientEndFrame.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_active.c_ClientEndFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_26__, i32, %struct.TYPE_19__ }
%struct.TYPE_26__ = type { i64*, i64*, i64, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }

@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@MAX_POWERUPS = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@EF_CONNECTION = common dso_local global i32 0, align 4
@STAT_HEALTH = common dso_local global i64 0, align 8
@g_smoothClients = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@PM_NORMAL = common dso_local global i64 0, align 8
@PW_AMMOREGEN = common dso_local global i64 0, align 8
@PW_DOUBLER = common dso_local global i64 0, align 8
@PW_GUARD = common dso_local global i64 0, align 8
@PW_INVULNERABILITY = common dso_local global i64 0, align 8
@PW_SCOUT = common dso_local global i64 0, align 8
@STAT_PERSISTANT_POWERUP = common dso_local global i64 0, align 8
@bg_itemlist = common dso_local global %struct.TYPE_25__* null, align 8
@g_synchronousClients = common dso_local global %struct.TYPE_23__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientEndFrame(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %5 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @TEAM_SPECTATOR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = call i32 @SpectatorClientEndFrame(%struct.TYPE_21__* %14)
  br label %131

16:                                               ; preds = %1
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  store i32* %20, i32** %4, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %49, %16
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @MAX_POWERUPS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 0), align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %25
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %38, %25
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %21

52:                                               ; preds = %21
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 1), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %131

56:                                               ; preds = %52
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %58 = call i32 @P_WorldEffects(%struct.TYPE_21__* %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %60 = call i32 @P_DamageFeedback(%struct.TYPE_21__* %59)
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @level, i32 0, i32 0), align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %61, %67
  %69 = icmp sgt i64 %68, 1000
  br i1 %69, label %70, label %77

70:                                               ; preds = %56
  %71 = load i32, i32* @EF_CONNECTION, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  br label %85

77:                                               ; preds = %56
  %78 = load i32, i32* @EF_CONNECTION, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %79
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %77, %70
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @STAT_HEALTH, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 %88, i64* %96, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %98 = call i32 @G_SetClientSound(%struct.TYPE_21__* %97)
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @g_smoothClients, i32 0, i32 0), align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %85
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @qtrue, align 4
  %115 = call i32 @BG_PlayerStateToEntityStateExtraPolate(%struct.TYPE_26__* %105, %struct.TYPE_18__* %107, i32 %113, i32 %114)
  br label %125

116:                                              ; preds = %85
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 2
  %123 = load i32, i32* @qtrue, align 4
  %124 = call i32 @BG_PlayerStateToEntityState(%struct.TYPE_26__* %120, %struct.TYPE_18__* %122, i32 %123)
  br label %125

125:                                              ; preds = %116, %101
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 2
  %130 = call i32 @SendPendingPredictableEvents(%struct.TYPE_26__* %129)
  br label %131

131:                                              ; preds = %125, %55, %13
  ret void
}

declare dso_local i32 @SpectatorClientEndFrame(%struct.TYPE_21__*) #1

declare dso_local i32 @P_WorldEffects(%struct.TYPE_21__*) #1

declare dso_local i32 @P_DamageFeedback(%struct.TYPE_21__*) #1

declare dso_local i32 @G_SetClientSound(%struct.TYPE_21__*) #1

declare dso_local i32 @BG_PlayerStateToEntityStateExtraPolate(%struct.TYPE_26__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @BG_PlayerStateToEntityState(%struct.TYPE_26__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @SendPendingPredictableEvents(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
