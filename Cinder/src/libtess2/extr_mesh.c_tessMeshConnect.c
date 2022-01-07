
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_19__ {TYPE_10__* Lface; int Org; int Dst; struct TYPE_19__* Lnext; struct TYPE_19__* Sym; } ;
struct TYPE_18__ {int faceBucket; } ;
struct TYPE_17__ {TYPE_2__* anEdge; } ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;
typedef int TESSface ;


 int FALSE ;
 int KillFace (TYPE_1__*,TYPE_10__*,TYPE_10__*) ;
 TYPE_2__* MakeEdge (TYPE_1__*,TYPE_2__*) ;
 int MakeFace (int *,TYPE_2__*,TYPE_10__*) ;
 int Splice (TYPE_2__*,TYPE_2__*) ;
 int TRUE ;
 scalar_t__ bucketAlloc (int ) ;

TESShalfEdge *tessMeshConnect( TESSmesh *mesh, TESShalfEdge *eOrg, TESShalfEdge *eDst )
{
 TESShalfEdge *eNewSym;
 int joiningLoops = FALSE;
 TESShalfEdge *eNew = MakeEdge( mesh, eOrg );
 if (eNew == ((void*)0)) return ((void*)0);

 eNewSym = eNew->Sym;

 if( eDst->Lface != eOrg->Lface ) {

  joiningLoops = TRUE;
  KillFace( mesh, eDst->Lface, eOrg->Lface );
 }


 Splice( eNew, eOrg->Lnext );
 Splice( eNewSym, eDst );


 eNew->Org = eOrg->Dst;
 eNewSym->Org = eDst->Org;
 eNew->Lface = eNewSym->Lface = eOrg->Lface;


 eOrg->Lface->anEdge = eNewSym;

 if( ! joiningLoops ) {
  TESSface *newFace= (TESSface*)bucketAlloc( mesh->faceBucket );
  if (newFace == ((void*)0)) return ((void*)0);


  MakeFace( newFace, eNew, eOrg->Lface );
 }
 return eNew;
}
