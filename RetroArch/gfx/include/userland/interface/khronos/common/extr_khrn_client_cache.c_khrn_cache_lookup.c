
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_17__ {int len; int key; int * data; int link; } ;
struct TYPE_16__ {int prev; struct TYPE_16__* next; } ;
struct TYPE_14__ {TYPE_3__* next; } ;
struct TYPE_15__ {int * data; TYPE_3__ end; int map; TYPE_1__ start; } ;
typedef TYPE_2__ KHRN_CACHE_T ;
typedef int CLIENT_THREAD_STATE_T ;
typedef TYPE_3__ CACHE_LINK_T ;
typedef TYPE_4__ CACHE_ENTRY_T ;


 int CACHE_LOG2_BLOCK_SIZE ;
 int _max (scalar_t__,int) ;
 scalar_t__ _msb (int) ;
 int discard (int *,TYPE_2__*,TYPE_4__*) ;
 scalar_t__ grow (int *,TYPE_2__*) ;
 int hash (void const*,int,int) ;
 int heap_alloc (TYPE_2__*,int) ;
 int heap_avail (TYPE_2__*,int) ;
 int heap_free (TYPE_2__*,int) ;
 int khrn_pointer_map_insert (int *,int,TYPE_4__*) ;
 scalar_t__ khrn_pointer_map_lookup (int *,int) ;
 int link_insert (int *,int ,TYPE_3__*) ;
 int link_remove (int *) ;
 int memcmp (int *,void const*,int) ;
 int platform_memcpy (int *,void const*,int) ;
 int send_create (int *,int) ;
 int send_data (int *,int,void const*,int) ;
 int xxx_first ;

int khrn_cache_lookup(CLIENT_THREAD_STATE_T *thread, KHRN_CACHE_T *cache, const void *data, int len, int sig)
{
   int key = hash(data, len, sig);

   CACHE_ENTRY_T *entry = (CACHE_ENTRY_T *)khrn_pointer_map_lookup(&cache->map, key);
   if (entry && entry->len >= len && !memcmp(entry->data, data, len)) {




      link_remove(&entry->link);
      link_insert(&entry->link, cache->end.prev, &cache->end);
   } else {
      int size = _max(_msb(len + sizeof(CACHE_ENTRY_T) - 1) + 2 - CACHE_LOG2_BLOCK_SIZE, 1);
      int block;

      CACHE_LINK_T *link;

      if (entry)
         discard(thread, cache, entry);

      while (!heap_avail(cache, size) && grow(thread, cache));

      for (link = cache->start.next; link != &cache->end && !heap_avail(cache, size); link = link->next)
         discard(thread, cache, (CACHE_ENTRY_T *)link);

      if (!heap_avail(cache, size))
         return -1;

      block = heap_alloc(cache, size);

      entry = (CACHE_ENTRY_T *)(cache->data + (block << CACHE_LOG2_BLOCK_SIZE));
      entry->len = len;
      entry->key = key;
      platform_memcpy(entry->data, data, len);

      if (!khrn_pointer_map_insert(&cache->map, key, entry)) {
         heap_free(cache, block);
         return -1;
      }

      link_insert(&entry->link, cache->end.prev, &cache->end);

      send_create(thread, (int)((uint8_t *)entry - cache->data));
      send_data(thread, (int)(entry->data - cache->data), data, len);
   }

   return (int)((uint8_t *)entry - cache->data);
}
