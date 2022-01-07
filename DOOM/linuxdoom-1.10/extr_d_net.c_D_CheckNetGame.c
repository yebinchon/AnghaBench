
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; int consoleplayer; int ticdup; int numplayers; int numnodes; int data; } ;


 int BACKUPTICS ;
 scalar_t__ DOOMCOM_ID ;
 int D_ArbitrateNetStart () ;
 int I_Error (char*) ;
 int I_InitNetwork () ;
 int MAXNETNODES ;
 int consoleplayer ;
 int deathmatch ;
 int displayplayer ;
 TYPE_1__* doomcom ;
 int maxsend ;
 int * netbuffer ;
 scalar_t__ netgame ;
 scalar_t__* nettics ;
 int* nodeingame ;
 int* playeringame ;
 int printf (char*,int,int,int,...) ;
 int* remoteresend ;
 scalar_t__* resendto ;
 int startepisode ;
 int startmap ;
 int startskill ;
 int ticdup ;

void D_CheckNetGame (void)
{
    int i;

    for (i=0 ; i<MAXNETNODES ; i++)
    {
 nodeingame[i] = 0;
        nettics[i] = 0;
 remoteresend[i] = 0;
 resendto[i] = 0;
    }


    I_InitNetwork ();
    if (doomcom->id != DOOMCOM_ID)
 I_Error ("Doomcom buffer invalid!");

    netbuffer = &doomcom->data;
    consoleplayer = displayplayer = doomcom->consoleplayer;
    if (netgame)
 D_ArbitrateNetStart ();

    printf ("startskill %i  deathmatch: %i  startmap: %i  startepisode: %i\n",
     startskill, deathmatch, startmap, startepisode);


    ticdup = doomcom->ticdup;
    maxsend = BACKUPTICS/(2*ticdup)-1;
    if (maxsend<1)
 maxsend = 1;

    for (i=0 ; i<doomcom->numplayers ; i++)
 playeringame[i] = 1;
    for (i=0 ; i<doomcom->numnodes ; i++)
 nodeingame[i] = 1;

    printf ("player %i of %i (%i nodes)\n",
     consoleplayer+1, doomcom->numplayers, doomcom->numnodes);

}
