
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sysMsgTime; } ;
struct TYPE_3__ {int oldButtonState; int mouseInitialized; } ;


 scalar_t__ K_MOUSE1 ;
 int SE_KEY ;
 int Sys_QueEvent (int ,int ,scalar_t__,int ,int ,int *) ;
 TYPE_2__ g_wv ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ s_wmv ;

void IN_MouseEvent (int mstate)
{
 int i;

 if ( !s_wmv.mouseInitialized )
  return;


 for (i = 0 ; i < 3 ; i++ )
 {
  if ( (mstate & (1<<i)) &&
   !(s_wmv.oldButtonState & (1<<i)) )
  {
   Sys_QueEvent( g_wv.sysMsgTime, SE_KEY, K_MOUSE1 + i, qtrue, 0, ((void*)0) );
  }

  if ( !(mstate & (1<<i)) &&
   (s_wmv.oldButtonState & (1<<i)) )
  {
   Sys_QueEvent( g_wv.sysMsgTime, SE_KEY, K_MOUSE1 + i, qfalse, 0, ((void*)0) );
  }
 }

 s_wmv.oldButtonState = mstate;
}
