; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotInitLibrary.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotInitLibrary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"maxclients\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@MAX_GENTITIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"maxentities\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"sv_mapChecksum\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"max_aaslinks\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"max_levelitems\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"bot_developer\00", align 1
@bot_developer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"bot_nochat\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"nochat\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"bot_visualizejumppads\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"bot_forceclustering\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"forceclustering\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"bot_forcereachability\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"forcereachability\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"bot_forcewrite\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"forcewrite\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"bot_aasoptimize\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"aasoptimize\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"bot_saveroutingcache\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"saveroutingcache\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"bot_reloadcharacters\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"fs_basepath\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"basedir\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"fs_game\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"gamedir\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"fs_cdpath\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"cddir\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotInitLibrary() #0 {
  %1 = alloca [144 x i8], align 16
  %2 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %3 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %2, i32 144)
  %4 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %5 = call i64 @strlen(i8* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %9 = call i32 @strcpy(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %0
  %11 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %12 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %14 = load i32, i32* @MAX_GENTITIES, align 4
  %15 = call i32 @Com_sprintf(i8* %13, i32 144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %17 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %19 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %18, i32 144)
  %20 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %21 = call i64 @strlen(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %25 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %10
  %27 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %28 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %27, i32 144)
  %29 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %30 = call i64 @strlen(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %34 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %26
  %36 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %37 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %36, i32 144)
  %38 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %39 = call i64 @strlen(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %43 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %46 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %45, i32 144)
  %47 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %48 = call i64 @strlen(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %44
  %54 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %55 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %54)
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @bot_developer, i32 0, i32 0), align 8
  %57 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %56)
  %58 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %59 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %58)
  %60 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %61 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %60, i32 144)
  %62 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %63 = call i64 @strlen(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %53
  %68 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %69 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %68, i32 144)
  %70 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %71 = call i64 @strlen(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %75 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %78 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %77, i32 144)
  %79 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %80 = call i64 @strlen(i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %84 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %82, %76
  %86 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %87 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %86, i32 144)
  %88 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %89 = call i64 @strlen(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %93 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %96 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %95, i32 144)
  %97 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %98 = call i64 @strlen(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %102 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %100, %94
  %104 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %105 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %104, i32 144)
  %106 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %107 = call i64 @strlen(i8* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %111 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %109, %103
  %113 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %114 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %113, i32 144)
  %115 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %116 = call i64 @strlen(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %120 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118, %112
  %122 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %123 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %122, i32 144)
  %124 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %125 = call i64 @strlen(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %129 = call i32 @strcpy(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %121
  %131 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %132 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* %131)
  %133 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %134 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* %133, i32 144)
  %135 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %136 = call i64 @strlen(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %140 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %138, %130
  %142 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %143 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* %142, i32 144)
  %144 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %145 = call i64 @strlen(i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %149 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %147, %141
  %151 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %152 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8* %151, i32 144)
  %153 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %154 = call i64 @strlen(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = getelementptr inbounds [144 x i8], [144 x i8]* %1, i64 0, i64 0
  %158 = call i32 @trap_BotLibVarSet(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %156, %150
  %160 = call i32 (...) @trap_BotLibSetup()
  ret i32 %160
}

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @trap_BotLibVarSet(i8*, i8*) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @trap_BotLibSetup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
