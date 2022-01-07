; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_Start.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_startserver.c_ServerOptions_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8**, i32, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_29__, %struct.TYPE_27__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32* }

@s_serveroptions = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@PLAYER_SLOTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ui_ffa_fraglimit\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ui_ffa_timelimit\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ui_tourney_fraglimit\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ui_tourney_timelimit\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ui_team_fraglimit\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ui_team_timelimit\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ui_team_friendlt\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ui_ctf_fraglimit\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ui_ctf_timelimit\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"ui_ctf_friendlt\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"timelimit\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"fraglimit\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"capturelimit\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"g_friendlyfire\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"sv_pure\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"sv_hostname\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"sv_punkbuster\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"wait ; wait ; map %s\0A\00", align 1
@s_startserver = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"wait 3\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"addbot %s %i %s\0A\00", align 1
@playerTeam_list = common dso_local global i32* null, align 8
@.str.22 = private unnamed_addr constant [14 x i8] c"addbot %s %i\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"wait 5; team %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ServerOptions_Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ServerOptions_Start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 12, i32 0, i32 0), align 8
  %12 = call i32 @atoi(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 11, i32 0, i32 0), align 4
  %14 = call i32 @atoi(i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 10, i32 0, i32 0), align 8
  %16 = call i32 @atoi(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 9, i32 0), align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 8, i32 0), align 8
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 7, i32 0), align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 6, i32 0), align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %57, %0
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PLAYER_SLOTS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 3), align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %57

35:                                               ; preds = %26
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 3), align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %54

43:                                               ; preds = %35
  %44 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %57

54:                                               ; preds = %43, %35
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %53, %34
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %22

60:                                               ; preds = %22
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 1), align 8
  switch i32 %61, label %63 [
    i32 130, label %62
    i32 128, label %68
    i32 129, label %73
    i32 131, label %80
  ]

62:                                               ; preds = %60
  br label %63

63:                                               ; preds = %60, %62
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %87

68:                                               ; preds = %60
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %87

73:                                               ; preds = %60
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %1, align 4
  %77 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  br label %87

80:                                               ; preds = %60
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %1, align 4
  %84 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %73, %68, %63
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @Com_Clamp(i32 0, i32 12, i32 %88)
  %90 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @Com_Clamp(i32 0, i32 2, i32 %91)
  %93 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* %1, align 4
  %96 = call i32 @Com_Clamp(i32 0, i32 %94, i32 %95)
  %97 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %2, align 4
  %99 = load i32, i32* %2, align 4
  %100 = call i32 @Com_Clamp(i32 0, i32 %98, i32 %99)
  %101 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @Com_Clamp(i32 0, i32 %102, i32 %103)
  %105 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 5, i32 0, i32 0), align 4
  %111 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 4, i32 0), align 8
  %113 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @EXEC_APPEND, align 4
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @s_startserver, i32 0, i32 1), align 8
  %116 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @s_startserver, i32 0, i32 0), align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @va(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %118)
  %120 = call i32 @trap_Cmd_ExecuteText(i32 %114, i8* %119)
  %121 = load i32, i32* @EXEC_APPEND, align 4
  %122 = call i32 @trap_Cmd_ExecuteText(i32 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %123

123:                                              ; preds = %192, %87
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @PLAYER_SLOTS, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %195

127:                                              ; preds = %123
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 3), align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 1
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %192

136:                                              ; preds = %127
  %137 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %136
  br label %192

147:                                              ; preds = %136
  %148 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 45
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %192

158:                                              ; preds = %147
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 1), align 8
  %160 = icmp sge i32 %159, 129
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %163 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32*, i32** @playerTeam_list, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 2), align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %169, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, i32, i8*, i8*, i32, ...) @Com_sprintf(i8* %162, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* %167, i32 %168, i32 %177)
  br label %188

179:                                              ; preds = %158
  %180 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %181 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 0), align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  %185 = load i8*, i8** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 (i8*, i32, i8*, i8*, i32, ...) @Com_sprintf(i8* %180, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %161
  %189 = load i32, i32* @EXEC_APPEND, align 4
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %191 = call i32 @trap_Cmd_ExecuteText(i32 %189, i8* %190)
  br label %192

192:                                              ; preds = %188, %157, %146, %135
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %123

195:                                              ; preds = %123
  %196 = load i32, i32* %4, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %195
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 1), align 8
  %200 = icmp sge i32 %199, 129
  br i1 %200, label %201, label %212

201:                                              ; preds = %198
  %202 = load i32, i32* @EXEC_APPEND, align 4
  %203 = load i32*, i32** @playerTeam_list, align 8
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @s_serveroptions, i32 0, i32 2), align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i32, i32* %203, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @va(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 %209)
  %211 = call i32 @trap_Cmd_ExecuteText(i32 %202, i8* %210)
  br label %212

212:                                              ; preds = %201, %198, %195
  ret void
}

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @Com_Clamp(i32, i32, i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
