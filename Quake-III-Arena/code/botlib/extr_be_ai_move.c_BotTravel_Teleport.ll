; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Teleport.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotTravel_Teleport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@MFL_TELEPORTED = common dso_local global i32 0, align 4
@MFL_SWIMMING = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BotTravel_Teleport(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = call i32 @BotClearMoveResult(%struct.TYPE_11__* %3)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MFL_TELEPORTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %72

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i64*, i64** %6, align 8
  %24 = call i32 @VectorSubtract(i32 %19, i32 %22, i64* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MFL_SWIMMING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %16
  %32 = load i64*, i64** %6, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %16
  %35 = load i64*, i64** %6, align 8
  %36 = call float @VectorNormalize(i64* %35)
  store float %36, float* %7, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = load i32, i32* @qtrue, align 4
  %40 = call i32 @BotCheckBlocked(%struct.TYPE_10__* %37, i64* %38, i32 %39, %struct.TYPE_11__* %3)
  %41 = load float, float* %7, align 4
  %42 = fcmp olt float %41, 3.000000e+01
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64*, i64** %6, align 8
  %48 = call i32 @EA_Move(i32 %46, i64* %47, i32 200)
  br label %55

49:                                               ; preds = %34
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64*, i64** %6, align 8
  %54 = call i32 @EA_Move(i32 %52, i64* %53, i32 400)
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MFL_SWIMMING, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %63
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load i64*, i64** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @VectorCopy(i64* %68, i32 %70)
  br label %72

72:                                               ; preds = %67, %15
  %73 = bitcast %struct.TYPE_11__* %3 to i64*
  %74 = load i64, i64* %73, align 4
  ret i64 %74
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_11__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_10__*, i64*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @EA_Move(i32, i64*, i32) #1

declare dso_local i32 @VectorCopy(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
