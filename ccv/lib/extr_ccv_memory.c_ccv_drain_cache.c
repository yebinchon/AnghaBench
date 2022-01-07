
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rnum; } ;


 TYPE_1__ ccv_cache ;
 int ccv_cache_cleanup (TYPE_1__*) ;

void ccv_drain_cache(void)
{
 if (ccv_cache.rnum > 0)
  ccv_cache_cleanup(&ccv_cache);
}
