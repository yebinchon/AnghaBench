; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_SP_func_plat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_mover.c_SP_func_plat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, float, float*, float*, i32, %struct.TYPE_10__*, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { float*, i32 }
%struct.TYPE_8__ = type { float*, float* }

@.str = private unnamed_addr constant [32 x i8] c"sound/movers/plats/pt1_strt.wav\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sound/movers/plats/pt1_end.wav\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dmg\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"lip\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@Touch_Plat = common dso_local global i32 0, align 4
@Blocked_Door = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SP_func_plat(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = call i8* @G_SoundIndex(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 14
  store i8* %5, i8** %7, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 15
  store i8* %5, i8** %9, align 8
  %10 = call i8* @G_SoundIndex(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 12
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 13
  store i8* %10, i8** %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @VectorClear(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = call i32 @G_SpawnFloat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), float* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 11
  %25 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = call i32 @G_SpawnFloat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), float* %27)
  %29 = call i32 @G_SpawnFloat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), float* %3)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store float 1.000000e+03, float* %31, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @trap_SetBrushModel(%struct.TYPE_10__* %32, i32 %35)
  %37 = call i32 @G_SpawnFloat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), float* %4)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %1
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load float*, float** %42, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  %45 = load float, float* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 9
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load float*, float** %48, align 8
  %50 = getelementptr inbounds float, float* %49, i64 2
  %51 = load float, float* %50, align 4
  %52 = fsub float %45, %51
  %53 = load float, float* %3, align 4
  %54 = fsub float %52, %53
  store float %54, float* %4, align 4
  br label %55

55:                                               ; preds = %39, %1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load float*, float** %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load float*, float** %61, align 8
  %63 = call i32 @VectorCopy(float* %59, float* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load float*, float** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load float*, float** %68, align 8
  %70 = call i32 @VectorCopy(float* %66, float* %69)
  %71 = load float, float* %4, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load float*, float** %73, align 8
  %75 = getelementptr inbounds float, float* %74, i64 2
  %76 = load float, float* %75, align 4
  %77 = fsub float %76, %71
  store float %77, float* %75, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %79 = call i32 @InitMover(%struct.TYPE_10__* %78)
  %80 = load i32, i32* @Touch_Plat, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @Blocked_Door, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 5
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %55
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %95 = call i32 @SpawnPlatTrigger(%struct.TYPE_10__* %94)
  br label %96

96:                                               ; preds = %93, %55
  ret void
}

declare dso_local i8* @G_SoundIndex(i8*) #1

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @G_SpawnFloat(i8*, i8*, float*) #1

declare dso_local i32 @G_SpawnInt(i8*, i8*, i32*) #1

declare dso_local i32 @trap_SetBrushModel(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @InitMover(%struct.TYPE_10__*) #1

declare dso_local i32 @SpawnPlatTrigger(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
