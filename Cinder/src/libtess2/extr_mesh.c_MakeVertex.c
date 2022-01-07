
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* Onext; TYPE_1__* Org; } ;
struct TYPE_6__ {TYPE_2__* anEdge; struct TYPE_6__* prev; struct TYPE_6__* next; } ;
typedef TYPE_1__ TESSvertex ;
typedef TYPE_2__ TESShalfEdge ;


 int assert (int ) ;

__attribute__((used)) static void MakeVertex( TESSvertex *newVertex,
        TESShalfEdge *eOrig, TESSvertex *vNext )
{
 TESShalfEdge *e;
 TESSvertex *vPrev;
 TESSvertex *vNew = newVertex;

 assert(vNew != ((void*)0));


 vPrev = vNext->prev;
 vNew->prev = vPrev;
 vPrev->next = vNew;
 vNew->next = vNext;
 vNext->prev = vNew;

 vNew->anEdge = eOrig;



 e = eOrig;
 do {
  e->Org = vNew;
  e = e->Onext;
 } while( e != eOrig );
}
