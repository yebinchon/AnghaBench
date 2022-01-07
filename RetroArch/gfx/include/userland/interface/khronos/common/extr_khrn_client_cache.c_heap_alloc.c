
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int client_depth; int* tree; } ;
typedef TYPE_1__ KHRN_CACHE_T ;


 int _max (int,int) ;
 int assert (int ) ;
 int heap_avail (TYPE_1__*,int) ;

__attribute__((used)) static int heap_alloc(KHRN_CACHE_T *cache, int size)
{
   int node, fixup;
   int i;

   assert(heap_avail(cache, size));

   node = 1;
   for (i = 0; i < cache->client_depth - size; i++) {
      node <<= 1;
      if (cache->tree[node + 1] >= size && (cache->tree[node] < size || cache->tree[node] > cache->tree[node + 1]))
         node++;
   }

   cache->tree[node] = 0;

   for (fixup = node; cache->tree[fixup ^ 1] < cache->tree [fixup >> 1]; fixup >>= 1)
      cache->tree[fixup >> 1] = _max(cache->tree[fixup], cache->tree[fixup ^ 1]);

   return node * (1 << (size - 1)) - (1 << (cache->client_depth - 1));
}
