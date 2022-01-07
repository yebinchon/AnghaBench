; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotNearestVisibleItem.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_cmd.c_BotNearestVisibleItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { double }

@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @BotNearestVisibleItem(%struct.TYPE_11__* %0, i8* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [64 x i8], align 16
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  store float 9.999990e+05, float* %11, align 4
  store i32 -1, i32* %7, align 4
  br label %14

14:                                               ; preds = %62, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @trap_BotGetLevelItemGoal(i32 %15, i8* %16, %struct.TYPE_12__* %9)
  store i32 %17, i32* %7, align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %21 = call i32 @trap_BotGoalName(i32 %19, i8* %20, i32 64)
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %24 = call i64 @Q_stricmp(i8* %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %62

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @VectorSubtract(i32 %29, i32 %32, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = call float @VectorLength(i32 %35)
  store float %36, float* %10, align 4
  %37 = load float, float* %10, align 4
  %38 = load float, float* %11, align 4
  %39 = fcmp olt float %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %27
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CONTENTS_SOLID, align 4
  %50 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @BotAI_Trace(%struct.TYPE_10__* %13, i32 %43, i32* null, i32* null, i32 %45, i32 %48, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %54 = load double, double* %53, align 8
  %55 = fcmp oge double %54, 1.000000e+00
  br i1 %55, label %56, label %60

56:                                               ; preds = %40
  %57 = load float, float* %10, align 4
  store float %57, float* %11, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = call i32 @memcpy(%struct.TYPE_12__* %58, %struct.TYPE_12__* %9, i32 8)
  br label %60

60:                                               ; preds = %56, %40
  br label %61

61:                                               ; preds = %60, %27
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %14, label %65

65:                                               ; preds = %62
  %66 = load float, float* %11, align 4
  ret float %66
}

declare dso_local i32 @trap_BotGetLevelItemGoal(i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @trap_BotGoalName(i32, i8*, i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_10__*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
