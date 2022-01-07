
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int winding; } ;
struct TYPE_11__ {int winding; TYPE_6__* Sym; TYPE_1__* Org; struct TYPE_11__* Lnext; } ;
struct TYPE_10__ {int outOfMemory; int * mesh; int alloc; } ;
struct TYPE_9__ {int * coords; } ;
typedef TYPE_2__ TESStesselator ;
typedef int TESSreal ;
typedef TYPE_3__ TESShalfEdge ;


 TYPE_3__* tessMeshMakeEdge (int *) ;
 int * tessMeshNewMesh (int *) ;
 int tessMeshSplice (int *,TYPE_3__*,TYPE_6__*) ;
 int * tessMeshSplitEdge (int *,TYPE_3__*) ;

void tessAddContour( TESStesselator *tess, int size, const void* vertices,
     int stride, int numVertices )
{
 const unsigned char *src = (const unsigned char*)vertices;
 TESShalfEdge *e;
 int i;

 if ( tess->mesh == ((void*)0) )
    tess->mesh = tessMeshNewMesh( &tess->alloc );
  if ( tess->mesh == ((void*)0) ) {
  tess->outOfMemory = 1;
  return;
 }

 if ( size < 2 )
  size = 2;
 if ( size > 3 )
  size = 3;

 e = ((void*)0);

 for( i = 0; i < numVertices; ++i )
 {
  const TESSreal* coords = (const TESSreal*)src;
  src += stride;

  if( e == ((void*)0) ) {

   e = tessMeshMakeEdge( tess->mesh );
   if ( e == ((void*)0) ) {
    tess->outOfMemory = 1;
    return;
   }
   if ( !tessMeshSplice( tess->mesh, e, e->Sym ) ) {
    tess->outOfMemory = 1;
    return;
   }
  } else {



   if ( tessMeshSplitEdge( tess->mesh, e ) == ((void*)0) ) {
    tess->outOfMemory = 1;
    return;
   }
   e = e->Lnext;
  }


  e->Org->coords[0] = coords[0];
  e->Org->coords[1] = coords[1];
  if ( size > 2 )
   e->Org->coords[2] = coords[2];
  else
   e->Org->coords[2] = 0;






  e->winding = 1;
  e->Sym->winding = -1;
 }
}
