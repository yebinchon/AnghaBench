
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* Onext; TYPE_1__* Sym; } ;
struct TYPE_5__ {TYPE_2__* Lnext; } ;
typedef TYPE_2__ TESShalfEdge ;



__attribute__((used)) static void Splice( TESShalfEdge *a, TESShalfEdge *b )
{
 TESShalfEdge *aOnext = a->Onext;
 TESShalfEdge *bOnext = b->Onext;

 aOnext->Sym->Lnext = b;
 bOnext->Sym->Lnext = a;
 a->Onext = bOnext;
 b->Onext = aOnext;
}
