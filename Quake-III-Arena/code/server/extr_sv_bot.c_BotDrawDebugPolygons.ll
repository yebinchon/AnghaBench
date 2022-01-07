; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_bot.c_BotDrawDebugPolygons.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_bot.c_BotDrawDebugPolygons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_18__ = type { i32 (i32, i32*, i32, i32)*, i32 (i8*, i32)* }

@BotDrawDebugPolygons.bot_debug = internal global %struct.TYPE_15__* null, align 8
@BotDrawDebugPolygons.bot_groundonly = internal global %struct.TYPE_15__* null, align 8
@BotDrawDebugPolygons.bot_reachability = internal global %struct.TYPE_15__* null, align 8
@BotDrawDebugPolygons.bot_highlightarea = internal global %struct.TYPE_15__* null, align 8
@debugpolygons = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"bot_debug\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@bot_enable = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"bot_reachability\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bot_groundonly\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"bot_highlightarea\00", align 1
@svs = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@BUTTON_ATTACK = common dso_local global i32 0, align 4
@botlib_export = common dso_local global %struct.TYPE_18__* null, align 8
@bot_maxdebugpolys = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotDrawDebugPolygons(void (i32, i32, float*)* %0, i32 %1) #0 {
  %3 = alloca void (i32, i32, float*)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store void (i32, i32, float*)* %0, void (i32, i32, float*)** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** @debugpolygons, align 8
  %9 = icmp ne %struct.TYPE_16__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %124

11:                                               ; preds = %2
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_debug, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = call %struct.TYPE_15__* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_debug, align 8
  br label %16

16:                                               ; preds = %14, %11
  %17 = load i64, i64* @bot_enable, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %94

19:                                               ; preds = %16
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_debug, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %94

24:                                               ; preds = %19
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_reachability, align 8
  %26 = icmp ne %struct.TYPE_15__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call %struct.TYPE_15__* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_reachability, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_groundonly, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call %struct.TYPE_15__* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_groundonly, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_highlightarea, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = call %struct.TYPE_15__* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_highlightarea, align 8
  br label %39

39:                                               ; preds = %37, %34
  store i32 0, i32* %7, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @svs, i32 0, i32 0), align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @BUTTON_ATTACK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %39
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_reachability, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, 2
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_groundonly, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** @botlib_export, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i32 (i8*, i32)*, i32 (i8*, i32)** %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** @BotDrawDebugPolygons.bot_highlightarea, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %70(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** @botlib_export, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @svs, i32 0, i32 0), align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @svs, i32 0, i32 0), align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 %77(i32 %78, i32* null, i32 %85, i32 %92)
  br label %94

94:                                               ; preds = %67, %19, %16
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %121, %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @bot_maxdebugpolys, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** @debugpolygons, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %102
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  br label %121

109:                                              ; preds = %99
  %110 = load void (i32, i32, float*)*, void (i32, i32, float*)** %3, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to float*
  call void %110(i32 %113, i32 %116, float* %120)
  br label %121

121:                                              ; preds = %109, %108
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %95

124:                                              ; preds = %10, %95
  ret void
}

declare dso_local %struct.TYPE_15__* @Cvar_Get(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
