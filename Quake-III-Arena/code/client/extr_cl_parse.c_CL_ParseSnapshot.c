
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int newSnap ;
typedef int msg_t ;
struct TYPE_20__ {scalar_t__ commandTime; } ;
struct TYPE_15__ {int messageNum; int deltaNum; int parseEntitiesNum; int ping; TYPE_8__ ps; void* valid; int areamask; void* snapFlags; int serverTime; int serverCommandNum; } ;
typedef TYPE_3__ clSnapshot_t ;
struct TYPE_19__ {int parseEntitiesNum; void* newSnapshots; TYPE_3__ snap; TYPE_3__* snapshots; TYPE_2__* outPackets; } ;
struct TYPE_18__ {int integer; } ;
struct TYPE_13__ {int outgoingSequence; } ;
struct TYPE_17__ {int serverMessageSequence; TYPE_1__ netchan; void* demowaiting; int serverCommandSequence; } ;
struct TYPE_16__ {int realtime; } ;
struct TYPE_14__ {scalar_t__ p_serverTime; int p_realtime; } ;


 int CL_ParsePacketEntities (int *,TYPE_3__*,TYPE_3__*) ;
 int Com_Memset (TYPE_3__*,int ,int) ;
 int Com_Printf (char*,...) ;
 int MAX_PARSE_ENTITIES ;
 void* MSG_ReadByte (int *) ;
 int MSG_ReadData (int *,int *,int) ;
 int MSG_ReadDeltaPlayerstate (int *,TYPE_8__*,TYPE_8__*) ;
 int MSG_ReadLong (int *) ;
 int PACKET_BACKUP ;
 size_t PACKET_MASK ;
 int SHOWNET (int *,char*) ;
 TYPE_7__ cl ;
 TYPE_6__* cl_shownet ;
 TYPE_5__ clc ;
 TYPE_4__ cls ;
 void* qfalse ;
 void* qtrue ;

void CL_ParseSnapshot( msg_t *msg ) {
 int len;
 clSnapshot_t *old;
 clSnapshot_t newSnap;
 int deltaNum;
 int oldMessageNum;
 int i, packetNum;







 Com_Memset (&newSnap, 0, sizeof(newSnap));



 newSnap.serverCommandNum = clc.serverCommandSequence;

 newSnap.serverTime = MSG_ReadLong( msg );

 newSnap.messageNum = clc.serverMessageSequence;

 deltaNum = MSG_ReadByte( msg );
 if ( !deltaNum ) {
  newSnap.deltaNum = -1;
 } else {
  newSnap.deltaNum = newSnap.messageNum - deltaNum;
 }
 newSnap.snapFlags = MSG_ReadByte( msg );





 if ( newSnap.deltaNum <= 0 ) {
  newSnap.valid = qtrue;
  old = ((void*)0);
  clc.demowaiting = qfalse;
 } else {
  old = &cl.snapshots[newSnap.deltaNum & PACKET_MASK];
  if ( !old->valid ) {

   Com_Printf ("Delta from invalid frame (not supposed to happen!).\n");
  } else if ( old->messageNum != newSnap.deltaNum ) {


   Com_Printf ("Delta frame too old.\n");
  } else if ( cl.parseEntitiesNum - old->parseEntitiesNum > MAX_PARSE_ENTITIES-128 ) {
   Com_Printf ("Delta parseEntitiesNum too old.\n");
  } else {
   newSnap.valid = qtrue;
  }
 }


 len = MSG_ReadByte( msg );
 MSG_ReadData( msg, &newSnap.areamask, len);


 SHOWNET( msg, "playerstate" );
 if ( old ) {
  MSG_ReadDeltaPlayerstate( msg, &old->ps, &newSnap.ps );
 } else {
  MSG_ReadDeltaPlayerstate( msg, ((void*)0), &newSnap.ps );
 }


 SHOWNET( msg, "packet entities" );
 CL_ParsePacketEntities( msg, old, &newSnap );



 if ( !newSnap.valid ) {
  return;
 }





 oldMessageNum = cl.snap.messageNum + 1;

 if ( newSnap.messageNum - oldMessageNum >= PACKET_BACKUP ) {
  oldMessageNum = newSnap.messageNum - ( PACKET_BACKUP - 1 );
 }
 for ( ; oldMessageNum < newSnap.messageNum ; oldMessageNum++ ) {
  cl.snapshots[oldMessageNum & PACKET_MASK].valid = qfalse;
 }


 cl.snap = newSnap;
 cl.snap.ping = 999;

 for ( i = 0 ; i < PACKET_BACKUP ; i++ ) {
  packetNum = ( clc.netchan.outgoingSequence - 1 - i ) & PACKET_MASK;
  if ( cl.snap.ps.commandTime >= cl.outPackets[ packetNum ].p_serverTime ) {
   cl.snap.ping = cls.realtime - cl.outPackets[ packetNum ].p_realtime;
   break;
  }
 }

 cl.snapshots[cl.snap.messageNum & PACKET_MASK] = cl.snap;

 if (cl_shownet->integer == 3) {
  Com_Printf( "   snapshot:%i  delta:%i  ping:%i\n", cl.snap.messageNum,
  cl.snap.deltaNum, cl.snap.ping );
 }

 cl.newSnapshots = qtrue;
}
