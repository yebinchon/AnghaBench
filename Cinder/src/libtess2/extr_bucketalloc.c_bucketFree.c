
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct BucketAlloc {int itemSize; int bucketSize; void* freelist; int name; TYPE_1__* buckets; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;
typedef TYPE_1__ Bucket ;


 int printf (char*,int ) ;

void bucketFree( struct BucketAlloc *ba, void *ptr )
{
 *(void**)ptr = ba->freelist;
 ba->freelist = ptr;

}
