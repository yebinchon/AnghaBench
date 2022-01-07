; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c__UI_Init.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c__UI_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i64, i64, i64, i64, %struct.TYPE_18__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_18__ = type { double, double, double, i8* (i8*)*, i64 (i8*)*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32 (i8*, i8*)*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { double, double }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@uiInfo = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@UI_SetColor = common dso_local global i32 0, align 4
@UI_DrawHandlePic = common dso_local global i32 0, align 4
@trap_R_DrawStretchPic = common dso_local global i32 0, align 4
@Text_Paint = common dso_local global i32 0, align 4
@Text_Width = common dso_local global i32 0, align 4
@Text_Height = common dso_local global i32 0, align 4
@trap_R_RegisterModel = common dso_local global i32 0, align 4
@trap_R_ModelBounds = common dso_local global i32 0, align 4
@UI_FillRect = common dso_local global i32 0, align 4
@_UI_DrawRect = common dso_local global i32 0, align 4
@_UI_DrawSides = common dso_local global i32 0, align 4
@_UI_DrawTopBottom = common dso_local global i32 0, align 4
@trap_R_ClearScene = common dso_local global i32 0, align 4
@trap_R_AddRefEntityToScene = common dso_local global i32 0, align 4
@trap_R_RenderScene = common dso_local global i32 0, align 4
@trap_R_RegisterFont = common dso_local global i32 0, align 4
@UI_OwnerDraw = common dso_local global i32 0, align 4
@UI_GetValue = common dso_local global i32 0, align 4
@UI_OwnerDrawVisible = common dso_local global i32 0, align 4
@UI_RunMenuScript = common dso_local global i32 0, align 4
@UI_GetTeamColor = common dso_local global i32 0, align 4
@trap_Cvar_VariableStringBuffer = common dso_local global i32 0, align 4
@Text_PaintWithCursor = common dso_local global i32 0, align 4
@trap_Key_SetOverstrikeMode = common dso_local global i32 0, align 4
@trap_Key_GetOverstrikeMode = common dso_local global i32 0, align 4
@trap_S_StartLocalSound = common dso_local global i32 0, align 4
@UI_OwnerDrawHandleKey = common dso_local global i32 0, align 4
@UI_FeederCount = common dso_local global i32 0, align 4
@UI_FeederItemImage = common dso_local global i32 0, align 4
@UI_FeederItemText = common dso_local global i32 0, align 4
@UI_FeederSelection = common dso_local global i32 0, align 4
@trap_Key_SetBinding = common dso_local global i32 0, align 4
@trap_Key_GetBindingBuf = common dso_local global i32 0, align 4
@trap_Key_KeynumToStringBuf = common dso_local global i32 0, align 4
@trap_Cmd_ExecuteText = common dso_local global i32 0, align 4
@Com_Error = common dso_local global i32 0, align 4
@Com_Printf = common dso_local global i32 0, align 4
@UI_Pause = common dso_local global i32 0, align 4
@UI_OwnerDrawWidth = common dso_local global i32 0, align 4
@trap_S_RegisterSound = common dso_local global i32 0, align 4
@trap_S_StartBackgroundTrack = common dso_local global i32 0, align 4
@trap_S_StopBackgroundTrack = common dso_local global i32 0, align 4
@UI_PlayCinematic = common dso_local global i32 0, align 4
@UI_StopCinematic = common dso_local global i32 0, align 4
@UI_DrawCinematic = common dso_local global i32 0, align 4
@UI_RunCinematicFrame = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"menu/art/3_cursor2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"teaminfo.txt\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"gameinfo.txt\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ui_menuFiles\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ui/menus.txt\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"ui/ingame.txt\00", align 1
@qfalse = common dso_local global i32 0, align 4
@ui_currentMap = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ui_gameType = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@gamecodetoui = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"color1\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"cg_drawCrosshair\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"ui_mousePitch\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"m_pitch\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"ui_TeamArenaFirstRun\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"s_volume\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"0.8\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"s_musicvolume\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"debug_protocol\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"ui_actualNetGameType\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ui_netGameType = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_UI_Init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @UI_RegisterCvars()
  %6 = call i32 (...) @UI_InitMemory()
  %7 = call i32 @trap_GetGlconfig(%struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 54))
  %8 = load double, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 54, i32 0), align 8
  %9 = fmul double %8, 0x3F61111111111111
  store double %9, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 0), align 8
  %10 = load double, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 54, i32 1), align 8
  %11 = fmul double %10, 1.562500e-03
  store double %11, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 1), align 8
  %12 = load double, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 54, i32 1), align 8
  %13 = fmul double %12, 4.800000e+02
  %14 = load double, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 54, i32 0), align 8
  %15 = fmul double %14, 6.400000e+02
  %16 = fcmp ogt double %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load double, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 54, i32 1), align 8
  %19 = load double, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 54, i32 0), align 8
  %20 = fmul double %19, 0x3FF5555555555555
  %21 = fsub double %18, %20
  %22 = fmul double 5.000000e-01, %21
  store double %22, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 2), align 8
  br label %24

23:                                               ; preds = %1
  store double 0.000000e+00, double* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 2), align 8
  br label %24

24:                                               ; preds = %23, %17
  store i8* (i8*)* @trap_R_RegisterShaderNoMip, i8* (i8*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 3), align 8
  store i32* @UI_SetColor, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 53), align 8
  store i32* @UI_DrawHandlePic, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 52), align 8
  store i32* @trap_R_DrawStretchPic, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 51), align 8
  store i32* @Text_Paint, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 50), align 8
  store i32* @Text_Width, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 49), align 8
  store i32* @Text_Height, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 48), align 8
  store i32* @trap_R_RegisterModel, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 47), align 8
  store i32* @trap_R_ModelBounds, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 46), align 8
  store i32* @UI_FillRect, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 45), align 8
  store i32* @_UI_DrawRect, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 44), align 8
  store i32* @_UI_DrawSides, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 41), align 8
  store i32* @_UI_DrawTopBottom, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 43), align 8
  store i32* @trap_R_ClearScene, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 42), align 8
  store i32* @_UI_DrawSides, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 41), align 8
  store i32* @trap_R_AddRefEntityToScene, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 40), align 8
  store i32* @trap_R_RenderScene, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 39), align 8
  store i32* @trap_R_RegisterFont, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 38), align 8
  store i32* @UI_OwnerDraw, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 37), align 8
  store i32* @UI_GetValue, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 36), align 8
  store i32* @UI_OwnerDrawVisible, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 35), align 8
  store i32* @UI_RunMenuScript, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 34), align 8
  store i32* @UI_GetTeamColor, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 33), align 8
  store i32 (i8*, i8*)* @trap_Cvar_Set, i32 (i8*, i8*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 32), align 8
  %25 = load i32, i32* @trap_Cvar_VariableStringBuffer, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 31), align 8
  store i64 (i8*)* @trap_Cvar_VariableValue, i64 (i8*)** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 4), align 8
  store i32* @Text_PaintWithCursor, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 30), align 8
  store i32* @trap_Key_SetOverstrikeMode, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 29), align 8
  store i32* @trap_Key_GetOverstrikeMode, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 28), align 8
  store i32* @trap_S_StartLocalSound, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 27), align 8
  store i32* @UI_OwnerDrawHandleKey, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 26), align 8
  store i32* @UI_FeederCount, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 25), align 8
  store i32* @UI_FeederItemImage, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 24), align 8
  store i32* @UI_FeederItemText, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 23), align 8
  store i32* @UI_FeederSelection, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 22), align 8
  store i32* @trap_Key_SetBinding, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 21), align 8
  store i32* @trap_Key_GetBindingBuf, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 20), align 8
  store i32* @trap_Key_KeynumToStringBuf, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 19), align 8
  store i32* @trap_Cmd_ExecuteText, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 18), align 8
  store i32* @Com_Error, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 17), align 8
  store i32* @Com_Printf, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 16), align 8
  store i32* @UI_Pause, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 15), align 8
  store i32* @UI_OwnerDrawWidth, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 14), align 8
  store i32* @trap_S_RegisterSound, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 13), align 8
  store i32* @trap_S_StartBackgroundTrack, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 12), align 8
  store i32* @trap_S_StopBackgroundTrack, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 11), align 8
  store i32* @UI_PlayCinematic, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 10), align 8
  store i32* @UI_StopCinematic, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 9), align 8
  store i32* @UI_DrawCinematic, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 8), align 8
  store i32* @UI_RunCinematicFrame, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 7), align 8
  %26 = call i32 @Init_Display(%struct.TYPE_18__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10))
  %27 = call i32 (...) @String_Init()
  %28 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 6), align 8
  %29 = call i8* @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 10, i32 5), align 8
  %30 = call i32 (...) @AssetCache()
  %31 = call i32 (...) @trap_Milliseconds()
  store i32 %31, i32* %4, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 9), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 7), align 8
  %32 = call i32 @UI_ParseTeamInfo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 (...) @UI_LoadTeams()
  %34 = call i32 @UI_ParseGameInfo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i8* @UI_Cvar_VariableString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i8* %35, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %24
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %24
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* @qtrue, align 4
  %48 = call i32 @UI_LoadMenus(i8* %46, i32 %47)
  %49 = load i32, i32* @qfalse, align 4
  %50 = call i32 @UI_LoadMenus(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  %51 = call i32 (...) @Menus_CloseAll()
  %52 = call i32 (...) @trap_LAN_LoadCachedServers()
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 5), align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ui_currentMap, i32 0, i32 0), align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 4), align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ui_gameType, i32 0, i32 0), align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @UI_LoadBestScores(i32 %57, i32 %62)
  %64 = call i32 (...) @UI_BuildQ3Model_List()
  %65 = call i32 (...) @UI_LoadBots()
  %66 = load i32*, i32** @gamecodetoui, align 8
  %67 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %68 = trunc i64 %67 to i32
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 3), align 4
  %73 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 0), align 8
  %75 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %76 = icmp sge i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)
  %79 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %78)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 2, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @uiInfo, i32 0, i32 1), align 4
  %80 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %45
  %83 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %84 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %85 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %86

86:                                               ; preds = %82, %45
  %87 = call i32 @trap_Cvar_Register(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_netGameType, i32 0, i32 0), align 4
  %89 = call i8* @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32 %88)
  %90 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8* %89)
  ret void
}

declare dso_local i32 @UI_RegisterCvars(...) #1

declare dso_local i32 @UI_InitMemory(...) #1

declare dso_local i32 @trap_GetGlconfig(%struct.TYPE_17__*) #1

declare dso_local i8* @trap_R_RegisterShaderNoMip(i8*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @Init_Display(%struct.TYPE_18__*) #1

declare dso_local i32 @String_Init(...) #1

declare dso_local i32 @AssetCache(...) #1

declare dso_local i32 @trap_Milliseconds(...) #1

declare dso_local i32 @UI_ParseTeamInfo(i8*) #1

declare dso_local i32 @UI_LoadTeams(...) #1

declare dso_local i32 @UI_ParseGameInfo(i8*) #1

declare dso_local i8* @UI_Cvar_VariableString(i8*) #1

declare dso_local i32 @UI_LoadMenus(i8*, i32) #1

declare dso_local i32 @Menus_CloseAll(...) #1

declare dso_local i32 @trap_LAN_LoadCachedServers(...) #1

declare dso_local i32 @UI_LoadBestScores(i32, i32) #1

declare dso_local i32 @UI_BuildQ3Model_List(...) #1

declare dso_local i32 @UI_LoadBots(...) #1

declare dso_local i32 @trap_Cvar_Register(i32*, i8*, i8*, i32) #1

declare dso_local i8* @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
