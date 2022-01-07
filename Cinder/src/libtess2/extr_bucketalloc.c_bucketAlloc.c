
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BucketAlloc {void* freelist; } ;


 int CreateBucket (struct BucketAlloc*) ;
 void* NextFreeItem (struct BucketAlloc*) ;

void* bucketAlloc( struct BucketAlloc *ba )
{
 void *it;


 if ( !ba->freelist || !NextFreeItem( ba ) )
 {
  if ( !CreateBucket( ba ) )
   return 0;
 }


 it = ba->freelist;
 ba->freelist = NextFreeItem( ba );

 return it;
}
