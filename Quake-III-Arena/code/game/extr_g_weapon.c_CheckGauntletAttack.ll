; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_CheckGauntletAttack.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_CheckGauntletAttack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_25__*, i64, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__*, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64*, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_26__ = type { i32, i64, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@forward = common dso_local global i32 0, align 4
@right = common dso_local global i32 0, align 4
@up = common dso_local global i32 0, align 4
@muzzle = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_27__* null, align 8
@EV_MISSILE_HIT = common dso_local global i32 0, align 4
@PW_QUAD = common dso_local global i64 0, align 8
@EV_POWERUP_QUAD = common dso_local global i32 0, align 4
@g_quadfactor = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@s_quadFactor = common dso_local global i32 0, align 4
@MOD_GAUNTLET = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@PW_DOUBLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckGauntletAttack(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @forward, align 4
  %16 = load i32, i32* @right, align 4
  %17 = load i32, i32* @up, align 4
  %18 = call i32 @AngleVectors(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %20 = load i32, i32* @forward, align 4
  %21 = load i32, i32* @right, align 4
  %22 = load i32, i32* @up, align 4
  %23 = load i32, i32* @muzzle, align 4
  %24 = call i32 @CalcMuzzlePoint(%struct.TYPE_27__* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @muzzle, align 4
  %26 = load i32, i32* @forward, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @VectorMA(i32 %25, i32 32, i32 %26, i32 %27)
  %29 = load i32, i32* @muzzle, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MASK_SHOT, align 4
  %36 = call i32 @trap_Trace(%struct.TYPE_26__* %4, i32 %29, i32* null, i32* null, i32 %30, i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SURF_NOIMPACT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @qfalse, align 4
  store i32 %43, i32* %2, align 4
  br label %121

44:                                               ; preds = %1
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** @g_entities, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i64 %47
  store %struct.TYPE_27__* %48, %struct.TYPE_27__** %7, align 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %44
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %55, align 8
  %57 = icmp ne %struct.TYPE_25__* %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @EV_MISSILE_HIT, align 4
  %62 = call %struct.TYPE_27__* @G_TempEntity(i32 %60, i32 %61)
  store %struct.TYPE_27__* %62, %struct.TYPE_27__** %6, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DirToByte(i32 %72)
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %58, %53, %44
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @qfalse, align 4
  store i32 %90, i32* %2, align 4
  br label %121

91:                                               ; preds = %84
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @PW_QUAD, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %104 = load i32, i32* @EV_POWERUP_QUAD, align 4
  %105 = call i32 @G_AddEvent(%struct.TYPE_27__* %103, i32 %104, i32 0)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @g_quadfactor, i32 0, i32 0), align 4
  store i32 %106, i32* @s_quadFactor, align 4
  br label %108

107:                                              ; preds = %91
  store i32 1, i32* @s_quadFactor, align 4
  br label %108

108:                                              ; preds = %107, %102
  %109 = load i32, i32* @s_quadFactor, align 4
  %110 = mul nsw i32 50, %109
  store i32 %110, i32* %8, align 4
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %114 = load i32, i32* @forward, align 4
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @MOD_GAUNTLET, align 4
  %119 = call i32 @G_Damage(%struct.TYPE_27__* %111, %struct.TYPE_27__* %112, %struct.TYPE_27__* %113, i32 %114, i32 %116, i32 %117, i32 0, i32 %118)
  %120 = load i32, i32* @qtrue, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %108, %89, %42
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @AngleVectors(i32, i32, i32, i32) #1

declare dso_local i32 @CalcMuzzlePoint(%struct.TYPE_27__*, i32, i32, i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_26__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @G_TempEntity(i32, i32) #1

declare dso_local i32 @DirToByte(i32) #1

declare dso_local i32 @G_AddEvent(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @G_Damage(%struct.TYPE_27__*, %struct.TYPE_27__*, %struct.TYPE_27__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
