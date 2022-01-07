; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_rankings.c_G_RankWeaponTime.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_rankings.c_G_RankWeaponTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@level = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@g_entities = common dso_local global %struct.TYPE_6__* null, align 8
@QGR_KEY_TIME = common dso_local global i32 0, align 4
@QGR_KEY_TIME_GAUNTLET = common dso_local global i32 0, align 4
@QGR_KEY_TIME_MACHINEGUN = common dso_local global i32 0, align 4
@QGR_KEY_TIME_SHOTGUN = common dso_local global i32 0, align 4
@QGR_KEY_TIME_GRENADE = common dso_local global i32 0, align 4
@QGR_KEY_TIME_ROCKET = common dso_local global i32 0, align 4
@QGR_KEY_TIME_LIGHTNING = common dso_local global i32 0, align 4
@QGR_KEY_TIME_RAILGUN = common dso_local global i32 0, align 4
@QGR_KEY_TIME_PLASMA = common dso_local global i32 0, align 4
@QGR_KEY_TIME_BFG = common dso_local global i32 0, align 4
@QGR_KEY_TIME_GRAPPLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_RankWeaponTime(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @level, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %86

10:                                               ; preds = %2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g_entities, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @level, i32 0, i32 1), align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @level, i32 0, i32 1), align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %10
  br label %86

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @QGR_KEY_TIME, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @trap_RankReportInt(i32 %30, i32 -1, i32 %31, i32 %32, i32 1)
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %85 [
    i32 136, label %35
    i32 132, label %40
    i32 128, label %45
    i32 134, label %50
    i32 129, label %55
    i32 133, label %60
    i32 130, label %65
    i32 131, label %70
    i32 137, label %75
    i32 135, label %80
  ]

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @QGR_KEY_TIME_GAUNTLET, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @trap_RankReportInt(i32 %36, i32 -1, i32 %37, i32 %38, i32 1)
  br label %86

40:                                               ; preds = %29
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @QGR_KEY_TIME_MACHINEGUN, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @trap_RankReportInt(i32 %41, i32 -1, i32 %42, i32 %43, i32 1)
  br label %86

45:                                               ; preds = %29
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @QGR_KEY_TIME_SHOTGUN, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @trap_RankReportInt(i32 %46, i32 -1, i32 %47, i32 %48, i32 1)
  br label %86

50:                                               ; preds = %29
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @QGR_KEY_TIME_GRENADE, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @trap_RankReportInt(i32 %51, i32 -1, i32 %52, i32 %53, i32 1)
  br label %86

55:                                               ; preds = %29
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @QGR_KEY_TIME_ROCKET, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @trap_RankReportInt(i32 %56, i32 -1, i32 %57, i32 %58, i32 1)
  br label %86

60:                                               ; preds = %29
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @QGR_KEY_TIME_LIGHTNING, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @trap_RankReportInt(i32 %61, i32 -1, i32 %62, i32 %63, i32 1)
  br label %86

65:                                               ; preds = %29
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @QGR_KEY_TIME_RAILGUN, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @trap_RankReportInt(i32 %66, i32 -1, i32 %67, i32 %68, i32 1)
  br label %86

70:                                               ; preds = %29
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @QGR_KEY_TIME_PLASMA, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @trap_RankReportInt(i32 %71, i32 -1, i32 %72, i32 %73, i32 1)
  br label %86

75:                                               ; preds = %29
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @QGR_KEY_TIME_BFG, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @trap_RankReportInt(i32 %76, i32 -1, i32 %77, i32 %78, i32 1)
  br label %86

80:                                               ; preds = %29
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @QGR_KEY_TIME_GRAPPLE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @trap_RankReportInt(i32 %81, i32 -1, i32 %82, i32 %83, i32 1)
  br label %86

85:                                               ; preds = %29
  br label %86

86:                                               ; preds = %9, %28, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35
  ret void
}

declare dso_local i32 @trap_RankReportInt(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
