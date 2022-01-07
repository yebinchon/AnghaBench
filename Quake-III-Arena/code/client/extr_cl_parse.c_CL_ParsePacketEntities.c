
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ readcount; scalar_t__ cursize; } ;
typedef TYPE_1__ msg_t ;
struct TYPE_14__ {int number; } ;
typedef TYPE_2__ entityState_t ;
struct TYPE_15__ {int parseEntitiesNum; int numEntities; } ;
typedef TYPE_3__ clSnapshot_t ;
struct TYPE_17__ {int parseEntitiesNum; TYPE_2__* parseEntities; TYPE_2__* entityBaselines; } ;
struct TYPE_16__ {int integer; } ;


 int CL_DeltaEntity (TYPE_1__*,TYPE_3__*,int,TYPE_2__*,int ) ;
 int Com_Error (int ,char*) ;
 int Com_Printf (char*,scalar_t__,int) ;
 int ERR_DROP ;
 int GENTITYNUM_BITS ;
 int MAX_GENTITIES ;
 int MAX_PARSE_ENTITIES ;
 int MSG_ReadBits (TYPE_1__*,int ) ;
 TYPE_5__ cl ;
 TYPE_4__* cl_shownet ;
 int qfalse ;
 int qtrue ;

void CL_ParsePacketEntities( msg_t *msg, clSnapshot_t *oldframe, clSnapshot_t *newframe) {
 int newnum;
 entityState_t *oldstate;
 int oldindex, oldnum;

 newframe->parseEntitiesNum = cl.parseEntitiesNum;
 newframe->numEntities = 0;


 oldindex = 0;
 oldstate = ((void*)0);
 if (!oldframe) {
  oldnum = 99999;
 } else {
  if ( oldindex >= oldframe->numEntities ) {
   oldnum = 99999;
  } else {
   oldstate = &cl.parseEntities[
    (oldframe->parseEntitiesNum + oldindex) & (MAX_PARSE_ENTITIES-1)];
   oldnum = oldstate->number;
  }
 }

 while ( 1 ) {

  newnum = MSG_ReadBits( msg, GENTITYNUM_BITS );

  if ( newnum == (MAX_GENTITIES-1) ) {
   break;
  }

  if ( msg->readcount > msg->cursize ) {
   Com_Error (ERR_DROP,"CL_ParsePacketEntities: end of message");
  }

  while ( oldnum < newnum ) {

   if ( cl_shownet->integer == 3 ) {
    Com_Printf ("%3i:  unchanged: %i\n", msg->readcount, oldnum);
   }
   CL_DeltaEntity( msg, newframe, oldnum, oldstate, qtrue );

   oldindex++;

   if ( oldindex >= oldframe->numEntities ) {
    oldnum = 99999;
   } else {
    oldstate = &cl.parseEntities[
     (oldframe->parseEntitiesNum + oldindex) & (MAX_PARSE_ENTITIES-1)];
    oldnum = oldstate->number;
   }
  }
  if (oldnum == newnum) {

   if ( cl_shownet->integer == 3 ) {
    Com_Printf ("%3i:  delta: %i\n", msg->readcount, newnum);
   }
   CL_DeltaEntity( msg, newframe, newnum, oldstate, qfalse );

   oldindex++;

   if ( oldindex >= oldframe->numEntities ) {
    oldnum = 99999;
   } else {
    oldstate = &cl.parseEntities[
     (oldframe->parseEntitiesNum + oldindex) & (MAX_PARSE_ENTITIES-1)];
    oldnum = oldstate->number;
   }
   continue;
  }

  if ( oldnum > newnum ) {

   if ( cl_shownet->integer == 3 ) {
    Com_Printf ("%3i:  baseline: %i\n", msg->readcount, newnum);
   }
   CL_DeltaEntity( msg, newframe, newnum, &cl.entityBaselines[newnum], qfalse );
   continue;
  }

 }


 while ( oldnum != 99999 ) {

  if ( cl_shownet->integer == 3 ) {
   Com_Printf ("%3i:  unchanged: %i\n", msg->readcount, oldnum);
  }
  CL_DeltaEntity( msg, newframe, oldnum, oldstate, qtrue );

  oldindex++;

  if ( oldindex >= oldframe->numEntities ) {
   oldnum = 99999;
  } else {
   oldstate = &cl.parseEntities[
    (oldframe->parseEntitiesNum + oldindex) & (MAX_PARSE_ENTITIES-1)];
   oldnum = oldstate->number;
  }
 }
}
