; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_Follow_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_cmds.c_Cmd_Follow_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@SPECTATOR_FOLLOW = common dso_local global i64 0, align 8
@level = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@g_gametype = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"spectator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cmd_Follow_f(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %7 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = call i32 (...) @trap_Argc()
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPECTATOR_FOLLOW, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = call i32 @StopFollowing(%struct.TYPE_12__* %23)
  br label %25

25:                                               ; preds = %22, %13
  store i32 1, i32* %6, align 4
  br label %101

26:                                               ; preds = %1
  %27 = trunc i64 %8 to i32
  %28 = call i32 @trap_Argv(i32 1, i8* %10, i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = call i32 @ClientNumberFromString(%struct.TYPE_12__* %29, i8* %10)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %101

34:                                               ; preds = %26
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = icmp eq %struct.TYPE_11__* %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  br label %101

44:                                               ; preds = %34
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @level, i32 0, i32 0), align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TEAM_SPECTATOR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  store i32 1, i32* %6, align 4
  br label %101

55:                                               ; preds = %44
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @g_gametype, i32 0, i32 0), align 8
  %57 = load i64, i64* @GT_TOURNAMENT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TEAM_FREE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %68, %59, %55
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TEAM_SPECTATOR, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %87 = call i32 @SetTeam(%struct.TYPE_12__* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %76
  %89 = load i64, i64* @SPECTATOR_FOLLOW, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i64 %89, i64* %94, align 8
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i32 %95, i32* %100, align 8
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %88, %54, %43, %33, %25
  %102 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %6, align 4
  switch i32 %103, label %105 [
    i32 0, label %104
    i32 1, label %104
  ]

104:                                              ; preds = %101, %101
  ret void

105:                                              ; preds = %101
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @StopFollowing(%struct.TYPE_12__*) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @ClientNumberFromString(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @SetTeam(%struct.TYPE_12__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
