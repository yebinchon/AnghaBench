
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int netsrc_t ;
struct TYPE_4__ {int qport; int outgoingSequence; scalar_t__ incomingSequence; int remoteAddress; int sock; } ;
typedef TYPE_1__ netchan_t ;
typedef int netadr_t ;


 int Com_Memset (TYPE_1__*,int ,int) ;

void Netchan_Setup( netsrc_t sock, netchan_t *chan, netadr_t adr, int qport ) {
 Com_Memset (chan, 0, sizeof(*chan));

 chan->sock = sock;
 chan->remoteAddress = adr;
 chan->qport = qport;
 chan->incomingSequence = 0;
 chan->outgoingSequence = 1;
}
