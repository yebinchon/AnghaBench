
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int snapFlags; } ;
typedef TYPE_3__ snapshot_t ;
struct TYPE_11__ {int latestSnapshotNum; scalar_t__ time; TYPE_2__* nextSnap; TYPE_1__* snap; int latestSnapshotTime; } ;
struct TYPE_9__ {scalar_t__ serverTime; } ;
struct TYPE_8__ {scalar_t__ serverTime; } ;


 int CG_Error (char*) ;
 TYPE_3__* CG_ReadNextSnapshot () ;
 int CG_SetInitialSnapshot (TYPE_3__*) ;
 int CG_SetNextSnap (TYPE_3__*) ;
 int CG_TransitionSnapshot () ;
 int SNAPFLAG_NOT_ACTIVE ;
 TYPE_4__ cg ;
 int trap_GetCurrentSnapshotNumber (int*,int *) ;

void CG_ProcessSnapshots( void ) {
 snapshot_t *snap;
 int n;


 trap_GetCurrentSnapshotNumber( &n, &cg.latestSnapshotTime );
 if ( n != cg.latestSnapshotNum ) {
  if ( n < cg.latestSnapshotNum ) {

   CG_Error( "CG_ProcessSnapshots: n < cg.latestSnapshotNum" );
  }
  cg.latestSnapshotNum = n;
 }




 while ( !cg.snap ) {
  snap = CG_ReadNextSnapshot();
  if ( !snap ) {

   return;
  }



  if ( !( snap->snapFlags & SNAPFLAG_NOT_ACTIVE ) ) {
   CG_SetInitialSnapshot( snap );
  }
 }




 do {

  if ( !cg.nextSnap ) {
   snap = CG_ReadNextSnapshot();



   if ( !snap ) {
    break;
   }

   CG_SetNextSnap( snap );



   if ( cg.nextSnap->serverTime < cg.snap->serverTime ) {
    CG_Error( "CG_ProcessSnapshots: Server time went backwards" );
   }
  }


  if ( cg.time >= cg.snap->serverTime && cg.time < cg.nextSnap->serverTime ) {
   break;
  }


  CG_TransitionSnapshot();
 } while ( 1 );


 if ( cg.snap == ((void*)0) ) {
  CG_Error( "CG_ProcessSnapshots: cg.snap == NULL" );
 }
 if ( cg.time < cg.snap->serverTime ) {

  cg.time = cg.snap->serverTime;
 }
 if ( cg.nextSnap != ((void*)0) && cg.nextSnap->serverTime <= cg.time ) {
  CG_Error( "CG_ProcessSnapshots: cg.nextSnap->serverTime <= cg.time" );
 }

}
