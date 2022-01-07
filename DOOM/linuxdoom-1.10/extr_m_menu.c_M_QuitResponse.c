
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_Quit () ;
 int I_WaitVBL (int) ;
 int S_StartSound (int *,int ) ;
 scalar_t__ commercial ;
 scalar_t__ gamemode ;
 int gametic ;
 int netgame ;
 int * quitsounds ;
 int * quitsounds2 ;

void M_QuitResponse(int ch)
{
    if (ch != 'y')
 return;
    if (!netgame)
    {
 if (gamemode == commercial)
     S_StartSound(((void*)0),quitsounds2[(gametic>>2)&7]);
 else
     S_StartSound(((void*)0),quitsounds[(gametic>>2)&7]);
 I_WaitVBL(105);
    }
    I_Quit ();
}
