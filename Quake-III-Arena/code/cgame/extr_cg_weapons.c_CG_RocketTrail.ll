; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_RocketTrail.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_RocketTrail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@cg_noProjectileTrail = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@TR_STATIONARY = common dso_local global i64 0, align 8
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@LE_SCALE_FADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_15__*)* @CG_RocketTrail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_RocketTrail(%struct.TYPE_18__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_noProjectileTrail, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %118

18:                                               ; preds = %2
  %19 = load i64*, i64** %13, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %13, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %13, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  store i64 0, i64* %24, align 8
  store i32 50, i32* %5, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %12, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %33, %34
  %36 = mul nsw i32 %30, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg, i32 0, i32 0), align 4
  %40 = load i64*, i64** %6, align 8
  %41 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_13__* %38, i32 %39, i64* %40)
  %42 = load i64*, i64** %6, align 8
  %43 = call i32 @CG_PointContents(i64* %42, i32 -1)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TR_STATIONARY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %18
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg, i32 0, i32 0), align 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %118

54:                                               ; preds = %18
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_13__* %56, i32 %59, i64* %60)
  %62 = load i64*, i64** %7, align 8
  %63 = call i32 @CG_PointContents(i64* %62, i32 -1)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg, i32 0, i32 0), align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @CONTENTS_WATER, align 4
  %69 = load i32, i32* @CONTENTS_SLIME, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CONTENTS_LAVA, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %67, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %54
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @CONTENTS_WATER, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i64*, i64** %7, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = call i32 @CG_BubbleTrail(i64* %83, i64* %84, i32 8)
  br label %86

86:                                               ; preds = %82, %75
  br label %118

87:                                               ; preds = %54
  br label %88

88:                                               ; preds = %114, %87
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sle i32 %89, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %88
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %8, align 4
  %98 = load i64*, i64** %7, align 8
  %99 = call i32 @BG_EvaluateTrajectory(%struct.TYPE_13__* %96, i32 %97, i64* %98)
  %100 = load i64*, i64** %7, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cgs, i32 0, i32 0, i32 0), align 4
  %110 = call %struct.TYPE_16__* @CG_SmokePuff(i64* %100, i64* %101, i32 %104, i32 1, i32 1, i32 1, float 0x3FD51EB860000000, i32 %107, i32 %108, i32 0, i32 0, i32 %109)
  store %struct.TYPE_16__* %110, %struct.TYPE_16__** %14, align 8
  %111 = load i32, i32* @LE_SCALE_FADE, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %94
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %88

118:                                              ; preds = %17, %50, %86, %88
  ret void
}

declare dso_local i32 @BG_EvaluateTrajectory(%struct.TYPE_13__*, i32, i64*) #1

declare dso_local i32 @CG_PointContents(i64*, i32) #1

declare dso_local i32 @CG_BubbleTrail(i64*, i64*, i32) #1

declare dso_local %struct.TYPE_16__* @CG_SmokePuff(i64*, i64*, i32, i32, i32, i32, float, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
