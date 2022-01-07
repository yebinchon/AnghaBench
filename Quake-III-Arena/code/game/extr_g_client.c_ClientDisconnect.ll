; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_ClientDisconnect.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_client.c_ClientDisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i8*, %struct.TYPE_28__, %struct.TYPE_27__*, i32, %struct.TYPE_23__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i8**, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_19__ = type { i32, i32*, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_20__ = type { i64 }

@g_entities = common dso_local global %struct.TYPE_29__* null, align 8
@level = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@SPECTATOR_FOLLOW = common dso_local global i64 0, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@EV_PLAYER_TELEPORT_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ClientDisconnect: %i\0A\00", align 1
@g_gametype = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@CON_DISCONNECTED = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i8* null, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@CS_PLAYERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVF_BOT = common dso_local global i32 0, align 4
@GT_HARVESTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClientDisconnect(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @G_RemoveQueuedBotBegin(i32 %6)
  %8 = load %struct.TYPE_29__*, %struct.TYPE_29__** @g_entities, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %8, i64 %10
  store %struct.TYPE_29__* %11, %struct.TYPE_29__** %3, align 8
  %12 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %15 = icmp ne %struct.TYPE_27__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %181

17:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %59, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 0), align 8
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 2), align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TEAM_SPECTATOR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %22
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 2), align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPECTATOR_FOLLOW, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %32
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 2), align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** @g_entities, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i64 %55
  %57 = call i32 @StopFollowing(%struct.TYPE_29__* %56)
  br label %58

58:                                               ; preds = %52, %42, %32, %22
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %18

62:                                               ; preds = %18
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @CON_CONNECTED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %62
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TEAM_SPECTATOR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %71
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @EV_PLAYER_TELEPORT_OUT, align 4
  %88 = call %struct.TYPE_29__* @G_TempEntity(i32 %86, i32 %87)
  store %struct.TYPE_29__* %88, %struct.TYPE_29__** %4, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %97 = call i32 @TossClientItems(%struct.TYPE_29__* %96)
  br label %98

98:                                               ; preds = %80, %71, %62
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @g_gametype, i32 0, i32 0), align 8
  %102 = load i64, i64* @GT_TOURNAMENT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %98
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 4), align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %132, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 3), align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %132, label %110

110:                                              ; preds = %107
  %111 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 1), align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %2, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 2), align 8
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 1), align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @level, i32 0, i32 1), align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = call i32 @ClientUserinfoChanged(i64 %130)
  br label %132

132:                                              ; preds = %116, %110, %107, %104, %98
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %134 = call i32 @trap_UnlinkEntity(%struct.TYPE_29__* %133)
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* @qfalse, align 4
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %142, align 8
  %143 = load i64, i64* @CON_DISCONNECTED, align 8
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  store i64 %143, i64* %148, align 8
  %149 = load i8*, i8** @TEAM_FREE, align 8
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  %155 = load i8**, i8*** %154, align 8
  %156 = load i64, i64* @PERS_TEAM, align 8
  %157 = getelementptr inbounds i8*, i8** %155, i64 %156
  store i8* %149, i8** %157, align 8
  %158 = load i8*, i8** @TEAM_FREE, align 8
  %159 = ptrtoint i8* %158 to i64
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  store i64 %159, i64* %164, align 8
  %165 = load i32, i32* @CS_PLAYERS, align 4
  %166 = load i32, i32* %2, align 4
  %167 = add nsw i32 %165, %166
  %168 = call i32 @trap_SetConfigstring(i32 %167, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %169 = call i32 (...) @CalculateRanks()
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @SVF_BOT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %132
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* @qfalse, align 4
  %180 = call i32 @BotAIShutdownClient(i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %16, %177, %132
  ret void
}

declare dso_local i32 @G_RemoveQueuedBotBegin(i32) #1

declare dso_local i32 @StopFollowing(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @G_TempEntity(i32, i32) #1

declare dso_local i32 @TossClientItems(%struct.TYPE_29__*) #1

declare dso_local i32 @G_LogPrintf(i8*, i32) #1

declare dso_local i32 @ClientUserinfoChanged(i64) #1

declare dso_local i32 @trap_UnlinkEntity(%struct.TYPE_29__*) #1

declare dso_local i32 @trap_SetConfigstring(i32, i8*) #1

declare dso_local i32 @CalculateRanks(...) #1

declare dso_local i32 @BotAIShutdownClient(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
