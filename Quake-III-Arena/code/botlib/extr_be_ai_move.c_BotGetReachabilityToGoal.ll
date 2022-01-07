; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotGetReachabilityToGoal.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_move.c_BotGetReachabilityToGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_8__ = type { i32 }
%struct.bot_avoidspot_s = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@TFL_DONOTENTER = common dso_local global i32 0, align 4
@MOVERESULT_BLOCKEDBYAVOIDSPOT = common dso_local global i32 0, align 4
@AVOIDREACH_TRIES = common dso_local global i32 0, align 4
@MAX_AVOIDREACH = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@bot_developer = common dso_local global i64 0, align 8
@botimport = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotGetReachabilityToGoal(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, float* %5, i32* %6, %struct.TYPE_8__* %7, i32 %8, i32 %9, %struct.bot_avoidspot_s* %10, i32 %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_8__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.bot_avoidspot_s*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32* %4, i32** %19, align 8
  store float* %5, float** %20, align 8
  store i32* %6, i32** %21, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store %struct.bot_avoidspot_s* %10, %struct.bot_avoidspot_s** %25, align 8
  store i32 %11, i32* %26, align 4
  store i32* %12, i32** %27, align 8
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %13
  store i32 0, i32* %14, align 4
  br label %131

37:                                               ; preds = %13
  %38 = load i32, i32* %16, align 4
  %39 = call i64 @AAS_AreaDoNotEnter(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @AAS_AreaDoNotEnter(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41, %37
  %48 = load i32, i32* @TFL_DONOTENTER, align 4
  %49 = load i32, i32* %23, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* @TFL_DONOTENTER, align 4
  %52 = load i32, i32* %24, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %24, align 4
  br label %54

54:                                               ; preds = %47, %41
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @AAS_NextAreaReachability(i32 %55, i32 0)
  store i32 %56, i32* %32, align 4
  br label %57

57:                                               ; preds = %125, %54
  %58 = load i32, i32* %32, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %129

60:                                               ; preds = %57
  %61 = load i32, i32* %32, align 4
  %62 = call i32 @AAS_ReachabilityFromNum(i32 %61, %struct.TYPE_9__* %33)
  %63 = load i32, i32* %17, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %18, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %125

74:                                               ; preds = %68, %60
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @BotValidTravel(i32 %75, %struct.TYPE_9__* %33, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %125

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %23, align 4
  %89 = call i32 @AAS_AreaTravelTimeToGoalArea(i32 %82, i32 %84, i32 %87, i32 %88)
  store i32 %89, i32* %29, align 4
  %90 = load i32, i32* %29, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %80
  br label %125

93:                                               ; preds = %80
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.bot_avoidspot_s*, %struct.bot_avoidspot_s** %25, align 8
  %96 = load i32, i32* %26, align 4
  %97 = call i64 @BotAvoidSpots(i32 %94, %struct.TYPE_9__* %33, %struct.bot_avoidspot_s* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load i32*, i32** %27, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* @MOVERESULT_BLOCKEDBYAVOIDSPOT, align 4
  %104 = load i32*, i32** %27, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %99
  br label %125

108:                                              ; preds = %93
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %29, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %29, align 4
  %115 = load i32, i32* %30, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load i32, i32* %29, align 4
  %119 = load i32, i32* %30, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117, %108
  %122 = load i32, i32* %29, align 4
  store i32 %122, i32* %30, align 4
  %123 = load i32, i32* %32, align 4
  store i32 %123, i32* %31, align 4
  br label %124

124:                                              ; preds = %121, %117
  br label %125

125:                                              ; preds = %124, %107, %92, %79, %73
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %32, align 4
  %128 = call i32 @AAS_NextAreaReachability(i32 %126, i32 %127)
  store i32 %128, i32* %32, align 4
  br label %57

129:                                              ; preds = %57
  %130 = load i32, i32* %31, align 4
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %129, %36
  %132 = load i32, i32* %14, align 4
  ret i32 %132
}

declare dso_local i64 @AAS_AreaDoNotEnter(i32) #1

declare dso_local i32 @AAS_NextAreaReachability(i32, i32) #1

declare dso_local i32 @AAS_ReachabilityFromNum(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @BotValidTravel(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @AAS_AreaTravelTimeToGoalArea(i32, i32, i32, i32) #1

declare dso_local i64 @BotAvoidSpots(i32, %struct.TYPE_9__*, %struct.bot_avoidspot_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
