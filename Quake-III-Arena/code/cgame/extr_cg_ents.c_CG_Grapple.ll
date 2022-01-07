; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_Grapple.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_ents.c_CG_Grapple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32**, i32, i32, i32 }

@WP_NUM_WEAPONS = common dso_local global i64 0, align 8
@cg_weapons = common dso_local global %struct.TYPE_14__* null, align 8
@cg = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@RF_NOSHADOW = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @CG_Grapple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_Grapple(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_15__, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WP_NUM_WEAPONS, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cg_weapons, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i64 %20
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %5, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @VectorCopy(i32 %24, i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = call i32 @CG_GrappleTrail(%struct.TYPE_17__* %29, %struct.TYPE_14__* %30)
  %32 = call i32 @memset(%struct.TYPE_15__* %3, i32 0, i32 32)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @VectorCopy(i32 %35, i32 %37)
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @VectorCopy(i32 %41, i32 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg, i32 0, i32 0), align 4
  %46 = and i32 %45, 1
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @RF_NOSHADOW, align 4
  %56 = or i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %63 = load i32**, i32*** %62, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @VectorNormalize2(i32 %61, i32* %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %16
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %3, i32 0, i32 2
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %16
  %75 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_15__* %3)
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @CG_GrappleTrail(%struct.TYPE_17__*, %struct.TYPE_14__*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @VectorNormalize2(i32, i32*) #1

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
