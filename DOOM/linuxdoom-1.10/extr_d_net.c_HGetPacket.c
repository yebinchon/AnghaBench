
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
typedef int boolean ;
struct TYPE_5__ {int remotenode; int datalength; int command; } ;
struct TYPE_4__ {int checksum; int numtics; int starttic; int retransmitfrom; } ;


 int CMD_GET ;
 int ExpandTics (int ) ;
 int I_NetCmd () ;
 int NCMD_CHECKSUM ;
 int NCMD_RETRANSMIT ;
 int NCMD_SETUP ;
 int NetbufferChecksum () ;
 int NetbufferSize () ;
 scalar_t__ debugfile ;
 scalar_t__ demoplayback ;
 TYPE_3__* doomcom ;
 int fprintf (scalar_t__,char*,...) ;
 TYPE_1__* netbuffer ;
 int netgame ;
 int reboundpacket ;
 TYPE_1__ reboundstore ;

boolean HGetPacket (void)
{
    if (reboundpacket)
    {
 *netbuffer = reboundstore;
 doomcom->remotenode = 0;
 reboundpacket = 0;
 return 1;
    }

    if (!netgame)
 return 0;

    if (demoplayback)
 return 0;

    doomcom->command = CMD_GET;
    I_NetCmd ();

    if (doomcom->remotenode == -1)
 return 0;

    if (doomcom->datalength != NetbufferSize ())
    {
 if (debugfile)
     fprintf (debugfile,"bad packet length %i\n",doomcom->datalength);
 return 0;
    }

    if (NetbufferChecksum () != (netbuffer->checksum&NCMD_CHECKSUM) )
    {
 if (debugfile)
     fprintf (debugfile,"bad packet checksum\n");
 return 0;
    }

    if (debugfile)
    {
 int realretrans;
 int i;

 if (netbuffer->checksum & NCMD_SETUP)
     fprintf (debugfile,"setup packet\n");
 else
 {
     if (netbuffer->checksum & NCMD_RETRANSMIT)
  realretrans = ExpandTics (netbuffer->retransmitfrom);
     else
  realretrans = -1;

     fprintf (debugfile,"get %i = (%i + %i, R %i)[%i] ",
       doomcom->remotenode,
       ExpandTics(netbuffer->starttic),
       netbuffer->numtics, realretrans, doomcom->datalength);

     for (i=0 ; i<doomcom->datalength ; i++)
  fprintf (debugfile,"%i ",((byte *)netbuffer)[i]);
     fprintf (debugfile,"\n");
 }
    }
    return 1;
}
