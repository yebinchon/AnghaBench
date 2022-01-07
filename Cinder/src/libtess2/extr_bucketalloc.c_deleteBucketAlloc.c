
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct BucketAlloc {struct BucketAlloc* buckets; scalar_t__ freelist; struct BucketAlloc* next; TYPE_1__* alloc; } ;
struct TYPE_2__ {int userData; int (* memfree ) (int ,struct BucketAlloc*) ;} ;
typedef TYPE_1__ TESSalloc ;
typedef struct BucketAlloc Bucket ;


 int stub1 (int ,struct BucketAlloc*) ;
 int stub2 (int ,struct BucketAlloc*) ;

void deleteBucketAlloc( struct BucketAlloc *ba )
{
 TESSalloc* alloc = ba->alloc;
 Bucket *bucket = ba->buckets;
 Bucket *next;
 while ( bucket )
 {
  next = bucket->next;
  alloc->memfree( alloc->userData, bucket );
  bucket = next;
 }
 ba->freelist = 0;
 ba->buckets = 0;
 alloc->memfree( alloc->userData, ba );
}
