; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_CalcMuzzlePoint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_weapons.c_CG_CalcMuzzlePoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@cg_entities = common dso_local global %struct.TYPE_14__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@LEGS_WALKCR = common dso_local global i32 0, align 4
@LEGS_IDLECR = common dso_local global i32 0, align 4
@CROUCH_VIEWHEIGHT = common dso_local global i64 0, align 8
@DEFAULT_VIEWHEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @CG_CalcMuzzlePoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_CalcMuzzlePoint(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %9, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @VectorCopy(i32 %19, i32* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @AngleVectors(i32 %35, i32* %36, i32* null, i32* null)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @VectorMA(i32* %38, i32 14, i32* %39, i32* %40)
  %42 = load i32, i32* @qtrue, align 4
  store i32 %42, i32* %3, align 4
  br label %105

43:                                               ; preds = %2
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cg_entities, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 %46
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %7, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @qfalse, align 4
  store i32 %53, i32* %3, align 4
  br label %105

54:                                               ; preds = %43
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @VectorCopy(i32 %59, i32* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @AngleVectors(i32 %66, i32* %67, i32* null, i32* null)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @LEGS_WALKCR, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %54
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @LEGS_IDLECR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79, %54
  %84 = load i64, i64* @CROUCH_VIEWHEIGHT, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 4
  br label %99

91:                                               ; preds = %79
  %92 = load i64, i64* @DEFAULT_VIEWHEIGHT, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  br label %99

99:                                               ; preds = %91, %83
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @VectorMA(i32* %100, i32 14, i32* %101, i32* %102)
  %104 = load i32, i32* @qtrue, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %52, %15
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @VectorCopy(i32, i32*) #1

declare dso_local i32 @AngleVectors(i32, i32*, i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
