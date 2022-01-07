
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int client_depth; int* tree; } ;
typedef TYPE_1__ KHRN_CACHE_T ;



__attribute__((used)) static void heap_free(KHRN_CACHE_T *cache, int block)
{
   int node = block + (1 << (cache->client_depth - 1));
   int reset = 1;

   while (cache->tree[node] > 0) {
      node >>= 1;
      reset++;
   }

   cache->tree[node] = reset;

   while (cache->tree[node] == cache->tree[node ^ 1]) {
      node >>= 1;
      cache->tree[node] = cache->tree[node] + 1;
   }

   while (cache->tree[node] > cache->tree[node >> 1]) {
      cache->tree[node >> 1] = cache->tree[node];
      node >>= 1;
   }
}
