
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ticcmd_t ;
struct TYPE_6__ {int remotenode; } ;
struct TYPE_5__ {int checksum; int player; int numtics; int * cmds; int retransmitfrom; int starttic; } ;
struct TYPE_4__ {int* message; } ;


 int BACKUPTICS ;
 int ExpandTics (int ) ;
 int G_CheckDemoStatus () ;
 scalar_t__ HGetPacket () ;
 int I_Error (char*) ;
 int NCMD_EXIT ;
 int NCMD_KILL ;
 int NCMD_RETRANSMIT ;
 int NCMD_SETUP ;
 int PL_DRONE ;
 scalar_t__ RESENDCOUNT ;
 size_t consoleplayer ;
 scalar_t__ debugfile ;
 scalar_t__ demorecording ;
 TYPE_3__* doomcom ;
 int* exitmsg ;
 int fprintf (scalar_t__,char*,int,...) ;
 TYPE_2__* netbuffer ;
 int ** netcmds ;
 int* nettics ;
 int* nodeforplayer ;
 int* nodeingame ;
 int* playeringame ;
 TYPE_1__* players ;
 int* remoteresend ;
 scalar_t__* resendcount ;
 int* resendto ;
 int strcpy (int*,char*) ;

void GetPackets (void)
{
    int netconsole;
    int netnode;
    ticcmd_t *src, *dest;
    int realend;
    int realstart;

    while ( HGetPacket() )
    {
 if (netbuffer->checksum & NCMD_SETUP)
     continue;

 netconsole = netbuffer->player & ~PL_DRONE;
 netnode = doomcom->remotenode;



 realstart = ExpandTics (netbuffer->starttic);
 realend = (realstart+netbuffer->numtics);


 if (netbuffer->checksum & NCMD_EXIT)
 {
     if (!nodeingame[netnode])
  continue;
     nodeingame[netnode] = 0;
     playeringame[netconsole] = 0;
     strcpy (exitmsg, "Player 1 left the game");
     exitmsg[7] += netconsole;
     players[consoleplayer].message = exitmsg;
     if (demorecording)
  G_CheckDemoStatus ();
     continue;
 }


 if (netbuffer->checksum & NCMD_KILL)
     I_Error ("Killed by network driver");

 nodeforplayer[netconsole] = netnode;


 if ( resendcount[netnode] <= 0
      && (netbuffer->checksum & NCMD_RETRANSMIT) )
 {
     resendto[netnode] = ExpandTics(netbuffer->retransmitfrom);
     if (debugfile)
  fprintf (debugfile,"retransmit from %i\n", resendto[netnode]);
     resendcount[netnode] = RESENDCOUNT;
 }
 else
     resendcount[netnode]--;


 if (realend == nettics[netnode])
     continue;

 if (realend < nettics[netnode])
 {
     if (debugfile)
  fprintf (debugfile,
    "out of order packet (%i + %i)\n" ,
    realstart,netbuffer->numtics);
     continue;
 }


 if (realstart > nettics[netnode])
 {

     if (debugfile)
  fprintf (debugfile,
    "missed tics from %i (%i - %i)\n",
    netnode, realstart, nettics[netnode]);
     remoteresend[netnode] = 1;
     continue;
 }


        {
     int start;

     remoteresend[netnode] = 0;

     start = nettics[netnode] - realstart;
     src = &netbuffer->cmds[start];

     while (nettics[netnode] < realend)
     {
  dest = &netcmds[netconsole][nettics[netnode]%BACKUPTICS];
  nettics[netnode]++;
  *dest = *src;
  src++;
     }
 }
    }
}
