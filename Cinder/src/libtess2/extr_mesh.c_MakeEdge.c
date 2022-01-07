
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * activeRegion; scalar_t__ winding; int * Lface; int * Org; struct TYPE_8__* Lnext; struct TYPE_8__* Onext; struct TYPE_8__* Sym; struct TYPE_8__* next; } ;
struct TYPE_9__ {TYPE_2__ eSym; TYPE_2__ e; } ;
struct TYPE_7__ {int edgeBucket; } ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;
typedef TYPE_3__ EdgePair ;


 scalar_t__ bucketAlloc (int ) ;

__attribute__((used)) static TESShalfEdge *MakeEdge( TESSmesh* mesh, TESShalfEdge *eNext )
{
 TESShalfEdge *e;
 TESShalfEdge *eSym;
 TESShalfEdge *ePrev;
 EdgePair *pair = (EdgePair *)bucketAlloc( mesh->edgeBucket );
 if (pair == ((void*)0)) return ((void*)0);

 e = &pair->e;
 eSym = &pair->eSym;


 if( eNext->Sym < eNext ) { eNext = eNext->Sym; }




 ePrev = eNext->Sym->next;
 eSym->next = ePrev;
 ePrev->Sym->next = e;
 e->next = eNext;
 eNext->Sym->next = eSym;

 e->Sym = eSym;
 e->Onext = e;
 e->Lnext = eSym;
 e->Org = ((void*)0);
 e->Lface = ((void*)0);
 e->winding = 0;
 e->activeRegion = ((void*)0);

 eSym->Sym = e;
 eSym->Onext = eSym;
 eSym->Lnext = e;
 eSym->Org = ((void*)0);
 eSym->Lface = ((void*)0);
 eSym->winding = 0;
 eSym->activeRegion = ((void*)0);

 return e;
}
