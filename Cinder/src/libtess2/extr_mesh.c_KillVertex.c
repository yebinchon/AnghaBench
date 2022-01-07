
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* Onext; TYPE_1__* Org; } ;
struct TYPE_9__ {int vertexBucket; } ;
struct TYPE_8__ {struct TYPE_8__* next; struct TYPE_8__* prev; TYPE_3__* anEdge; } ;
typedef TYPE_1__ TESSvertex ;
typedef TYPE_2__ TESSmesh ;
typedef TYPE_3__ TESShalfEdge ;


 int bucketFree (int ,TYPE_1__*) ;

__attribute__((used)) static void KillVertex( TESSmesh *mesh, TESSvertex *vDel, TESSvertex *newOrg )
{
 TESShalfEdge *e, *eStart = vDel->anEdge;
 TESSvertex *vPrev, *vNext;


 e = eStart;
 do {
  e->Org = newOrg;
  e = e->Onext;
 } while( e != eStart );


 vPrev = vDel->prev;
 vNext = vDel->next;
 vNext->prev = vPrev;
 vPrev->next = vNext;

 bucketFree( mesh->vertexBucket, vDel );
}
