
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int inside; TYPE_1__* eUp; } ;
struct TYPE_7__ {TYPE_1__* anEdge; int inside; } ;
struct TYPE_6__ {TYPE_2__* Lface; } ;
typedef int TESStesselator ;
typedef TYPE_1__ TESShalfEdge ;
typedef TYPE_2__ TESSface ;
typedef TYPE_3__ ActiveRegion ;


 int DeleteRegion (int *,TYPE_3__*) ;

__attribute__((used)) static void FinishRegion( TESStesselator *tess, ActiveRegion *reg )







{
 TESShalfEdge *e = reg->eUp;
 TESSface *f = e->Lface;

 f->inside = reg->inside;
 f->anEdge = e;
 DeleteRegion( tess, reg );
}
