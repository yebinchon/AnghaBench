; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_BotSelectActivateWeapon.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_BotSelectActivateWeapon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@INVENTORY_MACHINEGUN = common dso_local global i64 0, align 8
@INVENTORY_BULLETS = common dso_local global i64 0, align 8
@WEAPONINDEX_MACHINEGUN = common dso_local global i32 0, align 4
@INVENTORY_SHOTGUN = common dso_local global i64 0, align 8
@INVENTORY_SHELLS = common dso_local global i64 0, align 8
@WEAPONINDEX_SHOTGUN = common dso_local global i32 0, align 4
@INVENTORY_PLASMAGUN = common dso_local global i64 0, align 8
@INVENTORY_CELLS = common dso_local global i64 0, align 8
@WEAPONINDEX_PLASMAGUN = common dso_local global i32 0, align 4
@INVENTORY_LIGHTNING = common dso_local global i64 0, align 8
@INVENTORY_LIGHTNINGAMMO = common dso_local global i64 0, align 8
@WEAPONINDEX_LIGHTNING = common dso_local global i32 0, align 4
@INVENTORY_RAILGUN = common dso_local global i64 0, align 8
@INVENTORY_SLUGS = common dso_local global i64 0, align 8
@WEAPONINDEX_RAILGUN = common dso_local global i32 0, align 4
@INVENTORY_ROCKETLAUNCHER = common dso_local global i64 0, align 8
@INVENTORY_ROCKETS = common dso_local global i64 0, align 8
@WEAPONINDEX_ROCKET_LAUNCHER = common dso_local global i32 0, align 4
@INVENTORY_BFG10K = common dso_local global i64 0, align 8
@INVENTORY_BFGAMMO = common dso_local global i64 0, align 8
@WEAPONINDEX_BFG = common dso_local global i32 0, align 4
@INVENTORY_BELT = common dso_local global i64 0, align 8
@INVENTORY_CHAINGUN = common dso_local global i64 0, align 8
@INVENTORY_NAILGUN = common dso_local global i64 0, align 8
@INVENTORY_NAILS = common dso_local global i64 0, align 8
@WEAPONINDEX_CHAINGUN = common dso_local global i32 0, align 4
@WEAPONINDEX_NAILGUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotSelectActivateWeapon(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* @INVENTORY_MACHINEGUN, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @INVENTORY_BULLETS, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @WEAPONINDEX_MACHINEGUN, align 4
  store i32 %20, i32* %2, align 4
  br label %130

21:                                               ; preds = %11, %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @INVENTORY_SHOTGUN, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @INVENTORY_SHELLS, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @WEAPONINDEX_SHOTGUN, align 4
  store i32 %38, i32* %2, align 4
  br label %130

39:                                               ; preds = %29, %21
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @INVENTORY_PLASMAGUN, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @INVENTORY_CELLS, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @WEAPONINDEX_PLASMAGUN, align 4
  store i32 %56, i32* %2, align 4
  br label %130

57:                                               ; preds = %47, %39
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @INVENTORY_LIGHTNING, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @INVENTORY_LIGHTNINGAMMO, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @WEAPONINDEX_LIGHTNING, align 4
  store i32 %74, i32* %2, align 4
  br label %130

75:                                               ; preds = %65, %57
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @INVENTORY_RAILGUN, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* @INVENTORY_SLUGS, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @WEAPONINDEX_RAILGUN, align 4
  store i32 %92, i32* %2, align 4
  br label %130

93:                                               ; preds = %83, %75
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @INVENTORY_ROCKETLAUNCHER, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %93
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* @INVENTORY_ROCKETS, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = load i32, i32* @WEAPONINDEX_ROCKET_LAUNCHER, align 4
  store i32 %110, i32* %2, align 4
  br label %130

111:                                              ; preds = %101, %93
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @INVENTORY_BFG10K, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %111
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* @INVENTORY_BFGAMMO, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = load i32, i32* @WEAPONINDEX_BFG, align 4
  store i32 %128, i32* %2, align 4
  br label %130

129:                                              ; preds = %119, %111
  store i32 -1, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %127, %109, %91, %73, %55, %37, %19
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
