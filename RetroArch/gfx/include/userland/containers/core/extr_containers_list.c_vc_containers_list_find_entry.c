
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {size_t entry_size; scalar_t__ entries; } ;
typedef TYPE_1__ VC_CONTAINERS_LIST_T ;


 int memcpy (void*,char const*,size_t) ;
 int vc_containers_list_find_index (TYPE_1__ const*,void*,size_t*) ;

bool vc_containers_list_find_entry(const VC_CONTAINERS_LIST_T *list,
      void *entry)
{
   uint32_t index;
   size_t entry_size;

   if (!vc_containers_list_find_index(list, entry, &index))
      return 0;

   entry_size = list->entry_size;
   memcpy(entry, (const char *)list->entries + entry_size * index, entry_size);

   return 1;
}
