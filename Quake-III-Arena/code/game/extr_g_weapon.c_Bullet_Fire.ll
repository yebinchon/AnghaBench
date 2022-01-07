; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_Bullet_Fire.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_weapon.c_Bullet_Fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_18__*, i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i32, i64, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@s_quadFactor = common dso_local global i32 0, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@muzzle = common dso_local global i32 0, align 4
@forward = common dso_local global i32 0, align 4
@right = common dso_local global i32 0, align 4
@up = common dso_local global i32 0, align 4
@MASK_SHOT = common dso_local global i32 0, align 4
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_21__* null, align 8
@EV_BULLET_HIT_FLESH = common dso_local global i32 0, align 4
@EV_BULLET_HIT_WALL = common dso_local global i32 0, align 4
@MOD_MACHINEGUN = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Bullet_Fire(%struct.TYPE_21__* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @s_quadFactor, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = call float (...) @random()
  %19 = load float, float* @M_PI, align 4
  %20 = fmul float %18, %19
  %21 = fmul float %20, 2.000000e+00
  store float %21, float* %9, align 4
  %22 = load float, float* %9, align 4
  %23 = call float @sin(float %22)
  %24 = call float (...) @crandom()
  %25 = fmul float %23, %24
  %26 = load float, float* %5, align 4
  %27 = fmul float %25, %26
  %28 = fmul float %27, 1.600000e+01
  store float %28, float* %10, align 4
  %29 = load float, float* %9, align 4
  %30 = call float @cos(float %29)
  %31 = call float (...) @crandom()
  %32 = fmul float %30, %31
  %33 = load float, float* %5, align 4
  %34 = fmul float %32, %33
  %35 = fmul float %34, 1.600000e+01
  store float %35, float* %9, align 4
  %36 = load i32, i32* @muzzle, align 4
  %37 = load i32, i32* @forward, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @VectorMA(i32 %36, float 1.310720e+05, i32 %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load float, float* %9, align 4
  %42 = load i32, i32* @right, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @VectorMA(i32 %40, float %41, i32 %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load float, float* %10, align 4
  %47 = load i32, i32* @up, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @VectorMA(i32 %45, float %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %146, %3
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 10
  br i1 %56, label %57, label %149

57:                                               ; preds = %54
  %58 = load i32, i32* @muzzle, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @MASK_SHOT, align 4
  %62 = call i32 @trap_Trace(%struct.TYPE_20__* %7, i32 %58, i32* null, i32* null, i32 %59, i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SURF_NOIMPACT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %149

69:                                               ; preds = %57
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_entities, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i64 %72
  store %struct.TYPE_21__* %73, %struct.TYPE_21__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @muzzle, align 4
  %77 = call i32 @SnapVectorTowards(i32 %75, i32 %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %69
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = icmp ne %struct.TYPE_18__* %85, null
  br i1 %86, label %87, label %111

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @EV_BULLET_HIT_FLESH, align 4
  %91 = call %struct.TYPE_21__* @G_TempEntity(i32 %89, i32 %90)
  store %struct.TYPE_21__* %91, %struct.TYPE_21__** %11, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = call i64 @LogAccuracyHit(%struct.TYPE_21__* %99, %struct.TYPE_21__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %87
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %103, %87
  br label %123

111:                                              ; preds = %82, %69
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @EV_BULLET_HIT_WALL, align 4
  %115 = call %struct.TYPE_21__* @G_TempEntity(i32 %113, i32 %114)
  store %struct.TYPE_21__* %115, %struct.TYPE_21__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @DirToByte(i32 %118)
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %111, %110
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 2
  store i32 %127, i32* %130, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %123
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = load i32, i32* @forward, align 4
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @MOD_MACHINEGUN, align 4
  %144 = call i32 @G_Damage(%struct.TYPE_21__* %136, %struct.TYPE_21__* %137, %struct.TYPE_21__* %138, i32 %139, i32 %141, i32 %142, i32 0, i32 %143)
  br label %145

145:                                              ; preds = %135, %123
  br label %149

146:                                              ; No predecessors!
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %54

149:                                              ; preds = %68, %145, %54
  ret void
}

declare dso_local float @random(...) #1

declare dso_local float @sin(float) #1

declare dso_local float @crandom(...) #1

declare dso_local float @cos(float) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_20__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @SnapVectorTowards(i32, i32) #1

declare dso_local %struct.TYPE_21__* @G_TempEntity(i32, i32) #1

declare dso_local i64 @LogAccuracyHit(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @DirToByte(i32) #1

declare dso_local i32 @G_Damage(%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
