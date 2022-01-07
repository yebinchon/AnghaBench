
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int Lface; int Org; int Dst; int Lnext; struct TYPE_12__* Sym; } ;
struct TYPE_11__ {int vertexBucket; } ;
typedef int TESSvertex ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;


 TYPE_2__* MakeEdge (TYPE_1__*,TYPE_2__*) ;
 int MakeVertex (int *,TYPE_2__*,int ) ;
 int Splice (TYPE_2__*,int ) ;
 scalar_t__ bucketAlloc (int ) ;

TESShalfEdge *tessMeshAddEdgeVertex( TESSmesh *mesh, TESShalfEdge *eOrg )
{
 TESShalfEdge *eNewSym;
 TESShalfEdge *eNew = MakeEdge( mesh, eOrg );
 if (eNew == ((void*)0)) return ((void*)0);

 eNewSym = eNew->Sym;


 Splice( eNew, eOrg->Lnext );


 eNew->Org = eOrg->Dst;
 {
  TESSvertex *newVertex= (TESSvertex*)bucketAlloc( mesh->vertexBucket );
  if (newVertex == ((void*)0)) return ((void*)0);

  MakeVertex( newVertex, eNewSym, eNew->Org );
 }
 eNew->Lface = eNewSym->Lface = eOrg->Lface;

 return eNew;
}
