; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotAIPredictObstacles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotAIPredictObstacles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }

@bot_predictobstacles = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@qfalse = common dso_local global i32 0, align 4
@RSE_USETRAVELTYPE = common dso_local global i32 0, align 4
@RSE_ENTERCONTENTS = common dso_local global i32 0, align 4
@AREACONTENTS_MOVER = common dso_local global i32 0, align 4
@TFL_BRIDGE = common dso_local global i32 0, align 4
@AREACONTENTS_MODELNUM = common dso_local global i32 0, align 4
@AREACONTENTS_MODELNUMSHIFT = common dso_local global i32 0, align 4
@ET_MOVER = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotAIPredictObstacles(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__, align 4
  %10 = alloca %struct.TYPE_22__, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @bot_predictobstacles, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @qfalse, align 4
  store i32 %14, i32* %3, align 4
  br label %142

15:                                               ; preds = %2
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (...) @FloatTime()
  %28 = sub nsw i32 %27, 6
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @qfalse, align 4
  store i32 %31, i32* %3, align 4
  br label %142

32:                                               ; preds = %23, %15
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = call i32 (...) @FloatTime()
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RSE_USETRAVELTYPE, align 4
  %54 = load i32, i32* @RSE_ENTERCONTENTS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AREACONTENTS_MOVER, align 4
  %57 = load i32, i32* @TFL_BRIDGE, align 4
  %58 = call i32 @trap_AAS_PredictRoute(%struct.TYPE_22__* %10, i32 %43, i32 %46, i32 %49, i32 %52, i32 100, i32 1000, i32 %55, i32 %56, i32 %57, i32 0)
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RSE_ENTERCONTENTS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %125

64:                                               ; preds = %32
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AREACONTENTS_MOVER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %124

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AREACONTENTS_MODELNUM, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @AREACONTENTS_MODELNUMSHIFT, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @ET_MOVER, align 4
  %82 = call i32 @BotModelMinsMaxs(i32 %80, i32 %81, i32 0, i32* null, i32* null)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %79
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @BotGetActivateGoal(%struct.TYPE_19__* %86, i32 %87, %struct.TYPE_21__* %9)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %85
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = icmp ne %struct.TYPE_17__* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %96
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %105, align 8
  br label %106

106:                                              ; preds = %103, %96, %91
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @BotIsGoingToActivateEntity(%struct.TYPE_19__* %107, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %106
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %115 = call i32 @BotGoForActivateGoal(%struct.TYPE_19__* %114, %struct.TYPE_21__* %9)
  %116 = load i32, i32* @qtrue, align 4
  store i32 %116, i32* %3, align 4
  br label %142

117:                                              ; preds = %106
  %118 = load i32, i32* @qtrue, align 4
  %119 = call i32 @BotEnableActivateGoalAreas(%struct.TYPE_21__* %9, i32 %118)
  br label %120

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %120, %85
  br label %122

122:                                              ; preds = %121, %79
  br label %123

123:                                              ; preds = %122, %70
  br label %124

124:                                              ; preds = %123, %64
  br label %140

125:                                              ; preds = %32
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @RSE_USETRAVELTYPE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @TFL_BRIDGE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %131
  br label %139

139:                                              ; preds = %138, %125
  br label %140

140:                                              ; preds = %139, %124
  %141 = load i32, i32* @qfalse, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %113, %30, %13
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @FloatTime(...) #1

declare dso_local i32 @trap_AAS_PredictRoute(%struct.TYPE_22__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BotModelMinsMaxs(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @BotGetActivateGoal(%struct.TYPE_19__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @BotIsGoingToActivateEntity(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @BotGoForActivateGoal(%struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @BotEnableActivateGoalAreas(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
