
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {void* prev; void* next; } ;
struct TYPE_4__ {TYPE_1__ link; } ;
typedef int KHRN_POINTER_MAP_T ;
typedef void CACHE_LINK_T ;
typedef TYPE_2__ CACHE_ENTRY_T ;


 int khrn_pointer_map_insert (int *,int ,scalar_t__) ;
 scalar_t__ relocate (void*,void*) ;
 int verify (int ) ;

__attribute__((used)) static void callback(KHRN_POINTER_MAP_T *map, uint32_t key, void *value, void *user)
{
   CACHE_ENTRY_T *entry = (CACHE_ENTRY_T *)value;

   entry->link.prev = (CACHE_LINK_T *)relocate(entry->link.prev, user);
   entry->link.next = (CACHE_LINK_T *)relocate(entry->link.next, user);



   verify(khrn_pointer_map_insert(map, key, relocate(value, user)));
}
