
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numEntities; int * entities; int ps; int areamask; int serverTime; int ping; int serverCommandSequence; int snapFlags; } ;
typedef TYPE_2__ snapshot_t ;
typedef int qboolean ;
struct TYPE_8__ {int parseEntitiesNum; int numEntities; int ps; int areamask; int serverTime; int ping; int serverCommandNum; int snapFlags; int valid; } ;
typedef TYPE_3__ clSnapshot_t ;
struct TYPE_6__ {int messageNum; } ;
struct TYPE_9__ {int parseEntitiesNum; int * parseEntities; TYPE_3__* snapshots; TYPE_1__ snap; } ;


 int Com_DPrintf (char*,int,int) ;
 int Com_Error (int ,char*) ;
 int Com_Memcpy (int ,int ,int) ;
 int ERR_DROP ;
 int MAX_ENTITIES_IN_SNAPSHOT ;
 int MAX_PARSE_ENTITIES ;
 int PACKET_BACKUP ;
 int PACKET_MASK ;
 TYPE_4__ cl ;
 int qfalse ;
 int qtrue ;

qboolean CL_GetSnapshot( int snapshotNumber, snapshot_t *snapshot ) {
 clSnapshot_t *clSnap;
 int i, count;

 if ( snapshotNumber > cl.snap.messageNum ) {
  Com_Error( ERR_DROP, "CL_GetSnapshot: snapshotNumber > cl.snapshot.messageNum" );
 }


 if ( cl.snap.messageNum - snapshotNumber >= PACKET_BACKUP ) {
  return qfalse;
 }


 clSnap = &cl.snapshots[snapshotNumber & PACKET_MASK];
 if ( !clSnap->valid ) {
  return qfalse;
 }



 if ( cl.parseEntitiesNum - clSnap->parseEntitiesNum >= MAX_PARSE_ENTITIES ) {
  return qfalse;
 }


 snapshot->snapFlags = clSnap->snapFlags;
 snapshot->serverCommandSequence = clSnap->serverCommandNum;
 snapshot->ping = clSnap->ping;
 snapshot->serverTime = clSnap->serverTime;
 Com_Memcpy( snapshot->areamask, clSnap->areamask, sizeof( snapshot->areamask ) );
 snapshot->ps = clSnap->ps;
 count = clSnap->numEntities;
 if ( count > MAX_ENTITIES_IN_SNAPSHOT ) {
  Com_DPrintf( "CL_GetSnapshot: truncated %i entities to %i\n", count, MAX_ENTITIES_IN_SNAPSHOT );
  count = MAX_ENTITIES_IN_SNAPSHOT;
 }
 snapshot->numEntities = count;
 for ( i = 0 ; i < count ; i++ ) {
  snapshot->entities[i] =
   cl.parseEntities[ ( clSnap->parseEntitiesNum + i ) & (MAX_PARSE_ENTITIES-1) ];
 }



 return qtrue;
}
