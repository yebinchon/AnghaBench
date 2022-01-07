
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {TYPE_2__* anEdge; } ;
struct TYPE_17__ {int anEdge; } ;
struct TYPE_16__ {int Oprev; struct TYPE_16__* Onext; TYPE_9__* Org; TYPE_7__* Lface; TYPE_7__* Rface; struct TYPE_16__* Sym; } ;
struct TYPE_15__ {int faceBucket; } ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;
typedef int TESSface ;


 int FALSE ;
 int KillEdge (TYPE_1__*,TYPE_2__*) ;
 int KillFace (TYPE_1__*,TYPE_7__*,TYPE_7__*) ;
 int KillVertex (TYPE_1__*,TYPE_9__*,int *) ;
 int MakeFace (int *,TYPE_2__*,TYPE_7__*) ;
 int Splice (TYPE_2__*,int ) ;
 int TRUE ;
 scalar_t__ bucketAlloc (int ) ;

int tessMeshDelete( TESSmesh *mesh, TESShalfEdge *eDel )
{
 TESShalfEdge *eDelSym = eDel->Sym;
 int joiningLoops = FALSE;




 if( eDel->Lface != eDel->Rface ) {

  joiningLoops = TRUE;
  KillFace( mesh, eDel->Lface, eDel->Rface );
 }

 if( eDel->Onext == eDel ) {
  KillVertex( mesh, eDel->Org, ((void*)0) );
 } else {

  eDel->Rface->anEdge = eDel->Oprev;
  eDel->Org->anEdge = eDel->Onext;

  Splice( eDel, eDel->Oprev );
  if( ! joiningLoops ) {
   TESSface *newFace= (TESSface*)bucketAlloc( mesh->faceBucket );
   if (newFace == ((void*)0)) return 0;


   MakeFace( newFace, eDel, eDel->Lface );
  }
 }




 if( eDelSym->Onext == eDelSym ) {
  KillVertex( mesh, eDelSym->Org, ((void*)0) );
  KillFace( mesh, eDelSym->Lface, ((void*)0) );
 } else {

  eDel->Lface->anEdge = eDelSym->Oprev;
  eDelSym->Org->anEdge = eDelSym->Onext;
  Splice( eDelSym, eDelSym->Oprev );
 }


 KillEdge( mesh, eDel );

 return 1;
}
