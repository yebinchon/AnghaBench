
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cursory; int cursorx; } ;
struct TYPE_3__ {int cursorY; int cursorX; } ;




 int CG_ConsoleCommand () ;
 int CG_CrosshairPlayer () ;

 int CG_DrawActiveFrame (int,int,int) ;

 int CG_Error (char*,int) ;
 int CG_EventHandling (int) ;

 int CG_Init (int,int,int) ;

 int CG_KeyEvent (int,int) ;

 int CG_LastAttacker () ;

 int CG_MouseEvent (int,int) ;

 int CG_Shutdown () ;
 TYPE_2__ cgDC ;
 TYPE_1__ cgs ;

int vmMain( int command, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11 ) {

 switch ( command ) {
 case 132:
  CG_Init( arg0, arg1, arg2 );
  return 0;
 case 128:
  CG_Shutdown();
  return 0;
 case 136:
  return CG_ConsoleCommand();
 case 134:
  CG_DrawActiveFrame( arg0, arg1, arg2 );
  return 0;
 case 135:
  return CG_CrosshairPlayer();
 case 130:
  return CG_LastAttacker();
 case 131:
  CG_KeyEvent(arg0, arg1);
  return 0;
 case 129:




  CG_MouseEvent(arg0, arg1);
  return 0;
 case 133:
  CG_EventHandling(arg0);
  return 0;
 default:
  CG_Error( "vmMain: unknown command %i", command );
  break;
 }
 return -1;
}
