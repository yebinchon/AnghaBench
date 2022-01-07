
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {scalar_t__ fixUpperEdge; TYPE_2__* eUp; scalar_t__ dirty; } ;
struct TYPE_22__ {scalar_t__ Dst; scalar_t__ Org; } ;
struct TYPE_21__ {scalar_t__ event; int env; int mesh; } ;
typedef TYPE_1__ TESStesselator ;
typedef TYPE_2__ TESShalfEdge ;
typedef TYPE_3__ ActiveRegion ;


 int AddWinding (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ CheckForIntersect (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ CheckForLeftSplice (TYPE_1__*,TYPE_3__*) ;
 int CheckForRightSplice (TYPE_1__*,TYPE_3__*) ;
 int DeleteRegion (TYPE_1__*,TYPE_3__*) ;
 scalar_t__ FALSE ;
 TYPE_3__* RegionAbove (TYPE_3__*) ;
 TYPE_3__* RegionBelow (TYPE_3__*) ;
 int longjmp (int ,int) ;
 int tessMeshDelete (int ,TYPE_2__*) ;

__attribute__((used)) static void WalkDirtyRegions( TESStesselator *tess, ActiveRegion *regUp )
{
 ActiveRegion *regLo = RegionBelow(regUp);
 TESShalfEdge *eUp, *eLo;

 for( ;; ) {

  while( regLo->dirty ) {
   regUp = regLo;
   regLo = RegionBelow(regLo);
  }
  if( ! regUp->dirty ) {
   regLo = regUp;
   regUp = RegionAbove( regUp );
   if( regUp == ((void*)0) || ! regUp->dirty ) {

    return;
   }
  }
  regUp->dirty = FALSE;
  eUp = regUp->eUp;
  eLo = regLo->eUp;

  if( eUp->Dst != eLo->Dst ) {

   if( CheckForLeftSplice( tess, regUp )) {





    if( regLo->fixUpperEdge ) {
     DeleteRegion( tess, regLo );
     if ( !tessMeshDelete( tess->mesh, eLo ) ) longjmp(tess->env,1);
     regLo = RegionBelow( regUp );
     eLo = regLo->eUp;
    } else if( regUp->fixUpperEdge ) {
     DeleteRegion( tess, regUp );
     if ( !tessMeshDelete( tess->mesh, eUp ) ) longjmp(tess->env,1);
     regUp = RegionAbove( regLo );
     eUp = regUp->eUp;
    }
   }
  }
  if( eUp->Org != eLo->Org ) {
   if( eUp->Dst != eLo->Dst
    && ! regUp->fixUpperEdge && ! regLo->fixUpperEdge
    && (eUp->Dst == tess->event || eLo->Dst == tess->event) )
   {
    if( CheckForIntersect( tess, regUp )) {

     return;
    }
   } else {



    (void) CheckForRightSplice( tess, regUp );
   }
  }
  if( eUp->Org == eLo->Org && eUp->Dst == eLo->Dst ) {

   AddWinding( eLo, eUp );
   DeleteRegion( tess, regUp );
   if ( !tessMeshDelete( tess->mesh, eUp ) ) longjmp(tess->env,1);
   regUp = RegionAbove( regLo );
  }
 }
}
