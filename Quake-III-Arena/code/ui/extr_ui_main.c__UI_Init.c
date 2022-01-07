
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_17__ {double vidHeight; double vidWidth; } ;
struct TYPE_18__ {double yscale; double xscale; double bias; void* (* registerShaderNoMip ) (char*) ;scalar_t__ (* getCVarValue ) (char*) ;void* whiteShader; void* cursor; int * runCinematicFrame; int * drawCinematic; int * stopCinematic; int * playCinematic; int * stopBackgroundTrack; int * startBackgroundTrack; int * registerSound; int * ownerDrawWidth; int * Pause; int * Print; int * Error; int * executeText; int * keynumToStringBuf; int * getBindingBuf; int * setBinding; int * feederSelection; int * feederItemText; int * feederItemImage; int * feederCount; int * ownerDrawHandleKey; int * startLocalSound; int * getOverstrikeMode; int * setOverstrikeMode; int * drawTextWithCursor; int getCVarString; int (* setCVar ) (char*,char*) ;int * getTeamColor; int * runScript; int * ownerDrawVisible; int * getValue; int * ownerDrawItem; int * registerFont; int * renderScene; int * addRefEntityToScene; int * drawSides; int * clearScene; int * drawTopBottom; int * drawRect; int * fillRect; int * modelBounds; int * registerModel; int * textHeight; int * textWidth; int * drawText; int * drawStretchPic; int * drawHandlePic; int * setColor; TYPE_8__ glconfig; } ;
struct TYPE_12__ {int currentServerCinematic; } ;
struct TYPE_16__ {int currentCrosshair; int previewMovie; TYPE_3__ serverStatus; int effectsColor; TYPE_2__* gameTypes; TYPE_1__* mapList; scalar_t__ inGameLoad; scalar_t__ aliasCount; scalar_t__ characterCount; scalar_t__ teamCount; TYPE_9__ uiDC; } ;
struct TYPE_15__ {size_t integer; } ;
struct TYPE_14__ {size_t integer; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_11__ {int gtEnum; } ;
struct TYPE_10__ {int mapLoadName; } ;


 int AssetCache () ;
 int Com_Error ;
 int Com_Printf ;
 int Init_Display (TYPE_9__*) ;
 int Menus_CloseAll () ;
 int String_Init () ;
 int Text_Height ;
 int Text_Paint ;
 int Text_PaintWithCursor ;
 int Text_Width ;
 int UI_BuildQ3Model_List () ;
 char* UI_Cvar_VariableString (char*) ;
 int UI_DrawCinematic ;
 int UI_DrawHandlePic ;
 int UI_FeederCount ;
 int UI_FeederItemImage ;
 int UI_FeederItemText ;
 int UI_FeederSelection ;
 int UI_FillRect ;
 int UI_GetTeamColor ;
 int UI_GetValue ;
 int UI_InitMemory () ;
 int UI_LoadBestScores (int ,int ) ;
 int UI_LoadBots () ;
 int UI_LoadMenus (char const*,int ) ;
 int UI_LoadTeams () ;
 int UI_OwnerDraw ;
 int UI_OwnerDrawHandleKey ;
 int UI_OwnerDrawVisible ;
 int UI_OwnerDrawWidth ;
 int UI_ParseGameInfo (char*) ;
 int UI_ParseTeamInfo (char*) ;
 int UI_Pause ;
 int UI_PlayCinematic ;
 int UI_RegisterCvars () ;
 int UI_RunCinematicFrame ;
 int UI_RunMenuScript ;
 int UI_SetColor ;
 int UI_StopCinematic ;
 int _UI_DrawRect ;
 int _UI_DrawSides ;
 int _UI_DrawTopBottom ;
 int * gamecodetoui ;
 int qfalse ;
 int qtrue ;
 int trap_Cmd_ExecuteText ;
 int trap_Cvar_Register (int *,char*,char*,int ) ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_VariableStringBuffer ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;
 int trap_GetGlconfig (TYPE_8__*) ;
 int trap_Key_GetBindingBuf ;
 int trap_Key_GetOverstrikeMode ;
 int trap_Key_KeynumToStringBuf ;
 int trap_Key_SetBinding ;
 int trap_Key_SetOverstrikeMode ;
 int trap_LAN_LoadCachedServers () ;
 int trap_Milliseconds () ;
 int trap_R_AddRefEntityToScene ;
 int trap_R_ClearScene ;
 int trap_R_DrawStretchPic ;
 int trap_R_ModelBounds ;
 int trap_R_RegisterFont ;
 int trap_R_RegisterModel ;
 void* trap_R_RegisterShaderNoMip (char*) ;
 int trap_R_RenderScene ;
 int trap_S_RegisterSound ;
 int trap_S_StartBackgroundTrack ;
 int trap_S_StartLocalSound ;
 int trap_S_StopBackgroundTrack ;
 TYPE_7__ uiInfo ;
 TYPE_6__ ui_currentMap ;
 TYPE_5__ ui_gameType ;
 TYPE_4__ ui_netGameType ;
 char* va (char*,int ) ;

void _UI_Init( qboolean inGameLoad ) {
 const char *menuSet;
 int start;



 UI_RegisterCvars();
 UI_InitMemory();


 trap_GetGlconfig( &uiInfo.uiDC.glconfig );


 uiInfo.uiDC.yscale = uiInfo.uiDC.glconfig.vidHeight * (1.0/480.0);
 uiInfo.uiDC.xscale = uiInfo.uiDC.glconfig.vidWidth * (1.0/640.0);
 if ( uiInfo.uiDC.glconfig.vidWidth * 480 > uiInfo.uiDC.glconfig.vidHeight * 640 ) {

  uiInfo.uiDC.bias = 0.5 * ( uiInfo.uiDC.glconfig.vidWidth - ( uiInfo.uiDC.glconfig.vidHeight * (640.0/480.0) ) );
 }
 else {

  uiInfo.uiDC.bias = 0;
 }



 uiInfo.uiDC.registerShaderNoMip = &trap_R_RegisterShaderNoMip;
 uiInfo.uiDC.setColor = &UI_SetColor;
 uiInfo.uiDC.drawHandlePic = &UI_DrawHandlePic;
 uiInfo.uiDC.drawStretchPic = &trap_R_DrawStretchPic;
 uiInfo.uiDC.drawText = &Text_Paint;
 uiInfo.uiDC.textWidth = &Text_Width;
 uiInfo.uiDC.textHeight = &Text_Height;
 uiInfo.uiDC.registerModel = &trap_R_RegisterModel;
 uiInfo.uiDC.modelBounds = &trap_R_ModelBounds;
 uiInfo.uiDC.fillRect = &UI_FillRect;
 uiInfo.uiDC.drawRect = &_UI_DrawRect;
 uiInfo.uiDC.drawSides = &_UI_DrawSides;
 uiInfo.uiDC.drawTopBottom = &_UI_DrawTopBottom;
 uiInfo.uiDC.clearScene = &trap_R_ClearScene;
 uiInfo.uiDC.drawSides = &_UI_DrawSides;
 uiInfo.uiDC.addRefEntityToScene = &trap_R_AddRefEntityToScene;
 uiInfo.uiDC.renderScene = &trap_R_RenderScene;
 uiInfo.uiDC.registerFont = &trap_R_RegisterFont;
 uiInfo.uiDC.ownerDrawItem = &UI_OwnerDraw;
 uiInfo.uiDC.getValue = &UI_GetValue;
 uiInfo.uiDC.ownerDrawVisible = &UI_OwnerDrawVisible;
 uiInfo.uiDC.runScript = &UI_RunMenuScript;
 uiInfo.uiDC.getTeamColor = &UI_GetTeamColor;
 uiInfo.uiDC.setCVar = trap_Cvar_Set;
 uiInfo.uiDC.getCVarString = trap_Cvar_VariableStringBuffer;
 uiInfo.uiDC.getCVarValue = trap_Cvar_VariableValue;
 uiInfo.uiDC.drawTextWithCursor = &Text_PaintWithCursor;
 uiInfo.uiDC.setOverstrikeMode = &trap_Key_SetOverstrikeMode;
 uiInfo.uiDC.getOverstrikeMode = &trap_Key_GetOverstrikeMode;
 uiInfo.uiDC.startLocalSound = &trap_S_StartLocalSound;
 uiInfo.uiDC.ownerDrawHandleKey = &UI_OwnerDrawHandleKey;
 uiInfo.uiDC.feederCount = &UI_FeederCount;
 uiInfo.uiDC.feederItemImage = &UI_FeederItemImage;
 uiInfo.uiDC.feederItemText = &UI_FeederItemText;
 uiInfo.uiDC.feederSelection = &UI_FeederSelection;
 uiInfo.uiDC.setBinding = &trap_Key_SetBinding;
 uiInfo.uiDC.getBindingBuf = &trap_Key_GetBindingBuf;
 uiInfo.uiDC.keynumToStringBuf = &trap_Key_KeynumToStringBuf;
 uiInfo.uiDC.executeText = &trap_Cmd_ExecuteText;
 uiInfo.uiDC.Error = &Com_Error;
 uiInfo.uiDC.Print = &Com_Printf;
 uiInfo.uiDC.Pause = &UI_Pause;
 uiInfo.uiDC.ownerDrawWidth = &UI_OwnerDrawWidth;
 uiInfo.uiDC.registerSound = &trap_S_RegisterSound;
 uiInfo.uiDC.startBackgroundTrack = &trap_S_StartBackgroundTrack;
 uiInfo.uiDC.stopBackgroundTrack = &trap_S_StopBackgroundTrack;
 uiInfo.uiDC.playCinematic = &UI_PlayCinematic;
 uiInfo.uiDC.stopCinematic = &UI_StopCinematic;
 uiInfo.uiDC.drawCinematic = &UI_DrawCinematic;
 uiInfo.uiDC.runCinematicFrame = &UI_RunCinematicFrame;

 Init_Display(&uiInfo.uiDC);

 String_Init();

 uiInfo.uiDC.cursor = trap_R_RegisterShaderNoMip( "menu/art/3_cursor2" );
 uiInfo.uiDC.whiteShader = trap_R_RegisterShaderNoMip( "white" );

 AssetCache();

 start = trap_Milliseconds();

  uiInfo.teamCount = 0;
  uiInfo.characterCount = 0;
  uiInfo.aliasCount = 0;





 UI_ParseTeamInfo("teaminfo.txt");
 UI_LoadTeams();
 UI_ParseGameInfo("gameinfo.txt");


 menuSet = UI_Cvar_VariableString("ui_menuFiles");
 if (menuSet == ((void*)0) || menuSet[0] == '\0') {
  menuSet = "ui/menus.txt";
 }







 UI_LoadMenus(menuSet, qtrue);
 UI_LoadMenus("ui/ingame.txt", qfalse);


 Menus_CloseAll();

 trap_LAN_LoadCachedServers();
 UI_LoadBestScores(uiInfo.mapList[ui_currentMap.integer].mapLoadName, uiInfo.gameTypes[ui_gameType.integer].gtEnum);

 UI_BuildQ3Model_List();
 UI_LoadBots();


 uiInfo.effectsColor = gamecodetoui[(int)trap_Cvar_VariableValue("color1")-1];
 uiInfo.currentCrosshair = (int)trap_Cvar_VariableValue("cg_drawCrosshair");
 trap_Cvar_Set("ui_mousePitch", (trap_Cvar_VariableValue("m_pitch") >= 0) ? "0" : "1");

 uiInfo.serverStatus.currentServerCinematic = -1;
 uiInfo.previewMovie = -1;

 if (trap_Cvar_VariableValue("ui_TeamArenaFirstRun") == 0) {
  trap_Cvar_Set("s_volume", "0.8");
  trap_Cvar_Set("s_musicvolume", "0.5");
  trap_Cvar_Set("ui_TeamArenaFirstRun", "1");
 }

 trap_Cvar_Register(((void*)0), "debug_protocol", "", 0 );

 trap_Cvar_Set("ui_actualNetGameType", va("%d", ui_netGameType.integer));
}
