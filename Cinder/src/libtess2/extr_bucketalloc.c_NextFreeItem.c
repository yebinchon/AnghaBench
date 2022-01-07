
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BucketAlloc {scalar_t__ freelist; } ;



__attribute__((used)) static void *NextFreeItem( struct BucketAlloc *ba )
{
 return *(void**)ba->freelist;
}
