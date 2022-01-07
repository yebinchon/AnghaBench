
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;


struct TYPE_35__ {TYPE_4__* eUp; } ;
struct TYPE_34__ {scalar_t__ Dst; TYPE_2__* Sym; struct TYPE_34__* Onext; int Lprev; struct TYPE_34__* Oprev; int Org; } ;
struct TYPE_33__ {int env; int mesh; int event; } ;
struct TYPE_32__ {TYPE_1__* activeRegion; } ;
struct TYPE_31__ {void* fixUpperEdge; } ;
typedef TYPE_3__ TESStesselator ;
typedef TYPE_4__ TESShalfEdge ;
typedef TYPE_5__ ActiveRegion ;


 int AddRightEdges (TYPE_3__*,TYPE_5__*,TYPE_4__*,TYPE_4__*,TYPE_4__*,void*) ;
 int CheckForIntersect (TYPE_3__*,TYPE_5__*) ;
 void* FALSE ;
 TYPE_4__* FinishLeftRegions (TYPE_3__*,TYPE_5__*,TYPE_5__*) ;
 TYPE_5__* RegionBelow (TYPE_5__*) ;
 void* TRUE ;
 TYPE_5__* TopLeftRegion (TYPE_3__*,TYPE_5__*) ;
 scalar_t__ VertEq (int ,int ) ;
 scalar_t__ VertLeq (int ,int ) ;
 int WalkDirtyRegions (TYPE_3__*,TYPE_5__*) ;
 int longjmp (int ,int) ;
 TYPE_4__* tessMeshConnect (int ,int ,TYPE_4__*) ;
 int tessMeshSplice (int ,TYPE_4__*,TYPE_4__*) ;

__attribute__((used)) static void ConnectRightVertex( TESStesselator *tess, ActiveRegion *regUp,
          TESShalfEdge *eBottomLeft )
{
 TESShalfEdge *eNew;
 TESShalfEdge *eTopLeft = eBottomLeft->Onext;
 ActiveRegion *regLo = RegionBelow(regUp);
 TESShalfEdge *eUp = regUp->eUp;
 TESShalfEdge *eLo = regLo->eUp;
 int degenerate = FALSE;

 if( eUp->Dst != eLo->Dst ) {
  (void) CheckForIntersect( tess, regUp );
 }




 if( VertEq( eUp->Org, tess->event )) {
  if ( !tessMeshSplice( tess->mesh, eTopLeft->Oprev, eUp ) ) longjmp(tess->env,1);
  regUp = TopLeftRegion( tess, regUp );
  if (regUp == ((void*)0)) longjmp(tess->env,1);
  eTopLeft = RegionBelow( regUp )->eUp;
  FinishLeftRegions( tess, RegionBelow(regUp), regLo );
  degenerate = TRUE;
 }
 if( VertEq( eLo->Org, tess->event )) {
  if ( !tessMeshSplice( tess->mesh, eBottomLeft, eLo->Oprev ) ) longjmp(tess->env,1);
  eBottomLeft = FinishLeftRegions( tess, regLo, ((void*)0) );
  degenerate = TRUE;
 }
 if( degenerate ) {
  AddRightEdges( tess, regUp, eBottomLeft->Onext, eTopLeft, eTopLeft, TRUE );
  return;
 }




 if( VertLeq( eLo->Org, eUp->Org )) {
  eNew = eLo->Oprev;
 } else {
  eNew = eUp;
 }
 eNew = tessMeshConnect( tess->mesh, eBottomLeft->Lprev, eNew );
 if (eNew == ((void*)0)) longjmp(tess->env,1);




 AddRightEdges( tess, regUp, eNew, eNew->Onext, eNew->Onext, FALSE );
 eNew->Sym->activeRegion->fixUpperEdge = TRUE;
 WalkDirtyRegions( tess, regUp );
}
