; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_ShotgunPellet.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_ShotgunPellet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_15__*, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32 }

@MASK_SHOT = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_18__* null, align 8
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@DEFAULT_SHOTGUN_DAMAGE = common dso_local global i32 0, align 4
@s_quadFactor = common dso_local global i32 0, align 4
@forward = common dso_local global i32 0, align 4
@MOD_SHOTGUN = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShotgunPellet(i32 %0, i32 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @VectorCopy(i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @VectorCopy(i32 %22, i32 %23)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %72, %3
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %75

28:                                               ; preds = %25
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @MASK_SHOT, align 4
  %33 = call i32 @trap_Trace(%struct.TYPE_17__* %8, i32 %29, i32* null, i32* null, i32 %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** @g_entities, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i64 %36
  store %struct.TYPE_18__* %37, %struct.TYPE_18__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SURF_NOIMPACT, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* @qfalse, align 4
  store i32 %44, i32* %4, align 4
  br label %77

45:                                               ; preds = %28
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %45
  %51 = load i32, i32* @DEFAULT_SHOTGUN_DAMAGE, align 4
  %52 = load i32, i32* @s_quadFactor, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = load i32, i32* @forward, align 4
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @MOD_SHOTGUN, align 4
  %62 = call i32 @G_Damage(%struct.TYPE_18__* %54, %struct.TYPE_18__* %55, %struct.TYPE_18__* %56, i32 %57, i32 %59, i32 %60, i32 0, i32 %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = call i64 @LogAccuracyHit(%struct.TYPE_18__* %63, %struct.TYPE_18__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* @qtrue, align 4
  store i32 %68, i32* %4, align 4
  br label %77

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i32, i32* @qfalse, align 4
  store i32 %71, i32* %4, align 4
  br label %77

72:                                               ; No predecessors!
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %25

75:                                               ; preds = %25
  %76 = load i32, i32* @qfalse, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %70, %67, %43
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_17__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @G_Damage(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LogAccuracyHit(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
