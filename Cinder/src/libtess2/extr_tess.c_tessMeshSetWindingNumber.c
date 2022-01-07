
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int winding; TYPE_2__* Lface; TYPE_1__* Rface; struct TYPE_11__* next; } ;
struct TYPE_10__ {TYPE_4__ eHead; } ;
struct TYPE_9__ {scalar_t__ inside; } ;
struct TYPE_8__ {scalar_t__ inside; } ;
typedef TYPE_3__ TESSmesh ;
typedef TYPE_4__ TESShalfEdge ;


 int tessMeshDelete (TYPE_3__*,TYPE_4__*) ;

int tessMeshSetWindingNumber( TESSmesh *mesh, int value,
        int keepOnlyBoundary )
{
 TESShalfEdge *e, *eNext;

 for( e = mesh->eHead.next; e != &mesh->eHead; e = eNext ) {
  eNext = e->next;
  if( e->Rface->inside != e->Lface->inside ) {


   e->winding = (e->Lface->inside) ? value : -value;
  } else {


   if( ! keepOnlyBoundary ) {
    e->winding = 0;
   } else {
    if ( !tessMeshDelete( mesh, e ) ) return 0;
   }
  }
 }
 return 1;
}
