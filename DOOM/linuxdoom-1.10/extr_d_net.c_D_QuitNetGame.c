
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numnodes; } ;
struct TYPE_3__ {int player; scalar_t__ numtics; } ;


 int HSendPacket (int,int ) ;
 int I_WaitVBL (int) ;
 int NCMD_EXIT ;
 int consoleplayer ;
 scalar_t__ debugfile ;
 scalar_t__ demoplayback ;
 TYPE_2__* doomcom ;
 int fclose (scalar_t__) ;
 TYPE_1__* netbuffer ;
 int netgame ;
 scalar_t__* nodeingame ;
 int usergame ;

void D_QuitNetGame (void)
{
    int i, j;

    if (debugfile)
 fclose (debugfile);

    if (!netgame || !usergame || consoleplayer == -1 || demoplayback)
 return;


    netbuffer->player = consoleplayer;
    netbuffer->numtics = 0;
    for (i=0 ; i<4 ; i++)
    {
 for (j=1 ; j<doomcom->numnodes ; j++)
     if (nodeingame[j])
  HSendPacket (j, NCMD_EXIT);
 I_WaitVBL (1);
    }
}
