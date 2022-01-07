
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nodePool; } ;
struct TYPE_6__ {int userData; int (* memfree ) (int ,TYPE_2__*) ;} ;
typedef TYPE_1__ TESSalloc ;
typedef TYPE_2__ Dict ;


 int deleteBucketAlloc (int ) ;
 int stub1 (int ,TYPE_2__*) ;

void dictDeleteDict( TESSalloc* alloc, Dict *dict )
{
 deleteBucketAlloc( dict->nodePool );
 alloc->memfree( alloc->userData, dict );
}
