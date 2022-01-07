
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_28__ {TYPE_3__* eUp; } ;
struct TYPE_27__ {struct TYPE_27__* Onext; int * activeRegion; } ;
struct TYPE_26__ {int env; TYPE_1__* event; } ;
struct TYPE_25__ {TYPE_3__* anEdge; } ;
typedef TYPE_1__ TESSvertex ;
typedef TYPE_2__ TESStesselator ;
typedef TYPE_3__ TESShalfEdge ;
typedef TYPE_4__ ActiveRegion ;


 int AddRightEdges (TYPE_2__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,int ) ;
 int ConnectLeftVertex (TYPE_2__*,TYPE_1__*) ;
 int ConnectRightVertex (TYPE_2__*,TYPE_4__*,TYPE_3__*) ;
 int DebugEvent (TYPE_2__*) ;
 TYPE_3__* FinishLeftRegions (TYPE_2__*,TYPE_4__*,int *) ;
 TYPE_4__* RegionBelow (TYPE_4__*) ;
 int TRUE ;
 TYPE_4__* TopLeftRegion (TYPE_2__*,int *) ;
 int longjmp (int ,int) ;

__attribute__((used)) static void SweepEvent( TESStesselator *tess, TESSvertex *vEvent )




{
 ActiveRegion *regUp, *reg;
 TESShalfEdge *e, *eTopLeft, *eBottomLeft;

 tess->event = vEvent;
 DebugEvent( tess );





 e = vEvent->anEdge;
 while( e->activeRegion == ((void*)0) ) {
  e = e->Onext;
  if( e == vEvent->anEdge ) {

   ConnectLeftVertex( tess, vEvent );
   return;
  }
 }
 regUp = TopLeftRegion( tess, e->activeRegion );
 if (regUp == ((void*)0)) longjmp(tess->env,1);
 reg = RegionBelow( regUp );
 eTopLeft = reg->eUp;
 eBottomLeft = FinishLeftRegions( tess, reg, ((void*)0) );






 if( eBottomLeft->Onext == eTopLeft ) {

  ConnectRightVertex( tess, regUp, eBottomLeft );
 } else {
  AddRightEdges( tess, regUp, eBottomLeft->Onext, eTopLeft, eTopLeft, TRUE );
 }
}
