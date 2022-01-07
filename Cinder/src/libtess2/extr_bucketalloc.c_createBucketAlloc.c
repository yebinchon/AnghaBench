
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct BucketAlloc {char const* name; unsigned int itemSize; unsigned int bucketSize; scalar_t__ buckets; scalar_t__ freelist; TYPE_1__* alloc; } ;
struct TYPE_3__ {int userData; int (* memfree ) (int ,struct BucketAlloc*) ;scalar_t__ (* memalloc ) (int ,int) ;} ;
typedef TYPE_1__ TESSalloc ;
typedef struct BucketAlloc BucketAlloc ;


 int CreateBucket (struct BucketAlloc*) ;
 scalar_t__ stub1 (int ,int) ;
 int stub2 (int ,struct BucketAlloc*) ;

struct BucketAlloc* createBucketAlloc( TESSalloc* alloc, const char* name,
           unsigned int itemSize, unsigned int bucketSize )
{
 BucketAlloc* ba = (BucketAlloc*)alloc->memalloc( alloc->userData, sizeof(BucketAlloc) );

 ba->alloc = alloc;
 ba->name = name;
 ba->itemSize = itemSize;
 if ( ba->itemSize < sizeof(void*) )
  ba->itemSize = sizeof(void*);
 ba->bucketSize = bucketSize;
 ba->freelist = 0;
 ba->buckets = 0;

 if ( !CreateBucket( ba ) )
 {
  alloc->memfree( alloc->userData, ba );
  return 0;
 }

 return ba;
}
