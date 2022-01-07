
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_17__ ;


struct TYPE_23__ {scalar_t__ port; } ;
typedef TYPE_2__ netadr_t ;
struct TYPE_24__ {int cursize; scalar_t__ data; } ;
typedef TYPE_3__ msg_t ;
struct TYPE_21__ {scalar_t__ port; } ;
struct TYPE_22__ {int qport; TYPE_17__ remoteAddress; } ;
struct TYPE_25__ {scalar_t__ state; int lastPacketTime; TYPE_1__ netchan; } ;
typedef TYPE_4__ client_t ;
struct TYPE_27__ {int integer; } ;
struct TYPE_26__ {int time; TYPE_4__* clients; } ;


 scalar_t__ CS_FREE ;
 scalar_t__ CS_ZOMBIE ;
 int Com_Printf (char*) ;
 int MSG_BeginReadingOOB (TYPE_3__*) ;
 int MSG_ReadLong (TYPE_3__*) ;
 int MSG_ReadShort (TYPE_3__*) ;
 int NET_CompareBaseAdr (TYPE_2__,TYPE_17__) ;
 int NET_OutOfBandPrint (int ,TYPE_2__,char*) ;
 int NS_SERVER ;
 int SV_ConnectionlessPacket (TYPE_2__,TYPE_3__*) ;
 int SV_ExecuteClientMessage (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ SV_Netchan_Process (TYPE_4__*,TYPE_3__*) ;
 TYPE_6__* sv_maxclients ;
 TYPE_5__ svs ;

void SV_PacketEvent( netadr_t from, msg_t *msg ) {
 int i;
 client_t *cl;
 int qport;


 if ( msg->cursize >= 4 && *(int *)msg->data == -1) {
  SV_ConnectionlessPacket( from, msg );
  return;
 }



 MSG_BeginReadingOOB( msg );
 MSG_ReadLong( msg );
 qport = MSG_ReadShort( msg ) & 0xffff;


 for (i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++) {
  if (cl->state == CS_FREE) {
   continue;
  }
  if ( !NET_CompareBaseAdr( from, cl->netchan.remoteAddress ) ) {
   continue;
  }


  if (cl->netchan.qport != qport) {
   continue;
  }




  if (cl->netchan.remoteAddress.port != from.port) {
   Com_Printf( "SV_PacketEvent: fixing up a translated port\n" );
   cl->netchan.remoteAddress.port = from.port;
  }


  if (SV_Netchan_Process(cl, msg)) {



   if (cl->state != CS_ZOMBIE) {
    cl->lastPacketTime = svs.time;
    SV_ExecuteClientMessage( cl, msg );
   }
  }
  return;
 }



 NET_OutOfBandPrint( NS_SERVER, from, "disconnect" );
}
