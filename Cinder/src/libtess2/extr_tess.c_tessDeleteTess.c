
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TESSalloc {int userData; int (* memfree ) (int ,TYPE_1__*) ;} ;
struct TYPE_6__ {struct TYPE_6__* elements; struct TYPE_6__* vertices; int * mesh; int regionPool; struct TESSalloc alloc; } ;
typedef TYPE_1__ TESStesselator ;


 int deleteBucketAlloc (int ) ;
 int stub1 (int ,TYPE_1__*) ;
 int stub2 (int ,TYPE_1__*) ;
 int stub3 (int ,TYPE_1__*) ;
 int tessMeshDeleteMesh (struct TESSalloc*,int *) ;

void tessDeleteTess( TESStesselator *tess )
{

 struct TESSalloc alloc = tess->alloc;

 deleteBucketAlloc( tess->regionPool );

 if( tess->mesh != ((void*)0) ) {
  tessMeshDeleteMesh( &alloc, tess->mesh );
  tess->mesh = ((void*)0);
 }
 if (tess->vertices != ((void*)0)) {
  alloc.memfree( alloc.userData, tess->vertices );
  tess->vertices = 0;
 }
 if (tess->elements != ((void*)0)) {
  alloc.memfree( alloc.userData, tess->elements );
  tess->elements = 0;
 }

 alloc.memfree( alloc.userData, tess );
}
