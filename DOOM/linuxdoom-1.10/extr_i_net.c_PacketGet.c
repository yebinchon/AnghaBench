
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sw ;
struct TYPE_10__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int fromaddress ;
struct TYPE_14__ {int numtics; TYPE_4__* cmds; int starttic; int retransmitfrom; int player; int checksum; } ;
typedef TYPE_5__ doomdata_t ;
struct TYPE_17__ {int remotenode; int numnodes; int datalength; } ;
struct TYPE_16__ {int numtics; TYPE_3__* cmds; int starttic; int retransmitfrom; int player; int checksum; } ;
struct TYPE_11__ {scalar_t__ s_addr; } ;
struct TYPE_15__ {TYPE_2__ sin_addr; } ;
struct TYPE_13__ {int buttons; int chatchar; int consistancy; int angleturn; int sidemove; int forwardmove; } ;
struct TYPE_12__ {int buttons; int chatchar; void* consistancy; void* angleturn; int sidemove; int forwardmove; } ;


 scalar_t__ EWOULDBLOCK ;
 int I_Error (char*,int ) ;
 TYPE_9__* doomcom ;
 scalar_t__ errno ;
 int insocket ;
 TYPE_8__* netbuffer ;
 int ntohl (int ) ;
 void* ntohs (int ) ;
 int printf (char*,int,int,int) ;
 int recvfrom (int ,TYPE_5__*,int,int ,struct sockaddr*,int*) ;
 TYPE_6__* sendaddress ;
 int strerror (scalar_t__) ;

void PacketGet (void)
{
    int i;
    int c;
    struct sockaddr_in fromaddress;
    int fromlen;
    doomdata_t sw;

    fromlen = sizeof(fromaddress);
    c = recvfrom (insocket, &sw, sizeof(sw), 0
    , (struct sockaddr *)&fromaddress, &fromlen );
    if (c == -1 )
    {
 if (errno != EWOULDBLOCK)
     I_Error ("GetPacket: %s",strerror(errno));
 doomcom->remotenode = -1;
 return;
    }

    {
 static int first=1;
 if (first)
     printf("len=%d:p=[0x%x 0x%x] \n", c, *(int*)&sw, *((int*)&sw+1));
 first = 0;
    }


    for (i=0 ; i<doomcom->numnodes ; i++)
 if ( fromaddress.sin_addr.s_addr == sendaddress[i].sin_addr.s_addr )
     break;

    if (i == doomcom->numnodes)
    {

 doomcom->remotenode = -1;
 return;
    }

    doomcom->remotenode = i;
    doomcom->datalength = c;


    netbuffer->checksum = ntohl(sw.checksum);
    netbuffer->player = sw.player;
    netbuffer->retransmitfrom = sw.retransmitfrom;
    netbuffer->starttic = sw.starttic;
    netbuffer->numtics = sw.numtics;

    for (c=0 ; c< netbuffer->numtics ; c++)
    {
 netbuffer->cmds[c].forwardmove = sw.cmds[c].forwardmove;
 netbuffer->cmds[c].sidemove = sw.cmds[c].sidemove;
 netbuffer->cmds[c].angleturn = ntohs(sw.cmds[c].angleturn);
 netbuffer->cmds[c].consistancy = ntohs(sw.cmds[c].consistancy);
 netbuffer->cmds[c].chatchar = sw.cmds[c].chatchar;
 netbuffer->cmds[c].buttons = sw.cmds[c].buttons;
    }
}
