
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {TYPE_1__* eUp; } ;
struct TYPE_20__ {int mesh; int dict; int event; int pq; } ;
struct TYPE_19__ {int anEdge; } ;
struct TYPE_18__ {int Org; } ;
typedef TYPE_2__ TESSvertex ;
typedef TYPE_3__ TESStesselator ;
typedef TYPE_4__ ActiveRegion ;


 int DebugEvent (TYPE_3__*) ;
 int DoneEdgeDict (TYPE_3__*) ;
 int DonePriorityQ (TYPE_3__*) ;
 int InitEdgeDict (TYPE_3__*) ;
 int InitPriorityQ (TYPE_3__*) ;
 int RemoveDegenerateEdges (TYPE_3__*) ;
 int RemoveDegenerateFaces (TYPE_3__*,int ) ;
 int SpliceMergeVertices (TYPE_3__*,int ,int ) ;
 int SweepEvent (TYPE_3__*,TYPE_2__*) ;
 int VertEq (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ dictKey (int ) ;
 int dictMin (int ) ;
 scalar_t__ pqExtractMin (int ) ;
 scalar_t__ pqMinimum (int ) ;
 int tessMeshCheckMesh (int ) ;

int tessComputeInterior( TESStesselator *tess )







{
 TESSvertex *v, *vNext;







 RemoveDegenerateEdges( tess );
 if ( !InitPriorityQ( tess ) ) return 0;
 InitEdgeDict( tess );

 while( (v = (TESSvertex *)pqExtractMin( tess->pq )) != ((void*)0) ) {
  for( ;; ) {
   vNext = (TESSvertex *)pqMinimum( tess->pq );
   if( vNext == ((void*)0) || ! VertEq( vNext, v )) break;
   vNext = (TESSvertex *)pqExtractMin( tess->pq );
   SpliceMergeVertices( tess, v->anEdge, vNext->anEdge );
  }
  SweepEvent( tess, v );
 }


 tess->event = ((ActiveRegion *) dictKey( dictMin( tess->dict )))->eUp->Org;
 DebugEvent( tess );
 DoneEdgeDict( tess );
 DonePriorityQ( tess );

 if ( !RemoveDegenerateFaces( tess, tess->mesh ) ) return 0;
 tessMeshCheckMesh( tess->mesh );

 return 1;
}
