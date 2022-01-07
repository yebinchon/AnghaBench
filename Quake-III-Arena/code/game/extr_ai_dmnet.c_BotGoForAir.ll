; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_BotGoForAir.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmnet.c_BotGoForAir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@qtrue = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotGoForAir(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_11__* %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store float %3, float* %9, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (...) @FloatTime()
  %15 = sub nsw i32 %14, 6
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = call i64 @BotGetAirGoal(%struct.TYPE_10__* %18, %struct.TYPE_11__* %10)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @trap_BotPushGoal(i32 %24, %struct.TYPE_11__* %10)
  %26 = load i32, i32* @qtrue, align 4
  store i32 %26, i32* %5, align 4
  br label %73

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %60, %27
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = load float, float* %9, align 4
  %41 = call i64 @trap_BotChooseNBGItem(i32 %31, i32 %34, i32 %37, i32 %38, %struct.TYPE_11__* %39, float %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %28
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @trap_BotGetTopGoal(i32 %46, %struct.TYPE_11__* %10)
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @trap_AAS_PointContents(i32 %49)
  %51 = load i32, i32* @CONTENTS_WATER, align 4
  %52 = load i32, i32* @CONTENTS_SLIME, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CONTENTS_LAVA, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %43
  %59 = load i32, i32* @qtrue, align 4
  store i32 %59, i32* %5, align 4
  br label %73

60:                                               ; preds = %43
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @trap_BotPopGoal(i32 %63)
  br label %28

65:                                               ; preds = %28
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @trap_BotResetAvoidGoals(i32 %68)
  br label %70

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %4
  %72 = load i32, i32* @qfalse, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %58, %21
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @FloatTime(...) #1

declare dso_local i64 @BotGetAirGoal(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @trap_BotPushGoal(i32, %struct.TYPE_11__*) #1

declare dso_local i64 @trap_BotChooseNBGItem(i32, i32, i32, i32, %struct.TYPE_11__*, float) #1

declare dso_local i32 @trap_BotGetTopGoal(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @trap_AAS_PointContents(i32) #1

declare dso_local i32 @trap_BotPopGoal(i32) #1

declare dso_local i32 @trap_BotResetAvoidGoals(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
