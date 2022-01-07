
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map; int data; int tree; } ;
typedef TYPE_1__ KHRN_CACHE_T ;


 int khrn_platform_free (int ) ;
 int khrn_pointer_map_term (int *) ;

void khrn_cache_term(KHRN_CACHE_T *cache)
{
   khrn_platform_free(cache->tree);
   khrn_platform_free(cache->data);

   khrn_pointer_map_term(&cache->map);
}
