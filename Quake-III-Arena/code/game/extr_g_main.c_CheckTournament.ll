; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_CheckTournament.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_CheckTournament.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i8* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }

@level = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@g_gametype = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GT_TOURNAMENT = common dso_local global i64 0, align 8
@CS_WARMUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Warmup:\0A\00", align 1
@g_warmup = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"g_restarted\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"map_restart 0\0A\00", align 1
@qtrue = common dso_local global i8* null, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@TEAM_NUM_TEAMS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i8* null, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckTournament() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %165

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_gametype, i32 0, i32 0), align 8
  %10 = load i64, i64* @GT_TOURNAMENT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @AddTournamentPlayer()
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %24 = load i32, i32* @CS_WARMUP, align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %26 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @trap_SetConfigstring(i32 %24, i32 %26)
  %28 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %23, %20
  br label %165

30:                                               ; preds = %17
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %165

34:                                               ; preds = %30
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 0), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 2), align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 0), align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 3), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 1), align 8
  %49 = sub nsw i32 %48, 1
  %50 = mul nsw i32 %49, 1000
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %52 = load i32, i32* @CS_WARMUP, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %54 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = call i32 @trap_SetConfigstring(i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %46, %43
  br label %165

57:                                               ; preds = %40
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 3), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %63 = add nsw i32 %62, 10000
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %64 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @EXEC_APPEND, align 4
  %66 = call i32 @trap_SendConsoleCommand(i32 %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i8*, i8** @qtrue, align 8
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 4), align 8
  br label %165

68:                                               ; preds = %57
  br label %165

69:                                               ; preds = %8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_gametype, i32 0, i32 0), align 8
  %71 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %164

73:                                               ; preds = %69
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %164

76:                                               ; preds = %73
  %77 = load i32, i32* @TEAM_NUM_TEAMS, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %1, align 8
  %80 = alloca i32, i64 %78, align 16
  store i64 %78, i64* %2, align 8
  %81 = load i8*, i8** @qfalse, align 8
  store i8* %81, i8** %3, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_gametype, i32 0, i32 0), align 8
  %83 = load i64, i64* @GT_TEAM, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %76
  %86 = load i64, i64* @TEAM_BLUE, align 8
  %87 = call i32 @TeamCount(i32 -1, i64 %86)
  %88 = load i64, i64* @TEAM_BLUE, align 8
  %89 = getelementptr inbounds i32, i32* %80, i64 %88
  store i32 %87, i32* %89, align 4
  %90 = load i64, i64* @TEAM_RED, align 8
  %91 = call i32 @TeamCount(i32 -1, i64 %90)
  %92 = load i64, i64* @TEAM_RED, align 8
  %93 = getelementptr inbounds i32, i32* %80, i64 %92
  store i32 %91, i32* %93, align 4
  %94 = load i64, i64* @TEAM_RED, align 8
  %95 = getelementptr inbounds i32, i32* %80, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %103, label %98

98:                                               ; preds = %85
  %99 = load i64, i64* @TEAM_BLUE, align 8
  %100 = getelementptr inbounds i32, i32* %80, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %98, %85
  %104 = load i8*, i8** @qtrue, align 8
  store i8* %104, i8** %3, align 8
  br label %105

105:                                              ; preds = %103, %98
  br label %112

106:                                              ; preds = %76
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 0), align 8
  %108 = icmp slt i32 %107, 2
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i8*, i8** @qtrue, align 8
  store i8* %110, i8** %3, align 8
  br label %111

111:                                              ; preds = %109, %106
  br label %112

112:                                              ; preds = %111, %105
  %113 = load i8*, i8** %3, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %117 = icmp ne i32 %116, -1
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %119 = load i32, i32* @CS_WARMUP, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %121 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = call i32 @trap_SetConfigstring(i32 %119, i32 %121)
  %123 = call i32 @G_LogPrintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %124

124:                                              ; preds = %118, %115
  store i32 1, i32* %4, align 4
  br label %160

125:                                              ; preds = %112
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 1, i32* %4, align 4
  br label %160

129:                                              ; preds = %125
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 0), align 8
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 2), align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 0), align 8
  store i64 %134, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 2), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  br label %135

135:                                              ; preds = %133, %129
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %135
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 3), align 8
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_warmup, i32 0, i32 1), align 8
  %141 = sub nsw i32 %140, 1
  %142 = mul nsw i32 %141, 1000
  %143 = add nsw i32 %139, %142
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %144 = load i32, i32* @CS_WARMUP, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %146 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %145)
  %147 = call i32 @trap_SetConfigstring(i32 %144, i32 %146)
  store i32 1, i32* %4, align 4
  br label %160

148:                                              ; preds = %135
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 3), align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %154 = add nsw i32 %153, 10000
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 1), align 4
  %155 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %156 = load i32, i32* @EXEC_APPEND, align 4
  %157 = call i32 @trap_SendConsoleCommand(i32 %156, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %158 = load i8*, i8** @qtrue, align 8
  store i8* %158, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @level, i32 0, i32 4), align 8
  store i32 1, i32* %4, align 4
  br label %160

159:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %159, %152, %138, %128, %124
  %161 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %4, align 4
  switch i32 %162, label %166 [
    i32 0, label %163
    i32 1, label %165
  ]

163:                                              ; preds = %160
  br label %164

164:                                              ; preds = %163, %73, %69
  br label %165

165:                                              ; preds = %7, %29, %33, %56, %61, %160, %164, %68
  ret void

166:                                              ; preds = %160
  unreachable
}

declare dso_local i32 @AddTournamentPlayer(...) #1

declare dso_local i32 @trap_SetConfigstring(i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @G_LogPrintf(i8*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @trap_SendConsoleCommand(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @TeamCount(i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
