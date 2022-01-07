
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int link; int key; } ;
struct TYPE_6__ {int * data; int map; } ;
typedef TYPE_1__ KHRN_CACHE_T ;
typedef int CLIENT_THREAD_STATE_T ;
typedef TYPE_2__ CACHE_ENTRY_T ;


 int CACHE_LOG2_BLOCK_SIZE ;
 int heap_free (TYPE_1__*,int) ;
 int khrn_pointer_map_delete (int *,int ) ;
 int link_remove (int *) ;
 int send_delete (int *,int) ;

__attribute__((used)) static void discard(CLIENT_THREAD_STATE_T *thread, KHRN_CACHE_T *cache, CACHE_ENTRY_T *entry)
{
   heap_free(cache, (int)((uint8_t *)entry - cache->data) >> CACHE_LOG2_BLOCK_SIZE);

   khrn_pointer_map_delete(&cache->map, entry->key);

   link_remove(&entry->link);

   send_delete(thread, (int)((uint8_t *)entry - cache->data));
}
