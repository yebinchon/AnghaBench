
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* eUp; int fixUpperEdge; } ;
struct TYPE_9__ {TYPE_3__* activeRegion; } ;
struct TYPE_8__ {int mesh; } ;
typedef TYPE_1__ TESStesselator ;
typedef TYPE_2__ TESShalfEdge ;
typedef TYPE_3__ ActiveRegion ;


 int FALSE ;
 int assert (int ) ;
 int tessMeshDelete (int ,TYPE_2__*) ;

__attribute__((used)) static int FixUpperEdge( TESStesselator *tess, ActiveRegion *reg, TESShalfEdge *newEdge )



{
 assert( reg->fixUpperEdge );
 if ( !tessMeshDelete( tess->mesh, reg->eUp ) ) return 0;
 reg->fixUpperEdge = FALSE;
 reg->eUp = newEdge;
 newEdge->activeRegion = reg;

 return 1;
}
