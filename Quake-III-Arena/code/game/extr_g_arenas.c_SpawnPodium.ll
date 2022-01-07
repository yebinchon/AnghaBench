; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_arenas.c_SpawnPodium.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_arenas.c_SpawnPodium.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i8*, i64, i32, %struct.TYPE_12__, %struct.TYPE_10__, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"podium\00", align 1
@ET_GENERAL = common dso_local global i32 0, align 4
@g_entities = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i8* null, align 8
@SP_PODIUM_MODEL = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"g_podiumDist\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"g_podiumDrop\00", align 1
@YAW = common dso_local global i64 0, align 8
@PodiumPlacementThink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* ()* @SpawnPodium to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @SpawnPodium() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call %struct.TYPE_13__* (...) @G_Spawn()
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = icmp ne %struct.TYPE_13__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %1, align 8
  br label %80

9:                                                ; preds = %0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i32, i32* @ET_GENERAL, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  store i32 %12, i32* %15, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = load i32, i32* @g_entities, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i64 %19
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %23, align 8
  %24 = load i8*, i8** @CONTENTS_SOLID, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** @CONTENTS_SOLID, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load i32, i32* @SP_PODIUM_MODEL, align 4
  %32 = call i32 @G_ModelIndex(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @AngleVectors(i32 %36, i32* %37, i32* null, i32* null)
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 8
  %40 = call i64 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32*, i32** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @VectorMA(i32 %39, i64 %40, i32* %41, i32* %42)
  %44 = call i64 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @G_SetOrigin(%struct.TYPE_13__* %51, i32* %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @VectorSubtract(i32 %54, i32 %58, i32* %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @vectoyaw(i32* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @YAW, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %62, i32* %69, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = call i32 @trap_LinkEntity(%struct.TYPE_13__* %70)
  %72 = load i32, i32* @PodiumPlacementThink, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  %76 = add nsw i64 %75, 100
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %1, align 8
  br label %80

80:                                               ; preds = %9, %8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  ret %struct.TYPE_13__* %81
}

declare dso_local %struct.TYPE_13__* @G_Spawn(...) #1

declare dso_local i32 @G_ModelIndex(i32) #1

declare dso_local i32 @AngleVectors(i32, i32*, i32*, i32*) #1

declare dso_local i32 @VectorMA(i32, i64, i32*, i32*) #1

declare dso_local i64 @trap_Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @G_SetOrigin(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32*) #1

declare dso_local i32 @vectoyaw(i32*) #1

declare dso_local i32 @trap_LinkEntity(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
