; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"----- Client Initialization -----\0A\00", align 1
@CA_DISCONNECTED = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"cl_noprint\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@cl_noprint = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"cl_motd\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@cl_motd = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"cl_timeout\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@cl_timeout = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"cl_timeNudge\00", align 1
@CVAR_TEMP = common dso_local global i32 0, align 4
@cl_timeNudge = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"cl_shownet\00", align 1
@cl_shownet = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"cl_showSend\00", align 1
@cl_showSend = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"cl_showTimeDelta\00", align 1
@cl_showTimeDelta = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"cl_freezeDemo\00", align 1
@cl_freezeDemo = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"rconPassword\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rcon_client_password = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"activeAction\00", align 1
@cl_activeAction = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"timedemo\00", align 1
@cl_timedemo = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [11 x i8] c"cl_avidemo\00", align 1
@cl_avidemo = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"cl_forceavidemo\00", align 1
@cl_forceavidemo = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [12 x i8] c"rconAddress\00", align 1
@rconAddress = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"cl_yawspeed\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"140\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@cl_yawspeed = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [14 x i8] c"cl_pitchspeed\00", align 1
@cl_pitchspeed = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"cl_anglespeedkey\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@cl_anglespeedkey = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [14 x i8] c"cl_maxpackets\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@cl_maxpackets = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [13 x i8] c"cl_packetdup\00", align 1
@cl_packetdup = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [7 x i8] c"cl_run\00", align 1
@cl_run = common dso_local global i8* null, align 8
@.str.28 = private unnamed_addr constant [12 x i8] c"sensitivity\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@cl_sensitivity = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [14 x i8] c"cl_mouseAccel\00", align 1
@cl_mouseAccel = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [12 x i8] c"cl_freelook\00", align 1
@cl_freelook = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [17 x i8] c"cl_showmouserate\00", align 1
@cl_showMouseRate = common dso_local global i8* null, align 8
@.str.33 = private unnamed_addr constant [17 x i8] c"cl_allowDownload\00", align 1
@cl_allowDownload = common dso_local global i8* null, align 8
@.str.34 = private unnamed_addr constant [14 x i8] c"cl_conXOffset\00", align 1
@cl_conXOffset = common dso_local global i8* null, align 8
@.str.35 = private unnamed_addr constant [14 x i8] c"r_inGameVideo\00", align 1
@cl_inGameVideo = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [26 x i8] c"cl_serverStatusResendTime\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"750\00", align 1
@cl_serverStatusResendTime = common dso_local global i8* null, align 8
@.str.38 = private unnamed_addr constant [14 x i8] c"cg_autoswitch\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"m_pitch\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"0.022\00", align 1
@m_pitch = common dso_local global i8* null, align 8
@.str.41 = private unnamed_addr constant [6 x i8] c"m_yaw\00", align 1
@m_yaw = common dso_local global i8* null, align 8
@.str.42 = private unnamed_addr constant [10 x i8] c"m_forward\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"0.25\00", align 1
@m_forward = common dso_local global i8* null, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"m_side\00", align 1
@m_side = common dso_local global i8* null, align 8
@.str.45 = private unnamed_addr constant [9 x i8] c"m_filter\00", align 1
@m_filter = common dso_local global i8* null, align 8
@.str.46 = private unnamed_addr constant [14 x i8] c"cl_motdString\00", align 1
@CVAR_ROM = common dso_local global i32 0, align 4
@cl_motdString = common dso_local global i8* null, align 8
@.str.47 = private unnamed_addr constant [11 x i8] c"cl_maxPing\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"800\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"UnnamedPlayer\00", align 1
@CVAR_USERINFO = common dso_local global i32 0, align 4
@.str.51 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"3000\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"sarge\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"headmodel\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"team_model\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"james\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"team_headmodel\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"*james\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"g_redTeam\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"Stroggs\00", align 1
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@.str.64 = private unnamed_addr constant [11 x i8] c"g_blueTeam\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"Pagans\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"color1\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"color2\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"teamtask\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"sex\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"male\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"cl_anonymous\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"cg_predictItems\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"cg_viewsize\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@CL_ForwardToServer_f = common dso_local global i32 0, align 4
@.str.79 = private unnamed_addr constant [14 x i8] c"configstrings\00", align 1
@CL_Configstrings_f = common dso_local global i32 0, align 4
@.str.80 = private unnamed_addr constant [11 x i8] c"clientinfo\00", align 1
@CL_Clientinfo_f = common dso_local global i32 0, align 4
@.str.81 = private unnamed_addr constant [12 x i8] c"snd_restart\00", align 1
@CL_Snd_Restart_f = common dso_local global i32 0, align 4
@.str.82 = private unnamed_addr constant [12 x i8] c"vid_restart\00", align 1
@CL_Vid_Restart_f = common dso_local global i32 0, align 4
@.str.83 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@CL_Disconnect_f = common dso_local global i32 0, align 4
@.str.84 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@CL_Record_f = common dso_local global i32 0, align 4
@.str.85 = private unnamed_addr constant [5 x i8] c"demo\00", align 1
@CL_PlayDemo_f = common dso_local global i32 0, align 4
@.str.86 = private unnamed_addr constant [10 x i8] c"cinematic\00", align 1
@CL_PlayCinematic_f = common dso_local global i32 0, align 4
@.str.87 = private unnamed_addr constant [11 x i8] c"stoprecord\00", align 1
@CL_StopRecord_f = common dso_local global i32 0, align 4
@.str.88 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@CL_Connect_f = common dso_local global i32 0, align 4
@.str.89 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@CL_Reconnect_f = common dso_local global i32 0, align 4
@.str.90 = private unnamed_addr constant [13 x i8] c"localservers\00", align 1
@CL_LocalServers_f = common dso_local global i32 0, align 4
@.str.91 = private unnamed_addr constant [14 x i8] c"globalservers\00", align 1
@CL_GlobalServers_f = common dso_local global i32 0, align 4
@.str.92 = private unnamed_addr constant [5 x i8] c"rcon\00", align 1
@CL_Rcon_f = common dso_local global i32 0, align 4
@.str.93 = private unnamed_addr constant [7 x i8] c"setenv\00", align 1
@CL_Setenv_f = common dso_local global i32 0, align 4
@.str.94 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@CL_Ping_f = common dso_local global i32 0, align 4
@.str.95 = private unnamed_addr constant [13 x i8] c"serverstatus\00", align 1
@CL_ServerStatus_f = common dso_local global i32 0, align 4
@.str.96 = private unnamed_addr constant [7 x i8] c"showip\00", align 1
@CL_ShowIP_f = common dso_local global i32 0, align 4
@.str.97 = private unnamed_addr constant [14 x i8] c"fs_openedList\00", align 1
@CL_OpenedPK3List_f = common dso_local global i32 0, align 4
@.str.98 = private unnamed_addr constant [18 x i8] c"fs_referencedList\00", align 1
@CL_ReferencedPK3List_f = common dso_local global i32 0, align 4
@CL_SetModel_f = common dso_local global i32 0, align 4
@.str.99 = private unnamed_addr constant [11 x i8] c"cl_running\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"----- Client Initialization Complete -----\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Init() #0 {
  %1 = call i32 @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @Con_Init()
  %3 = call i32 (...) @CL_ClearState()
  %4 = load i32, i32* @CA_DISCONNECTED, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cls, i32 0, i32 0), align 8
  %5 = call i32 (...) @CL_InitInput()
  %6 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %6, i8** @cl_noprint, align 8
  %7 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i8* %7, i8** @cl_motd, align 8
  %8 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i8* %8, i8** @cl_timeout, align 8
  %9 = load i32, i32* @CVAR_TEMP, align 4
  %10 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  store i8* %10, i8** @cl_timeNudge, align 8
  %11 = load i32, i32* @CVAR_TEMP, align 4
  %12 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  store i8* %12, i8** @cl_shownet, align 8
  %13 = load i32, i32* @CVAR_TEMP, align 4
  %14 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  store i8* %14, i8** @cl_showSend, align 8
  %15 = load i32, i32* @CVAR_TEMP, align 4
  %16 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  store i8* %16, i8** @cl_showTimeDelta, align 8
  %17 = load i32, i32* @CVAR_TEMP, align 4
  %18 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  store i8* %18, i8** @cl_freezeDemo, align 8
  %19 = load i32, i32* @CVAR_TEMP, align 4
  %20 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %19)
  store i8* %20, i8** @rcon_client_password, align 8
  %21 = load i32, i32* @CVAR_TEMP, align 4
  %22 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %21)
  store i8* %22, i8** @cl_activeAction, align 8
  %23 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %23, i8** @cl_timedemo, align 8
  %24 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %24, i8** @cl_avidemo, align 8
  %25 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %25, i8** @cl_forceavidemo, align 8
  %26 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 0)
  store i8* %26, i8** @rconAddress, align 8
  %27 = load i32, i32* @CVAR_ARCHIVE, align 4
  %28 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %27)
  store i8* %28, i8** @cl_yawspeed, align 8
  %29 = load i32, i32* @CVAR_ARCHIVE, align 4
  %30 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %29)
  store i8* %30, i8** @cl_pitchspeed, align 8
  %31 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 0)
  store i8* %31, i8** @cl_anglespeedkey, align 8
  %32 = load i32, i32* @CVAR_ARCHIVE, align 4
  %33 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 %32)
  store i8* %33, i8** @cl_maxpackets, align 8
  %34 = load i32, i32* @CVAR_ARCHIVE, align 4
  %35 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  store i8* %35, i8** @cl_packetdup, align 8
  %36 = load i32, i32* @CVAR_ARCHIVE, align 4
  %37 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  store i8* %37, i8** @cl_run, align 8
  %38 = load i32, i32* @CVAR_ARCHIVE, align 4
  %39 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 %38)
  store i8* %39, i8** @cl_sensitivity, align 8
  %40 = load i32, i32* @CVAR_ARCHIVE, align 4
  %41 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i8* %41, i8** @cl_mouseAccel, align 8
  %42 = load i32, i32* @CVAR_ARCHIVE, align 4
  %43 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  store i8* %43, i8** @cl_freelook, align 8
  %44 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %44, i8** @cl_showMouseRate, align 8
  %45 = load i32, i32* @CVAR_ARCHIVE, align 4
  %46 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  store i8* %46, i8** @cl_allowDownload, align 8
  %47 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %47, i8** @cl_conXOffset, align 8
  %48 = load i32, i32* @CVAR_ARCHIVE, align 4
  %49 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  store i8* %49, i8** @cl_inGameVideo, align 8
  %50 = call i8* @Cvar_Get(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i32 0)
  store i8* %50, i8** @cl_serverStatusResendTime, align 8
  %51 = load i32, i32* @CVAR_ARCHIVE, align 4
  %52 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @CVAR_ARCHIVE, align 4
  %54 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i32 %53)
  store i8* %54, i8** @m_pitch, align 8
  %55 = load i32, i32* @CVAR_ARCHIVE, align 4
  %56 = call i8* @Cvar_Get(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i32 %55)
  store i8* %56, i8** @m_yaw, align 8
  %57 = load i32, i32* @CVAR_ARCHIVE, align 4
  %58 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 %57)
  store i8* %58, i8** @m_forward, align 8
  %59 = load i32, i32* @CVAR_ARCHIVE, align 4
  %60 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 %59)
  store i8* %60, i8** @m_side, align 8
  %61 = load i32, i32* @CVAR_ARCHIVE, align 4
  %62 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  store i8* %62, i8** @m_filter, align 8
  %63 = load i32, i32* @CVAR_ROM, align 4
  %64 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %63)
  store i8* %64, i8** @cl_motdString, align 8
  %65 = load i32, i32* @CVAR_ARCHIVE, align 4
  %66 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @CVAR_USERINFO, align 4
  %68 = load i32, i32* @CVAR_ARCHIVE, align 4
  %69 = or i32 %67, %68
  %70 = call i8* @Cvar_Get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @CVAR_USERINFO, align 4
  %72 = load i32, i32* @CVAR_ARCHIVE, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @Cvar_Get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @CVAR_USERINFO, align 4
  %76 = load i32, i32* @CVAR_ARCHIVE, align 4
  %77 = or i32 %75, %76
  %78 = call i8* @Cvar_Get(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @CVAR_USERINFO, align 4
  %80 = load i32, i32* @CVAR_ARCHIVE, align 4
  %81 = or i32 %79, %80
  %82 = call i8* @Cvar_Get(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @CVAR_USERINFO, align 4
  %84 = load i32, i32* @CVAR_ARCHIVE, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @CVAR_USERINFO, align 4
  %88 = load i32, i32* @CVAR_ARCHIVE, align 4
  %89 = or i32 %87, %88
  %90 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @CVAR_USERINFO, align 4
  %92 = load i32, i32* @CVAR_ARCHIVE, align 4
  %93 = or i32 %91, %92
  %94 = call i8* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.60, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @CVAR_SERVERINFO, align 4
  %96 = load i32, i32* @CVAR_ARCHIVE, align 4
  %97 = or i32 %95, %96
  %98 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @CVAR_SERVERINFO, align 4
  %100 = load i32, i32* @CVAR_ARCHIVE, align 4
  %101 = or i32 %99, %100
  %102 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @CVAR_USERINFO, align 4
  %104 = load i32, i32* @CVAR_ARCHIVE, align 4
  %105 = or i32 %103, %104
  %106 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @CVAR_USERINFO, align 4
  %108 = load i32, i32* @CVAR_ARCHIVE, align 4
  %109 = or i32 %107, %108
  %110 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @CVAR_USERINFO, align 4
  %112 = load i32, i32* @CVAR_ARCHIVE, align 4
  %113 = or i32 %111, %112
  %114 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @CVAR_USERINFO, align 4
  %116 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @CVAR_USERINFO, align 4
  %118 = load i32, i32* @CVAR_ARCHIVE, align 4
  %119 = or i32 %117, %118
  %120 = call i8* @Cvar_Get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @CVAR_USERINFO, align 4
  %122 = load i32, i32* @CVAR_ARCHIVE, align 4
  %123 = or i32 %121, %122
  %124 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @CVAR_USERINFO, align 4
  %126 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @CVAR_USERINFO, align 4
  %128 = load i32, i32* @CVAR_ARCHIVE, align 4
  %129 = or i32 %127, %128
  %130 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @CVAR_ARCHIVE, align 4
  %132 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @CL_ForwardToServer_f, align 4
  %134 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @CL_Configstrings_f, align 4
  %136 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @CL_Clientinfo_f, align 4
  %138 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @CL_Snd_Restart_f, align 4
  %140 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @CL_Vid_Restart_f, align 4
  %142 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @CL_Disconnect_f, align 4
  %144 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @CL_Record_f, align 4
  %146 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* @CL_PlayDemo_f, align 4
  %148 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.85, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @CL_PlayCinematic_f, align 4
  %150 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.86, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @CL_StopRecord_f, align 4
  %152 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @CL_Connect_f, align 4
  %154 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @CL_Reconnect_f, align 4
  %156 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @CL_LocalServers_f, align 4
  %158 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.90, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @CL_GlobalServers_f, align 4
  %160 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @CL_Rcon_f, align 4
  %162 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.92, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* @CL_Setenv_f, align 4
  %164 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @CL_Ping_f, align 4
  %166 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @CL_ServerStatus_f, align 4
  %168 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @CL_ShowIP_f, align 4
  %170 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @CL_OpenedPK3List_f, align 4
  %172 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @CL_ReferencedPK3List_f, align 4
  %174 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.98, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @CL_SetModel_f, align 4
  %176 = call i32 @Cmd_AddCommand(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0), i32 %175)
  %177 = call i32 (...) @CL_InitRef()
  %178 = call i32 (...) @SCR_Init()
  %179 = call i32 (...) @Cbuf_Execute()
  %180 = call i32 @Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %181 = call i32 @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i64 0, i64 0))
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Con_Init(...) #1

declare dso_local i32 @CL_ClearState(...) #1

declare dso_local i32 @CL_InitInput(...) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i32 @Cmd_AddCommand(i8*, i32) #1

declare dso_local i32 @CL_InitRef(...) #1

declare dso_local i32 @SCR_Init(...) #1

declare dso_local i32 @Cbuf_Execute(...) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
