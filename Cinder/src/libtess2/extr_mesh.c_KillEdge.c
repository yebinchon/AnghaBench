
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* Sym; } ;
struct TYPE_6__ {int edgeBucket; } ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;


 int bucketFree (int ,TYPE_2__*) ;

__attribute__((used)) static void KillEdge( TESSmesh *mesh, TESShalfEdge *eDel )
{
 TESShalfEdge *ePrev, *eNext;


 if( eDel->Sym < eDel ) { eDel = eDel->Sym; }


 eNext = eDel->next;
 ePrev = eDel->Sym->next;
 eNext->Sym->next = ePrev;
 ePrev->Sym->next = eNext;

 bucketFree( mesh->edgeBucket, eDel );
}
