
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int stereoFrame_t ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_7__ {int vidWidth; int vidHeight; } ;
struct TYPE_9__ {int state; int keyCatchers; int realtime; int whiteShader; TYPE_1__ glconfig; } ;
struct TYPE_8__ {int (* SetColor ) (int *) ;int (* DrawStretchPic ) (int ,int ,int,int,int ,int ,int ,int ,int ) ;int (* BeginFrame ) (int ) ;} ;
 int CL_CGameRendering (int ) ;
 int Com_DPrintf (char*) ;
 int Com_Error (int ,char*) ;
 int Con_DrawConsole () ;
 int ERR_FATAL ;
 int KEYCATCH_UI ;
 int SCR_DrawCinematic () ;
 int SCR_DrawDebugGraph () ;
 int SCR_DrawDemoRecording () ;
 int S_StopAllSounds () ;
 int UIMENU_MAIN ;
 int UI_DRAW_CONNECT_SCREEN ;
 int UI_IS_FULLSCREEN ;
 int UI_REFRESH ;
 int UI_SET_ACTIVE_MENU ;
 int VM_Call (scalar_t__,int ,...) ;
 TYPE_6__* cl_debugMove ;
 TYPE_5__* cl_debuggraph ;
 TYPE_4__* cl_timegraph ;
 TYPE_3__ cls ;
 int ** g_color_table ;
 int qfalse ;
 int qtrue ;
 TYPE_2__ re ;
 int stub1 (int ) ;
 int stub2 (int *) ;
 int stub3 (int ,int ,int,int,int ,int ,int ,int ,int ) ;
 int stub4 (int *) ;
 scalar_t__ uivm ;

void SCR_DrawScreenField( stereoFrame_t stereoFrame ) {
 re.BeginFrame( stereoFrame );



 if ( cls.state != 135 ) {
  if ( cls.glconfig.vidWidth * 480 > cls.glconfig.vidHeight * 640 ) {
   re.SetColor( g_color_table[0] );
   re.DrawStretchPic( 0, 0, cls.glconfig.vidWidth, cls.glconfig.vidHeight, 0, 0, 0, 0, cls.whiteShader );
   re.SetColor( ((void*)0) );
  }
 }

 if ( !uivm ) {
  Com_DPrintf("draw screen without UI loaded\n");
  return;
 }



 if ( !VM_Call( uivm, UI_IS_FULLSCREEN )) {
  switch( cls.state ) {
  default:
   Com_Error( ERR_FATAL, "SCR_DrawScreenField: bad cls.state" );
   break;
  case 133:
   SCR_DrawCinematic();
   break;
  case 130:

   S_StopAllSounds();
   VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
   break;
  case 131:
  case 134:
  case 132:


   VM_Call( uivm, UI_REFRESH, cls.realtime );
   VM_Call( uivm, UI_DRAW_CONNECT_SCREEN, qfalse );
   break;
  case 129:
  case 128:

   CL_CGameRendering( stereoFrame );




   VM_Call( uivm, UI_REFRESH, cls.realtime );
   VM_Call( uivm, UI_DRAW_CONNECT_SCREEN, qtrue );
   break;
  case 135:
   CL_CGameRendering( stereoFrame );
   SCR_DrawDemoRecording();
   break;
  }
 }


 if ( cls.keyCatchers & KEYCATCH_UI && uivm ) {
  VM_Call( uivm, UI_REFRESH, cls.realtime );
 }


 Con_DrawConsole ();


 if ( cl_debuggraph->integer || cl_timegraph->integer || cl_debugMove->integer ) {
  SCR_DrawDebugGraph ();
 }
}
