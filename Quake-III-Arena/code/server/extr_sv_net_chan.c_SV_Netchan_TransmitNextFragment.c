
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int data; int cursize; } ;
struct TYPE_9__ {struct TYPE_9__* next; TYPE_6__ msg; } ;
typedef TYPE_1__ netchan_buffer_t ;
struct TYPE_12__ {int unsentFragments; } ;
struct TYPE_10__ {TYPE_1__* netchan_start_queue; TYPE_1__** netchan_end_queue; TYPE_7__ netchan; } ;
typedef TYPE_2__ client_t ;


 int Com_DPrintf (char*) ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 int Netchan_Transmit (TYPE_7__*,int ,int ) ;
 int Netchan_TransmitNextFragment (TYPE_7__*) ;
 int SV_Netchan_Encode (TYPE_2__*,TYPE_6__*) ;
 int Z_Free (TYPE_1__*) ;

void SV_Netchan_TransmitNextFragment( client_t *client ) {
 Netchan_TransmitNextFragment( &client->netchan );
 if (!client->netchan.unsentFragments)
 {

  if (!client->netchan_end_queue) {
   Com_Error(ERR_DROP, "netchan queue is not properly initialized in SV_Netchan_TransmitNextFragment\n");
  }

  if (client->netchan_start_queue) {
   netchan_buffer_t *netbuf;
   Com_DPrintf("#462 Netchan_TransmitNextFragment: popping a queued message for transmit\n");
   netbuf = client->netchan_start_queue;
   SV_Netchan_Encode( client, &netbuf->msg );
   Netchan_Transmit( &client->netchan, netbuf->msg.cursize, netbuf->msg.data );

   client->netchan_start_queue = netbuf->next;
   if (!client->netchan_start_queue) {
    Com_DPrintf("#462 Netchan_TransmitNextFragment: emptied queue\n");
    client->netchan_end_queue = &client->netchan_start_queue;
   }
   else
    Com_DPrintf("#462 Netchan_TransmitNextFragment: remaining queued message\n");
   Z_Free(netbuf);
  }
 }
}
