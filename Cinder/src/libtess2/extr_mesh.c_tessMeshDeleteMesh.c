
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int userData; int (* memfree ) (int ,TYPE_1__*) ;} ;
struct TYPE_6__ {int faceBucket; int vertexBucket; int edgeBucket; } ;
typedef TYPE_1__ TESSmesh ;
typedef TYPE_2__ TESSalloc ;


 int deleteBucketAlloc (int ) ;
 int stub1 (int ,TYPE_1__*) ;

void tessMeshDeleteMesh( TESSalloc* alloc, TESSmesh *mesh )
{
 deleteBucketAlloc(mesh->edgeBucket);
 deleteBucketAlloc(mesh->vertexBucket);
 deleteBucketAlloc(mesh->faceBucket);

 alloc->memfree( alloc->userData, mesh );
}
