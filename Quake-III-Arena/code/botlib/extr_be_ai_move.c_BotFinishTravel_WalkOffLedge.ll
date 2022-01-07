; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotFinishTravel_WalkOffLedge.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotFinishTravel_WalkOffLedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { i64* }

@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @BotFinishTravel_WalkOffLedge(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %12 = call i32 @BotClearMoveResult(%struct.TYPE_11__* %3)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i64*, i64** %6, align 8
  %20 = call i32 @VectorSubtract(i64* %15, i32 %18, i64* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i32, i32* @qtrue, align 4
  %24 = call i32 @BotCheckBlocked(%struct.TYPE_10__* %21, i64* %22, i32 %23, %struct.TYPE_11__* %3)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i64*, i64** %9, align 8
  %32 = call i32 @VectorSubtract(i64* %27, i32 %30, i64* %31)
  %33 = load i64*, i64** %9, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  store i64 0, i64* %34, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = call float @VectorNormalize(i64* %35)
  store float %36, float* %10, align 4
  %37 = load float, float* %10, align 4
  %38 = fcmp ogt float %37, 1.600000e+01
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = call i32 @VectorMA(i64* %42, i32 16, i64* %43, i64* %44)
  br label %52

46:                                               ; preds = %2
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = call i32 @VectorCopy(i64* %49, i64* %50)
  br label %52

52:                                               ; preds = %46, %39
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64*, i64** %8, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = call i32 @BotAirControl(i32 %55, i32 %58, i64* %59, i64* %60, float* %11)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %52
  %64 = load i64*, i64** %6, align 8
  %65 = load i64*, i64** %7, align 8
  %66 = call i32 @VectorCopy(i64* %64, i64* %65)
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  store i64 0, i64* %68, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = call float @VectorNormalize(i64* %69)
  store float %70, float* %10, align 4
  store float 4.000000e+02, float* %11, align 4
  br label %71

71:                                               ; preds = %63, %52
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64*, i64** %7, align 8
  %76 = load float, float* %11, align 4
  %77 = call i32 @EA_Move(i32 %74, i64* %75, float %76)
  %78 = load i64*, i64** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = call i32 @VectorCopy(i64* %78, i64* %80)
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  ret i64* %83
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_11__*) #1

declare dso_local i32 @VectorSubtract(i64*, i32, i64*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_10__*, i64*, i32, %struct.TYPE_11__*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @VectorMA(i64*, i32, i64*, i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @BotAirControl(i32, i32, i64*, i64*, float*) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
