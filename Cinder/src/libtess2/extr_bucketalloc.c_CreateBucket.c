
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct BucketAlloc {int itemSize; int bucketSize; void* freelist; TYPE_2__* buckets; TYPE_1__* alloc; } ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
struct TYPE_3__ {int userData; scalar_t__ (* memalloc ) (int ,size_t) ;} ;
typedef TYPE_2__ Bucket ;


 scalar_t__ stub1 (int ,size_t) ;

__attribute__((used)) static int CreateBucket( struct BucketAlloc* ba )
{
 size_t size;
 Bucket* bucket;
 void* freelist;
 unsigned char* head;
 unsigned char* it;


 size = sizeof(Bucket) + ba->itemSize * ba->bucketSize;
 bucket = (Bucket*)ba->alloc->memalloc( ba->alloc->userData, size );
 if ( !bucket )
  return 0;
 bucket->next = 0;


 bucket->next = ba->buckets;
 ba->buckets = bucket;


 freelist = ba->freelist;
 head = (unsigned char*)bucket + sizeof(Bucket);
 it = head + ba->itemSize * ba->bucketSize;
 do
 {
  it -= ba->itemSize;

  *((void**)it) = freelist;

  freelist = (void*)it;
 }
 while ( it != head );

 ba->freelist = (void*)it;

 return 1;
}
