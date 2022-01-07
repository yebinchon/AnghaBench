; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotVisibleTeamMatesAndEnemies.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotVisibleTeamMatesAndEnemies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@maxclients = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotVisibleTeamMatesAndEnemies(%struct.TYPE_7__* %0, i32* %1, i32* %2, float %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store float %3, float* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %4
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %17
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %102, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @maxclients, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MAX_CLIENTS, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %105

33:                                               ; preds = %31
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %102

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @BotEntityInfo(i32 %41, %struct.TYPE_8__* %11)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %102

47:                                               ; preds = %40
  %48 = call i32 @EntityCarriesFlag(%struct.TYPE_8__* %11)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %102

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @VectorSubtract(i32 %53, i32 %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @VectorLengthSquared(i32 %59)
  %61 = load float, float* %8, align 4
  %62 = call i64 @Square(float %61)
  %63 = icmp sgt i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %102

65:                                               ; preds = %51
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call float @BotEntityVisible(i32 %68, i32 %71, i32 %74, i32 360, i32 %75)
  store float %76, float* %10, align 4
  %77 = load float, float* %10, align 4
  %78 = fcmp ole float %77, 0.000000e+00
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %102

80:                                               ; preds = %65
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @BotSameTeam(%struct.TYPE_7__* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32*, i32** %6, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %88, %85
  br label %101

93:                                               ; preds = %80
  %94 = load i32*, i32** %7, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %96, %93
  br label %101

101:                                              ; preds = %100, %92
  br label %102

102:                                              ; preds = %101, %79, %64, %50, %46, %39
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %23

105:                                              ; preds = %31
  ret void
}

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @EntityCarriesFlag(%struct.TYPE_8__*) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i64 @VectorLengthSquared(i32) #1

declare dso_local i64 @Square(float) #1

declare dso_local float @BotEntityVisible(i32, i32, i32, i32, i32) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
