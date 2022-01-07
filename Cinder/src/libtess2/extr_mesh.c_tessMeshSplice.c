
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;


struct TYPE_21__ {TYPE_2__* anEdge; } ;
struct TYPE_20__ {TYPE_11__* Lface; TYPE_9__* Org; } ;
struct TYPE_19__ {int faceBucket; int vertexBucket; } ;
struct TYPE_18__ {TYPE_2__* anEdge; } ;
typedef int TESSvertex ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;
typedef int TESSface ;


 int FALSE ;
 int KillFace (TYPE_1__*,TYPE_11__*,TYPE_11__*) ;
 int KillVertex (TYPE_1__*,TYPE_9__*,TYPE_9__*) ;
 int MakeFace (int *,TYPE_2__*,TYPE_11__*) ;
 int MakeVertex (int *,TYPE_2__*,TYPE_9__*) ;
 int Splice (TYPE_2__*,TYPE_2__*) ;
 int TRUE ;
 scalar_t__ bucketAlloc (int ) ;

int tessMeshSplice( TESSmesh* mesh, TESShalfEdge *eOrg, TESShalfEdge *eDst )
{
 int joiningLoops = FALSE;
 int joiningVertices = FALSE;

 if( eOrg == eDst ) return 1;

 if( eDst->Org != eOrg->Org ) {

  joiningVertices = TRUE;
  KillVertex( mesh, eDst->Org, eOrg->Org );
 }
 if( eDst->Lface != eOrg->Lface ) {

  joiningLoops = TRUE;
  KillFace( mesh, eDst->Lface, eOrg->Lface );
 }


 Splice( eDst, eOrg );

 if( ! joiningVertices ) {
  TESSvertex *newVertex = (TESSvertex*)bucketAlloc( mesh->vertexBucket );
  if (newVertex == ((void*)0)) return 0;




  MakeVertex( newVertex, eDst, eOrg->Org );
  eOrg->Org->anEdge = eOrg;
 }
 if( ! joiningLoops ) {
  TESSface *newFace = (TESSface*)bucketAlloc( mesh->faceBucket );
  if (newFace == ((void*)0)) return 0;




  MakeFace( newFace, eDst, eOrg->Lface );
  eOrg->Lface->anEdge = eOrg;
 }

 return 1;
}
