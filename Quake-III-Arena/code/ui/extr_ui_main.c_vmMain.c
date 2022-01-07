
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UI_API_VERSION ;

 int UI_ConsoleCommand (int) ;

 int UI_DrawConnectScreen (int) ;
 int _UI_Init (int) ;
 int _UI_IsFullscreen () ;
 int _UI_KeyEvent (int,int) ;
 int _UI_MouseEvent (int,int) ;
 int _UI_Refresh (int) ;
 int _UI_SetActiveMenu (int) ;
 int _UI_Shutdown () ;
 int qtrue ;

int vmMain( int command, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11 ) {
  switch ( command ) {
   case 136:
    return UI_API_VERSION;

   case 134:
    _UI_Init(arg0);
    return 0;

   case 128:
    _UI_Shutdown();
    return 0;

   case 132:
    _UI_KeyEvent( arg0, arg1 );
    return 0;

   case 131:
    _UI_MouseEvent( arg0, arg1 );
    return 0;

   case 130:
    _UI_Refresh( arg0 );
    return 0;

   case 133:
    return _UI_IsFullscreen();

   case 129:
    _UI_SetActiveMenu( arg0 );
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
