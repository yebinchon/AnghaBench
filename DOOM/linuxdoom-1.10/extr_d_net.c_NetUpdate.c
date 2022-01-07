
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numnodes; int extratics; } ;
struct TYPE_3__ {int starttic; int numtics; scalar_t__ retransmitfrom; int * cmds; int player; } ;


 int BACKUPTICS ;
 int D_ProcessEvents () ;
 int G_BuildTiccmd (int *) ;
 int GetPackets () ;
 int HSendPacket (int,int ) ;
 int I_Error (char*) ;
 int I_GetTime () ;
 int I_StartTic () ;
 int NCMD_RETRANSMIT ;
 int consoleplayer ;
 TYPE_2__* doomcom ;
 int gametic ;
 int gametime ;
 int * localcmds ;
 int maketic ;
 TYPE_1__* netbuffer ;
 scalar_t__* nettics ;
 scalar_t__* nodeingame ;
 scalar_t__* remoteresend ;
 int* resendto ;
 scalar_t__ singletics ;
 int skiptics ;
 int ticdup ;

void NetUpdate (void)
{
    int nowtime;
    int newtics;
    int i,j;
    int realstart;
    int gameticdiv;


    nowtime = I_GetTime ()/ticdup;
    newtics = nowtime - gametime;
    gametime = nowtime;

    if (newtics <= 0)
 goto listen;

    if (skiptics <= newtics)
    {
 newtics -= skiptics;
 skiptics = 0;
    }
    else
    {
 skiptics -= newtics;
 newtics = 0;
    }


    netbuffer->player = consoleplayer;


    gameticdiv = gametic/ticdup;
    for (i=0 ; i<newtics ; i++)
    {
 I_StartTic ();
 D_ProcessEvents ();
 if (maketic - gameticdiv >= BACKUPTICS/2-1)
     break;


 G_BuildTiccmd (&localcmds[maketic%BACKUPTICS]);
 maketic++;
    }


    if (singletics)
 return;


    for (i=0 ; i<doomcom->numnodes ; i++)
 if (nodeingame[i])
 {
     netbuffer->starttic = realstart = resendto[i];
     netbuffer->numtics = maketic - realstart;
     if (netbuffer->numtics > BACKUPTICS)
  I_Error ("NetUpdate: netbuffer->numtics > BACKUPTICS");

     resendto[i] = maketic - doomcom->extratics;

     for (j=0 ; j< netbuffer->numtics ; j++)
  netbuffer->cmds[j] =
      localcmds[(realstart+j)%BACKUPTICS];

     if (remoteresend[i])
     {
  netbuffer->retransmitfrom = nettics[i];
  HSendPacket (i, NCMD_RETRANSMIT);
     }
     else
     {
  netbuffer->retransmitfrom = 0;
  HSendPacket (i, 0);
     }
 }


  listen:
    GetPackets ();
}
