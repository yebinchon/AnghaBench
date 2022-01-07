
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int meshEdgeBucketSize; int meshVertexBucketSize; int meshFaceBucketSize; int dictNodeBucketSize; int regionBucketSize; int userData; scalar_t__ (* memalloc ) (int ,int) ;} ;
struct TYPE_7__ {scalar_t__ elementCount; scalar_t__ elements; scalar_t__ vertexCount; scalar_t__ vertices; int * mesh; TYPE_2__ alloc; int regionPool; int * callCombine; int windingRule; scalar_t__* bmax; scalar_t__* bmin; scalar_t__* normal; } ;
typedef TYPE_1__ TESStesselator ;
typedef TYPE_2__ TESSalloc ;
typedef int ActiveRegion ;


 int TESS_WINDING_ODD ;
 int createBucketAlloc (TYPE_2__*,char*,int,int) ;
 TYPE_2__ defaulAlloc ;
 int noCombine ;
 scalar_t__ stub1 (int ,int) ;

TESStesselator* tessNewTess( TESSalloc* alloc )
{
 TESStesselator* tess;

 if (alloc == ((void*)0))
  alloc = &defaulAlloc;





 tess = (TESStesselator *)alloc->memalloc( alloc->userData, sizeof( TESStesselator ));
 if ( tess == ((void*)0) ) {
  return 0;
 }
 tess->alloc = *alloc;

 if (tess->alloc.meshEdgeBucketSize == 0)
  tess->alloc.meshEdgeBucketSize = 512;
 if (tess->alloc.meshVertexBucketSize == 0)
  tess->alloc.meshVertexBucketSize = 512;
 if (tess->alloc.meshFaceBucketSize == 0)
  tess->alloc.meshFaceBucketSize = 256;
 if (tess->alloc.dictNodeBucketSize == 0)
  tess->alloc.dictNodeBucketSize = 512;
 if (tess->alloc.regionBucketSize == 0)
  tess->alloc.regionBucketSize = 256;

 tess->normal[0] = 0;
 tess->normal[1] = 0;
 tess->normal[2] = 0;

 tess->bmin[0] = 0;
 tess->bmin[1] = 0;
 tess->bmax[0] = 0;
 tess->bmax[1] = 0;

 tess->windingRule = TESS_WINDING_ODD;

 tess->callCombine = &noCombine;

 if (tess->alloc.regionBucketSize < 16)
  tess->alloc.regionBucketSize = 16;
 if (tess->alloc.regionBucketSize > 4096)
  tess->alloc.regionBucketSize = 4096;
 tess->regionPool = createBucketAlloc( &tess->alloc, "Regions",
           sizeof(ActiveRegion), tess->alloc.regionBucketSize );


 tess->mesh = ((void*)0);

 tess->vertices = 0;
 tess->vertexCount = 0;
 tess->elements = 0;
 tess->elementCount = 0;

 return tess;
}
