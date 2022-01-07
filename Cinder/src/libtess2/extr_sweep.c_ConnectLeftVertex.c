
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_34__ {TYPE_3__* Sym; } ;
struct TYPE_33__ {scalar_t__ fixUpperEdge; scalar_t__ inside; TYPE_3__* eUp; } ;
struct TYPE_32__ {struct TYPE_32__* Sym; struct TYPE_32__* Dnext; TYPE_7__* Lnext; int Dst; int Org; } ;
struct TYPE_31__ {int env; int mesh; int dict; } ;
struct TYPE_30__ {TYPE_7__* anEdge; } ;
typedef TYPE_1__ TESSvertex ;
typedef TYPE_2__ TESStesselator ;
typedef TYPE_3__ TESShalfEdge ;
typedef TYPE_4__ ActiveRegion ;


 int AddRegionBelow (TYPE_2__*,TYPE_4__*,TYPE_3__*) ;
 int AddRightEdges (TYPE_2__*,TYPE_4__*,TYPE_7__*,TYPE_7__*,int *,int ) ;
 int ComputeWinding (TYPE_2__*,int ) ;
 int ConnectLeftDegenerate (TYPE_2__*,TYPE_4__*,TYPE_1__*) ;
 scalar_t__ EdgeSign (int ,TYPE_1__*,int ) ;
 int FixUpperEdge (TYPE_2__*,TYPE_4__*,TYPE_3__*) ;
 TYPE_4__* RegionBelow (TYPE_4__*) ;
 int SweepEvent (TYPE_2__*,TYPE_1__*) ;
 int TRUE ;
 scalar_t__ VertLeq (int ,int ) ;
 scalar_t__ dictKey (int ) ;
 int dictSearch (int ,TYPE_4__*) ;
 int longjmp (int ,int) ;
 TYPE_3__* tessMeshConnect (int ,TYPE_3__*,TYPE_7__*) ;

__attribute__((used)) static void ConnectLeftVertex( TESStesselator *tess, TESSvertex *vEvent )
{
 ActiveRegion *regUp, *regLo, *reg;
 TESShalfEdge *eUp, *eLo, *eNew;
 ActiveRegion tmp;




 tmp.eUp = vEvent->anEdge->Sym;

 regUp = (ActiveRegion *)dictKey( dictSearch( tess->dict, &tmp ));
 regLo = RegionBelow( regUp );
 eUp = regUp->eUp;
 eLo = regLo->eUp;


 if( EdgeSign( eUp->Dst, vEvent, eUp->Org ) == 0 ) {
  ConnectLeftDegenerate( tess, regUp, vEvent );
  return;
 }




 reg = VertLeq( eLo->Dst, eUp->Dst ) ? regUp : regLo;

 if( regUp->inside || reg->fixUpperEdge) {
  if( reg == regUp ) {
   eNew = tessMeshConnect( tess->mesh, vEvent->anEdge->Sym, eUp->Lnext );
   if (eNew == ((void*)0)) longjmp(tess->env,1);
  } else {
   TESShalfEdge *tempHalfEdge= tessMeshConnect( tess->mesh, eLo->Dnext, vEvent->anEdge);
   if (tempHalfEdge == ((void*)0)) longjmp(tess->env,1);

   eNew = tempHalfEdge->Sym;
  }
  if( reg->fixUpperEdge ) {
   if ( !FixUpperEdge( tess, reg, eNew ) ) longjmp(tess->env,1);
  } else {
   ComputeWinding( tess, AddRegionBelow( tess, regUp, eNew ));
  }
  SweepEvent( tess, vEvent );
 } else {



  AddRightEdges( tess, regUp, vEvent->anEdge, vEvent->anEdge, ((void*)0), TRUE );
 }
}
