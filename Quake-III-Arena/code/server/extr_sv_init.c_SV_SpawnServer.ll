; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_SpawnServer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_SpawnServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__*, i32, i64, i32 }
%struct.TYPE_20__ = type { i64, i32, i32, %struct.TYPE_19__*, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"------ Server Initialization ------\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Server: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"sv_running\00", align 1
@sv_maxclients = common dso_local global %struct.TYPE_23__* null, align 8
@svs = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8
@h_high = common dso_local global i32 0, align 4
@SNAPFLAG_SERVERCOUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"nextmap\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"map_restart 0\00", align 1
@MAX_CONFIGSTRINGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sv = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"cl_paused\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"maps/%s.bsp\00", align 1
@qfalse = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"sv_mapChecksum\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@com_frameTime = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"sv_serverid\00", align 1
@SS_LOADING = common dso_local global i32 0, align 4
@sv_gametype = common dso_local global %struct.TYPE_24__* null, align 8
@gvm = common dso_local global i32 0, align 4
@GAME_RUN_FRAME = common dso_local global i32 0, align 4
@CS_CONNECTED = common dso_local global i64 0, align 8
@NA_BOT = common dso_local global i64 0, align 8
@qtrue = common dso_local global i8* null, align 8
@GAME_CLIENT_CONNECT = common dso_local global i32 0, align 4
@CS_ACTIVE = common dso_local global i64 0, align 8
@GAME_CLIENT_BEGIN = common dso_local global i32 0, align 4
@sv_pure = common dso_local global %struct.TYPE_22__* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"sv_paks\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"WARNING: sv_pure set but no PK3 files loaded\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"sv_pakNames\00", align 1
@com_dedicated = common dso_local global %struct.TYPE_15__* null, align 8
@.str.16 = private unnamed_addr constant [18 x i8] c"sv_referencedPaks\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"sv_referencedPakNames\00", align 1
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@CS_SYSTEMINFO = common dso_local global i32 0, align 4
@CS_SERVERINFO = common dso_local global i32 0, align 4
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@SS_GAME = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"-----------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_SpawnServer(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [16384 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = call i32 (...) @SV_ShutdownGameProgs()
  %14 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = call i32 (...) @CL_MapLoading()
  %18 = call i32 (...) @CL_ShutdownAll()
  %19 = call i32 (...) @Hunk_Clear()
  %20 = call i32 (...) @CM_ClearMap()
  %21 = call i32 @Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call i32 (...) @SV_Startup()
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sv_maxclients, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (...) @SV_ChangeMaxClients()
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %32, %23
  %34 = call i32 @FS_ClearPakReferences(i32 0)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 0), align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @h_high, align 4
  %40 = call i32 @Hunk_Alloc(i32 %38, i32 %39)
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 4), align 8
  %41 = load i32, i32* @SNAPFLAG_SERVERCOUNT, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 3), align 8
  %43 = xor i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 3), align 8
  %44 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 (...) @SV_ClearServer()
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %56, %33
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = call i32 @CopyString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 5), align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %46

59:                                               ; preds = %46
  %60 = call i32 @Cvar_Set(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %61 = call i32 (...) @Com_Milliseconds()
  %62 = call i32 @srand(i32 %61)
  %63 = call i32 (...) @rand()
  %64 = shl i32 %63, 16
  %65 = call i32 (...) @rand()
  %66 = xor i32 %64, %65
  %67 = call i32 (...) @Com_Milliseconds()
  %68 = xor i32 %66, %67
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 0), align 8
  %70 = call i32 @FS_Restart(i32 %69)
  %71 = load i8*, i8** %3, align 8
  %72 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %71)
  %73 = load i8*, i8** @qfalse, align 8
  %74 = call i32 @CM_LoadMap(i8* %72, i8* %73, i32* %6)
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %77)
  %79 = call i32 @Cvar_Set(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @com_frameTime, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 1), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 1), align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 2), align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 1), align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 3), align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 1), align 4
  %84 = call i8* (i8*, ...) @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %83)
  %85 = call i32 @Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %84)
  %86 = call i32 (...) @SV_ClearWorld()
  %87 = load i32, i32* @SS_LOADING, align 4
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 4), align 8
  %88 = call i32 (...) @SV_InitGameProgs()
  %89 = load i8*, i8** @qfalse, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** @sv_gametype, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %104, %59
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* @gvm, align 4
  %97 = load i32, i32* @GAME_RUN_FRAME, align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %99 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %101 = call i32 @SV_BotFrame(i32 %100)
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %103 = add nsw i32 %102, 100
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %92

107:                                              ; preds = %92
  %108 = call i32 (...) @SV_CreateBaseline()
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %205, %107
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sv_maxclients, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %208

115:                                              ; preds = %109
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @CS_CONNECTED, align 8
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %204

124:                                              ; preds = %115
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @NA_BOT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %146

135:                                              ; preds = %124
  %136 = load i8*, i8** %4, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i64 %141
  %143 = call i32 @SV_DropClient(%struct.TYPE_20__* %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %205

144:                                              ; preds = %135
  %145 = load i8*, i8** @qtrue, align 8
  store i8* %145, i8** %7, align 8
  br label %148

146:                                              ; preds = %124
  %147 = load i8*, i8** @qfalse, align 8
  store i8* %147, i8** %7, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = load i32, i32* @gvm, align 4
  %150 = load i32, i32* @gvm, align 4
  %151 = load i32, i32* @GAME_CLIENT_CONNECT, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i8*, i8** @qfalse, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %150, i32 %151, i32 %152, i8* %153, i8* %154)
  %156 = call i8* @VM_ExplicitArgPtr(i32 %149, i32 %155)
  store i8* %156, i8** %10, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %166

159:                                              ; preds = %148
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i64 %162
  %164 = load i8*, i8** %10, align 8
  %165 = call i32 @SV_DropClient(%struct.TYPE_20__* %163, i8* %164)
  br label %203

166:                                              ; preds = %148
  %167 = load i8*, i8** %7, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %166
  %170 = load i64, i64* @CS_CONNECTED, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  store i64 %170, i64* %175, align 8
  br label %202

176:                                              ; preds = %166
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 2), align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i64 %179
  store %struct.TYPE_20__* %180, %struct.TYPE_20__** %11, align 8
  %181 = load i64, i64* @CS_ACTIVE, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call %struct.TYPE_19__* @SV_GentityNum(i32 %184)
  store %struct.TYPE_19__* %185, %struct.TYPE_19__** %12, align 8
  %186 = load i32, i32* %5, align 4
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  store i32 %186, i32* %189, align 4
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 3
  store %struct.TYPE_19__* %190, %struct.TYPE_19__** %192, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  store i32 -1, i32* %194, align 8
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* @gvm, align 4
  %199 = load i32, i32* @GAME_CLIENT_BEGIN, align 4
  %200 = load i32, i32* %5, align 4
  %201 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %198, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %176, %169
  br label %203

203:                                              ; preds = %202, %159
  br label %204

204:                                              ; preds = %203, %115
  br label %205

205:                                              ; preds = %204, %138
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %109

208:                                              ; preds = %109
  %209 = load i32, i32* @gvm, align 4
  %210 = load i32, i32* @GAME_RUN_FRAME, align 4
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %212 = call i32 (i32, i32, i32, ...) @VM_Call(i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %214 = call i32 @SV_BotFrame(i32 %213)
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %216 = add nsw i32 %215, 100
  store i32 %216, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @svs, i32 0, i32 1), align 4
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** @sv_pure, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %241

221:                                              ; preds = %208
  %222 = call i8* (...) @FS_LoadedPakChecksums()
  store i8* %222, i8** %9, align 8
  %223 = load i8*, i8** %9, align 8
  %224 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %223)
  %225 = load i8*, i8** %9, align 8
  %226 = call i64 @strlen(i8* %225)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %221
  %229 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %221
  %231 = call i8* (...) @FS_LoadedPakNames()
  store i8* %231, i8** %9, align 8
  %232 = load i8*, i8** %9, align 8
  %233 = call i32 @Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* %232)
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** @com_dedicated, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %230
  %239 = call i32 (...) @SV_TouchCGame()
  br label %240

240:                                              ; preds = %238, %230
  br label %244

241:                                              ; preds = %208
  %242 = call i32 @Cvar_Set(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %243 = call i32 @Cvar_Set(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241, %240
  %245 = call i8* (...) @FS_ReferencedPakChecksums()
  store i8* %245, i8** %9, align 8
  %246 = load i8*, i8** %9, align 8
  %247 = call i32 @Cvar_Set(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %246)
  %248 = call i8* (...) @FS_ReferencedPakNames()
  store i8* %248, i8** %9, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = call i32 @Cvar_Set(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %249)
  %251 = getelementptr inbounds [16384 x i8], [16384 x i8]* %8, i64 0, i64 0
  %252 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %253 = call i32 @Cvar_InfoString_Big(i32 %252)
  %254 = call i32 @Q_strncpyz(i8* %251, i32 %253, i32 16384)
  %255 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %256 = xor i32 %255, -1
  %257 = load i32, i32* @cvar_modifiedFlags, align 4
  %258 = and i32 %257, %256
  store i32 %258, i32* @cvar_modifiedFlags, align 4
  %259 = load i32, i32* @CS_SYSTEMINFO, align 4
  %260 = getelementptr inbounds [16384 x i8], [16384 x i8]* %8, i64 0, i64 0
  %261 = call i32 @SV_SetConfigstring(i32 %259, i8* %260)
  %262 = load i32, i32* @CS_SERVERINFO, align 4
  %263 = load i32, i32* @CVAR_SERVERINFO, align 4
  %264 = call i8* @Cvar_InfoString(i32 %263)
  %265 = call i32 @SV_SetConfigstring(i32 %262, i8* %264)
  %266 = load i32, i32* @CVAR_SERVERINFO, align 4
  %267 = xor i32 %266, -1
  %268 = load i32, i32* @cvar_modifiedFlags, align 4
  %269 = and i32 %268, %267
  store i32 %269, i32* @cvar_modifiedFlags, align 4
  %270 = load i32, i32* @SS_GAME, align 4
  store i32 %270, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sv, i32 0, i32 4), align 8
  %271 = call i32 (...) @SV_Heartbeat_f()
  %272 = call i32 (...) @Hunk_SetMark()
  %273 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SV_ShutdownGameProgs(...) #1

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @CL_MapLoading(...) #1

declare dso_local i32 @CL_ShutdownAll(...) #1

declare dso_local i32 @Hunk_Clear(...) #1

declare dso_local i32 @CM_ClearMap(...) #1

declare dso_local i32 @Cvar_VariableValue(i8*) #1

declare dso_local i32 @SV_Startup(...) #1

declare dso_local i32 @SV_ChangeMaxClients(...) #1

declare dso_local i32 @FS_ClearPakReferences(i32) #1

declare dso_local i32 @Hunk_Alloc(i32, i32) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @SV_ClearServer(...) #1

declare dso_local i32 @CopyString(i8*) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @Com_Milliseconds(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @FS_Restart(i32) #1

declare dso_local i32 @CM_LoadMap(i8*, i8*, i32*) #1

declare dso_local i8* @va(i8*, ...) #1

declare dso_local i32 @SV_ClearWorld(...) #1

declare dso_local i32 @SV_InitGameProgs(...) #1

declare dso_local i32 @VM_Call(i32, i32, i32, ...) #1

declare dso_local i32 @SV_BotFrame(i32) #1

declare dso_local i32 @SV_CreateBaseline(...) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_20__*, i8*) #1

declare dso_local i8* @VM_ExplicitArgPtr(i32, i32) #1

declare dso_local %struct.TYPE_19__* @SV_GentityNum(i32) #1

declare dso_local i8* @FS_LoadedPakChecksums(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @FS_LoadedPakNames(...) #1

declare dso_local i32 @SV_TouchCGame(...) #1

declare dso_local i8* @FS_ReferencedPakChecksums(...) #1

declare dso_local i8* @FS_ReferencedPakNames(...) #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i32 @Cvar_InfoString_Big(i32) #1

declare dso_local i32 @SV_SetConfigstring(i32, i8*) #1

declare dso_local i8* @Cvar_InfoString(i32) #1

declare dso_local i32 @SV_Heartbeat_f(...) #1

declare dso_local i32 @Hunk_SetMark(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
