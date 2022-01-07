; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_Weapon_LightningFire.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_Weapon_LightningFire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__, %struct.TYPE_17__*, i64 }
%struct.TYPE_18__ = type { i32, i32, i8*, i32, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32 }

@s_quadFactor = common dso_local global i32 0, align 4
@muzzle = common dso_local global i32 0, align 4
@LIGHTNING_RANGE = common dso_local global i32 0, align 4
@forward = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_21__* null, align 8
@MOD_LIGHTNING = common dso_local global i32 0, align 4
@EV_MISSILE_HIT = common dso_local global i32 0, align 4
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@EV_MISSILE_MISS = common dso_local global i32 0, align 4
@EV_LIGHTNINGBOLT = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Weapon_LightningFire(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %10 = load i32, i32* @s_quadFactor, align 4
  %11 = mul nsw i32 8, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %123, %1
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %126

19:                                               ; preds = %16
  %20 = load i32, i32* @muzzle, align 4
  %21 = load i32, i32* @LIGHTNING_RANGE, align 4
  %22 = load i32, i32* @forward, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @VectorMA(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @muzzle, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @MASK_SHOT, align 4
  %29 = call i32 @trap_Trace(%struct.TYPE_20__* %3, i32 %25, i32* null, i32* null, i32 %26, i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ENTITYNUM_NONE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  br label %126

35:                                               ; preds = %19
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_entities, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i64 %39
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %5, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %49 = load i32, i32* @forward, align 4
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @MOD_LIGHTNING, align 4
  %54 = call i32 @G_Damage(%struct.TYPE_21__* %46, %struct.TYPE_21__* %47, %struct.TYPE_21__* %48, i32 %49, i32 %51, i32 %52, i32 0, i32 %53)
  br label %55

55:                                               ; preds = %45, %35
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %55
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = icmp ne %struct.TYPE_17__* %63, null
  br i1 %64, label %65, label %103

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @EV_MISSILE_HIT, align 4
  %69 = call %struct.TYPE_21__* @G_TempEntity(i32 %67, i32 %68)
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %6, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @DirToByte(i32 %79)
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  store i8* %80, i8** %83, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %93 = call i64 @LogAccuracyHit(%struct.TYPE_21__* %91, %struct.TYPE_21__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %65
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %95, %65
  br label %122

103:                                              ; preds = %60, %55
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SURF_NOIMPACT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @EV_MISSILE_MISS, align 4
  %113 = call %struct.TYPE_21__* @G_TempEntity(i32 %111, i32 %112)
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @DirToByte(i32 %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 2
  store i8* %117, i8** %120, align 8
  br label %121

121:                                              ; preds = %109, %103
  br label %122

122:                                              ; preds = %121, %102
  br label %126

123:                                              ; No predecessors!
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %16

126:                                              ; preds = %34, %122, %16
  ret void
}

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_20__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @G_Damage(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @G_TempEntity(i32, i32) #1

declare dso_local i8* @DirToByte(i32) #1

declare dso_local i64 @LogAccuracyHit(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
