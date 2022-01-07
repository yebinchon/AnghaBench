
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int cursize; } ;
typedef TYPE_3__ msg_t ;
struct TYPE_19__ {scalar_t__ type; } ;
struct TYPE_14__ {size_t outgoingSequence; TYPE_7__ remoteAddress; } ;
struct TYPE_16__ {scalar_t__ nextSnapshotTime; int snapshotMsec; scalar_t__ state; int * downloadName; int rateDelayed; TYPE_2__ netchan; TYPE_1__* frames; } ;
typedef TYPE_4__ client_t ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {scalar_t__ time; } ;
struct TYPE_13__ {scalar_t__ messageSent; int messageAcked; int messageSize; } ;


 scalar_t__ CS_ACTIVE ;
 scalar_t__ NA_LOOPBACK ;
 size_t PACKET_MASK ;
 int SV_Netchan_Transmit (TYPE_4__*,TYPE_3__*) ;
 int SV_RateMsec (TYPE_4__*,int ) ;
 scalar_t__ Sys_IsLANAddress (TYPE_7__) ;
 int qfalse ;
 int qtrue ;
 TYPE_6__* sv_lanForceRate ;
 TYPE_5__ svs ;

void SV_SendMessageToClient( msg_t *msg, client_t *client ) {
 int rateMsec;


 client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageSize = msg->cursize;
 client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageSent = svs.time;
 client->frames[client->netchan.outgoingSequence & PACKET_MASK].messageAcked = -1;


 SV_Netchan_Transmit( client, msg );






 if ( client->netchan.remoteAddress.type == NA_LOOPBACK || (sv_lanForceRate->integer && Sys_IsLANAddress (client->netchan.remoteAddress)) ) {
  client->nextSnapshotTime = svs.time - 1;
  return;
 }


 rateMsec = SV_RateMsec( client, msg->cursize );

 if ( rateMsec < client->snapshotMsec ) {

  rateMsec = client->snapshotMsec;
  client->rateDelayed = qfalse;
 } else {
  client->rateDelayed = qtrue;
 }

 client->nextSnapshotTime = svs.time + rateMsec;


 if ( client->state != CS_ACTIVE ) {



  if ( !*client->downloadName && client->nextSnapshotTime < svs.time + 1000 ) {
   client->nextSnapshotTime = svs.time + 1000;
  }
 }
}
