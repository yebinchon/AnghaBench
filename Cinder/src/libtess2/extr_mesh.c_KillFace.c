
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* next; struct TYPE_10__* prev; TYPE_2__* anEdge; } ;
struct TYPE_9__ {struct TYPE_9__* Lnext; TYPE_3__* Lface; } ;
struct TYPE_8__ {int faceBucket; } ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;
typedef TYPE_3__ TESSface ;


 int bucketFree (int ,TYPE_3__*) ;

__attribute__((used)) static void KillFace( TESSmesh *mesh, TESSface *fDel, TESSface *newLface )
{
 TESShalfEdge *e, *eStart = fDel->anEdge;
 TESSface *fPrev, *fNext;


 e = eStart;
 do {
  e->Lface = newLface;
  e = e->Lnext;
 } while( e != eStart );


 fPrev = fDel->prev;
 fNext = fDel->next;
 fNext->prev = fPrev;
 fPrev->next = fNext;

 bucketFree( mesh->faceBucket, fDel );
}
