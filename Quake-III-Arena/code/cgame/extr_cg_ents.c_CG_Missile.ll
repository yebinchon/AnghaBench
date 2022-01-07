; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_Missile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_Missile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i64, i32*, i64, i32 (%struct.TYPE_24__*, %struct.TYPE_21__*)* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i64, i64, i32, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32**, i32, i32, i64, i32, i32, i32 }

@WP_NUM_WEAPONS = common dso_local global i64 0, align 8
@cg_weapons = common dso_local global %struct.TYPE_21__* null, align 8
@cg = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@WP_PLASMAGUN = common dso_local global i64 0, align 8
@RT_SPRITE = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@RF_NOSHADOW = common dso_local global i32 0, align 4
@TR_STATIONARY = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i64 0, align 8
@WP_PROX_LAUNCHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @CG_Missile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Missile(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_22__, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %4, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WP_NUM_WEAPONS, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** @cg_weapons, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i64 %21
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %5, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @VectorCopy(i32 %25, i32 %28)
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 5
  %32 = load i32 (%struct.TYPE_24__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_21__*)** %31, align 8
  %33 = icmp ne i32 (%struct.TYPE_24__*, %struct.TYPE_21__*)* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %17
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 5
  %37 = load i32 (%struct.TYPE_24__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_21__*)** %36, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = call i32 %37(%struct.TYPE_24__* %38, %struct.TYPE_21__* %39)
  br label %41

41:                                               ; preds = %34, %17
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @trap_R_AddLightToScene(i32 %49, i64 %52, i32 %57, i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %46, %41
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 3
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 0), align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @BG_EvaluateTrajectoryDelta(%struct.TYPE_19__* %77, i32 %78, i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @trap_S_AddLoopingSound(i32 %84, i32 %87, i32 %88, i64 %91)
  br label %93

93:                                               ; preds = %74, %69
  %94 = call i32 @memset(%struct.TYPE_22__* %3, i32 0, i32 56)
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @VectorCopy(i32 %97, i32 %99)
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @VectorCopy(i32 %103, i32 %105)
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @WP_PLASMAGUN, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %93
  %114 = load i32, i32* @RT_SPRITE, align 4
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 7
  store i32 %114, i32* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  store i32 16, i32* %116, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 6
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cgs, i32 0, i32 0, i32 1), align 4
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 5
  store i32 %118, i32* %119, align 4
  %120 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_22__* %3)
  br label %175

121:                                              ; preds = %93
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 1), align 4
  %123 = and i32 %122, 1
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 4
  store i32 %127, i32* %128, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @RF_NOSHADOW, align 4
  %133 = or i32 %131, %132
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 2
  store i32 %133, i32* %134, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 3
  %140 = load i32**, i32*** %139, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @VectorNormalize2(i32 %138, i32* %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %121
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 3
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 1, i32* %150, align 4
  br label %151

151:                                              ; preds = %145, %121
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @TR_STATIONARY, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 3
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 0), align 4
  %162 = sdiv i32 %161, 4
  %163 = call i32 @RotateAroundDirection(i32** %160, i32 %162)
  br label %171

164:                                              ; preds = %151
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 3
  %166 = load i32**, i32*** %165, align 8
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @RotateAroundDirection(i32** %166, i32 %169)
  br label %171

171:                                              ; preds = %164, %158
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %173 = load i32, i32* @TEAM_FREE, align 4
  %174 = call i32 @CG_AddRefEntityWithPowerups(%struct.TYPE_22__* %3, %struct.TYPE_23__* %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %113
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_R_AddLightToScene(i32, i64, i32, i32, i32) #1

declare dso_local i32 @BG_EvaluateTrajectoryDelta(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @trap_S_AddLoopingSound(i32, i32, i32, i64) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_22__*) #1

declare dso_local i64 @VectorNormalize2(i32, i32*) #1

declare dso_local i32 @RotateAroundDirection(i32**, i32) #1

declare dso_local i32 @CG_AddRefEntityWithPowerups(%struct.TYPE_22__*, %struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
