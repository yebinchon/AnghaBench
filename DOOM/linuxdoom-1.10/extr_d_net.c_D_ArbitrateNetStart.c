
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int gotinfo ;
typedef int boolean ;
struct TYPE_4__ {int numnodes; scalar_t__ consoleplayer; } ;
struct TYPE_3__ {int checksum; int player; int retransmitfrom; int starttic; scalar_t__ numtics; } ;


 int CheckAbort () ;
 scalar_t__ HGetPacket () ;
 int HSendPacket (int,int) ;
 int I_Error (char*) ;
 int MAXNETNODES ;
 int NCMD_SETUP ;
 int VERSION ;
 int autostart ;
 int deathmatch ;
 TYPE_2__* doomcom ;
 int memset (int*,int ,int) ;
 TYPE_1__* netbuffer ;
 int nomonsters ;
 int printf (char*) ;
 int respawnparm ;
 int startepisode ;
 int startmap ;
 int startskill ;

void D_ArbitrateNetStart (void)
{
    int i;
    boolean gotinfo[MAXNETNODES];

    autostart = 1;
    memset (gotinfo,0,sizeof(gotinfo));

    if (doomcom->consoleplayer)
    {

 printf ("listening for network start info...\n");
 while (1)
 {
     CheckAbort ();
     if (!HGetPacket ())
  continue;
     if (netbuffer->checksum & NCMD_SETUP)
     {
  if (netbuffer->player != VERSION)
      I_Error ("Different DOOM versions cannot play a net game!");
  startskill = netbuffer->retransmitfrom & 15;
  deathmatch = (netbuffer->retransmitfrom & 0xc0) >> 6;
  nomonsters = (netbuffer->retransmitfrom & 0x20) > 0;
  respawnparm = (netbuffer->retransmitfrom & 0x10) > 0;
  startmap = netbuffer->starttic & 0x3f;
  startepisode = netbuffer->starttic >> 6;
  return;
     }
 }
    }
    else
    {

 printf ("sending network start info...\n");
 do
 {
     CheckAbort ();
     for (i=0 ; i<doomcom->numnodes ; i++)
     {
  netbuffer->retransmitfrom = startskill;
  if (deathmatch)
      netbuffer->retransmitfrom |= (deathmatch<<6);
  if (nomonsters)
      netbuffer->retransmitfrom |= 0x20;
  if (respawnparm)
      netbuffer->retransmitfrom |= 0x10;
  netbuffer->starttic = startepisode * 64 + startmap;
  netbuffer->player = VERSION;
  netbuffer->numtics = 0;
  HSendPacket (i, NCMD_SETUP);
     }


     for(i = 10 ; i && HGetPacket(); --i)
     {
  if((netbuffer->player&0x7f) < MAXNETNODES)
      gotinfo[netbuffer->player&0x7f] = 1;
     }







     for (i=1 ; i<doomcom->numnodes ; i++)
  if (!gotinfo[i])
      break;
 } while (i < doomcom->numnodes);
    }
}
