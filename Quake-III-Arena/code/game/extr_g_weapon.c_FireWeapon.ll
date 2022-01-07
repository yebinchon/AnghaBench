; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_FireWeapon.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_FireWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_28__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__, i64, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32, i64* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }

@PW_QUAD = common dso_local global i64 0, align 8
@g_quadfactor = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@s_quadFactor = common dso_local global i32 0, align 4
@forward = common dso_local global i32 0, align 4
@right = common dso_local global i32 0, align 4
@up = common dso_local global i32 0, align 4
@muzzle = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_24__ zeroinitializer, align 4
@GT_TEAM = common dso_local global i32 0, align 4
@MACHINEGUN_SPREAD = common dso_local global i32 0, align 4
@MACHINEGUN_DAMAGE = common dso_local global i32 0, align 4
@MACHINEGUN_TEAM_DAMAGE = common dso_local global i32 0, align 4
@CHAINGUN_SPREAD = common dso_local global i32 0, align 4
@NUM_NAILSHOTS = common dso_local global i64 0, align 8
@PW_DOUBLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FireWeapon(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  %3 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @PW_QUAD, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @g_quadfactor, i32 0, i32 0), align 4
  store i32 %14, i32* @s_quadFactor, align 4
  br label %16

15:                                               ; preds = %1
  store i32 1, i32* @s_quadFactor, align 4
  br label %16

16:                                               ; preds = %15, %13
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 137
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 138
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %32, align 8
  br label %35

35:                                               ; preds = %28, %22, %16
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @forward, align 4
  %43 = load i32, i32* @right, align 4
  %44 = load i32, i32* @up, align 4
  %45 = call i32 @AngleVectors(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @forward, align 4
  %53 = load i32, i32* @right, align 4
  %54 = load i32, i32* @up, align 4
  %55 = load i32, i32* @muzzle, align 4
  %56 = call i32 @CalcMuzzlePointOrigin(%struct.TYPE_30__* %46, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %103 [
    i32 138, label %61
    i32 135, label %64
    i32 128, label %67
    i32 134, label %70
    i32 136, label %85
    i32 129, label %88
    i32 132, label %91
    i32 130, label %94
    i32 140, label %97
    i32 137, label %100
  ]

61:                                               ; preds = %35
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %63 = call i32 @Weapon_Gauntlet(%struct.TYPE_30__* %62)
  br label %104

64:                                               ; preds = %35
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %66 = call i32 @Weapon_LightningFire(%struct.TYPE_30__* %65)
  br label %104

67:                                               ; preds = %35
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %69 = call i32 @weapon_supershotgun_fire(%struct.TYPE_30__* %68)
  br label %104

70:                                               ; preds = %35
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @g_gametype, i32 0, i32 0), align 4
  %72 = load i32, i32* @GT_TEAM, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %76 = load i32, i32* @MACHINEGUN_SPREAD, align 4
  %77 = load i32, i32* @MACHINEGUN_DAMAGE, align 4
  %78 = call i32 @Bullet_Fire(%struct.TYPE_30__* %75, i32 %76, i32 %77)
  br label %84

79:                                               ; preds = %70
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %81 = load i32, i32* @MACHINEGUN_SPREAD, align 4
  %82 = load i32, i32* @MACHINEGUN_TEAM_DAMAGE, align 4
  %83 = call i32 @Bullet_Fire(%struct.TYPE_30__* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %74
  br label %104

85:                                               ; preds = %35
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %87 = call i32 @weapon_grenadelauncher_fire(%struct.TYPE_30__* %86)
  br label %104

88:                                               ; preds = %35
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %90 = call i32 @Weapon_RocketLauncher_Fire(%struct.TYPE_30__* %89)
  br label %104

91:                                               ; preds = %35
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %93 = call i32 @Weapon_Plasmagun_Fire(%struct.TYPE_30__* %92)
  br label %104

94:                                               ; preds = %35
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %96 = call i32 @weapon_railgun_fire(%struct.TYPE_30__* %95)
  br label %104

97:                                               ; preds = %35
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %99 = call i32 @BFG_Fire(%struct.TYPE_30__* %98)
  br label %104

100:                                              ; preds = %35
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %102 = call i32 @Weapon_GrapplingHook_Fire(%struct.TYPE_30__* %101)
  br label %104

103:                                              ; preds = %35
  br label %104

104:                                              ; preds = %103, %100, %97, %94, %91, %88, %85, %84, %67, %64, %61
  ret void
}

declare dso_local i32 @AngleVectors(i32, i32, i32, i32) #1

declare dso_local i32 @CalcMuzzlePointOrigin(%struct.TYPE_30__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Weapon_Gauntlet(%struct.TYPE_30__*) #1

declare dso_local i32 @Weapon_LightningFire(%struct.TYPE_30__*) #1

declare dso_local i32 @weapon_supershotgun_fire(%struct.TYPE_30__*) #1

declare dso_local i32 @Bullet_Fire(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @weapon_grenadelauncher_fire(%struct.TYPE_30__*) #1

declare dso_local i32 @Weapon_RocketLauncher_Fire(%struct.TYPE_30__*) #1

declare dso_local i32 @Weapon_Plasmagun_Fire(%struct.TYPE_30__*) #1

declare dso_local i32 @weapon_railgun_fire(%struct.TYPE_30__*) #1

declare dso_local i32 @BFG_Fire(%struct.TYPE_30__*) #1

declare dso_local i32 @Weapon_GrapplingHook_Fire(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
