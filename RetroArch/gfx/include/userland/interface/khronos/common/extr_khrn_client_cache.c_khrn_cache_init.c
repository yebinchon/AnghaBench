
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * next; TYPE_1__* prev; } ;
struct TYPE_5__ {TYPE_2__* next; int * prev; } ;
struct TYPE_7__ {int map; TYPE_2__ end; TYPE_1__ start; scalar_t__ server_depth; scalar_t__ client_depth; int * data; int * tree; } ;
typedef TYPE_3__ KHRN_CACHE_T ;


 int khrn_pointer_map_init (int *,int) ;

int khrn_cache_init(KHRN_CACHE_T *cache)
{
   cache->tree = ((void*)0);
   cache->data = ((void*)0);

   cache->client_depth = 0;
   cache->server_depth = 0;

   cache->start.prev = ((void*)0);
   cache->start.next = &cache->end;
   cache->end.prev = &cache->start;
   cache->end.next = ((void*)0);

   return khrn_pointer_map_init(&cache->map, 64);
}
