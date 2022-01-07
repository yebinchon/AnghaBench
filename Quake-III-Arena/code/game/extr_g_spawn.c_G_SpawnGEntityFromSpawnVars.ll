; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_spawn.c_G_SpawnGEntityFromSpawnVars.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_spawn.c_G_SpawnGEntityFromSpawnVars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32** }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@G_SpawnGEntityFromSpawnVars.gametypeNames = internal global [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"ffa\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"tournament\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"team\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ctf\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"oneflag\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"obelisk\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"harvester\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"teamtournament\00", align 1
@level = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@g_gametype = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"notsingle\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@GT_TEAM = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"notteam\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"notfree\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"notq3a\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"gametype\00", align 1
@GT_FFA = common dso_local global i64 0, align 8
@GT_MAX_GAME_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_SpawnGEntityFromSpawnVars() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = call %struct.TYPE_14__* (...) @G_Spawn()
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %28, %0
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 8
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %7
  %12 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 1), align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 1), align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %27 = call i32 @G_ParseField(i32 %18, i32 %25, %struct.TYPE_14__* %26)
  br label %28

28:                                               ; preds = %11
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %7

31:                                               ; preds = %7
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_gametype, i32 0, i32 0), align 8
  %33 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32* %1)
  %37 = load i32, i32* %1, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = call i32 @G_FreeEntity(%struct.TYPE_14__* %40)
  br label %121

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_gametype, i32 0, i32 0), align 8
  %45 = load i64, i64* @GT_TEAM, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32* %1)
  %49 = load i32, i32* %1, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = call i32 @G_FreeEntity(%struct.TYPE_14__* %52)
  br label %121

54:                                               ; preds = %47
  br label %63

55:                                               ; preds = %43
  %56 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32* %1)
  %57 = load i32, i32* %1, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = call i32 @G_FreeEntity(%struct.TYPE_14__* %60)
  br label %121

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %54
  %64 = call i32 @G_SpawnInt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32* %1)
  %65 = load i32, i32* %1, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = call i32 @G_FreeEntity(%struct.TYPE_14__* %68)
  br label %121

70:                                               ; preds = %63
  %71 = call i64 @G_SpawnString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32* null, i8** %4)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %70
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_gametype, i32 0, i32 0), align 8
  %75 = load i64, i64* @GT_FFA, align 8
  %76 = icmp uge i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_gametype, i32 0, i32 0), align 8
  %79 = load i64, i64* @GT_MAX_GAME_TYPE, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @g_gametype, i32 0, i32 0), align 8
  %83 = getelementptr inbounds [9 x i8*], [9 x i8*]* @G_SpawnGEntityFromSpawnVars.gametypeNames, i64 0, i64 %82
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i8* @strstr(i8* %85, i8* %86)
  store i8* %87, i8** %3, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %81
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = call i32 @G_FreeEntity(%struct.TYPE_14__* %91)
  br label %121

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %77, %73
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @VectorCopy(i32 %99, i32 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @VectorCopy(i32 %109, i32 %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %116 = call i32 @G_CallSpawn(%struct.TYPE_14__* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %95
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %120 = call i32 @G_FreeEntity(%struct.TYPE_14__* %119)
  br label %121

121:                                              ; preds = %39, %51, %59, %67, %90, %118, %95
  ret void
}

declare dso_local %struct.TYPE_14__* @G_Spawn(...) #1

declare dso_local i32 @G_ParseField(i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @G_SpawnInt(i8*, i8*, i32*) #1

declare dso_local i32 @G_FreeEntity(%struct.TYPE_14__*) #1

declare dso_local i64 @G_SpawnString(i8*, i32*, i8**) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @G_CallSpawn(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
