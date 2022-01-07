
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* next; int msgBuffer; int msg; } ;
typedef TYPE_1__ netchan_buffer_t ;
struct TYPE_13__ {int data; int cursize; } ;
typedef TYPE_2__ msg_t ;
struct TYPE_15__ {scalar_t__ unsentFragments; } ;
struct TYPE_14__ {TYPE_8__ netchan; TYPE_1__** netchan_end_queue; } ;
typedef TYPE_3__ client_t ;


 int Com_DPrintf (char*) ;
 int MSG_Copy (int *,int ,int,TYPE_2__*) ;
 int MSG_WriteByte (TYPE_2__*,int ) ;
 int Netchan_Transmit (TYPE_8__*,int ,int ) ;
 int Netchan_TransmitNextFragment (TYPE_8__*) ;
 int SV_Netchan_Encode (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ Z_Malloc (int) ;
 int svc_EOF ;

void SV_Netchan_Transmit( client_t *client, msg_t *msg) {
 MSG_WriteByte( msg, svc_EOF );
 if (client->netchan.unsentFragments) {
  netchan_buffer_t *netbuf;
  Com_DPrintf("#462 SV_Netchan_Transmit: unsent fragments, stacked\n");
  netbuf = (netchan_buffer_t *)Z_Malloc(sizeof(netchan_buffer_t));

  MSG_Copy(&netbuf->msg, netbuf->msgBuffer, sizeof( netbuf->msgBuffer ), msg);
  netbuf->next = ((void*)0);

  *client->netchan_end_queue = netbuf;
  client->netchan_end_queue = &(*client->netchan_end_queue)->next;

  Netchan_TransmitNextFragment(&client->netchan);
 } else {
  SV_Netchan_Encode( client, msg );
  Netchan_Transmit( &client->netchan, msg->cursize, msg->data );
 }
}
