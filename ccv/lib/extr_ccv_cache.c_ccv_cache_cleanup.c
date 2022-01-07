
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rnum; int origin; scalar_t__ age; scalar_t__ size; int ffree; } ;
typedef TYPE_1__ ccv_cache_t ;
typedef int ccv_cache_index_t ;


 int _ccv_cache_cleanup_and_free (int *,int ) ;
 int memset (int *,int ,int) ;

void ccv_cache_cleanup(ccv_cache_t* cache)
{
 if (cache->rnum > 0)
 {
  _ccv_cache_cleanup_and_free(&cache->origin, cache->ffree);
  cache->size = 0;
  cache->age = 0;
  cache->rnum = 0;
  memset(&cache->origin, 0, sizeof(ccv_cache_index_t));
 }
}
