
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* eUp; } ;
struct TYPE_8__ {int * Org; int * Dst; } ;
struct TYPE_7__ {int * event; } ;
typedef int TESSvertex ;
typedef TYPE_1__ TESStesselator ;
typedef scalar_t__ TESSreal ;
typedef TYPE_2__ TESShalfEdge ;
typedef TYPE_3__ ActiveRegion ;


 scalar_t__ EdgeEval (int *,int *,int *) ;
 scalar_t__ EdgeSign (int *,int *,int *) ;
 scalar_t__ VertLeq (int *,int *) ;

__attribute__((used)) static int EdgeLeq( TESStesselator *tess, ActiveRegion *reg1, ActiveRegion *reg2 )
{
 TESSvertex *event = tess->event;
 TESShalfEdge *e1, *e2;
 TESSreal t1, t2;

 e1 = reg1->eUp;
 e2 = reg2->eUp;

 if( e1->Dst == event ) {
  if( e2->Dst == event ) {



   if( VertLeq( e1->Org, e2->Org )) {
    return EdgeSign( e2->Dst, e1->Org, e2->Org ) <= 0;
   }
   return EdgeSign( e1->Dst, e2->Org, e1->Org ) >= 0;
  }
  return EdgeSign( e2->Dst, event, e2->Org ) <= 0;
 }
 if( e2->Dst == event ) {
  return EdgeSign( e1->Dst, event, e1->Org ) >= 0;
 }


 t1 = EdgeEval( e1->Dst, event, e1->Org );
 t2 = EdgeEval( e2->Dst, event, e2->Org );
 return (t1 >= t2);
}
