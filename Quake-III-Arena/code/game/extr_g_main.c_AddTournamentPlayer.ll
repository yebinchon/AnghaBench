; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_AddTournamentPlayer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_AddTournamentPlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64 }

@level = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@SPECTATOR_SCOREBOARD = common dso_local global i64 0, align 8
@g_entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddTournamentPlayer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 0), align 8
  %5 = icmp sge i32 %4, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %83

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 4), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %83

11:                                               ; preds = %7
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %66, %11
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 1), align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 3), align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %19
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %2, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CON_CONNECTED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %66

28:                                               ; preds = %16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TEAM_SPECTATOR, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %66

36:                                               ; preds = %28
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SPECTATOR_SCOREBOARD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %36
  br label %66

50:                                               ; preds = %43
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %57, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53, %50
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %3, align 8
  br label %65

65:                                               ; preds = %63, %53
  br label %66

66:                                               ; preds = %65, %49, %35, %27
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %12

69:                                               ; preds = %12
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = icmp ne %struct.TYPE_7__* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %83

73:                                               ; preds = %69
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 2), align 8
  %74 = load i32*, i32** @g_entities, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @level, i32 0, i32 3), align 8
  %77 = ptrtoint %struct.TYPE_7__* %75 to i64
  %78 = ptrtoint %struct.TYPE_7__* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 40
  %81 = getelementptr inbounds i32, i32* %74, i64 %80
  %82 = call i32 @SetTeam(i32* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %73, %72, %10, %6
  ret void
}

declare dso_local i32 @SetTeam(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
