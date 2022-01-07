
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_31__ {scalar_t__ fixUpperEdge; TYPE_3__* eUp; } ;
struct TYPE_30__ {struct TYPE_30__* Onext; struct TYPE_30__* Oprev; struct TYPE_30__* Sym; int Dst; int Org; } ;
struct TYPE_29__ {int env; int mesh; } ;
struct TYPE_28__ {int anEdge; } ;
typedef TYPE_1__ TESSvertex ;
typedef TYPE_2__ TESStesselator ;
typedef TYPE_3__ TESShalfEdge ;
typedef TYPE_4__ ActiveRegion ;


 int AddRightEdges (TYPE_2__*,TYPE_4__*,TYPE_3__*,TYPE_3__*,TYPE_3__*,int ) ;
 int DeleteRegion (TYPE_2__*,TYPE_4__*) ;
 int EdgeGoesLeft (TYPE_3__*) ;
 scalar_t__ FALSE ;
 TYPE_4__* RegionBelow (TYPE_4__*) ;
 int SpliceMergeVertices (TYPE_2__*,TYPE_3__*,int ) ;
 int SweepEvent (TYPE_2__*,TYPE_1__*) ;
 int TOLERANCE_NONZERO ;
 int TRUE ;
 TYPE_4__* TopRightRegion (TYPE_4__*) ;
 scalar_t__ VertEq (int ,TYPE_1__*) ;
 int assert (int) ;
 int longjmp (int ,int) ;
 int tessMeshDelete (int ,TYPE_3__*) ;
 int tessMeshSplice (int ,int ,TYPE_3__*) ;
 int * tessMeshSplitEdge (int ,TYPE_3__*) ;

__attribute__((used)) static void ConnectLeftDegenerate( TESStesselator *tess,
          ActiveRegion *regUp, TESSvertex *vEvent )





{
 TESShalfEdge *e, *eTopLeft, *eTopRight, *eLast;
 ActiveRegion *reg;

 e = regUp->eUp;
 if( VertEq( e->Org, vEvent )) {



  assert( TOLERANCE_NONZERO );
  SpliceMergeVertices( tess, e, vEvent->anEdge );
  return;
 }

 if( ! VertEq( e->Dst, vEvent )) {

  if (tessMeshSplitEdge( tess->mesh, e->Sym ) == ((void*)0)) longjmp(tess->env,1);
  if( regUp->fixUpperEdge ) {

   if ( !tessMeshDelete( tess->mesh, e->Onext ) ) longjmp(tess->env,1);
   regUp->fixUpperEdge = FALSE;
  }
  if ( !tessMeshSplice( tess->mesh, vEvent->anEdge, e ) ) longjmp(tess->env,1);
  SweepEvent( tess, vEvent );
  return;
 }




 assert( TOLERANCE_NONZERO );
 regUp = TopRightRegion( regUp );
 reg = RegionBelow( regUp );
 eTopRight = reg->eUp->Sym;
 eTopLeft = eLast = eTopRight->Onext;
 if( reg->fixUpperEdge ) {



  assert( eTopLeft != eTopRight );
  DeleteRegion( tess, reg );
  if ( !tessMeshDelete( tess->mesh, eTopRight ) ) longjmp(tess->env,1);
  eTopRight = eTopLeft->Oprev;
 }
 if ( !tessMeshSplice( tess->mesh, vEvent->anEdge, eTopRight ) ) longjmp(tess->env,1);
 if( ! EdgeGoesLeft( eTopLeft )) {

  eTopLeft = ((void*)0);
 }
 AddRightEdges( tess, regUp, eTopRight->Onext, eLast, eTopLeft, TRUE );
}
