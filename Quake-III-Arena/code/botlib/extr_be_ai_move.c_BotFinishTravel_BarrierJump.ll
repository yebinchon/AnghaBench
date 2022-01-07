; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotFinishTravel_BarrierJump.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotFinishTravel_BarrierJump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i64* }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { i32 }

@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotFinishTravel_BarrierJump(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i64*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = call i32 @BotClearMoveResult(%struct.TYPE_11__* %3)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 250
  br i1 %14, label %15, label %59

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %20, %25
  %27 = load i64*, i64** %7, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %33, %38
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64 %39, i64* %41, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  store i64 0, i64* %43, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = call float @VectorNormalize(i64* %44)
  store float %45, float* %6, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i32, i32* @qtrue, align 4
  %49 = call i32 @BotCheckBlocked(%struct.TYPE_10__* %46, i64* %47, i32 %48, %struct.TYPE_11__* %3)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = call i32 @EA_Move(i32 %52, i64* %53, i32 400)
  %55 = load i64*, i64** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @VectorCopy(i64* %55, i32 %57)
  br label %59

59:                                               ; preds = %15, %2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  ret i32 %61
}

declare dso_local i32 @BotClearMoveResult(%struct.TYPE_11__*) #1

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
