; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_CheckMinimumPlayers.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_CheckMinimumPlayers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@G_CheckMinimumPlayers.checkminimumplayers_time = internal global i32 0, align 4
@level = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@bot_minplayers = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@g_gametype = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@g_maxclients = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@TEAM_RED = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i32 0, align 4
@TEAM_SPECTATOR = common dso_local global i32 0, align 4
@GT_FFA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_CheckMinimumPlayers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @level, i32 0, i32 1), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %166

7:                                                ; preds = %0
  %8 = load i32, i32* @G_CheckMinimumPlayers.checkminimumplayers_time, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @level, i32 0, i32 0), align 8
  %10 = sub nsw i32 %9, 10000
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %166

13:                                               ; preds = %7
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @level, i32 0, i32 0), align 8
  store i32 %14, i32* @G_CheckMinimumPlayers.checkminimumplayers_time, align 4
  %15 = call i32 @trap_Cvar_Update(%struct.TYPE_6__* @bot_minplayers)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bot_minplayers, i32 0, i32 0), align 4
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %166

20:                                               ; preds = %13
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_gametype, i32 0, i32 0), align 8
  %22 = load i64, i64* @GT_TEAM, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %86

24:                                               ; preds = %20
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_maxclients, i32 0, i32 0), align 4
  %27 = sdiv i32 %26, 2
  %28 = icmp sge i32 %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_maxclients, i32 0, i32 0), align 4
  %31 = sdiv i32 %30, 2
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* @TEAM_RED, align 4
  %35 = call i32 @G_CountHumanPlayers(i32 %34)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* @TEAM_RED, align 4
  %37 = call i32 @G_CountBotPlayers(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %1, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @TEAM_RED, align 4
  %45 = call i32 @G_AddRandomBot(i32 %44)
  br label %59

46:                                               ; preds = %33
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %1, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @TEAM_RED, align 4
  %57 = call i32 @G_RemoveRandomBot(i32 %56)
  br label %58

58:                                               ; preds = %55, %52, %46
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i32, i32* @TEAM_BLUE, align 4
  %61 = call i32 @G_CountHumanPlayers(i32 %60)
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* @TEAM_BLUE, align 4
  %63 = call i32 @G_CountBotPlayers(i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @TEAM_BLUE, align 4
  %71 = call i32 @G_AddRandomBot(i32 %70)
  br label %85

72:                                               ; preds = %59
  %73 = load i32, i32* %2, align 4
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %1, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* %3, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @TEAM_BLUE, align 4
  %83 = call i32 @G_RemoveRandomBot(i32 %82)
  br label %84

84:                                               ; preds = %81, %78, %72
  br label %85

85:                                               ; preds = %84, %69
  br label %166

86:                                               ; preds = %20
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_gametype, i32 0, i32 0), align 8
  %88 = load i64, i64* @GT_TOURNAMENT, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %86
  %91 = load i32, i32* %1, align 4
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_maxclients, i32 0, i32 0), align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_maxclients, i32 0, i32 0), align 4
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  br label %97

97:                                               ; preds = %94, %90
  %98 = call i32 @G_CountHumanPlayers(i32 -1)
  store i32 %98, i32* %2, align 4
  %99 = call i32 @G_CountBotPlayers(i32 -1)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %1, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %97
  %106 = load i32, i32* @TEAM_FREE, align 4
  %107 = call i32 @G_AddRandomBot(i32 %106)
  br label %125

108:                                              ; preds = %97
  %109 = load i32, i32* %2, align 4
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %1, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load i32, i32* %3, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i32, i32* @TEAM_SPECTATOR, align 4
  %119 = call i32 @G_RemoveRandomBot(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = call i32 @G_RemoveRandomBot(i32 -1)
  br label %123

123:                                              ; preds = %121, %117
  br label %124

124:                                              ; preds = %123, %114, %108
  br label %125

125:                                              ; preds = %124, %105
  br label %165

126:                                              ; preds = %86
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @g_gametype, i32 0, i32 0), align 8
  %128 = load i64, i64* @GT_FFA, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %164

130:                                              ; preds = %126
  %131 = load i32, i32* %1, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_maxclients, i32 0, i32 0), align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @g_maxclients, i32 0, i32 0), align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %1, align 4
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32, i32* @TEAM_FREE, align 4
  %139 = call i32 @G_CountHumanPlayers(i32 %138)
  store i32 %139, i32* %2, align 4
  %140 = load i32, i32* @TEAM_FREE, align 4
  %141 = call i32 @G_CountBotPlayers(i32 %140)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* %3, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %1, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %137
  %148 = load i32, i32* @TEAM_FREE, align 4
  %149 = call i32 @G_AddRandomBot(i32 %148)
  br label %163

150:                                              ; preds = %137
  %151 = load i32, i32* %2, align 4
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %151, %152
  %154 = load i32, i32* %1, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* %3, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* @TEAM_FREE, align 4
  %161 = call i32 @G_RemoveRandomBot(i32 %160)
  br label %162

162:                                              ; preds = %159, %156, %150
  br label %163

163:                                              ; preds = %162, %147
  br label %164

164:                                              ; preds = %163, %126
  br label %165

165:                                              ; preds = %164, %125
  br label %166

166:                                              ; preds = %6, %12, %19, %165, %85
  ret void
}

declare dso_local i32 @trap_Cvar_Update(%struct.TYPE_6__*) #1

declare dso_local i32 @G_CountHumanPlayers(i32) #1

declare dso_local i32 @G_CountBotPlayers(i32) #1

declare dso_local i32 @G_AddRandomBot(i32) #1

declare dso_local i32 @G_RemoveRandomBot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
