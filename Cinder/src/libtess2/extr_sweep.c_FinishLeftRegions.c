
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {TYPE_2__* eUp; int fixUpperEdge; } ;
struct TYPE_19__ {scalar_t__ Org; struct TYPE_19__* Oprev; struct TYPE_19__* Onext; int Sym; int Lprev; } ;
struct TYPE_18__ {int env; int mesh; } ;
typedef TYPE_1__ TESStesselator ;
typedef TYPE_2__ TESShalfEdge ;
typedef TYPE_3__ ActiveRegion ;


 int FALSE ;
 int FinishRegion (TYPE_1__*,TYPE_3__*) ;
 int FixUpperEdge (TYPE_1__*,TYPE_3__*,TYPE_2__*) ;
 TYPE_3__* RegionBelow (TYPE_3__*) ;
 int longjmp (int ,int) ;
 TYPE_2__* tessMeshConnect (int ,int ,int ) ;
 int tessMeshSplice (int ,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static TESShalfEdge *FinishLeftRegions( TESStesselator *tess,
           ActiveRegion *regFirst, ActiveRegion *regLast )
{
 ActiveRegion *reg, *regPrev;
 TESShalfEdge *e, *ePrev;

 regPrev = regFirst;
 ePrev = regFirst->eUp;
 while( regPrev != regLast ) {
  regPrev->fixUpperEdge = FALSE;
  reg = RegionBelow( regPrev );
  e = reg->eUp;
  if( e->Org != ePrev->Org ) {
   if( ! reg->fixUpperEdge ) {






    FinishRegion( tess, regPrev );
    break;
   }



   e = tessMeshConnect( tess->mesh, ePrev->Lprev, e->Sym );
   if (e == ((void*)0)) longjmp(tess->env,1);
   if ( !FixUpperEdge( tess, reg, e ) ) longjmp(tess->env,1);
  }


  if( ePrev->Onext != e ) {
   if ( !tessMeshSplice( tess->mesh, e->Oprev, e ) ) longjmp(tess->env,1);
   if ( !tessMeshSplice( tess->mesh, ePrev, e ) ) longjmp(tess->env,1);
  }
  FinishRegion( tess, regPrev );
  ePrev = reg->eUp;
  regPrev = reg;
 }
 return ePrev;
}
