
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* tree; } ;
typedef TYPE_1__ KHRN_CACHE_T ;



__attribute__((used)) static int heap_avail(KHRN_CACHE_T *cache, int size)
{
   return cache->tree && cache->tree[1] >= size;
}
