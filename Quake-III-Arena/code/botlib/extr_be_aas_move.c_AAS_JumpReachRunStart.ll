; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_move.c_AAS_JumpReachRunStart.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_aas_move.c_AAS_JumpReachRunStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32*, i32 }

@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@SE_ENTERWATER = common dso_local global i32 0, align 4
@SE_ENTERSLIME = common dso_local global i32 0, align 4
@SE_ENTERLAVA = common dso_local global i32 0, align 4
@SE_HITGROUNDDAMAGE = common dso_local global i32 0, align 4
@SE_GAP = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_JumpReachRunStart(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %13, %18
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %26, %31
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @VectorNormalize(i32* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @VectorCopy(i32* %41, i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @VectorScale(i32* %48, i32 400, i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @PRESENCE_NORMAL, align 4
  %53 = load i32, i32* @qtrue, align 4
  %54 = load i32, i32* @vec3_origin, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* @SE_ENTERWATER, align 4
  %57 = load i32, i32* @SE_ENTERSLIME, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SE_ENTERLAVA, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SE_GAP, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @qfalse, align 4
  %66 = call i32 @AAS_PredictClientMovement(%struct.TYPE_6__* %8, i32 -1, i32* %51, i32 %52, i32 %53, i32 %54, i32* %55, i32 1, i32 2, float 0x3FB99999A0000000, i32 %64, i32 0, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @VectorCopy(i32* %68, i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SE_ENTERSLIME, align 4
  %74 = load i32, i32* @SE_ENTERLAVA, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SE_HITGROUNDDAMAGE, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %72, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %2
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @VectorCopy(i32* %81, i32* %82)
  br label %84

84:                                               ; preds = %80, %2
  ret void
}

declare dso_local i32 @VectorNormalize(i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @VectorScale(i32*, i32, i32*) #1

declare dso_local i32 @AAS_PredictClientMovement(%struct.TYPE_6__*, i32, i32*, i32, i32, i32, i32*, i32, i32, float, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
