
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int inside; int marked; int * trail; TYPE_1__* anEdge; struct TYPE_7__* prev; struct TYPE_7__* next; } ;
struct TYPE_6__ {struct TYPE_6__* Lnext; TYPE_2__* Lface; } ;
typedef TYPE_1__ TESShalfEdge ;
typedef TYPE_2__ TESSface ;


 int FALSE ;
 int assert (int ) ;

__attribute__((used)) static void MakeFace( TESSface *newFace, TESShalfEdge *eOrig, TESSface *fNext )
{
 TESShalfEdge *e;
 TESSface *fPrev;
 TESSface *fNew = newFace;

 assert(fNew != ((void*)0));


 fPrev = fNext->prev;
 fNew->prev = fPrev;
 fPrev->next = fNew;
 fNew->next = fNext;
 fNext->prev = fNew;

 fNew->anEdge = eOrig;
 fNew->trail = ((void*)0);
 fNew->marked = FALSE;




 fNew->inside = fNext->inside;


 e = eOrig;
 do {
  e->Lface = fNew;
  e = e->Lnext;
 } while( e != eOrig );
}
