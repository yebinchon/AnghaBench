
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_5__* anEdge; int inside; struct TYPE_14__* next; } ;
struct TYPE_13__ {struct TYPE_13__* Lnext; TYPE_2__* Org; } ;
struct TYPE_12__ {TYPE_6__ fHead; } ;
struct TYPE_9__ {int userData; scalar_t__ (* memalloc ) (int ,int) ;} ;
struct TYPE_11__ {int vertexCount; int elementCount; int* elements; int * vertices; TYPE_1__ alloc; } ;
struct TYPE_10__ {int * coords; } ;
typedef TYPE_3__ TESStesselator ;
typedef int TESSreal ;
typedef TYPE_4__ TESSmesh ;
typedef int TESSindex ;
typedef TYPE_5__ TESShalfEdge ;
typedef TYPE_6__ TESSface ;


 scalar_t__ stub1 (int ,int) ;
 scalar_t__ stub2 (int ,int) ;

void OutputContours( TESStesselator *tess, TESSmesh *mesh, int vertexSize )
{
 TESSface *f = 0;
 TESShalfEdge *edge = 0;
 TESShalfEdge *start = 0;
 TESSreal *verts = 0;
 TESSindex *elements = 0;
 int startVert = 0;
 int vertCount = 0;

 tess->vertexCount = 0;
 tess->elementCount = 0;

 for ( f = mesh->fHead.next; f != &mesh->fHead; f = f->next )
 {
  if ( !f->inside ) continue;

  start = edge = f->anEdge;
  do
  {
   ++tess->vertexCount;
   edge = edge->Lnext;
  }
  while ( edge != start );

  ++tess->elementCount;
 }

 tess->elements = (TESSindex*)tess->alloc.memalloc( tess->alloc.userData,
               sizeof(TESSindex) * tess->elementCount * 2 );
 tess->vertices = (TESSreal*)tess->alloc.memalloc( tess->alloc.userData,
              sizeof(TESSreal) * tess->vertexCount * vertexSize );

 verts = tess->vertices;
 elements = tess->elements;

 startVert = 0;

 for ( f = mesh->fHead.next; f != &mesh->fHead; f = f->next )
 {
  if ( !f->inside ) continue;

  vertCount = 0;
  start = edge = f->anEdge;
  do
  {
   *verts++ = edge->Org->coords[0];
   *verts++ = edge->Org->coords[1];
   if ( vertexSize > 2 )
    *verts++ = edge->Org->coords[2];
   ++vertCount;
   edge = edge->Lnext;
  }
  while ( edge != start );

  elements[0] = startVert;
  elements[1] = vertCount;
  elements += 2;

  startVert += vertCount;
 }
}
