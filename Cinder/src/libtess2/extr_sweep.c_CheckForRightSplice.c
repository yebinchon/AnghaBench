
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;


struct TYPE_25__ {int pqHandle; } ;
struct TYPE_24__ {int dirty; TYPE_2__* eUp; } ;
struct TYPE_23__ {struct TYPE_23__* Oprev; int Sym; TYPE_6__* Org; int Dst; } ;
struct TYPE_22__ {int env; int mesh; int pq; } ;
struct TYPE_21__ {int dirty; } ;
typedef TYPE_1__ TESStesselator ;
typedef TYPE_2__ TESShalfEdge ;
typedef TYPE_3__ ActiveRegion ;


 scalar_t__ EdgeSign (int ,TYPE_6__*,TYPE_6__*) ;
 int FALSE ;
 TYPE_15__* RegionAbove (TYPE_3__*) ;
 TYPE_3__* RegionBelow (TYPE_3__*) ;
 int SpliceMergeVertices (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int TRUE ;
 int VertEq (TYPE_6__*,TYPE_6__*) ;
 scalar_t__ VertLeq (TYPE_6__*,TYPE_6__*) ;
 int longjmp (int ,int) ;
 int pqDelete (int ,int ) ;
 int tessMeshSplice (int ,TYPE_2__*,TYPE_2__*) ;
 int * tessMeshSplitEdge (int ,int ) ;

__attribute__((used)) static int CheckForRightSplice( TESStesselator *tess, ActiveRegion *regUp )
{
 ActiveRegion *regLo = RegionBelow(regUp);
 TESShalfEdge *eUp = regUp->eUp;
 TESShalfEdge *eLo = regLo->eUp;

 if( VertLeq( eUp->Org, eLo->Org )) {
  if( EdgeSign( eLo->Dst, eUp->Org, eLo->Org ) > 0 ) return FALSE;


  if( ! VertEq( eUp->Org, eLo->Org )) {

   if ( tessMeshSplitEdge( tess->mesh, eLo->Sym ) == ((void*)0)) longjmp(tess->env,1);
   if ( !tessMeshSplice( tess->mesh, eUp, eLo->Oprev ) ) longjmp(tess->env,1);
   regUp->dirty = regLo->dirty = TRUE;

  } else if( eUp->Org != eLo->Org ) {

   pqDelete( tess->pq, eUp->Org->pqHandle );
   SpliceMergeVertices( tess, eLo->Oprev, eUp );
  }
 } else {
  if( EdgeSign( eUp->Dst, eLo->Org, eUp->Org ) < 0 ) return FALSE;


  RegionAbove(regUp)->dirty = regUp->dirty = TRUE;
  if (tessMeshSplitEdge( tess->mesh, eUp->Sym ) == ((void*)0)) longjmp(tess->env,1);
  if ( !tessMeshSplice( tess->mesh, eLo->Oprev, eUp ) ) longjmp(tess->env,1);
 }
 return TRUE;
}
