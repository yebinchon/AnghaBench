
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int winding; struct TYPE_10__* Sym; int Rface; TYPE_1__* Dst; TYPE_1__* Org; struct TYPE_10__* Oprev; } ;
struct TYPE_9__ {TYPE_2__* anEdge; } ;
typedef int TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;


 int Splice (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* tessMeshAddEdgeVertex (int *,TYPE_2__*) ;

TESShalfEdge *tessMeshSplitEdge( TESSmesh *mesh, TESShalfEdge *eOrg )
{
 TESShalfEdge *eNew;
 TESShalfEdge *tempHalfEdge= tessMeshAddEdgeVertex( mesh, eOrg );
 if (tempHalfEdge == ((void*)0)) return ((void*)0);

 eNew = tempHalfEdge->Sym;


 Splice( eOrg->Sym, eOrg->Sym->Oprev );
 Splice( eOrg->Sym, eNew );


 eOrg->Dst = eNew->Org;
 eNew->Dst->anEdge = eNew->Sym;
 eNew->Rface = eOrg->Rface;
 eNew->winding = eOrg->winding;
 eNew->Sym->winding = eOrg->Sym->winding;

 return eNew;
}
