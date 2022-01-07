
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* Sym; } ;
struct TYPE_9__ {int fHead; int vHead; int eHead; int faceBucket; int vertexBucket; } ;
typedef int TESSvertex ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESShalfEdge ;
typedef int TESSface ;


 TYPE_2__* MakeEdge (TYPE_1__*,int *) ;
 int MakeFace (int *,TYPE_2__*,int *) ;
 int MakeVertex (int *,TYPE_2__*,int *) ;
 scalar_t__ bucketAlloc (int ) ;
 int bucketFree (int ,int *) ;

TESShalfEdge *tessMeshMakeEdge( TESSmesh *mesh )
{
 TESSvertex *newVertex1 = (TESSvertex*)bucketAlloc(mesh->vertexBucket);
 TESSvertex *newVertex2 = (TESSvertex*)bucketAlloc(mesh->vertexBucket);
 TESSface *newFace = (TESSface*)bucketAlloc(mesh->faceBucket);
 TESShalfEdge *e;


 if (newVertex1 == ((void*)0) || newVertex2 == ((void*)0) || newFace == ((void*)0)) {
  if (newVertex1 != ((void*)0)) bucketFree( mesh->vertexBucket, newVertex1 );
  if (newVertex2 != ((void*)0)) bucketFree( mesh->vertexBucket, newVertex2 );
  if (newFace != ((void*)0)) bucketFree( mesh->faceBucket, newFace );
  return ((void*)0);
 }

 e = MakeEdge( mesh, &mesh->eHead );
 if (e == ((void*)0)) return ((void*)0);

 MakeVertex( newVertex1, e, &mesh->vHead );
 MakeVertex( newVertex2, e->Sym, &mesh->vHead );
 MakeFace( newFace, e, &mesh->fHead );
 return e;
}
