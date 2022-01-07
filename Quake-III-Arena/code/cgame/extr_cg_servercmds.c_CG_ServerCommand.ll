; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_servercmds.c_CG_ServerCommand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_servercmds.c_CG_ServerCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_SAY_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@SCREEN_HEIGHT = common dso_local global double 0.000000e+00, align 8
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cs\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"chat\00", align 1
@cg_teamChatsOnly = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@cgs = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@CHAN_LOCAL_SOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"tchat\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"vchat\00", align 1
@SAY_ALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"vtchat\00", align 1
@SAY_TEAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"vtell\00", align 1
@SAY_TELL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"scores\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"tinfo\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"map_restart\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"remapShader\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"loaddefered\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"clientLevelShot\00", align 1
@qtrue = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"Unknown client game command: %s\0A\00", align 1
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_ServerCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ServerCommand() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_SAY_TEXT, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = call i8* @CG_Argv(i32 0)
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  br label %136

15:                                               ; preds = %0
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = call i8* @CG_Argv(i32 1)
  %21 = load double, double* @SCREEN_HEIGHT, align 8
  %22 = fmul double %21, 3.000000e-01
  %23 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %24 = call i32 @CG_CenterPrint(i8* %20, double %22, i32 %23)
  store i32 1, i32* %4, align 4
  br label %136

25:                                               ; preds = %15
  %26 = load i8*, i8** %1, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 (...) @CG_ConfigStringModified()
  store i32 1, i32* %4, align 4
  br label %136

31:                                               ; preds = %25
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = call i8* @CG_Argv(i32 1)
  %37 = call i32 @CG_Printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  store i32 1, i32* %4, align 4
  br label %136

38:                                               ; preds = %31
  %39 = load i8*, i8** %1, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cg_teamChatsOnly, i32 0, i32 0), align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 0), align 4
  %47 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %48 = call i32 @trap_S_StartLocalSound(i32 %46, i32 %47)
  %49 = call i8* @CG_Argv(i32 1)
  %50 = load i32, i32* @MAX_SAY_TEXT, align 4
  %51 = call i32 @Q_strncpyz(i8* %8, i8* %49, i32 %50)
  %52 = call i32 @CG_RemoveChatEscapeChar(i8* %8)
  %53 = call i32 @CG_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %8)
  br label %54

54:                                               ; preds = %45, %42
  store i32 1, i32* %4, align 4
  br label %136

55:                                               ; preds = %38
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgs, i32 0, i32 0, i32 0), align 4
  %61 = load i32, i32* @CHAN_LOCAL_SOUND, align 4
  %62 = call i32 @trap_S_StartLocalSound(i32 %60, i32 %61)
  %63 = call i8* @CG_Argv(i32 1)
  %64 = load i32, i32* @MAX_SAY_TEXT, align 4
  %65 = call i32 @Q_strncpyz(i8* %8, i8* %63, i32 %64)
  %66 = call i32 @CG_RemoveChatEscapeChar(i8* %8)
  %67 = call i32 @CG_AddToTeamChat(i8* %8)
  %68 = call i32 @CG_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %8)
  store i32 1, i32* %4, align 4
  br label %136

69:                                               ; preds = %55
  %70 = load i8*, i8** %1, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @SAY_ALL, align 4
  %75 = call i32 @CG_VoiceChat(i32 %74)
  store i32 1, i32* %4, align 4
  br label %136

76:                                               ; preds = %69
  %77 = load i8*, i8** %1, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @SAY_TEAM, align 4
  %82 = call i32 @CG_VoiceChat(i32 %81)
  store i32 1, i32* %4, align 4
  br label %136

83:                                               ; preds = %76
  %84 = load i8*, i8** %1, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* @SAY_TELL, align 4
  %89 = call i32 @CG_VoiceChat(i32 %88)
  store i32 1, i32* %4, align 4
  br label %136

90:                                               ; preds = %83
  %91 = load i8*, i8** %1, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = call i32 (...) @CG_ParseScores()
  store i32 1, i32* %4, align 4
  br label %136

96:                                               ; preds = %90
  %97 = load i8*, i8** %1, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  %101 = call i32 (...) @CG_ParseTeamInfo()
  store i32 1, i32* %4, align 4
  br label %136

102:                                              ; preds = %96
  %103 = load i8*, i8** %1, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = call i32 (...) @CG_MapRestart()
  store i32 1, i32* %4, align 4
  br label %136

108:                                              ; preds = %102
  %109 = load i8*, i8** %1, align 8
  %110 = call i64 @Q_stricmp(i8* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = call i32 (...) @trap_Argc()
  %114 = icmp eq i32 %113, 4
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = call i8* @CG_Argv(i32 1)
  %117 = call i8* @CG_Argv(i32 2)
  %118 = call i8* @CG_Argv(i32 3)
  %119 = call i32 @trap_R_RemapShader(i8* %116, i8* %117, i8* %118)
  br label %120

120:                                              ; preds = %115, %112
  br label %121

121:                                              ; preds = %120, %108
  %122 = load i8*, i8** %1, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = call i32 (...) @CG_LoadDeferredPlayers()
  store i32 1, i32* %4, align 4
  br label %136

127:                                              ; preds = %121
  %128 = load i8*, i8** %1, align 8
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* @qtrue, align 4
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 4
  store i32 1, i32* %4, align 4
  br label %136

133:                                              ; preds = %127
  %134 = load i8*, i8** %1, align 8
  %135 = call i32 @CG_Printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %134)
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %133, %131, %125, %106, %100, %94, %87, %80, %73, %59, %54, %35, %29, %19, %14
  %137 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %4, align 4
  switch i32 %138, label %140 [
    i32 0, label %139
    i32 1, label %139
  ]

139:                                              ; preds = %136, %136
  ret void

140:                                              ; preds = %136
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @CG_Argv(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @CG_CenterPrint(i8*, double, i32) #2

declare dso_local i32 @CG_ConfigStringModified(...) #2

declare dso_local i32 @CG_Printf(i8*, i8*) #2

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @CG_RemoveChatEscapeChar(i8*) #2

declare dso_local i32 @CG_AddToTeamChat(i8*) #2

declare dso_local i32 @CG_VoiceChat(i32) #2

declare dso_local i32 @CG_ParseScores(...) #2

declare dso_local i32 @CG_ParseTeamInfo(...) #2

declare dso_local i32 @CG_MapRestart(...) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @trap_Argc(...) #2

declare dso_local i32 @trap_R_RemapShader(i8*, i8*, i8*) #2

declare dso_local i32 @CG_LoadDeferredPlayers(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
