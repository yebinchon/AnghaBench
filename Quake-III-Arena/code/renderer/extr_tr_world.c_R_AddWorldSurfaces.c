
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int integer; } ;
struct TYPE_8__ {int rdflags; int num_dlights; } ;
struct TYPE_6__ {int * visBounds; } ;
struct TYPE_9__ {int currentEntityNum; int shiftedEntityNum; TYPE_3__ refdef; TYPE_2__* world; TYPE_1__ viewParms; } ;
struct TYPE_7__ {int nodes; } ;


 int ClearBounds (int ,int ) ;
 int ENTITYNUM_WORLD ;
 int QSORT_ENTITYNUM_SHIFT ;
 int RDF_NOWORLDMODEL ;
 int R_MarkLeaves () ;
 int R_RecursiveWorldNode (int ,int,int) ;
 TYPE_5__* r_drawworld ;
 TYPE_4__ tr ;

void R_AddWorldSurfaces (void) {
 if ( !r_drawworld->integer ) {
  return;
 }

 if ( tr.refdef.rdflags & RDF_NOWORLDMODEL ) {
  return;
 }

 tr.currentEntityNum = ENTITYNUM_WORLD;
 tr.shiftedEntityNum = tr.currentEntityNum << QSORT_ENTITYNUM_SHIFT;


 R_MarkLeaves ();


 ClearBounds( tr.viewParms.visBounds[0], tr.viewParms.visBounds[1] );


 if ( tr.refdef.num_dlights > 32 ) {
  tr.refdef.num_dlights = 32 ;
 }
 R_RecursiveWorldNode( tr.world->nodes, 15, ( 1 << tr.refdef.num_dlights ) - 1 );
}
