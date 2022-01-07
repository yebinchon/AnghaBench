
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ serverTime; } ;
typedef TYPE_1__ snapshot_t ;
typedef scalar_t__ qboolean ;
struct TYPE_9__ {scalar_t__ latestSnapshotNum; TYPE_1__* snap; TYPE_1__* activeSnapshots; } ;
struct TYPE_8__ {scalar_t__ processedSnapshotNum; } ;


 int CG_AddLagometerSnapshotInfo (TYPE_1__*) ;
 int CG_Printf (char*,scalar_t__,scalar_t__) ;
 TYPE_4__ cg ;
 TYPE_3__ cgs ;
 scalar_t__ trap_GetSnapshot (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static snapshot_t *CG_ReadNextSnapshot( void ) {
 qboolean r;
 snapshot_t *dest;

 if ( cg.latestSnapshotNum > cgs.processedSnapshotNum + 1000 ) {
  CG_Printf( "WARNING: CG_ReadNextSnapshot: way out of range, %i > %i",
   cg.latestSnapshotNum, cgs.processedSnapshotNum );
 }

 while ( cgs.processedSnapshotNum < cg.latestSnapshotNum ) {

  if ( cg.snap == &cg.activeSnapshots[0] ) {
   dest = &cg.activeSnapshots[1];
  } else {
   dest = &cg.activeSnapshots[0];
  }


  cgs.processedSnapshotNum++;
  r = trap_GetSnapshot( cgs.processedSnapshotNum, dest );


  if ( cg.snap && r && dest->serverTime == cg.snap->serverTime ) {

  }


  if ( r ) {
   CG_AddLagometerSnapshotInfo( dest );
   return dest;
  }







  CG_AddLagometerSnapshotInfo( ((void*)0) );



 }


 return ((void*)0);
}
