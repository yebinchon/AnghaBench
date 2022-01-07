; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_init.c_SV_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"dmflags\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_SERVERINFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"fraglimit\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"20\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"timelimit\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@sv_gametype = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"sv_keywords\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@PROTOCOL_VERSION = common dso_local global i32 0, align 4
@CVAR_ROM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"nomap\00", align 1
@sv_mapname = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"sv_privateClients\00", align 1
@sv_privateClients = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"sv_hostname\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"noname\00", align 1
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@sv_hostname = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [14 x i8] c"sv_maxclients\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@sv_maxclients = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"sv_maxRate\00", align 1
@sv_maxRate = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c"sv_minPing\00", align 1
@sv_minPing = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"sv_maxPing\00", align 1
@sv_maxPing = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [16 x i8] c"sv_floodProtect\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@sv_floodProtect = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [10 x i8] c"sv_cheats\00", align 1
@CVAR_SYSTEMINFO = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"sv_serverid\00", align 1
@sv_serverid = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"sv_pure\00", align 1
@sv_pure = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [8 x i8] c"sv_paks\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"sv_pakNames\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"sv_referencedPaks\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"sv_referencedPakNames\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"rconPassword\00", align 1
@CVAR_TEMP = common dso_local global i32 0, align 4
@sv_rconPassword = common dso_local global i8* null, align 8
@.str.30 = private unnamed_addr constant [19 x i8] c"sv_privatePassword\00", align 1
@sv_privatePassword = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"sv_fps\00", align 1
@sv_fps = common dso_local global i8* null, align 8
@.str.32 = private unnamed_addr constant [11 x i8] c"sv_timeout\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"200\00", align 1
@sv_timeout = common dso_local global i8* null, align 8
@.str.34 = private unnamed_addr constant [14 x i8] c"sv_zombietime\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@sv_zombietime = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [8 x i8] c"nextmap\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"sv_allowDownload\00", align 1
@sv_allowDownload = common dso_local global i8* null, align 8
@.str.38 = private unnamed_addr constant [11 x i8] c"sv_master1\00", align 1
@MASTER_SERVER_NAME = common dso_local global i8* null, align 8
@sv_master = common dso_local global i8** null, align 8
@.str.39 = private unnamed_addr constant [11 x i8] c"sv_master2\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"sv_master3\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"sv_master4\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"sv_master5\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"sv_reconnectlimit\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@sv_reconnectlimit = common dso_local global i8* null, align 8
@.str.45 = private unnamed_addr constant [12 x i8] c"sv_showloss\00", align 1
@sv_showloss = common dso_local global i8* null, align 8
@.str.46 = private unnamed_addr constant [14 x i8] c"sv_padPackets\00", align 1
@sv_padPackets = common dso_local global i8* null, align 8
@.str.47 = private unnamed_addr constant [14 x i8] c"sv_killserver\00", align 1
@sv_killserver = common dso_local global i8* null, align 8
@.str.48 = private unnamed_addr constant [15 x i8] c"sv_mapChecksum\00", align 1
@sv_mapChecksum = common dso_local global i8* null, align 8
@.str.49 = private unnamed_addr constant [16 x i8] c"sv_lanForceRate\00", align 1
@sv_lanForceRate = common dso_local global i8* null, align 8
@.str.50 = private unnamed_addr constant [14 x i8] c"sv_strictAuth\00", align 1
@sv_strictAuth = common dso_local global i8* null, align 8
@CVAR_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SV_Init() #0 {
  %1 = call i32 (...) @SV_AddOperatorCommands()
  %2 = load i32, i32* @CVAR_SERVERINFO, align 4
  %3 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @CVAR_SERVERINFO, align 4
  %5 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @CVAR_SERVERINFO, align 4
  %7 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @CVAR_SERVERINFO, align 4
  %9 = load i32, i32* @CVAR_LATCH, align 4
  %10 = or i32 %8, %9
  %11 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  store i8* %11, i8** @sv_gametype, align 8
  %12 = load i32, i32* @CVAR_SERVERINFO, align 4
  %13 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @PROTOCOL_VERSION, align 4
  %15 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @CVAR_SERVERINFO, align 4
  %17 = load i32, i32* @CVAR_ROM, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @Cvar_Get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %15, i32 %18)
  %20 = load i32, i32* @CVAR_SERVERINFO, align 4
  %21 = load i32, i32* @CVAR_ROM, align 4
  %22 = or i32 %20, %21
  %23 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %22)
  store i8* %23, i8** @sv_mapname, align 8
  %24 = load i32, i32* @CVAR_SERVERINFO, align 4
  %25 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i8* %25, i8** @sv_privateClients, align 8
  %26 = load i32, i32* @CVAR_SERVERINFO, align 4
  %27 = load i32, i32* @CVAR_ARCHIVE, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %28)
  store i8* %29, i8** @sv_hostname, align 8
  %30 = load i32, i32* @CVAR_SERVERINFO, align 4
  %31 = load i32, i32* @CVAR_LATCH, align 4
  %32 = or i32 %30, %31
  %33 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %32)
  store i8* %33, i8** @sv_maxclients, align 8
  %34 = load i32, i32* @CVAR_ARCHIVE, align 4
  %35 = load i32, i32* @CVAR_SERVERINFO, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i8* %37, i8** @sv_maxRate, align 8
  %38 = load i32, i32* @CVAR_ARCHIVE, align 4
  %39 = load i32, i32* @CVAR_SERVERINFO, align 4
  %40 = or i32 %38, %39
  %41 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i8* %41, i8** @sv_minPing, align 8
  %42 = load i32, i32* @CVAR_ARCHIVE, align 4
  %43 = load i32, i32* @CVAR_SERVERINFO, align 4
  %44 = or i32 %42, %43
  %45 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i8* %45, i8** @sv_maxPing, align 8
  %46 = load i32, i32* @CVAR_ARCHIVE, align 4
  %47 = load i32, i32* @CVAR_SERVERINFO, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %48)
  store i8* %49, i8** @sv_floodProtect, align 8
  %50 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %51 = load i32, i32* @CVAR_ROM, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %55 = load i32, i32* @CVAR_ROM, align 4
  %56 = or i32 %54, %55
  %57 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  store i8* %57, i8** @sv_serverid, align 8
  %58 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %59 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %58)
  store i8* %59, i8** @sv_pure, align 8
  %60 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %61 = load i32, i32* @CVAR_ROM, align 4
  %62 = or i32 %60, %61
  %63 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %65 = load i32, i32* @CVAR_ROM, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %69 = load i32, i32* @CVAR_ROM, align 4
  %70 = or i32 %68, %69
  %71 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @CVAR_SYSTEMINFO, align 4
  %73 = load i32, i32* @CVAR_ROM, align 4
  %74 = or i32 %72, %73
  %75 = call i8* @Cvar_Get(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @CVAR_TEMP, align 4
  %77 = call i8* @Cvar_Get(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  store i8* %77, i8** @sv_rconPassword, align 8
  %78 = load i32, i32* @CVAR_TEMP, align 4
  %79 = call i8* @Cvar_Get(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %78)
  store i8* %79, i8** @sv_privatePassword, align 8
  %80 = load i32, i32* @CVAR_TEMP, align 4
  %81 = call i8* @Cvar_Get(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  store i8* %81, i8** @sv_fps, align 8
  %82 = load i32, i32* @CVAR_TEMP, align 4
  %83 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 %82)
  store i8* %83, i8** @sv_timeout, align 8
  %84 = load i32, i32* @CVAR_TEMP, align 4
  %85 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i32 %84)
  store i8* %85, i8** @sv_zombietime, align 8
  %86 = load i32, i32* @CVAR_TEMP, align 4
  %87 = call i8* @Cvar_Get(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @CVAR_SERVERINFO, align 4
  %89 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  store i8* %89, i8** @sv_allowDownload, align 8
  %90 = load i8*, i8** @MASTER_SERVER_NAME, align 8
  %91 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0), i8* %90, i32 0)
  %92 = load i8**, i8*** @sv_master, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* @CVAR_ARCHIVE, align 4
  %95 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  %96 = load i8**, i8*** @sv_master, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @CVAR_ARCHIVE, align 4
  %99 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %98)
  %100 = load i8**, i8*** @sv_master, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 2
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @CVAR_ARCHIVE, align 4
  %103 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = load i8**, i8*** @sv_master, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 3
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @CVAR_ARCHIVE, align 4
  %107 = call i8* @Cvar_Get(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  %108 = load i8**, i8*** @sv_master, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 4
  store i8* %107, i8** %109, align 8
  %110 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0), i32 0)
  store i8* %110, i8** @sv_reconnectlimit, align 8
  %111 = call i8* @Cvar_Get(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %111, i8** @sv_showloss, align 8
  %112 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %112, i8** @sv_padPackets, align 8
  %113 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i8* %113, i8** @sv_killserver, align 8
  %114 = load i32, i32* @CVAR_ROM, align 4
  %115 = call i8* @Cvar_Get(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  store i8* %115, i8** @sv_mapChecksum, align 8
  %116 = load i32, i32* @CVAR_ARCHIVE, align 4
  %117 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %116)
  store i8* %117, i8** @sv_lanForceRate, align 8
  %118 = load i32, i32* @CVAR_ARCHIVE, align 4
  %119 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 %118)
  store i8* %119, i8** @sv_strictAuth, align 8
  %120 = call i32 (...) @SV_BotInitCvars()
  %121 = call i32 (...) @SV_BotInitBotLib()
  ret void
}

declare dso_local i32 @SV_AddOperatorCommands(...) #1

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

declare dso_local i8* @va(i8*, i32) #1

declare dso_local i32 @SV_BotInitCvars(...) #1

declare dso_local i32 @SV_BotInitBotLib(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
