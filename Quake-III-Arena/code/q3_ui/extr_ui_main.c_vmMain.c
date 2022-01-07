
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_API_VERSION ;

 int UI_ConsoleCommand (int) ;

 int UI_DrawConnectScreen (int) ;




 int UI_Init () ;
 int UI_IsFullscreen () ;

 int UI_KeyEvent (int,int) ;

 int UI_MouseEvent (int,int) ;

 int UI_Refresh (int) ;


 int UI_SetActiveMenu (int) ;
 int UI_Shutdown () ;
 int qtrue ;

int vmMain( int command, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11 ) {
 switch ( command ) {
 case 136:
  return UI_API_VERSION;

 case 134:
  UI_Init();
  return 0;

 case 128:
  UI_Shutdown();
  return 0;

 case 132:
  UI_KeyEvent( arg0, arg1 );
  return 0;

 case 131:
  UI_MouseEvent( arg0, arg1 );
  return 0;

 case 130:
  UI_Refresh( arg0 );
  return 0;

 case 133:
  return UI_IsFullscreen();

 case 129:
  UI_SetActiveMenu( arg0 );
  return 0;

 case 138:
  return UI_ConsoleCommand(arg0);

 case 137:
  UI_DrawConnectScreen( arg0 );
  return 0;
 case 135:
  return qtrue;
 }

 return -1;
}
