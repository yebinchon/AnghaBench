
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int msg_t ;
struct TYPE_11__ {int number; } ;
typedef TYPE_2__ entityState_t ;
struct TYPE_12__ {int num_entities; int first_entity; } ;
typedef TYPE_3__ clientSnapshot_t ;
struct TYPE_14__ {TYPE_1__* svEntities; } ;
struct TYPE_13__ {int numSnapshotEntities; TYPE_2__* snapshotEntities; } ;
struct TYPE_10__ {TYPE_2__ baseline; } ;


 int GENTITYNUM_BITS ;
 scalar_t__ MAX_GENTITIES ;
 int MSG_WriteBits (int *,scalar_t__,int ) ;
 int MSG_WriteDeltaEntity (int *,TYPE_2__*,TYPE_2__*,int ) ;
 int qfalse ;
 int qtrue ;
 TYPE_5__ sv ;
 TYPE_4__ svs ;

__attribute__((used)) static void SV_EmitPacketEntities( clientSnapshot_t *from, clientSnapshot_t *to, msg_t *msg ) {
 entityState_t *oldent, *newent;
 int oldindex, newindex;
 int oldnum, newnum;
 int from_num_entities;


 if ( !from ) {
  from_num_entities = 0;
 } else {
  from_num_entities = from->num_entities;
 }

 newent = ((void*)0);
 oldent = ((void*)0);
 newindex = 0;
 oldindex = 0;
 while ( newindex < to->num_entities || oldindex < from_num_entities ) {
  if ( newindex >= to->num_entities ) {
   newnum = 9999;
  } else {
   newent = &svs.snapshotEntities[(to->first_entity+newindex) % svs.numSnapshotEntities];
   newnum = newent->number;
  }

  if ( oldindex >= from_num_entities ) {
   oldnum = 9999;
  } else {
   oldent = &svs.snapshotEntities[(from->first_entity+oldindex) % svs.numSnapshotEntities];
   oldnum = oldent->number;
  }

  if ( newnum == oldnum ) {



   MSG_WriteDeltaEntity (msg, oldent, newent, qfalse );
   oldindex++;
   newindex++;
   continue;
  }

  if ( newnum < oldnum ) {

   MSG_WriteDeltaEntity (msg, &sv.svEntities[newnum].baseline, newent, qtrue );
   newindex++;
   continue;
  }

  if ( newnum > oldnum ) {

   MSG_WriteDeltaEntity (msg, oldent, ((void*)0), qtrue );
   oldindex++;
   continue;
  }
 }

 MSG_WriteBits( msg, (MAX_GENTITIES-1), GENTITYNUM_BITS );
}
